@echo off
echo if "%%3"=="" if not "%%2"=="" ren "%%1 %%2" %%1%%2>~nospace.bat
lfnfor on
set "=
for %%f in (*.*) do call ~nospace.bat %"%%%f%"%
del ~nospace.bat