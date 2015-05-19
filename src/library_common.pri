# Shared configuration for all projects that create executables.

# Template lib defines pro files that are  to create libraries.
TEMPLATE = lib

# The config option dll is used to build shared libraries (.dll on Windows and .so on Linux).
CONFIG += dll

# Include the more global common.pri
include(common.pri)

# Set the install target for shared library projects to PREFIX/lib
target.path = $$PREFIX/lib
