# Qt projects that are used.
QT += qml quick

# Enable the c++11 feature of the used compiler (requires Qt 5)
CONFIG += c++11

# Target gives the name of the created executable.
TARGET = quick_example

# Include common configurations that are shared between all projects that create executables.
include(../executable_common.pri)

# Add the utility library to the include file search path.
INCLUDEPATH += ../utility_library

# Source files
SOURCES += main.cpp

# Resource files
RESOURCES += qml.qrc

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

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

