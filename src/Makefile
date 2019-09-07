CFLAGS += -DNORECOIL
CFLAGS += -I/usr/include/SDL2
CFLAGS += -DUSE_SDL2
#CFLAGS += -DUSE_X11
CFLAGS += -g
CFLAGS += -D_GNU_SOURCE
CFLAGS += -I/usr/include/directfb

LIBS += -lSDL2 -lX11 -ltiff -lz -lSDL2_ttf
LIBS += -lpng -lSDL2_image

OBJ = \
SFont.o \
brush.o \
brush_ops.o \
buttons.o \
buttons_effects.o \
colorred.o \
engine.o \
factory.o \
fileformats.o \
filesel.o \
gfx2log.o \
gfx2mem.o \
gfx2surface.o \
graph.o \
help.o \
hotkeys.o \
init.o \
input.o \
io.o \
keyboard.o \
layers.o \
libraw2crtc.o \
loadsave.o \
main.o \
misc.o \
miscfileformats.o \
mountlist.o \
oldies.o \
op_c.o \
operatio.o \
pages.o \
palette.o \
pversion.o \
pxdouble.o \
pxquad.o \
pxsimple.o \
pxtall.o \
pxtall2.o \
pxtall3.o \
pxtriple.o \
pxwide.o \
pxwide2.o \
readini.o \
readline.o \
realpath.o \
saveini.o \
setup.o \
shade.o \
special.o \
tifformat.o \
tiles.o \
transform.o \
unicode.o \
version.o \
windows.o \
sdlscreen.o \
text.o \
#x11screen.o

SKINS = skin_classic.png skin_modern.png skin_DPaint.png \
        font_Classic.png font_Fun.png font_Fairlight.png \
        font_Melon.png font_DPaint.png \
        skin_scenish.png font_Seen.png skin_Aurora.png
SKIN_FILES = $(addprefix ../share/grafx2/skins/,$(SKINS))
SKIN_FILES += $(wildcard ../share/grafx2/skins/unicode_*)

grafx2: $(OBJ)
	$(CC) $(OBJ) -o $@ $(LIBS)

%.o: %.c
	@echo "$(CC) $<"
	@$(CC) $(CFLAGS) -c $< -o $@

install:
	mkdir -p /usr/local/share/grafx2
	mkdir -p /usr/local/share/grafx2/fonts
	mkdir -p /usr/local/share/grafx2/skins
	cp ../share/grafx2/gfx2def.ini /usr/local/share/grafx2/
	cp ../share/grafx2/gfx2.gif /usr/local/share/grafx2/
	cp ../share/grafx2/gfx2.png /usr/local/share/grafx2/
	cp ../share/grafx2/fonts/* /usr/local/share/grafx2/fonts/
	cp $(SKIN_FILES) /usr/local/share/grafx2/skins/

clean:
	@echo "GrafX2 Cleanup"
	@$(RM) $(OBJ)
	@$(RM) grafx2
