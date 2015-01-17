#PLA Language.md
MIT license 2015 (C) Helmut Guenther.
The language consists of:

1. **Comments** *//* ist the comment for one line. /* ... */ is a multiline comment.
2. **Preprocessor** directives starts with #. There are only two directives:  *define* and *include*. Define exchanges a constant name with a fixed number. Include works as in "C" and includes files. The include archive file **AR.C** is hardcoded and will always be included. But PLA takes only the **needed** functions from AR.C to keep the runtime file small. The compiler searches only for functions and not for variables.      
3. **Global declarations** are *char*, *int* and *long*, which may be prefixed by the term *unsigned*. You may also initialize a variable with a *constant* number. The variables are stored in the code segment together with the code. Uninitialized global variables are set to zero. Local variables can **not** be initialized.  
**Pointers** are declared by preceeding the variable name with an asterisk (\*) like in the C language. All pointers are 16-bit segment offsets and are traited as short *unsigned* integers. There is no pointer arithmetic like in C, adding one to a pointer directs to the next *byte*, even if the pointer directs to an integer value.        
**Arrays** are declared by following the square brackets **[ ]** after a variable name. PLA supports only single-dimension arrays. For *not* initialized values the subscript must be a constant number. The compiler reserves space in the *heap*, because there is no value to store in the code file. If the array is initialized (e.g.: char array1**[ ]**="ABC"), then the value of the variable is stored in the code segment and saved with the code. Variable names are of maximum size *IDLENMAX*, which is current 16 characters long and may contain the underscore **\_**, letters and numbers and must not begin with a number. The names are *case sensitive*.     
You can use the address operator **&** to get the addres of the object. The address operator is implicit used by calling a subroutine with array names as parameters. The term *Array[x]* is equivalent of \*(array+x). **Address arithmetic** is done with scaling of integer and long arrays. To access data in memory, PLA uses the indirect address mode of the processor and uses the indirect register **BX**.    
The language is limited. There are no *struct* and no *unions* key words. You can declare only *one* variable in every statement. :round_pushpin:Please fix    

4. **Functions** are defined by the word *void*, *char*, *int* or *long* before the function name. And the name must be followed without any space by a bracket open **(**. As PLA does not handle *prototypes*, it assumes that the return value has the size of an integer and does not check the return size. PLA uses the *call by value* for parameters. If you want a *call by reference*, use the *indirection operator* (\*). Array names as parameters are handled as call by reference, too. The number and type of arguments are not verified.            
Inside the function is a block with curly brackets **{ }**. If there are *local variables* to be declared, they must be declared before the first statement occurs. A *stack frame* is automatically created, if you use parametrs or local variables. As calls may be nested through **recursive** calling the function, the frames are stacked one above the other.

####Reserved Words
All names are *case sensitive* and reserved words must be written in **lower case** letters. Reserved words are all (segment and special) register names (8/16/32 bit,) like *al, fs, esi* and **cr0**, the last one for switching to protected mode.    
There are new PLA reserved words as:
```
uint32   unsigned integer 32 bit
inth     interrupt (CDh)
asm      assembly code follows until end of line
__asm    assembly block follows surrounded by { }
__emit__ byte values following surrounded by ( ) and separeted by a comma ,
ifcarry  if carry flag set, statements follow. Must be the first statement after a DOS interrupt
ifzero   if  zero flag set, statements follow
```
Reserved words are also the following C language key words:

*signed, unsigned*,      
*void, char, int, short, long*,     
*return, if, else, while, do, goto*,     
*define, include*.      
Other C key words are **not** reserved words.

####Expressions
The big problem in evaluating expressions is deciding which parts of an expression are to be associated with which operators. To eliminate ambiguity, PLA does not know the parentheses **( )**. Therefore complex expressions must be separated into simple individual expressions. The advantage is, that there is no hassle about the evaluation precedence and you can control the compiling process. This is optimizing by **brain**. There are the following expression types:

1. **normal expression** PLA evaluates the right side of an expression and stores the value in *al,ax or eax*.
2. **constant expression** These expressions are preceeded with an underscore **_** and a blank before the expression. It gives the compiler a hint to use the short assembly form of an assignment of a constant.
3. **comparison expression** In a comparison statement, two expressions are compared. If there is only one expression, a byte  comparison with the **al** register is created. E.g. *if (value)* evaluates *if ( value != 0)*. 

####Constants
1. There are only positive **decimal** constants values. 
2. **Hexadezimal** constants begins with 0x or 0X. 
3. **Single character** constants are surrounded by two apostrophes as 'A'. 
4. Character **string** constants surrounded by two quotation marks as "ACB". The terminal zero constant is added by the compiler.
5. **Escape sequences** are three: A backslash following a n=newline, t=tab or 0=zero. The newline is in reality a line feed (ASCII 10), with skipping the carriage return (ASCII 13) in DOS and windows systems.  

####Operators
All operators are equal in precedence. There are the following groups of operators:    
**Operators**
```C
+  -  *  /  %(modulo)  &(AND)  |(OR)
```
**Assignment Operators**
```C
=(assign)  +=  -=  *=  /=  &=  |=  <<  >>  
++  -- (both postfix only)
```
**Relational Operators**
```C
==  !=  <  <=  >  >=
```
**Missing Operators**
```C
! logical NOT
~ one complement
- unary minus
sizeof ( )
?: conditional operator
^ bitwise exclusive OR
&& logical AND
|| logical OR
```
As complex comparison are not allowed, the last operators are not useful.

####Statements
There are the following statements:
```C
;       null statement
expr;   simple statement
_ expr; constant expression statement
{ }     compound statement (block)
if   (then   else)
do
while
goto
asm      until end of line
asmblock surrounded with { } 
inth     interrupt
ifcarry
ifzero
emit     bytes only, separeted with comma
return   may be followed by an expression
```
***Missing Statements**
1. There is no **switch** statement, because it is difficult to implement and can be replaced with *if* statements. At run time, the *case* statement must load and evaluate every expression. Some *if* statements are more difficult to read, but they have the advantage of beeing smaller and faster at run time.    
2. There is no ***for** statement. It can be replaced with a *while* statement.    
3. no *break, continue, default*



