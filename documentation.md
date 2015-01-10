This is the main documentation file for developers and programmers and will be continued...
####Design considerations
I do not like segments and selectors in developing x86 software. I love flat binary files like the old CP/M or the DOS COM files. But you have only 64 KB for your text segment. For big date I have found a solution (see below). Even the PLA compiler needs only 26 KB for the code and works. 

Today the computers are so fast, that you need no precompiled libraries for small programs. On my MacBook Pro it takes only two seconds to compile, including the source libraries, writing a huge listing file with a cross reference listing and statistics. I put all library stuff in an archive source file and the compiler takes only the needed funcions to keep the binary small. The following netwide assembler needs more time to produce the binary. So I started to write an x86 assembler, it will be an COM file, too.

---
(to be continued)
####Variables
####Functions
