A.COM %1.C
if errorlevel 1 goto fehler
NASM.EXE -o %1.CO -f bin -l %1.LS -O1 -t %1.S 
if errorlevel 1 goto fehler
goto ende
:fehler
rem *********************** FEHLER ********************
:ende