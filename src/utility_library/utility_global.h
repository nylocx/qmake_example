#ifndef UTILITY_GLOBAL_H
#define UTILITY_GLOBAL_H

#include <QtGlobal>

#if defined(UTILITY_LIBRARY)
    #define UTILITY_EXPORT Q_DECL_EXPORT
#else
    #define UTILITY_EXPORT Q_DECL_IMPORT
#endif

#endif // UTILITY_GLOBAL_H
