####PLA consists of the following files:
* A.C source of the compiler
* A.COM binary of the compiler, runs under DOS (FrreDOS, MS-DOS, Dosbox, Boxer)
* BA.BAT Dos batch file, which calls A.COM and NASM.EXE and compiles itself
* AR.C Archive source file. The compiler includes only the necesarray source files
* A.S the generated assembly file with cross reference listings and statistics.
* A.LS the generated listing file from NASM

In the doc directory are documentaion files:
* LICENSE
* BA_BAT.md how to start the PLA compiler
* PLA_Language.md Introduction to the language
* PLA_Compiler.md Manual for developers and contributors. I have tried to explain the design, all routines and variables.
