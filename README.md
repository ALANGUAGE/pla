PLA Programming Language A
=
assembly language with C style syntax for X86 processors with the freedom of assembly and the notation of the C language with the MIT License (MIT) starting from 1.1.2015.

* [files.md](doc/files.md), description of all files.
* [PLA_Language.md](doc/PLA_Language.md) for a short description of the language.
* [Compiler.md](/doc/PLA_Compiler.md) introduction for developers and collaborators.

####Home
Website: https://github.com/ALANGUAGE/pla or http://pla.de

:e-mail: help@pla.de

I do not like segments and selectors in developing x86 software. I love flat binary files like the old CP/M or the DOS COM files. But you have only 64 KB for your text segment and for big data I have found a solution. Even the PLA compiler needs only 26 KB for the code and constant data and works. There is no need for a linker. You load the program without changing anything into memory and it starts at location 100h. Thats all.

It is my first free software and I am new to Github. Contrubutors are heartily wellcome! 
I am looking for comments, suggestions and of  course bugs. I start the documentation and will explain the design, all functions and variables. If it holds interests to you, please come back or write me an email.

####TODO
* writing the documentation
* installing a mailing list, issues tracker

####Later
I used no version control system and printed out the code. 
So I wrote the code very dense. With the code folding features of the editors 
there is no need any more. Beautifying the code is necessary.

####History
I (Helmut Guenther) started the project in MS-DOS times to learn how a compiler works.
As of 1.1.2015 I set the software as free software under the MIT license.
You find a very old version from 2009 here: http://sourceforge.net/projects/pla/
It includes with source compiler, command interpreter and the game [Towers of Hanoi](http://en.wikipedia.org/wiki/Tower_of_Hanoi).

