/* Native settings appearance. Real edit/button controls retain keyboard and
   accessibility behavior; artwork uses GDI and the installed Chinese font. */
typedef struct {
    HBRUSH surface, field;
    HFONT title, body;
} StorageUi;

static RECT storage_rect(HWND dialog, int x, int y, int width, int height) {
    RECT bounds = {x, y, x + width, y + height};
    MapDialogRect(dialog, &bounds);
    return bounds;
}
static void storage_round(HDC dc, const RECT *bounds, COLORREF fill_color,
                          COLORREF border_color, int radius) {
    HBRUSH brush = CreateSolidBrush(fill_color);
    HPEN pen = CreatePen(PS_SOLID, 1, border_color);
    HGDIOBJ previous_brush = SelectObject(dc, brush), previous_pen = SelectObject(dc, pen);
    RoundRect(dc, bounds->left, bounds->top, bounds->right, bounds->bottom, radius, radius);
    SelectObject(dc, previous_brush); SelectObject(dc, previous_pen);
    DeleteObject(brush); DeleteObject(pen);
}
static void storage_ui_init(HWND dialog, StorageUi *ui) {
    ui->surface = CreateSolidBrush(RGB(23,26,32));
    ui->field = CreateSolidBrush(RGB(31,36,45));
    BOOL dark = TRUE;
    COLORREF caption = RGB(23,26,32), caption_text = RGB(190,199,213);
    DwmSetWindowAttribute(dialog, 20, &dark, sizeof(dark));
    /* Caption colors are optional on older Windows; the dark attribute remains. */
    DwmSetWindowAttribute(dialog, 35, &caption, sizeof(caption));
    DwmSetWindowAttribute(dialog, 36, &caption_text, sizeof(caption_text));
    LOGFONTW face = {0};
    HFONT normal = (HFONT)SendMessageW(dialog, WM_GETFONT, 0, 0);
    if (GetObjectW(normal, sizeof(face), &face)) {
        HDC dc = GetDC(dialog);
        int dpi = GetDeviceCaps(dc, LOGPIXELSY);
        ReleaseDC(dialog, dc);
        face.lfHeight = -MulDiv(10, dpi, 72);
        ui->body = CreateFontIndirectW(&face);
        const int controls[] = {1001,1002,1004,1005,1007,1008,IDOK,IDCANCEL};
        if (ui->body) for (size_t i = 0; i < ARRAY_COUNT(controls); ++i)
            SendDlgItemMessageW(dialog, controls[i], WM_SETFONT, (WPARAM)ui->body, FALSE);
        face.lfHeight = -MulDiv(14, dpi, 72);
        face.lfWeight = FW_SEMIBOLD;
        ui->title = CreateFontIndirectW(&face);
        if (ui->title) SendDlgItemMessageW(dialog, 1003, WM_SETFONT, (WPARAM)ui->title, FALSE);
    }
    HWND edit = GetDlgItem(dialog, 1001);
    SetWindowLongPtrW(edit, GWL_STYLE, GetWindowLongPtrW(edit, GWL_STYLE) & ~WS_BORDER);
    SetWindowLongPtrW(edit, GWL_EXSTYLE, GetWindowLongPtrW(edit, GWL_EXSTYLE) & ~WS_EX_CLIENTEDGE);
    SetWindowPos(edit, NULL, 0, 0, 0, 0,
        SWP_NOMOVE | SWP_NOSIZE | SWP_NOZORDER | SWP_FRAMECHANGED);
    SendMessageW(dialog, DM_SETDEFID, IDOK, 0);
    RECT owner, bounds;
    GetWindowRect(GetParent(dialog), &owner);
    GetWindowRect(dialog, &bounds);
    HMONITOR monitor = MonitorFromWindow(GetParent(dialog), MONITOR_DEFAULTTONEAREST);
    MONITORINFO info = {.cbSize = sizeof(info)};
    if (GetMonitorInfoW(monitor, &info)) {
        int width = bounds.right - bounds.left, height = bounds.bottom - bounds.top;
        int x = owner.left + (owner.right - owner.left - width) / 2;
        int y = owner.top + (owner.bottom - owner.top - height) / 2;
        if (x + width > info.rcWork.right) x = info.rcWork.right - width;
        if (y + height > info.rcWork.bottom) y = info.rcWork.bottom - height;
        if (x < info.rcWork.left) x = info.rcWork.left;
        if (y < info.rcWork.top) y = info.rcWork.top;
        SetWindowPos(dialog, NULL, x, y, 0, 0, SWP_NOSIZE | SWP_NOZORDER);
    }
}
static void storage_ui_destroy(StorageUi *ui) {
    if (ui->title) DeleteObject(ui->title);
    if (ui->body) DeleteObject(ui->body);
    if (ui->surface) DeleteObject(ui->surface);
    if (ui->field) DeleteObject(ui->field);
}
static INT_PTR storage_ui_color(StorageUi *ui, HWND control, HDC dc, BOOL edit) {
    int id = GetDlgCtrlID(control);
    COLORREF text = edit || id == 1003 || id == 1004 ? RGB(237,241,248) :
        id == 1002 ? RGB(255,156,151) : RGB(152,165,185);
    SetTextColor(dc, text);
    SetBkColor(dc, edit ? RGB(31,36,45) : RGB(23,26,32));
    return (INT_PTR)(edit ? ui->field : ui->surface);
}
static void storage_ui_paint(HWND dialog, StorageUi *ui) {
    PAINTSTRUCT paint;
    HDC dc = BeginPaint(dialog, &paint);
    FillRect(dc, &paint.rcPaint, ui->surface);
    RECT icon = storage_rect(dialog, 20, 19, 26, 29);
    icon.bottom = icon.top + icon.right - icon.left;
    RECT field = storage_rect(dialog, 20, 83, 326, 28);
    RECT separator = storage_rect(dialog, 20, 170, 326, 1);
    storage_round(dc, &icon, RGB(58,34,42), RGB(73,40,49), 12);
    BOOL focused = GetFocus() == GetDlgItem(dialog, 1001);
    storage_round(dc, &field, RGB(31,36,45),
        focused ? RGB(255,100,106) : RGB(63,72,88), 12);
    RECT folder = {icon.left + 11, icon.top + 15, icon.right - 10, icon.bottom - 11};
    HPEN pen = CreatePen(PS_SOLID, 2, RGB(255,114,119));
    HGDIOBJ old_pen = SelectObject(dc, pen), old_brush = SelectObject(dc, GetStockObject(NULL_BRUSH));
    POINT points[] = {
        {folder.left,folder.bottom}, {folder.left,folder.top-3},
        {folder.left+(folder.right-folder.left)/3,folder.top-3},
        {folder.left+(folder.right-folder.left)/2,folder.top},
        {folder.right,folder.top}, {folder.right,folder.bottom}, {folder.left,folder.bottom}
    };
    Polyline(dc, points, ARRAY_COUNT(points));
    SelectObject(dc, old_pen); SelectObject(dc, old_brush); DeleteObject(pen);
    HBRUSH line = CreateSolidBrush(RGB(43,49,60));
    separator.bottom = separator.top + 1;
    FillRect(dc, &separator, line);
    DeleteObject(line);
    EndPaint(dialog, &paint);
}
static BOOL storage_ui_button(HWND dialog, StorageUi *ui, DRAWITEMSTRUCT *item) {
    if (item->CtlType != ODT_BUTTON) return FALSE;
    BOOL primary = item->CtlID == IDOK, pressed = item->itemState & ODS_SELECTED;
    COLORREF fill = primary ? (pressed ? RGB(217,63,73) : RGB(247,80,91)) :
        (pressed ? RGB(44,51,63) : RGB(31,36,45));
    FillRect(item->hDC, &item->rcItem, ui->surface);
    RECT bounds = item->rcItem;
    InflateRect(&bounds, -1, -1);
    storage_round(item->hDC, &bounds, fill,
        item->itemState & ODS_FOCUS ? RGB(255,158,163) :
        primary ? RGB(255,106,116) : RGB(59,68,83), 10);
    wchar_t text[40];
    GetWindowTextW(item->hwndItem, text, ARRAY_COUNT(text));
    HGDIOBJ old = SelectObject(item->hDC, (HFONT)SendMessageW(item->hwndItem, WM_GETFONT, 0, 0));
    SetBkMode(item->hDC, TRANSPARENT);
    SetTextColor(item->hDC, primary ? RGB(255,255,255) : RGB(199,209,223));
    if (pressed) OffsetRect(&bounds, 0, 1);
    DrawTextW(item->hDC, text, -1, &bounds, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
    if ((item->itemState & ODS_FOCUS) && !(item->itemState & ODS_NOFOCUSRECT)) {
        InflateRect(&bounds, -4, -4);
        DrawFocusRect(item->hDC, &bounds);
    }
    SelectObject(item->hDC, old);
    return TRUE;
}
