# Main project configuration which builds an executable.

# Qt projects that are used.
QT += core gui

# Additional conditional Qt module if Qt Version is greater than Qt4.
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

# Target gives the name of the created executable.
TARGET = qmake_example

# Include common configurations that are shared between all projects that create executables.
include(../executable_common.pri)

# Add the utility library to the include file search path.
INCLUDEPATH += ../utility_library

# Source files
SOURCES += \
    main.cpp\
    mainwindow.cpp

# Header files
HEADERS += \
    mainwindow.h

# User interface formulars
FORMS += \
    mainwindow.ui

# Libraries this executable will be linked to -L gives the path and -l the name.
LIBS += \
    -L$$OUT_PWD/../utility_library -lutility_library


# Just a simple message to show the usage of globally defined variables.
message($$CUSTOM_VARIABLE)