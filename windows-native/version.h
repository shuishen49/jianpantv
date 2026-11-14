#ifndef JP_VERSION
#define JP_VERSION "0.2.3"
#endif
#define JP_WIDEN_(x) L##x
#define JP_WIDEN(x) JP_WIDEN_(x)
#define JP_VERSION_W JP_WIDEN(JP_VERSION)
