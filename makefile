
all: bof bof32
debug: debug32 debug64

bof:
	x86_64-w64-mingw32-gcc -Wall -DCOFF_STANDALONE beacon_compatibility.c COFF_Loader.c -o COFFLoader64.exe

bof32:
	i686-w64-mingw32-gcc -Wall -DCOFF_STANDALONE beacon_compatibility.c COFF_Loader.c -o COFFLoader32.exe

debug64:
	x86_64-w64-mingw32-gcc -DCOFF_STANDALONE -DDEBUG beacon_compatibility.c COFF_Loader.c -o COFFLoader64debug.exe

debug32:
	i686-w64-mingw32-gcc -DCOFF_STANDALONE -DDEBUG beacon_compatibility.c COFF_Loader.c -o COFFLoader32debug.exe
nix:
	gcc -DCOFF_STANDALONE -Wall -DDEBUG beacon_compatibility.c COFF_Loader.c -o COFFLoader.out

clean:
	rm -f COFFLoader*.exe COFFLoader.out
	