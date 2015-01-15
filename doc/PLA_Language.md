#PLA Language.md
##Program Structure
I do not like segments and selectors in developing x86 software. I love *flat binary files* like the old CP/M or the DOS COM files. But you have only 64 KB for your text segment. For big data I have found a solution (see below). Even the PLA compiler needs only 26 KB for the code and constant data and works. There is no need for a linker. You load the program without changing anything into memory and it starts at location 100h. Thats all.
####memory mapping of COM Flat Model
All COM file starts with only one segment and setting all the segment registers to the same address. This is the beginning of the 64 kbyte block of memory you can work with. The segment registers never change as long as the program is running and you can forget about them. The loader sets *CS=DS=SS=ES* and sets the intraction pointer *IP* to 100h. The COM flat model is the "little brother" of protected mode flat model. 
```
 16-bit offset|                    
-------------:|-------------------|
2,000,000     | ldata               GS: segment register, declared in LDATAORIG
--------------|-------------------|              
              |                    
 0 - 65,565   | uninitialized data  ES: segment register, saved in SegE
--------------|-------------------|
              |
65,565=FFFFh  | Start of stack      SP: stack pointer
              |
              | unused memory     
              |
              | .BSS                globally uninitialized data
       30,000 | end of code         start of bss sectionn, declared in ORGDATAORIG=30000            
     256=100h |                     IP: program starts here
            0 | PSP                 CS:, DS:, SS:
```
There are two exception: 

1. For storing the names of the variables and functions I needed a space of about 64 kbyte. So I reserved 64 kbyte and sets the *es* segment register to the beginning of that block. 
2. After switching to [unreal mode](http://en.wikipedia.org/wiki/Unreal_mode) your program can store date within the 4 GByte address space. I started at 2 MByte, declared in the constant *unsigned long LDATAORIG=2000000*. So I left 1 Mbyte for DOS and nearly 1 MByte for XMS,EMS, caches and other DOS stuff.

Today the computers are so fast, that you need no precompiled libraries for small programs. On my MacBook Pro it takes only two seconds to compile, including the source libraries, writing a huge listing file with a cross reference listing and statistics. I put all library stuff in an *archive source file* **AR.C** and the compiler takes only the needed funcions to keep the binary small. The following netwide assembler needs more time to produce the binary. So I started to write an x86 assembler, it will be an COM file, too.

###Functions
As every C program, so PLA starts with the function **main**() (line 618 after the eye catcher). 
```C
int main() { getarg();
  memresize(4096);       if (DOS_ERR) error1("memresize");
  segE=memalloc(4096);   if (DOS_ERR) error1("alloc memory");
  CNameTop=0;            getfirstchar();
  cputs("Compiling, ");   parse(); cputs("Check calls ");
  callrecursive=0; checkcalls(); epilog();
}
```
The main function is kept short and calls only some other functions. The last function called, except on errors,  is  **epilog**() (line 1011), which finishes with calling the function **end1**() in line 947. This function cloes all handles and calls **exitR**(). This function is in the archive file (line 157) and returns to DOS. The letter R means that it is a real mode function. So I have a namepsace left for the protected mode function.
The main function start by calling the following routines:

1. **getarg**() line 628. This function gets the parameter from the command line and parses them. It write the help screen, opens the input and list file. The function checks protected mode and writes the header to the listing file.
2. **memresize**() line 1044. When a COM program starts, it reserves all the memory. As the maximum size of a COM program is only 64 Kbyte, we reserve only 4096 paragraphs, which are 64 kbyte for code, data and stack. So we have place for another 64 kbyte, which will be addressed by the *es register* by the function **memalloc**() in line 1046. This is done to store the label and variable names. 
3. **getfirstchar**() line 625 is called to initialize the input buffer.
4. After sending a notice only to the screen "Compiling", **parse**() line 672 is called. this function has the endless loop *while(1)* in line 680. it returns to the main program, when all token are processed in line 673. The primary function is to look for a**#** and then calls the two preprocessors *dodefine* or *doinclude*. Otherwise it gets the next name. A PLA program consists either of a declaration of global variables or a function. If the name follows a **(**, then *dofunc*() is called, otherwise **doglob**() is called. The token **!** is a hack and calls the function **doLdata**() in line 110, which stores uninitialized data at the address *ldata*. This address starts at 2 MByte and stores big data in unreal mode.

###Variables
All names are case sensitive. I started with very short names like the [K&R Style](http://en.wikipedia.org/wiki/C_(programming_language)#K.26R_C) within the range of 1 to 6 letters. As the program becomes more complicated and I got extra 64 kbyte space for the names, I changed the constant **IDLENMAX** to 16 characters. It is much easy to program with long speaking variables and function names. Feel free to increase the constant.

###Statements
###Expressions
####pexpr()
####constantexpr()
####simplexpr()

###Debugging
