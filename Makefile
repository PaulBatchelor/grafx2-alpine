CFLAGS += -DNORECOIL
CFLAGS += -I/usr/include/SDL2
CFLAGS += -DUSE_SDL2
#CFLAGS += -DUSE_X11
CFLAGS += -g
CFLAGS += -D_GNU_SOURCE

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

grafx2: $(OBJ)
	$(CC) $(OBJ) -o $@ $(LIBS)

%.o: %.c
	@echo "$(CC) $<"
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@echo "GrafX2 Cleanup"
	@$(RM) $(OBJ)
	@$(RM) grafx2
