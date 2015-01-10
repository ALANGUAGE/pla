:de: [Wikipedia](http://de.wikipedia.org/wiki/Programming_language_A)
:us: see the following explanation:
####Programming Language A (PLA) 
Programming Language A is an assembly language with C-like syntax for x86 processors. the language is particularly well suited for **system programming**, because it has the freedom and all possibilities from assembly and the compact notation of the C programming language.

PLA receives from assembly language the speed of execution, the low code size and ability to access the hardware directly. Furthermore, there are only very low demands on the runtime system, if a runtime environment is ever used.

PLA receives from the C language the portability, flexible and compact structure of the source code with the clarity and checks of an additional parser. Source code is available under the MIT license. The  compiler generates Netwide Assembler [NASM](http://www.nasm.us) source code.
###History
PLA was inspired by the language of 

1. the portable high-level assembly language risC, The portable, object oriented, high-level assembler programming tool with a flexible C-like syntax, 1987 by International Microcomputer Software Inc. (IMSI), 
2. the TERSE Programming Language 1996 Jim Nail, ISBN 0-9652660-0-1 and 
3. the famous book HLA (High Level Assembly) in Randall Hyde: The Art of Assembly Language, ISBN 1-886411-97-2. 

The development took place in the direction of the C language, new low-level language elements were added, and the expansion of 8/16 bit to 32 bit has begun. Other projects such as 

4. the [C Intermediate Language (CIL)](http://www.eecs.berkeley.edu/~necula/cil/) and 
5. the [Low Level Virtual Machine (LLVM)](http://llvm.org) affected the development. 

The development start with using the [Borland Turbo Assembler](http://en.wikipedia.org/wiki/Turbo_Assembler), then changed to Netwide Assembler [NASM](http://www.nasm.us). I started to build a very small assembly clone AS written in PLA, less than 64 KByte in a COM file, with NASM compatible syntax.

###Properties
For system and low level programming, the C syntax is changed to include the following elements:

1. all processor registers are reserved names and can be addressed as basic data types without an address.
2. the almost orthogonal interface of the X86 CPU allows only 2-address instructions.
3. assembly source code may be used inline, line or block oriented.
4. Additional keywords like *ifzero*, **ifcarry*, *inth*, **emit** facilitate communication with the BIOS or operating system.
5. Additional syntax checks before transfering to the assembler.
6. Adjustable locations for uninitialized data or array data types.
7. If an operating system is present, only the file functions *create*, *open*, *read* and *write* are needed.
Functions for BIOS calls or direct I / O for textual input and output are available.
Required functions are automatically integrated from a source code library.
In the intermediate code data types, functions, and calls are listed and commented.
As output intermediate code for NASM is generated, which can be easily changed for different operating systems.
The minimum software requirements in all versions of DOS or virtualizer such as VirtualBox, VirtualPC or DOSBox.
Limitations [Edit]
It has the following limitations:

No 3 or more address operations. Long expressions must be dismantled.
Only a portion of the C-key is supported.
No floating point numbers, complex numbers, and no complex data types.
Example program in PLA [Edit]
With the cdecl calling convention parameters, local variables and function results are compiled. Also comply with C syntax, the declaration of variables, #define, include files, loop constructs such if..then..else, do, while, goto or label.

The main changes relate to the expressions, which are limited by the 2-address machine. See the following code snippet:

1. Addition of a constant to a byte variable
charvar + = 7;
-> Add byte [charvar], 7

2. Assignment of a constant to the contents of a pointer variable. This is usually used at the end of a string. The compiler automatically uses the ebx register to latch the address because not emerge two memory accesses in a command.
ptrvar * = 0;
-> Mov ebx word, [ptrvar]; Address of the variable in ebx
-> Mov byte [ebx], 0; One byte is in the main memory with the address, which is located in ebx stored.

3. Allocation of a local variable to a global variable, the compiler automatically takes care of the accumulator as a buffer.
globalVar = localvar;
-> Mov eax, dword [bp-8]
-> Mov dword [globalVar], eax

4. Addition of a variable to a variable
var1 var2 + =;
-> Mov al, byte [var2]; The accumulator is used as a buffer memory.
-> Add byte [var1], al

