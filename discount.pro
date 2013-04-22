QT       -= core gui

win32-msvc* {
TARGET = libdiscount
} else {
TARGET = discount
}

TEMPLATE = lib
CONFIG += staticlib

SOURCES += \
    mkdio.c \
    markdown.c \
    dumptree.c \
    generate.c \
    resource.c \
    docheader.c \
    version.c \
    toc.c \
    css.c \
    xml.c \
    Csio.c \
    xmlpage.c \
    basename.c \
    emmatch.c \
    github_flavoured.c \
    setup.c \
    tags.c \
    html5.c \
    flags.c

HEADERS += \
    mkdio.h \
    markdown.h \
    tags.h \
    config.h

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}
