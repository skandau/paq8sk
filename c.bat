@echo off                          

del *.exe

set ICLCFG=icl64.cfg

set icl=C:\IntelJ1144\bin-intel64\icl2a.bat 
set icl=C:\IntelJ2190\bin-intel64\icl2a.bat 
set icl=C:\IntelI0124\bin-intel64\icl.bat
set icl=C:\MSVS10\VC\bin\amd64\c2.bat /I..\Lib
set icl=C:\IntelB1054\bin\intel64\icl1.bat 

set icl=C:\VC2015\bin\amd64\c2.bat /I..\Lib
set icl=C:\IntelJ0117\bin-intel64\icl2a.bat
set icl=C:\IntelI0124\bin-intel64\icl2a.bat
set icl=C:\IntelJ2190\bin-intel64\icl2a.bat

call %icl% /DWINDOWS /DMT /Fepaq8pxd64.exe @list_c @list_cpp

del *.obj *.exp
