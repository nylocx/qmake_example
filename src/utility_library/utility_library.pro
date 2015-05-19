# Utility library configuration which builds a shared library.

# Qt projects that are used.
QT += core gui

# Additional conditional Qt module if Qt Version is greater than Qt4.
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

# Target gives tha name of the created shared library.
TARGET = utility_library

# Include common configurations that are shared between all projects that create shared libraries.
include(../library_common.pri)

# Define for MS Widows to determine when to use export- or import-dll statements.
DEFINES += UTILITY_LIBRARY

# Source files
SOURCES += \
    utility.cpp

# Header files
HEADERS += \
    utility_global.h \
    utility.h

# Define where and which headers to install.
header.path = $$PREFIX/include
header.files += *.h

# Add the header install target to the global install array.
INSTALLS += header
