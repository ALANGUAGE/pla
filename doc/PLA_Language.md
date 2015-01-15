#PLA Language.md
MIT license 2015 (C) Helmut Guenther.
The language consists of:

1. **comments** *//* ist the comment for one line. /* ... */ is a multiline comment.
2. **preprocessor** directives starting with #. there are only two directives:  *define* and *include*. Define exchanges a constant name with a fixed number. Include works as in "C" and includes files. The include file **AR.C** is hardcoded and will always be included. But PLA takes only the **needed** functions from AR.C to keep the file small and does not search for other things like variables.   
3. **global declarations** for *char*, *int* and *long*, which may be prefixed by *unsigned*. Declare *pointer* by preceeding the variable name with a *.  *arrays* are declared by []. If the array is initialized, then it goes into the code segment, otherwiese into the bss segment. Names are max. *IDLENMAX* long, current 16 character and may contain \_ and are case sensitive.There are no *struct* and no *unions*. You can declare only *one* variable in a statement.:round_pushpin: Please fixe me.
4. **functions** are defined by either *void*, *char*, *int* or *long* before the function name. The name must be followed without any space by **(**. As PLA does not handle *prototypes*, it assumes that the return value is *int*.
All of them can be used in any order until the program finishes. Inside the function block **{ }** you can declare local variables. Then start with the statements inside the function body.

####Reserved Words
All names are case sensitive and reserved words must be written in lower case letters. Reserved are all (segment and special) register names (8/16/32 bit,) like *al, fs, esi* and **cr0**, the last one for switching to protected mode. There are new PLA reserved words like:
* *uint32*   unsigned integer 32 bit
* *inth*     interrupt (CDh)
* *asm*      assembly code following until end of line
* *__asm*    assembly block follows surrounded by { }
* *\__emit__* byte values following surrounded by ( ) and separeted by ,
* *ifcarry*  if carry flag set, statement(s) following. Must be the first statement after a DOS interrupt
* *ifzero*   if zero flag set, statement(s) following.

Reserved words are also the following C language key words:

*signed, unsigned, void, char, int, short, long, return, if, else, while, do, goto, define, include*. 
Other C key words are *not* reserved words.

####Expressions
PLA does not know the **( )** for grouping expressions. Complex expressions must be separated into simple expressions. There are the following expression types:

1. *expressions* normal expression type. PLA evaluates the right side of an expression to *al,ax,eax*.
2. *constant expression* These expressions are preceeded with an underscore and a blank before the expression to give the compiler a hint, not to recursively parsing the expression. Instead it uses the short assembly form of an assignment of a constant.

####Constants
1. There are only positive dezimal constants. 
2. Hexadezimal constants, which begin with 0x or 0X. 
3. Single character constants surrounded by two apostrophes like 'A'. 
4. Character string constants surrounded by two quotation marks like "ACB".
5. Escape sequences are three: A backslash following a n=newline, t=tab or 0=zero. The newline is in real a line feed, disgarding the carriage return in DOS and windows systems.  

####Pointers
####Arrays
