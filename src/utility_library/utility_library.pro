# Utility library configuration which builds a shared library.

# Qt projects that are used.
QT += core gui

# Additional conditional Qt module if Qt Version is greater than Qt4.
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

# Target gives tha name of the created shared library.
TARGET = utility_library

# When you use the debug_and_release option (which is the default under Windows), the project will
# be processed three times: one time to produce a "meta" Makefile, and two more times to produce a
# Makefile.Debug and a Makefile.Release.
# During the latter passes, build_pass and the respective debug or release option is appended
# to CONFIG. This makes it possible to perform build-specific tasks. For example:
# Source: https://doc.qt.io/qt-5/qmake-variable-reference.html
# Single line scopes are done with colons multiline scopes are achived with curly braces.
# Note: The scope opening brace has to be in the same line as the scoping condition.
build_pass:CONFIG(debug, debug|release) {
    # The win32 scope matches both 64- and 32-bit Windows builds.
    # There are linux/unix and macx scopes too for other platforms
    win32: TARGET = $$join(TARGET,,,_d)
    # In Qt5 it's pretty easy to scope on this too with
    contains(QT_ARCH, i386) {
        message("32-bit debug build")
    } else {
        message("64-bit debug build")
    }
}

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
