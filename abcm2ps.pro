include(../common.pri)
TEMPLATE = lib
TARGET = abcm2ps
CONFIG -= qt
CONFIG += link_pkgconfig debug staticlib
QMAKE_CFLAGS += -DHAVE_PANGO=1 -O0 -g
PKGCONFIG += pangocairo pangoft2
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
AVERSION = 8.14.9~qabc
VDATE = 2020-11-20
DEFAULT_FDIR = $$ABCM2PS
config.input = config.h.in
config.output = config.h
QMAKE_SUBSTITUTES += config
fmt.path = $$ABCM2PSDIR
fmt.files = abc2svg.ttf flute.fmt landscape.fmt musicfont.fmt
INSTALLS += fmt
