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
    mainwindow.h \
    ../version.h

# User interface formulars
FORMS += \
    mainwindow.ui

# Libraries this executable will be linked to -L gives the path and -l the name.


# On Windows debug libraries sometimes have a _d/d or _debug suffix you can use scopes to handle
# that. For more information see the utility_library.pro file.
win32 {
    CONFIG(debug, debug|release) {
        LIBS += -L$$OUT_PWD/../utility_library/debug -lutility_library_d
    } else {
        LIBS += -L$$OUT_PWD/../utility_library/release -lutility_library
    }
} else {
    LIBS += \
        -L$$OUT_PWD/../utility_library -lutility_library
}

# Add a additional target, in this case git version header file. The FORCE depends will cause this
# target to be executed with every compilation.
# Instead of QMAKE_EXTRA_TARGETS there is also QMAKE_POST_LINK for post build processing.
unix {
    versiontarget.target = ../version.h
    versiontarget.commands = $$PWD/../version.sh
    versiontarget.depends = FORCE

    QMAKE_EXTRA_TARGETS += versiontarget

    PRE_TARGETDEPS += ../version.h
}

# Just a simple message to show the usage of globally defined variables.
message($$CUSTOM_VARIABLE)
