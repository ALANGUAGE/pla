#PLA documentation.md 
MIT license 2015 (C) Helmut Guenther
This is the main documentation file for developers and programmers and will be continued...
##Design considerations
I do not like segments and selectors in developing x86 software. I love flat binary files like the old CP/M or the DOS COM files. But you have only 64 KB for your text segment. For big date I have found a solution (see below). Even the PLA compiler needs only 26 KB for the code and works. 

Today the computers are so fast, that you need no precompiled libraries for small programs. On my MacBook Pro it takes only two seconds to compile, including the source libraries, writing a huge listing file with a cross reference listing and statistics. I put all library stuff in an archive source file and the compiler takes only the needed funcions to keep the binary small. The following netwide assembler needs more time to produce the binary. So I started to write an x86 assembler, it will be an COM file, too.

###Introduction
###Program Structure
###Variables
All names are case sensitive.
###Functions
###Statements
###Expressions
####pexpr()
####constantexpr()
####simplexpr()

###Debugging

##BA.BAT batch file
The DOS batch file calls A.COM with its own source code A.C. If there is no errror, it calls the assembler NASM wich outputs the binary fiele A.COM again. If you call the batch file again, you see, if the new generated file ist working. Otherwise you start thinking and a debug session. Take attention for the parameter -t for Turbo Assembler compatibility of the NASM file. My first assembler was TASM and now it is difficult to get rid of the TASM compatibility.
##AR.C archive source file
This file collects all handy, old and well tested (and not so well tested) routines in PLA language. I started collecting in the 1990 years and therefore it is sorted by date, starting with the oldest routines. There are mostly BIOS, DOS, direct I/O routines. Also parts of the C library with string routines, print and dump routines. It is divided in several blocks:

1. (Line 2) Commented out of key mapping variables for a German keyboard. The small German keyboar driver KeybGer() in line 57 needs these variables. If you use a German keyboard, copy these variables to your program, because PLA looks only for functions and not for variables in der archive file.
2. BSCREEN (line 13) the BIOS function writetty() Int 10h with some functions to output text and numbers without using Dos operating function. I need the functions for writing error messages to the screen, befor I opened a file at start time. You need these files also, if you have no operating system.
3. KEYBOARD (line30) Int 16h BIOS routines. in function waitkey() 

1. 
