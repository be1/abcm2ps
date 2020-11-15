include(../common.pri)
TEMPLATE = app
TARGET = abcm2ps
CONFIG += link_pkgconfig
PKGCONFIG += pangocairo
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
		syms.c \
		main.c
HEADERS += abcm2ps.h
VERSION = 8.14.9
VDATE = 2020-06-21
DEFAULT_FDIR = $$ABCM2PS
config.input = config.h.in
config.output = config.h
QMAKE_SUBSTITUTES += config
fmt.path = $$ABCM2PSDIR
fmt.files = abc2svg.ttf flute.fmt landscape.fmt musicfont.fmt
target.path = $$ABCM2PSDIR
INSTALLS += target fmt
