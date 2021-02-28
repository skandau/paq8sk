@echo off

del *.exe

set incs=-DSTRICT -DNDEBUG -DWIN32 -Izlib -Ibzip2 -DWINDOWS -DMT 

set opts=-fstrict-aliasing -fomit-frame-pointer ^
-fno-stack-protector -fno-stack-check -fno-check-new

rem -flto -ffat-lto-objects -Wl,-flto -fuse-linker-plugin -Wl,-O -Wl,--sort-common -Wl,--as-needed -ffunction-sections
rem -fprofile-use -fprofile-correction  -fwhole-program 

set gcc=C:\MinGW\bin\g++.exe
set path=%gcc%\..\

del *.exe *.o

%gcc%\..\gcc.exe -c -march=sandybridge -O9 %incs% %opts% @list_c

%gcc% -s -march=sandybridge -std=gnu++1z -O9 %incs% %opts% @list_cpp @list_o -static -o paq8sk.exe

del *.o
pause


