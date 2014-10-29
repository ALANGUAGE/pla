A.COM A.C
if errorlevel 1 goto fehler
/BIN/NASM.EXE -o A.COM -f bin -l A.LS -O1 -t A.S 
:fehler