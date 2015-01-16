#AR.C archive source file
This file collects all handy, old and well tested (and not so well tested) routines in PLA language. I started collecting in the 1990 years and therefore it is sorted by date, starting with the oldest routines. There are mostly BIOS, DOS and direct I/O routines. Included are parts of the C library with string, print and dump routines. The archive is divided in several blocks:

1. Key mapping variables(Line 2) are commented out of for a German keyboard. The small German keyboard driver KeybGer() in line 57 needs these variables. If you use a German keyboard, copy these variables to your program, because PLA looks only for functions and not for variables in the archive file.
2. BSCREEN (line 13) The function writetty( ) Int 10h with some functions outputs text and numbers without using the DOS operating functions. The functions are for writing error messages to the screen, before opening a file at start time. You need these files also, if you have no operating system.
3. KEYBOARD (line30) Int 16h BIOS routines. The expression *emit(0x74, 0xFA)* in the function waitkey( )  realizes a "jump if zero" to the begin of the function. In function kbhit (line 34) the last expression **0;**  compiles to *mov eax, 0* and that is the *return* value.
4. TURBOIO (line 35) Fast BIOS screen routines.
5. PROMPT (line 57) BIOS keyboard input routines.  Correcting the input string before pressing the *return* key is possible. 
6. BOX (line 65) signing a box on the screen with BIOS routines.
7. RTC (line 82) get the BIOS time and wait routines.
8. DIRECTIO (line 89) Direct write to the screen with the help of the es register, which is saved and *not* changed.
9. STRING (line 96) Some of the C library string routines. Some are untested and waiting to be tested.
10. DUMP (line 132) Two routines for register and memory dump. There are not a real debugger, but helped me in many situations.
11. DOSINT (line 147) This is the main function for the following DOS fucntions and is called by them. The PLA statement *ifcarry* increment the vraiable *DOS_ERR*. This **must** be the first statement after a DOS call, because otherwise the *carry flag* gets lost.
12. ATOI (line173) A family of functions to convert from ascii to integer. The function ultoa2() is a test bed for 32 bit processing.

