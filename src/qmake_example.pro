# This is a pro file template to organize multiple sub-projects. For those who come for a
# MS Visual Studio background this roughly corresponds to the .sln solution files.
TEMPLATE = subdirs

# This defines the sub-projects this can be simple sub directories that contain a .pro file with
# the same name or it can be free chosen sub-project names that have to be defined later on.
SUBDIRS = \
    utility_library \
    main

# This gives a definition of the sub-projects given in the SUBDIRS variable.
# The following table gives the possible values for subdir projects.
# Source: http://doc.qt.io/qt-5/qmake-variable-reference.html#subdirs
# Modifier       Effect
# --------------------------------------------------------------------------------------------------
# .subdir        Use the specified sub-directory instead of SUBDIRS value.
# .file          Specify the sub-project pro file explicitly.
#                Cannot be used in conjunction with .subdir modifier.
# .depends       This sub-project depends on specified sub-project.
#                Available only on platforms that use makefiles.
# .makefile      The makefile of sub-project. Available only on platforms that use makefiles.
# .target        Base string used for makefile targets related to this sub-project.
#                Available only on platforms that use makefiles.
utility_library.subdir = utility_library
main.subdir = main
main.depends = utility_library

# This is used to mimic the behavior of autotools and others to be able to specify a prefix where
# the files will be installed to. Here it defaults to /usr if no PREFIX was given with
# qmake PREFIX=/the/prefix syntax.
isEmpty(PREFIX) {
    PREFIX = /usr
}

# Show the global configuration in IDEs like Qt Creator
OTHER_FILES += \
    .qmake.conf \
    version.sh


# TODO:

# - Show how to use rpath to define the path of the libraries.
