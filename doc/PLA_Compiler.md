#PLA Compiler.md 
MIT license 2015 (C) Helmut Guenther. 
This is the main documentation file for developers and programmers and will be continued...
##Introduction
:round_pushpin:  means, that there is work to do. I call you to give enhancements. Please become a contributor for the development of PLA and give me a note at :e-mail: help@pla.de.    

##Program Structure
I do not like segments and selectors in developing x86 software. I love the flat binary files like the old CP/M or the DOS COM files. But the segment is limited to 64 kbyte. For most of the command line programs it will be enough space. Even the PLA compiler needs only 26 KByte for the code and the constant data and it works well. For storing more data there are some possibilities. Another advantage: There is no need for a linker. You load the program without changing anything into memory and start at location 100h. Thats all!

####Memory Mapping of the COM Flat Model
All COM file starts with only one segment and set all the segment registers to the same start address. This is the beginning of the 64 kbyte block of memory you can work with. The segment registers never change as long as the program is running and therefore you can forget about them. The loader sets *CS=DS=SS=ES* and sets the intruction pointer *IP* to 100h. The COM flat model is the "little brother" of the protected mode flat model. 
```
 HIGH ADDRESS                    
-------------:|-------------------|
2,000,000     | ldata               GS: segment register, declared in LDATAORIG
--------------|-------------------|              
              |                    
 0 - 65,565   | uninitialized data  ES: segment register, saved in SegE
--------------|-------------------|
              |
65,565=FFFFh  | Start of stack      SP: stack pointer
              |
              |                     unused memory betwwen heap and stack      
              |
       30,000 | Start of heap       start of bss section, declared in ORGDATAORIG=30000 
              | end of code                    
     256=100h |                     IP: program starts here
            0 | PSP                 CS:, DS:, SS:
 LOW ADDRESS  
```
The amount of unused memory between *heap* and *stack* will be calculated and displayed at compile time. As PLA does not support allocation of memory at runtime, keep an eye only of the grows of the stack. The maximum used stack size (without recursion) will also be displayed at compile time.           
There are two exception of using one code segment:     
1. For storing the names of the variables and functions, I needed a space of about 64 kbyte. So I reserved 64 kbyte and sets the **es** segment register to the beginning of that block. This is a real quirk.   
2. After switching to [unreal mode](http://en.wikipedia.org/wiki/Unreal_mode) your program can store data within the 4 GByte address space. I started arbitrary at 2 MByte, declared in the constant *unsigned long LDATAORIG=2000000*. So I left free 1 Mbyte for DOS and nearly 1 MByte for XMS, EMS, caches and other DOS stuff.

Today the computers are so fast, that you need no precompiled libraries for small programs. On my MacBook Pro it takes only two seconds to compile, including all the source libraries, to write a huge listing file with a cross reference listing and to produce the statistics. I put all library stuff in the *archive source file* **AR.C** and the compiler takes only the needed functions to keep the binary file small. Then the following netwide assembler (NASM) needs more time to produce the binary file. So I started to write an x86 assembler, it will be an COM file, too.

###Functions
As every C program, so PLA starts with the function **main**() in line 618 after the eye catcher. 
```C
int main() { getarg();
  memresize(4096);       if (DOS_ERR) error1("memresize");
  segE=memalloc(4096);   if (DOS_ERR) error1("alloc memory");
  CNameTop=0;            getfirstchar();
  cputs("Compiling, ");   parse(); cputs("Check calls ");
  callrecursive=0; checkcalls(); epilog();
}
```
The main function is kept short and calls only some other functions. The last function called, except on errors,  is the function **epilog**() (line 1011), which finishes with calling the function **end1**() in line 947. This function closes all handles and calls **exitR**(). This function is in the archive file (line 157) and returns to DOS. The letter R means that it is a real mode function. So I have an additional namespace for the protected mode functions.    
The main function starts by calling the following routines:

1. **getarg**() line 628. This function gets the parameter from the command line and parses them. It write the help screen, opens the input and list file. The function checks protected mode and writes the header to the listing file.
2. **memresize**() line 1044. When a COM program starts, it reserves all the available memory. As the maximum size of a COM program is only 64 Kbyte, we reserve only 4096 paragraphs, which are 64 kbyte for code, data and stack. So we have place for another 64 kbyte, which will be addressed by the *es register* by the function **memalloc**() in line 1046. In this extra space the label and variable names are stored. 
3. **getfirstchar**() line 625 is called to initialize the input buffer.
4. After sending a notice only to the screen "Compiling", **parse**() line 672 is called. this function has the endless loop *while(1)* in line 680. it returns to the main program, when all token are processed in line 673. The primary function is to look for a number sign **#** and then calls the two preprocessors *dodefine* or *doinclude*. Otherwise it gets the next name. A PLA program consists either of a declaration of global variables or a function. If the name follows a **(**, then *dofunc*() is called, otherwise **doglob**() is called. The token **!** is a hack and calls the function **doLdata**() in line 110, which stores uninitialized data at the 32-bit address **ldata**. This address starts at 2 MByte and stores big data in unreal mode.

###Variables
All names are *case sensitive*. I started with very short names like the [K&R Style](http://en.wikipedia.org/wiki/C_(programming_language)#K.26R_C) within the range of 1 to 6 letters. As the program becomes more complicated and I got extra 64 kbyte space for the names, I changed the constant **IDLENMAX** to 16 characters. It is much easier to program with long speaking variables and function names. Feel free to increase the constant anymore.

###Statements
###Expressions
####pexpr()
####constantexpr()
####simplexpr()

###Debugging
