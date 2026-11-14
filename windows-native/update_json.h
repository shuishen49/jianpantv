/* Bounded JSON reader for the GitHub release response. No external runtime. */
#ifndef JP_UPDATE_JSON_H
#define JP_UPDATE_JSON_H
typedef struct { int start, end, next, count; char type; } UToken;
typedef struct {
    const char *text;
    int length, position, used, capacity;
    UToken *tokens;
} UJson;
static void uj_space(UJson *j) {
    while (j->position < j->length && strchr(" \t\r\n", j->text[j->position])) ++j->position;
}
static int uj_hex(char c) {
    if (c >= '0' && c <= '9') return c - '0';
    if (c >= 'a' && c <= 'f') return c - 'a' + 10;
    if (c >= 'A' && c <= 'F') return c - 'A' + 10;
    return -1;
}
static int uj_value(UJson *j, int depth) {
    uj_space(j);
    if (depth > 48 || j->position >= j->length || j->used >= j->capacity) return -1;
    int index = j->used++, start = j->position;
    UToken *t = &j->tokens[index];
    t->start = start;
    char c = j->text[j->position++];
    t->type = c;
    if (c == '[' || c == '{') {
        char end = c == '[' ? ']' : '}';
        uj_space(j);
        if (j->position < j->length && j->text[j->position] == end) ++j->position;
        else for (;;) {
            if (c == '{') {
                uj_space(j);
                if (j->position >= j->length || j->text[j->position] != '"' ||
                        uj_value(j, depth + 1) < 0) return -1;
                uj_space(j);
                if (j->position >= j->length || j->text[j->position++] != ':') return -1;
            }
            if (uj_value(j, depth + 1) < 0) return -1;
            ++t->count;
            uj_space(j);
            if (j->position >= j->length) return -1;
            char delimiter = j->text[j->position++];
            if (delimiter == end) break;
            if (delimiter != ',') return -1;
        }
    } else if (c == '"') {
        BOOL closed = FALSE;
        while (j->position < j->length) {
            unsigned char s = (unsigned char)j->text[j->position++];
            if (s == '"') { closed = TRUE; break; }
            if (s < 32) return -1;
            if (s == '\\') {
                if (j->position >= j->length) return -1;
                char escape = j->text[j->position++];
                if (escape == 'u') {
                    for (int k = 0; k < 4; ++k)
                        if (j->position >= j->length || uj_hex(j->text[j->position++]) < 0) return -1;
                } else if (!strchr("\"\\/bfnrt", escape)) return -1;
            }
        }
        if (!closed) return -1;
    } else if (c == 't' || c == 'f' || c == 'n') {
        const char *word = c == 't' ? "true" : c == 'f' ? "false" : "null";
        int n = (int)strlen(word);
        if (start + n > j->length || memcmp(j->text + start, word, n)) return -1;
        j->position = start + n;
    } else {
        t->type = '#';
        int p = start;
        if (j->text[p] == '-') ++p;
        if (p >= j->length) return -1;
        if (j->text[p] == '0') ++p;
        else {
            if (j->text[p] < '1' || j->text[p] > '9') return -1;
            while (p < j->length && j->text[p] >= '0' && j->text[p] <= '9') ++p;
        }
        if (p < j->length && j->text[p] == '.') {
            ++p;
            int digits = p;
            while (p < j->length && j->text[p] >= '0' && j->text[p] <= '9') ++p;
            if (p == digits) return -1;
        }
        if (p < j->length && (j->text[p] == 'e' || j->text[p] == 'E')) {
            ++p;
            if (p < j->length && (j->text[p] == '+' || j->text[p] == '-')) ++p;
            int digits = p;
            while (p < j->length && j->text[p] >= '0' && j->text[p] <= '9') ++p;
            if (p == digits) return -1;
        }
        j->position = p;
    }
    t->end = j->position;
    t->next = j->used;
    return index;
}
static BOOL uj_parse(UJson *j, const char *text, DWORD length, UToken *tokens, int capacity) {
    *j = (UJson){ .text=text, .length=(int)length, .tokens=tokens, .capacity=capacity };
    if (!length || length > 4u*1024u*1024u || memchr(text, 0, length) || uj_value(j, 0) != 0) return FALSE;
    uj_space(j);
    return j->position == j->length;
}
/* All consumed protocol fields are ASCII. Other Unicode JSON is skipped intact. */
static BOOL uj_string(const UJson *j, int index, char *out, size_t cap) {
    if (index < 0 || index >= j->used || j->tokens[index].type != '"' || !cap) return FALSE;
    UToken t = j->tokens[index];
    size_t n = 0;
    for (int p = t.start + 1; p < t.end - 1; ++p) {
        unsigned c = (unsigned char)j->text[p];
        if (c == '\\') {
            c = (unsigned char)j->text[++p];
            if (c == 'u') {
                c = 0;
                for (int k = 0; k < 4; ++k) c = c*16 + (unsigned)uj_hex(j->text[++p]);
            } else if (c == 'b') c = '\b';
            else if (c == 'f') c = '\f';
            else if (c == 'n') c = '\n';
            else if (c == 'r') c = '\r';
            else if (c == 't') c = '\t';
        }
        if (c < 32 || c > 126 || n + 1 >= cap) return FALSE;
        out[n++] = (char)c;
    }
    out[n] = 0;
    return TRUE;
}
static int uj_field(const UJson *j, int object, const char *key) {
    if (object < 0 || object >= j->used || j->tokens[object].type != '{') return -1;
    int found = -1, p = object + 1;
    for (int k = 0; k < j->tokens[object].count; ++k) {
        char name[128];
        int value = j->tokens[p].next;
        if (uj_string(j, p, name, sizeof(name)) && !strcmp(name, key)) {
            if (found >= 0) return -1; /* Reject duplicate security-relevant fields. */
            found = value;
        }
        p = j->tokens[value].next;
    }
    return found;
}
static BOOL uj_is(const UJson *j, int index, const char *value) {
    if (index < 0 || index >= j->used) return FALSE;
    UToken t = j->tokens[index];
    return (size_t)(t.end-t.start) == strlen(value) &&
        !memcmp(j->text + t.start, value, strlen(value));
}
static BOOL uj_uint(const UJson *j, int index, DWORD maximum, DWORD *out) {
    if (index < 0 || index >= j->used || j->tokens[index].type != '#') return FALSE;
    UToken t = j->tokens[index];
    uint64_t n = 0;
    for (int p = t.start; p < t.end; ++p) {
        if (j->text[p] < '0' || j->text[p] > '9') return FALSE;
        n = n*10 + (unsigned)(j->text[p]-'0');
        if (n > maximum) return FALSE;
    }
    *out = (DWORD)n;
    return TRUE;
}
#endif
