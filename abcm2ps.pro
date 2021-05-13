include(../common.pri)
TEMPLATE = lib
TARGET = abcm2ps
CONFIG -= qt
CONFIG += link_pkgconfig debug staticlib
DEFINES += linux _FORTIFY_SOURCE=2
QMAKE_CFLAGS += -O2
SOURCES += abcm2ps.c \
		abcparse.c \
		buffer.c \
		deco.c \
		draw.c \
		format.c \
		front.c \
		glyph.c \
		music.c \
		parse.c \
		subs.c \
		svg.c \
		syms.c
HEADERS += abcm2ps.h
AVERSION = 8.14.9
VDATE = 2020-12-04
DEFAULT_FDIR = $$ABCM2PSDIR
config.input = config.h.in
config.output = config.h
QMAKE_SUBSTITUTES += config
fmt.path = $$ABCM2PSDIR
fmt.files = abc2svg.ttf flute.fmt landscape.fmt musicfont.fmt
INSTALLS += fmt
