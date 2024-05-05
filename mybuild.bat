call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x86

REM 将依赖库的路径添加到环境变量

set INCLUDE=.\fltk\include;%INCLUDE%
set LIB=.\fltk\lib;%LIB%

set INCLUDE=.\zlib\include;%INCLUDE%
set LIB=.\zlib\lib;%LIB%

REM 编译项目

nmake -f makefile.release

REM 嵌入清单文件

mt.exe -nologo -manifest ".\res\ptk.manifest" -outputresource:".\out\pvztoolkit.exe;#1"