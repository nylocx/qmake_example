# Shared configuration for all projects that create executables.

# Template app defines pro files that are meant to create executables.
TEMPLATE = app

# Include the more global common.pri
include(common.pri)

# Set the install target for executable projects to PREFIX/bin
target.path = $$PREFIX/bin
