
; A.COM CComp V0.6, Arglen: 4, Argv: A.C, Source: A.C, Output asm: A.S
;PROTECTED: 0 V86 OFF.  32bit: ON. 
org  256 ; NASM ON
jmp main

;-1 //A.C  The MIT License 2015 (c) 2015 Helmut Guenther


;-2 char Version1[]="A.COM CComp V0.6";

Version1 db "A.COM CComp V0.6",0

;-3 #define BSS


;-4 #define ARCHIVE "AR.C"

;Use archive file: AR.C

;-5 #define ORGDATA     30000


;-6 char BSS=0;  char NASM=0;  char PROTECTED=0;     char LIST=0;

BSS db 0
NASM db 0
PROTECTED db 0
LIST db 0

;-7 #define LSTART        200


;-8 #define VARMAX        300


;-9 #define FUNCMAX       300


;-10 #define CALLMAX      2000


;-11 #define IDLENMAX       16


;-12 #define _  // constant compare


;-13 #define T_NAME        256


;-14 #define T_CONST       257 


;-15 #define T_STRING      258     


;-16 #define T_INCLUDE     510     


;-17 #define T_DEFINE      511  


;-18 #define T_RETURN      512


;-19 #define T_IF          513      


;-20 #define T_ELSE        514  


;-21 #define T_WHILE       515      


;-22 #define T_DO          516


;-23 #define T_INT         517     


;-24 #define T_ASM         518   


;-25 #define T_ASMBLOCK    519   


;-26 #define T_EMIT        520


;-27 #define T_GOTO        521    


;-28 #define T_VOID        529  


;-29 #define T_CHAR        530       


;-30 #define T_SIGNED      531


;-31 #define T_UNSIGNED    532


;-32 #define T_LONG        533


;-33 #define T_SHORT       534


;-34 #define T_UINT32      545


;-35 #define T_INTH        600


;-36 #define T_IFCARRY     601


;-37 #define T_IFZERO      602


;-38 #define T_EQ          806


;-39 #define T_NE          807


;-40 #define T_GE          811


;-41 #define T_LE          824


;-42 #define T_PLUSPLUS   1219


;-43 #define T_MINUSMINUS 1225


;-44 #define T_PLUSASS    1230


;-45 #define T_MINUSASS   1231


;-46 #define T_MULASS     1232


;-47 #define T_DIVASS     1233


;-48 #define T_ANDASS     1234


;-49 #define T_ORASS      1235


;-50 #define T_LESSLESS   1240


;-51 #define T_GREATGREAT 1241


;-52 #define COMAX        3000


;-53 #define CMDLENMAX      67


;-54 unsigned long LDATAORIG=2000000;     unsigned long ldata=2000000; long LONG0=0;

LDATAORIG dd 2000000
ldata dd 2000000
LONG0 dd 0

;-55 unsigned long ORGDATAORIG=30000;     unsigned long orgData=30000;

ORGDATAORIG dd 30000
orgData dd 30000

;-56 char co[COMAX];    int maxco=0;      int maxco1=0;

section .bss
absolute 30000
co resb 3000
section .text
maxco dw 0
maxco1 dw 0

;-57 char coname[CMDLENMAX];              char *cloc=0;

section .bss
absolute 33000
coname resb 67
section .text
cloc dw 0

;-58 char locname[CMDLENMAX]; int maxloc=0;

section .bss
absolute 33067
locname resb 67
section .text
maxloc dw 0

;-59 int fdin=0;        int fdout=0;      char symbol[128];

fdin dw 0
fdout dw 0
section .bss
absolute 33134
symbol resb 128
section .text

;-60 char fname[CMDLENMAX];               char namein[CMDLENMAX];

section .bss
absolute 33262
fname resb 67
section .text
section .bss
absolute 33329
namein resb 67
section .text

;-61 char namelst[CMDLENMAX];             char archivename[]="AR.C";

section .bss
absolute 33396
namelst resb 67
section .text
archivename db "AR.C",0

;-62 int token=0;       char globC=0;     int spalte=0;

token dw 0
globC db 0
spalte dw 0

;-63 char thechar=0;    int iscmp=0;      int nconst=0;

thechar db 0
iscmp dw 0
nconst dw 0

;-64 int nreturn=0;     int nlabel=0;     int callrecursive=0;

nreturn dw 0
nlabel dw 0
callrecursive dw 0

;-65 unsigned long lexvalL;  char islong; char isldata=0;

lexvalL dd 0
islong db 0
isldata db 0

;-66 int typei;        char istype;  char GType [VARMAX]; // 0=V, 1=*, 2=&,#

typei dw 0
istype db 0
section .bss
absolute 33463
GType resb 300
section .text

;-67 int signi;        char issign;  char GSign [VARMAX]; // 0=U, 1=S

signi dw 0
issign db 0
section .bss
absolute 33763
GSign resb 300
section .text

;-68 int widthi;int wi;char iswidth; char GWidth[VARMAX]; // 0, 1, 2, 4

widthi dw 0
wi dw 0
iswidth db 0
section .bss
absolute 34063
GWidth resb 300
section .text

;-69 int  GTop=1;        int LTop=150;

GTop dw 1
LTop dw 150

;-70 int  GLino   [VARMAX];     // lineno

section .bss
absolute 34363
GLino resw 300
section .text

;-71 int  GUsed   [VARMAX];     // how manytimes is var used

section .bss
absolute 34963
GUsed resw 300
section .text

;-72 long GData   [VARMAX];     // init data or local addr or array len or define no

section .bss
absolute 35563
GData resd 300
section .text

;-73 long GAdr    [VARMAX];     // Address 32 bit

section .bss
absolute 36763
GAdr resd 300
section .text

;-74 int  GName   [VARMAX];     // start of var name in list

section .bss
absolute 37963
GName resw 300
section .text

;-75 int  FTop=0;               // top of function list

FTop dw 0

;-76 char FWidth  [FUNCMAX];    // iswidth

section .bss
absolute 38563
FWidth resb 300
section .text

;-77 int  FLino   [FUNCMAX];    // lineno

section .bss
absolute 38863
FLino resw 300
section .text

;-78 int  FCalls  [FUNCMAX];    // no of calls for this function

section .bss
absolute 39463
FCalls resw 300
section .text

;-79 int  FName   [FUNCMAX];    // start of function name in list

section .bss
absolute 40063
FName resw 300
section .text

;-80 int  CTop=0;               // top of call list

CTop dw 0

;-81 int  CName   [CALLMAX];    // CNameTop

section .bss
absolute 40663
CName resw 2000
section .text

;-82 char CUnres  [CALLMAX];    // 0 = unresolved call

section .bss
absolute 44663
CUnres resb 2000
section .text

;-83 char Ls[]="12345678901";                      //must be in low memory

Ls db "12345678901",0

;-84 char NA[]="12345678901234567890123456789012"; //must be in low memory

NA db "12345678901234567890123456789012",0

;-85 char NB[]="12345678901234567890123456789012"; //must be in low memory

NB db "12345678901234567890123456789012",0

;-86 char fgetsdest[128];         unsigned char *CNameTop=0;

section .bss
absolute 46663
fgetsdest resb 128
section .text
CNameTop dw 0

;-87 unsigned char *fgetsp=0;     unsigned int segE;

fgetsp dw 0
segE dw 0

;-88 unsigned int lineno=1;       unsigned int linenoinclude=1;

lineno dw 1
linenoinclude dw 1

;-89 unsigned char *pt=0;         unsigned char *p1=0;

pt dw 0
p1 dw 0

;-90 int DOS_ERR=0; int DOS_NoBytes=0; char DOS_ByteRead=0;

DOS_ERR dw 0
DOS_NoBytes dw 0
DOS_ByteRead db 0

;-91 


;-92 long varL1!; int vari1!; unsigned int vari2![3];

;p32  adr: 2000000, varL1 [4]
;p32  adr: 2000004, vari1 [2]
;p32  adr: 2000006, vari2 [6]

;-93 char varc1!; long varL2!;

;p32  adr: 2000012, varc1 [1]
;p32  adr: 2000013, varL2 [4]

;-94 long arrL1![3]; long varL4!; char chc2!;

;p32  adr: 2000017, arrL1 [12]
;p32  adr: 2000029, varL4 [4]
;p32  adr: 2000033, chc2 [1]

;-95 void ttt(long par1, char *s)


ttt:  ; *** PROC ***

;-96   {   }

;Function : ttt, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign dwrd    95 NULL bp+4    par1
;  201 ptr sign byte    95 NULL bp+8    s;
 ENTER  0,0

;-97 void a(unsigned int i) { if(NASM == 0) prs("offset "); printName(i);}//address
 LEAVE
 ret
; ENDP

a:  ; *** PROC ***
;Function : a, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word    97 NULL bp+4    i;
 ENTER  0,0
 mov al, [NASM]
 cmp al, 0
 jne @@a1
 push a_0
 call prs
 add  sp, 2
@@a1:
 push word [bp+4]
 call printName
 add  sp, 2

;-98 void v(unsigned int i) { if(NASM) { if (i < LSTART) prc('['); }
 LEAVE
 ret
; ENDP
a_0 db "offset ",0

v:  ; *** PROC ***
;Function : v, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word    98 NULL bp+4    i;
 ENTER  0,0
 mov al, [NASM]
 or  al, al
 je @@v2
 mov ax, [bp+4]
 cmp ax, 200
 jge @@v3
 push 91
 call prc
 add  sp, 2
@@v3:

;-99   printName(i); if(NASM) { if (i < LSTART) prc(']'); }   }//value

@@v2:
 push word [bp+4]
 call printName
 add  sp, 2
 mov al, [NASM]
 or  al, al
 je @@v4
 mov ax, [bp+4]
 cmp ax, 200
 jge @@v5
 push 93
 call prc
 add  sp, 2
@@v5:
@@v4:

;-100 void checknamelen() { int i;    i=strlen(symbol);
 LEAVE
 ret
; ENDP

checknamelen:  ; *** PROC ***
;Function : checknamelen, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   100 NULL bp-2    i;
 ENTER  2,0
 lea  ax, [symbol]
 push ax
 call strlen
 add  sp, 2
 mov word [bp-2], ax

;-101   if (i >= IDLENMAX) error1("Item name is too long in characters)"); }

 mov ax, [bp-2]
 cmp ax, 16 ;unsigned : 1
 jl  @@checknamelen6
 push checknamelen_0
 call error1
 add  sp, 2
@@checknamelen6:

;-102 void pwi(int i) {  // print width
 LEAVE
 ret
; ENDP
checknamelen_0 db "Item name is too long in characters)",0

pwi:  ; *** PROC ***

;-103   if (i == 1) prs("byte ");    if (i == 2) prs("word ");

;Function : pwi, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   102 NULL bp+4    i;
 ENTER  0,0
 mov ax, [bp+4]
 cmp ax, 1
 jne @@pwi7
 push pwi_0
 call prs
 add  sp, 2
@@pwi7:
 mov ax, [bp+4]
 cmp ax, 2
 jne @@pwi8
 push pwi_1
 call prs
 add  sp, 2

;-104   if (i == 4) prs("dword ");   if (NASM == 0) prs("ptr ");

@@pwi8:
 mov ax, [bp+4]
 cmp ax, 4
 jne @@pwi9
 push pwi_2
 call prs
 add  sp, 2
@@pwi9:
 mov al, [NASM]
 cmp al, 0
 jne @@pwi10
 push pwi_3
 call prs
 add  sp, 2

;-105 }

@@pwi10:

;-106 void storeName() {int i;
 LEAVE
 ret
; ENDP
pwi_0 db "byte ",0
pwi_1 db "word ",0
pwi_2 db "dword ",0
pwi_3 db "ptr ",0

storeName:  ; *** PROC ***

;-107   i=strlen(symbol); to_far(CNameTop, symbol); CNameTop=CNameTop+i; CNameTop++;

;Function : storeName, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   106 NULL bp-2    i;
 ENTER  2,0
 lea  ax, [symbol]
 push ax
 call strlen
 add  sp, 2
 mov word [bp-2], ax
 lea  ax, [symbol]
 push ax
 push word [CNameTop]
 call to_far
 add  sp, 4
 mov ax, [CNameTop]
 add ax, [bp-2]
 mov word [CNameTop], ax
 inc  word [CNameTop]

;-108 }


;-109 char doglobName[IDLENMAX];
 LEAVE
 ret
; ENDP
section .bss
absolute 46791
doglobName resb 16
section .text

;-110 void doLdata() {


doLdata:  ; *** PROC ***

;-111   if (GTop >= LSTART) error1("Global table full");

 mov ax, [GTop]
 cmp ax, 200 ;unsigned : 1
 jl  @@doLdata11
 push doLdata_0
 call error1
 add  sp, 2

;-112   if (iswidth == 0) error1("no VOID as var type");

@@doLdata11:
 mov al, [iswidth]
 cmp al, 0
 jne @@doLdata12
 push doLdata_1
 call error1
 add  sp, 2

;-113   checknamelen();

@@doLdata12:
 call checknamelen

;-114   if (checkName() != 0) error1("Global variable already defined");

 call checkName
 cmp al, 0
 je  @@doLdata13
 push doLdata_2
 call error1
 add  sp, 2

;-115   GAdr[GTop]=ldata;

@@doLdata13:
 mov eax, [ldata]
 mov bx, [GTop]
 shl bx, 2
 mov [GAdr+bx], eax

;-116   eax=0;  lexvalL=iswidth; // Cast B2L

 mov  eax, 0
 mov al, [iswidth]
 mov dword [lexvalL], eax

;-117   if (istoken('[')) { istype='&';

 push 91
 call istoken
 add  sp, 2
 or  al, al
 je @@doLdata14
 mov eax, 38
 mov byte [istype], al

;-118     expect(T_CONST);

 push 257
 call expect
 add  sp, 2

;-119     if (iswidth==2) lexvalL=lexvalL << 1;

 mov al, [iswidth]
 cmp al, 2
 jne @@doLdata15
 mov eax, [lexvalL]
 shl eax, 1
 mov dword [lexvalL], eax

;-120     if (iswidth==4) lexvalL=lexvalL << 2;

@@doLdata15:
 mov al, [iswidth]
 cmp al, 4
 jne @@doLdata16
 mov eax, [lexvalL]
 shl eax, 2
 mov dword [lexvalL], eax

;-121     expect(']');

@@doLdata16:
 push 93
 call expect
 add  sp, 2

;-122   }


;-123   prs("\n;p32  adr: "); prL(ldata); prs(", "); prs(symbol);

@@doLdata14:
 push doLdata_3
 call prs
 add  sp, 2
 push dword [ldata]
 call prL
 add  sp, 4
 push doLdata_4
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2

;-124   prs(" ["); prL(lexvalL); prc(']');

 push doLdata_5
 call prs
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4
 push 93
 call prc
 add  sp, 2

;-125   ldata=ldata+lexvalL; GData[GTop]=lexvalL;

 mov eax, [ldata]
 add eax, [lexvalL]
 mov dword [ldata], eax
 mov eax, [lexvalL]
 mov bx, [GTop]
 shl bx, 2
 mov [GData+bx], eax

;-126   GSign[GTop]=issign;  GWidth[GTop]=iswidth; GType[GTop]=istype;

 mov al, [issign]
 mov bx, [GTop]
 mov [GSign+bx], al
 mov al, [iswidth]
 mov bx, [GTop]
 mov [GWidth+bx], al
 mov al, [istype]
 mov bx, [GTop]
 mov [GType+bx], al

;-127   GLino [GTop]=lineno-1; GUsed [GTop]=0;

 mov ax, [lineno]
 sub ax, 1
 mov bx, [GTop]
 shl bx, 1
 mov [GLino+bx], ax
 mov eax, 0
 mov bx, [GTop]
 shl bx, 1
 mov [GUsed+bx], ax

;-128 //  if (isstrarr) strcpy(symbol, doglobName);


;-129   GName[GTop] = CNameTop;

 mov ax, [CNameTop]
 mov bx, [GTop]
 shl bx, 1
 mov [GName+bx], ax

;-130   storeName();

 call storeName

;-131   GTop++; expect(';');

 inc  word [GTop]
 push 59
 call expect
 add  sp, 2

;-132 }


;-133 void doglob() { int i; int j; int isstrarr; isstrarr=0;

 ret
; ENDP
doLdata_0 db "Global table full",0
doLdata_1 db "no VOID as var type",0
doLdata_2 db "Global variable already defined",0
doLdata_3 db "\n;p32  adr: ",0
doLdata_4 db ", ",0
doLdata_5 db " [",0

doglob:  ; *** PROC ***
;Function : doglob, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   133 NULL bp-2    i
;  201 var sign word   133 NULL bp-4    j
;  202 var sign word   133 NULL bp-6    isstrarr;
 ENTER  6,0
 mov eax, 0
 mov word [bp-6], ax

;-134   if (GTop >= LSTART) error1("Global table full");

 mov ax, [GTop]
 cmp ax, 200 ;unsigned : 1
 jl  @@doglob17
 push doglob_0
 call error1
 add  sp, 2

;-135   if (iswidth == 0) error1("no VOID as var type");

@@doglob17:
 mov al, [iswidth]
 cmp al, 0
 jne @@doglob18
 push doglob_1
 call error1
 add  sp, 2

;-136   checknamelen();

@@doglob18:
 call checknamelen

;-137   if (checkName() != 0) error1("Global variable already defined");

 call checkName
 cmp al, 0
 je  @@doglob19
 push doglob_2
 call error1
 add  sp, 2

;-138   GAdr[GTop]=LONG0;

@@doglob19:
 mov eax, [LONG0]
 mov bx, [GTop]
 shl bx, 2
 mov [GAdr+bx], eax

;-139   if (istoken('[')) { istype='&';

 push 91
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob20
 mov eax, 38
 mov byte [istype], al

;-140       if (istoken(T_CONST)) {

 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob21

;-141       if (BSS) { if (NASM) {prs("\nsection .bss\nabsolute ");

 mov al, [BSS]
 or  al, al
 je @@doglob22
 mov al, [NASM]
 or  al, al
 je @@doglob23
 push doglob_3
 call prs
 add  sp, 2

;-142         GAdr[GTop]=orgData;

 mov eax, [orgData]
 mov bx, [GTop]
 shl bx, 2
 mov [GAdr+bx], eax

;-143         prunsign1(orgData); }

 push dword [orgData]
 call prunsign1
 add  sp, 4

;-144         else {prs("\nAData = $\norg "); prunsign1(orgData);} }

 jmp @@doglob24
@@doglob23:
 push doglob_4
 call prs
 add  sp, 2
 push dword [orgData]
 call prunsign1
 add  sp, 4
@@doglob24:

;-145       prs("\n"); prs(symbol); 

@@doglob22:
 push doglob_5
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2

;-146       if (iswidth==1) {if (NASM) prs(" resb "); else prs(" db ");}

 mov al, [iswidth]
 cmp al, 1
 jne @@doglob25
 mov al, [NASM]
 or  al, al
 je @@doglob26
 push doglob_6
 call prs
 add  sp, 2
 jmp @@doglob27
@@doglob26:
 push doglob_7
 call prs
 add  sp, 2
@@doglob27:

;-147       if (iswidth==2) {if (NASM) prs(" resw "); else prs(" dw ");}

@@doglob25:
 mov al, [iswidth]
 cmp al, 2
 jne @@doglob28
 mov al, [NASM]
 or  al, al
 je @@doglob29
 push doglob_8
 call prs
 add  sp, 2
 jmp @@doglob30
@@doglob29:
 push doglob_9
 call prs
 add  sp, 2
@@doglob30:

;-148       if (iswidth==4) {if (NASM) prs(" resd "); else prs(" dd ");}

@@doglob28:
 mov al, [iswidth]
 cmp al, 4
 jne @@doglob31
 mov al, [NASM]
 or  al, al
 je @@doglob32
 push doglob_10
 call prs
 add  sp, 2
 jmp @@doglob33
@@doglob32:
 push doglob_11
 call prs
 add  sp, 2
@@doglob33:

;-149       prL(lexvalL); if (NASM==0)prs(" dup (?)");

@@doglob31:
 push dword [lexvalL]
 call prL
 add  sp, 4
 mov al, [NASM]
 cmp al, 0
 jne @@doglob34
 push doglob_12
 call prs
 add  sp, 2

;-150       if (BSS) {if(NASM) prs("\nsection .text");

@@doglob34:
 mov al, [BSS]
 or  al, al
 je @@doglob35
 mov al, [NASM]
 or  al, al
 je @@doglob36
 push doglob_13
 call prs
 add  sp, 2

;-151         else prs("\norg AData"); }

 jmp @@doglob37
@@doglob36:
 push doglob_14
 call prs
 add  sp, 2
@@doglob37:

;-152       orgData=orgData+lexvalL;

@@doglob35:
 mov eax, [orgData]
 add eax, [lexvalL]
 mov dword [orgData], eax

;-153       if (iswidth==2) orgData=orgData+lexvalL;

 mov al, [iswidth]
 cmp al, 2
 jne @@doglob38
 mov eax, [orgData]
 add eax, [lexvalL]
 mov dword [orgData], eax

;-154       if (iswidth==4) {i= lexvalL * 3; orgData=orgData + i;}

@@doglob38:
 mov al, [iswidth]
 cmp al, 4
 jne @@doglob39
 mov eax, [lexvalL]
 mov ebx, 3
 mul ebx
 mov word [bp-2], ax
 mov eax, [orgData]
 add ax, [bp-2]
 mov dword [orgData], eax

;-155       GData[GTop]=lexvalL; expect(']');

@@doglob39:
 mov eax, [lexvalL]
 mov bx, [GTop]
 shl bx, 2
 mov [GData+bx], eax
 push 93
 call expect
 add  sp, 2

;-156     }else { expect(']');

 jmp @@doglob40
@@doglob21:
 push 93
 call expect
 add  sp, 2

;-157       if (iswidth != 1) error1("Only ByteArray allowed");

 mov al, [iswidth]
 cmp al, 1
 je  @@doglob41
 push doglob_15
 call error1
 add  sp, 2

;-158       prs("\n"); prs(symbol); prs(" db "); 

@@doglob41:
 push doglob_16
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2
 push doglob_17
 call prs
 add  sp, 2

;-159       isstrarr=1; strcpy(doglobName, symbol);

 mov eax, 1
 mov word [bp-6], ax
 lea  ax, [symbol]
 push ax
 lea  ax, [doglobName]
 push ax
 call strcpy
 add  sp, 4

;-160       expect('='); 

 push 61
 call expect
 add  sp, 2

;-161       if (istoken(T_STRING)) { 

 push 258
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob42

;-162         prc(34); prscomment(symbol); prc(34); prs(",0"); 

 push 34
 call prc
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prscomment
 add  sp, 2
 push 34
 call prc
 add  sp, 2
 push doglob_18
 call prs
 add  sp, 2

;-163         i=strlen(symbol); GData[GTop]=i; }

 lea  ax, [symbol]
 push ax
 call strlen
 add  sp, 2
 mov word [bp-2], ax
 mov ax, [bp-2]
 mov bx, [GTop]
 shl bx, 2
 mov [GData+bx], eax

;-164       else if (istoken('{' )) { i=0;

 jmp @@doglob43
@@doglob42:
 push 123
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob44
 mov eax, 0
 mov word [bp-2], ax

;-165         do { if(i) prc(','); 

@@doglob45:
 mov ax, [bp-2]
 or  al, al
 je @@doglob46
 push 44
 call prc
 add  sp, 2

;-166           expect(T_CONST); prL(lexvalL); i++; }

@@doglob46:
 push 257
 call expect
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4
 inc  word [bp-2]

;-167         while (istoken(',')); expect('}'); GData[GTop]=i; }

 push 44
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob47
 jmp @@doglob45
@@doglob47:
 push 125
 call expect
 add  sp, 2
 mov ax, [bp-2]
 mov bx, [GTop]
 shl bx, 2
 mov [GData+bx], eax

;-168       else error1("String or number array expected");

 jmp @@doglob48
@@doglob44:
 push doglob_19
 call error1
 add  sp, 2

;-169       }; 

@@doglob48:
@@doglob43:
@@doglob40:

;-170     } else { //expect('=');

 jmp @@doglob49
@@doglob20:

;-171     prs("\n"); prs(symbol); if (istype=='*') prs(" dw ");

 push doglob_20
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2
 mov al, [istype]
 cmp al, 42
 jne @@doglob50
 push doglob_21
 call prs
 add  sp, 2

;-172     else {if (iswidth==1) prs(" db ");

 jmp @@doglob51
@@doglob50:
 mov al, [iswidth]
 cmp al, 1
 jne @@doglob52
 push doglob_22
 call prs
 add  sp, 2

;-173           if (iswidth==2) prs(" dw ");

@@doglob52:
 mov al, [iswidth]
 cmp al, 2
 jne @@doglob53
 push doglob_23
 call prs
 add  sp, 2

;-174           if (iswidth==4) prs(" dd ");  }

@@doglob53:
 mov al, [iswidth]
 cmp al, 4
 jne @@doglob54
 push doglob_24
 call prs
 add  sp, 2
@@doglob54:

;-175     if(istoken('-')) prc('-');

@@doglob51:
 push 45
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob55
 push 45
 call prc
 add  sp, 2

;-176     if (istoken('=')) {expect(T_CONST); prL(lexvalL); }

@@doglob55:
 push 61
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob56
 push 257
 call expect
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4

;-177     else prunsign1(0); }

 jmp @@doglob57
@@doglob56:
 push 0
 call prunsign1
 add  sp, 2
@@doglob57:

;-178   GSign[GTop]=issign; GWidth[GTop]=iswidth; GType[GTop]=istype;

@@doglob49:
 mov al, [issign]
 mov bx, [GTop]
 mov [GSign+bx], al
 mov al, [iswidth]
 mov bx, [GTop]
 mov [GWidth+bx], al
 mov al, [istype]
 mov bx, [GTop]
 mov [GType+bx], al

;-179   GLino [GTop]=lineno-1; GUsed [GTop]=0;

 mov ax, [lineno]
 sub ax, 1
 mov bx, [GTop]
 shl bx, 1
 mov [GLino+bx], ax
 mov eax, 0
 mov bx, [GTop]
 shl bx, 1
 mov [GUsed+bx], ax

;-180   if (isstrarr) strcpy(symbol, doglobName);

 mov ax, [bp-6]
 or  al, al
 je @@doglob58
 lea  ax, [doglobName]
 push ax
 lea  ax, [symbol]
 push ax
 call strcpy
 add  sp, 4

;-181   GName[GTop] = CNameTop;

@@doglob58:
 mov ax, [CNameTop]
 mov bx, [GTop]
 shl bx, 1
 mov [GName+bx], ax

;-182   storeName();

 call storeName

;-183   GTop++; expect(';');

 inc  word [GTop]
 push 59
 call expect
 add  sp, 2

;-184 }


;-185 int gettypes(int i) {int j; char c;
 LEAVE
 ret
; ENDP
doglob_0 db "Global table full",0
doglob_1 db "no VOID as var type",0
doglob_2 db "Global variable already defined",0
doglob_3 db "\nsection .bss\nabsolute ",0
doglob_4 db "\nAData = $\norg ",0
doglob_5 db "\n",0
doglob_6 db " resb ",0
doglob_7 db " db ",0
doglob_8 db " resw ",0
doglob_9 db " dw ",0
doglob_10 db " resd ",0
doglob_11 db " dd ",0
doglob_12 db " dup (?)",0
doglob_13 db "\nsection .text",0
doglob_14 db "\norg AData",0
doglob_15 db "Only ByteArray allowed",0
doglob_16 db "\n",0
doglob_17 db " db ",0
doglob_18 db ",0",0
doglob_19 db "String or number array expected",0
doglob_20 db "\n",0
doglob_21 db " dw ",0
doglob_22 db " db ",0
doglob_23 db " dw ",0
doglob_24 db " dd ",0

gettypes:  ; *** PROC ***

;-186   c=GSign [i]; if (c=='S') signi =1;    else signi =0;

;Function : gettypes, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   185 NULL bp+4    i
;  201 var sign word   185 NULL bp-2    j
;  202 var sign byte   185 NULL bp-4    c;
 ENTER  4,0
 mov bx, [bp+4]
 mov al, [GSign + bx]
 mov byte [bp-4], al
 mov al, [bp-4]
 cmp al, 83
 jne @@gettypes59
 mov eax, 1
 mov word [signi], ax
 jmp @@gettypes60
@@gettypes59:
 mov eax, 0
 mov word [signi], ax

;-187   c=GWidth[i]; widthi=0;wi=0;

@@gettypes60:
 mov bx, [bp+4]
 mov al, [GWidth + bx]
 mov byte [bp-4], al
 mov eax, 0
 mov word [widthi], ax
 mov eax, 0
 mov word [wi], ax

;-188   if (c==1) {widthi=1;wi=1;}

 mov al, [bp-4]
 cmp al, 1
 jne @@gettypes61
 mov eax, 1
 mov word [widthi], ax
 mov eax, 1
 mov word [wi], ax

;-189   if (c==2) {widthi=2;wi=2;}

@@gettypes61:
 mov al, [bp-4]
 cmp al, 2
 jne @@gettypes62
 mov eax, 2
 mov word [widthi], ax
 mov eax, 2
 mov word [wi], ax

;-190   if (c==4) {widthi=4;wi=4;}

@@gettypes62:
 mov al, [bp-4]
 cmp al, 4
 jne @@gettypes63
 mov eax, 4
 mov word [widthi], ax
 mov eax, 4
 mov word [wi], ax

;-191   c=GType [i]; typei=0; if (c=='*') {typei=1;wi=2;}

@@gettypes63:
 mov bx, [bp+4]
 mov al, [GType + bx]
 mov byte [bp-4], al
 mov eax, 0
 mov word [typei], ax
 mov al, [bp-4]
 cmp al, 42
 jne @@gettypes64
 mov eax, 1
 mov word [typei], ax
 mov eax, 2
 mov word [wi], ax

;-192   if (c=='&')  typei=2;  

@@gettypes64:
 mov al, [bp-4]
 cmp al, 38
 jne @@gettypes65
 mov eax, 2
 mov word [typei], ax

;-193   return i; }  

@@gettypes65:
 mov ax, [bp+4]
 jmp @@retn

;-194 


;-195 void printName(unsigned int i) {int j;

@@retn: LEAVE
 ret
; ENDP

printName:  ; *** PROC ***

;-196   if (i < LSTART) { loadName(NA, i); prs(NA); }

;Function : printName, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg word   195 NULL bp+4    i
;  201 var sign word   195 NULL bp-2    j;
 ENTER  2,0
 mov ax, [bp+4]
 cmp ax, 200
 jge @@printName66
 push word [bp+4]
 lea  ax, [NA]
 push ax
 call loadName
 add  sp, 4
 lea  ax, [NA]
 push ax
 call prs
 add  sp, 2

;-197   else { prs("[bp"); j = GData[i]; if (j>0) prc('+'); pint1(j); prc(']'); }

 jmp @@printName67
@@printName66:
 push printName_0
 call prs
 add  sp, 2
 mov bx, [bp+4]
 shl bx, 2
 mov eax, [GData + bx]
 mov word [bp-2], ax
 mov ax, [bp-2]
 cmp ax, 0
 jle @@printName68
 push 43
 call prc
 add  sp, 2
@@printName68:
 push word [bp-2]
 call pint1
 add  sp, 2
 push 93
 call prc
 add  sp, 2

;-198 }

@@printName67:

;-199 int searchname() { unsigned int i;
 LEAVE
 ret
; ENDP
printName_0 db "[bp",0

searchname:  ; *** PROC ***

;-200   i=checkName(); if (i == 0) error1("Variable unknown");

;Function : searchname, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word   199 NULL bp-2    i;
 ENTER  2,0
 call checkName
 mov word [bp-2], ax
 mov ax, [bp-2]
 cmp ax, 0
 jne @@searchname69
 push searchname_0
 call error1
 add  sp, 2

;-201   GUsed[i]=GUsed[i] + 1; return i;

@@searchname69:
 mov bx, [bp-2]
 shl bx, 1
 mov ax, [GUsed + bx]
 add ax, 1
 mov bx, [bp-2]
 shl bx, 1
 mov [GUsed+bx], ax
 mov ax, [bp-2]
 jmp @@retn

;-202 }


;-203 int checkName() { unsigned int i; unsigned int j;

@@retn: LEAVE
 ret
; ENDP
searchname_0 db "Variable unknown",0

checkName:  ; *** PROC ***

;-204   i=LSTART;while(i<LTop){loadName(NA,i);if(eqstr(symbol,NA))return i;i++;}

;Function : checkName, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg word   203 NULL bp-2    i
;  201 var unsg word   203 NULL bp-4    j;
 ENTER  4,0
 mov eax, 200
 mov word [bp-2], ax
@@checkName70:
 mov ax, [bp-2]
 cmp ax, [LTop]
 jge @@checkName71
 push word [bp-2]
 lea  ax, [NA]
 push ax
 call loadName
 add  sp, 4
 lea  ax, [NA]
 push ax
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkName72
 mov ax, [bp-2]
 jmp @@retn
@@checkName72:
 inc  word [bp-2]

;-205   i=1;     while(i<GTop){loadName(NA,i);if(eqstr(symbol,NA))return i;i++;}

 jmp @@checkName70
@@checkName71:
 mov eax, 1
 mov word [bp-2], ax
@@checkName73:
 mov ax, [bp-2]
 cmp ax, [GTop]
 jge @@checkName74
 push word [bp-2]
 lea  ax, [NA]
 push ax
 call loadName
 add  sp, 4
 lea  ax, [NA]
 push ax
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkName75
 mov ax, [bp-2]
 jmp @@retn
@@checkName75:
 inc  word [bp-2]

;-206   return 0;

 jmp @@checkName73
@@checkName74:
 mov eax, 0
 jmp @@retn

;-207 }    


;-208 int typeName() { int m; //0=V,1=*,2=&

@@retn: LEAVE
 ret
; ENDP

typeName:  ; *** PROC ***

;-209   issign='S';

;Function : typeName, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   208 NULL bp-2    m;
 ENTER  2,0
 mov eax, 83
 mov byte [issign], al

;-210   if(istoken(T_SIGNED))   issign='S';  if(istoken(T_UNSIGNED)) issign='U';

 push 531
 call istoken
 add  sp, 2
 or  al, al
 je @@typeName76
 mov eax, 83
 mov byte [issign], al
@@typeName76:
 push 532
 call istoken
 add  sp, 2
 or  al, al
 je @@typeName77
 mov eax, 85
 mov byte [issign], al

;-211   iswidth=2;                           if(istoken(T_VOID))     iswidth=0;

@@typeName77:
 mov eax, 2
 mov byte [iswidth], al
 push 529
 call istoken
 add  sp, 2
 or  al, al
 je @@typeName78
 mov eax, 0
 mov byte [iswidth], al

;-212   if(istoken(T_CHAR))     iswidth=1;   if(istoken(T_INT))      iswidth=2;

@@typeName78:
 push 530
 call istoken
 add  sp, 2
 or  al, al
 je @@typeName79
 mov eax, 1
 mov byte [iswidth], al
@@typeName79:
 push 517
 call istoken
 add  sp, 2
 or  al, al
 je @@typeName80
 mov eax, 2
 mov byte [iswidth], al

;-213   if(istoken(T_SHORT))    iswidth=2;   if(istoken(T_LONG))     iswidth=4;

@@typeName80:
 push 534
 call istoken
 add  sp, 2
 or  al, al
 je @@typeName81
 mov eax, 2
 mov byte [iswidth], al
@@typeName81:
 push 533
 call istoken
 add  sp, 2
 or  al, al
 je @@typeName82
 mov eax, 4
 mov byte [iswidth], al

;-214   if(istoken(T_UINT32)) { iswidth=4; issign='U'; }

@@typeName82:
 push 545
 call istoken
 add  sp, 2
 or  al, al
 je @@typeName83
 mov eax, 4
 mov byte [iswidth], al
 mov eax, 85
 mov byte [issign], al

;-215   istype='V'; m=0;

@@typeName83:
 mov eax, 86
 mov byte [istype], al
 mov eax, 0
 mov word [bp-2], ax

;-216   if(istoken('*'))  { istype='*'; m=1; } if(istoken('&'))  {istype='&'; m=2;}

 push 42
 call istoken
 add  sp, 2
 or  al, al
 je @@typeName84
 mov eax, 42
 mov byte [istype], al
 mov eax, 1
 mov word [bp-2], ax
@@typeName84:
 push 38
 call istoken
 add  sp, 2
 or  al, al
 je @@typeName85
 mov eax, 38
 mov byte [istype], al
 mov eax, 2
 mov word [bp-2], ax

;-217   name1(); return m; }

@@typeName85:
 call name1
 mov ax, [bp-2]
 jmp @@retn

;-218 void name1() {if (token!=T_NAME) error1("Name expected"); token=getlex(); }

@@retn: LEAVE
 ret
; ENDP

name1:  ; *** PROC ***
 mov ax, [token]
 cmp ax, 256
 je  @@name186
 push name1_0
 call error1
 add  sp, 2
@@name186:
 call getlex
 mov word [token], ax

;-219 


;-220 void storecall() { int i;

 ret
; ENDP
name1_0 db "Name expected",0

storecall:  ; *** PROC ***

;-221   if (CTop >= CALLMAX) error1("Call table full");

;Function : storecall, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   220 NULL bp-2    i;
 ENTER  2,0
 mov ax, [CTop]
 cmp ax, 2000 ;unsigned : 1
 jl  @@storecall87
 push storecall_0
 call error1
 add  sp, 2

;-222   if (CNameTop >= 65468) error1("Call name table fuill");

@@storecall87:
 mov ax, [CNameTop]
 cmp ax, 65468 ;unsigned : 0
 jb  @@storecall88
 push storecall_1
 call error1
 add  sp, 2

;-223   CUnres[CTop]=0;  CName [CTop]=CNameTop;

@@storecall88:
 mov eax, 0
 mov bx, [CTop]
 mov [CUnres+bx], al
 mov ax, [CNameTop]
 mov bx, [CTop]
 shl bx, 1
 mov [CName+bx], ax

;-224   storeName();

 call storeName

;-225   CTop++;

 inc  word [CTop]

;-226 }


;-227 void storefunc() { int i;
 LEAVE
 ret
; ENDP
storecall_0 db "Call table full",0
storecall_1 db "Call name table fuill",0

storefunc:  ; *** PROC ***

;-228   if (FTop >= FUNCMAX) error1("Function table full");

;Function : storefunc, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   227 NULL bp-2    i;
 ENTER  2,0
 mov ax, [FTop]
 cmp ax, 300 ;unsigned : 1
 jl  @@storefunc89
 push storefunc_0
 call error1
 add  sp, 2

;-229   FLino[FTop]=lineno - 1;  FCalls[FTop]=0;   FWidth[FTop]=iswidth;

@@storefunc89:
 mov ax, [lineno]
 sub ax, 1
 mov bx, [FTop]
 shl bx, 1
 mov [FLino+bx], ax
 mov eax, 0
 mov bx, [FTop]
 shl bx, 1
 mov [FCalls+bx], ax
 mov al, [iswidth]
 mov bx, [FTop]
 mov [FWidth+bx], al

;-230   FName[FTop]=CNameTop;

 mov ax, [CNameTop]
 mov bx, [FTop]
 shl bx, 1
 mov [FName+bx], ax

;-231   storeName();

 call storeName

;-232   FTop++;

 inc  word [FTop]

;-233 }


;-234 void addlocal() { if(LTop >= VARMAX) error1("Local variable table full");
 LEAVE
 ret
; ENDP
storefunc_0 db "Function table full",0

addlocal:  ; *** PROC ***
 mov ax, [LTop]
 cmp ax, 300 ;unsigned : 1
 jl  @@addlocal90
 push addlocal_0
 call error1
 add  sp, 2

;-235   if (checkName() != 0) error1("Local variable already defined");

@@addlocal90:
 call checkName
 cmp ax, 0
 je  @@addlocal91
 push addlocal_1
 call error1
 add  sp, 2

;-236   GSign[LTop]=issign; GWidth[LTop]=iswidth; GType[LTop]=istype;

@@addlocal91:
 mov al, [issign]
 mov bx, [LTop]
 mov [GSign+bx], al
 mov al, [iswidth]
 mov bx, [LTop]
 mov [GWidth+bx], al
 mov al, [istype]
 mov bx, [LTop]
 mov [GType+bx], al

;-237   GLino [LTop]=lineno-1; GUsed[LTop]=0;

 mov ax, [lineno]
 sub ax, 1
 mov bx, [LTop]
 shl bx, 1
 mov [GLino+bx], ax
 mov eax, 0
 mov bx, [LTop]
 shl bx, 1
 mov [GUsed+bx], ax

;-238   GName[LTop]=CNameTop;

 mov ax, [CNameTop]
 mov bx, [LTop]
 shl bx, 1
 mov [GName+bx], ax

;-239   storeName();

 call storeName

;-240 }


;-241 int checkFunction() { unsigned int i; unsigned int j; i=0;

 ret
; ENDP
addlocal_0 db "Local variable table full",0
addlocal_1 db "Local variable already defined",0

checkFunction:  ; *** PROC ***
;Function : checkFunction, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg word   241 NULL bp-2    i
;  201 var unsg word   241 NULL bp-4    j;
 ENTER  4,0
 mov eax, 0
 mov word [bp-2], ax

;-242   while (i < FTop) {

@@checkFunction92:
 mov ax, [bp-2]
 cmp ax, [FTop]
 jge @@checkFunction93

;-243     j=FName[i]; from_far(NA, j);

 mov bx, [bp-2]
 shl bx, 1
 mov ax, [FName + bx]
 mov word [bp-4], ax
 push word [bp-4]
 lea  ax, [NA]
 push ax
 call from_far
 add  sp, 4

;-244     if(eqstr(symbol, NA))return i; i++;}

 lea  ax, [NA]
 push ax
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkFunction94
 mov ax, [bp-2]
 jmp @@retn
@@checkFunction94:
 inc  word [bp-2]

;-245   return 0;

 jmp @@checkFunction92
@@checkFunction93:
 mov eax, 0
 jmp @@retn

;-246 }


;-247 void dofunc() { int nloc; int narg; int i;

@@retn: LEAVE
 ret
; ENDP

dofunc:  ; *** PROC ***

;-248   cloc=&co; 

;Function : dofunc, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   247 NULL bp-2    nloc
;  201 var sign word   247 NULL bp-4    narg
;  202 var sign word   247 NULL bp-6    i;
 ENTER  6,0
 mov ax, co
 mov word [cloc], ax

;-249   checknamelen();

 call checknamelen

;-250   strcpy(fname, symbol);

 lea  ax, [symbol]
 push ax
 lea  ax, [fname]
 push ax
 call strcpy
 add  sp, 4

;-251   if (checkFunction() ) error1("Function already defined");

 call checkFunction
 or  al, al
 je @@dofunc95
 push dofunc_0
 call error1
 add  sp, 2

;-252   storefunc();

@@dofunc95:
 call storefunc

;-253   prs("\n\n"); prs(symbol); prs(":  ; *** PROC ***");

 push dofunc_1
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2
 push dofunc_2
 call prs
 add  sp, 2

;-254   expect('(');  LTop=LSTART;

 push 40
 call expect
 add  sp, 2
 mov eax, 200
 mov word [LTop], ax

;-255   if (istoken(')')==0) { narg=4; // return address and old bp value

 push 41
 call istoken
 add  sp, 2
 cmp ax, 0
 jne @@dofunc96
 mov eax, 4
 mov word [bp-4], ax

;-256     do { typeName();  addlocal();

@@dofunc97:
 call typeName
 call addlocal

;-257          GData[LTop]=narg;

 mov ax, [bp-4]
 mov bx, [LTop]
 shl bx, 2
 mov [GData+bx], eax

;-258          if (iswidth < 2) narg+=2; else narg=narg+iswidth;

 mov al, [iswidth]
 cmp al, 2
 jge @@dofunc98
 add  word [bp-4], 2
 jmp @@dofunc99
@@dofunc98:
 mov ax, [bp-4]
 add al, [iswidth]
 mov word [bp-4], ax

;-259          LTop++; }

@@dofunc99:
 inc  word [LTop]

;-260     while (istoken(','));  expect(')'); }

 push 44
 call istoken
 add  sp, 2
 or  al, al
 je @@dofunc100
 jmp @@dofunc97
@@dofunc100:
 push 41
 call expect
 add  sp, 2

;-261     


;-262   expect('{'); /*body*/

@@dofunc96:
 push 123
 call expect
 add  sp, 2

;-263   nloc=0; nreturn=0; nconst=0;

 mov eax, 0
 mov word [bp-2], ax
 mov eax, 0
 mov word [nreturn], ax
 mov eax, 0
 mov word [nconst], ax

;-264   while(isvariable()) {

@@dofunc101:
 call isvariable
 or  al, al
 je @@dofunc102

;-265     do {typeName(); checknamelen(); addlocal();

@@dofunc103:
 call typeName
 call checknamelen
 call addlocal

;-266         _ i= 2; if(_ iswidth > 2)  { ax=iswidth; /*cast b2w*/ _ i=ax; }

mov word [bp-6], 2; i
cmp byte [iswidth], 2
 jle @@dofunc104
 movsx  ax, byte [iswidth]
mov [bp-6], ax

;-267         if (istoken('[')){istype='&';GType[LTop]='&';expect(T_CONST);

@@dofunc104:
 push 91
 call istoken
 add  sp, 2
 or  al, al
 je @@dofunc105
 mov eax, 38
 mov byte [istype], al
 mov eax, 38
 mov bx, [LTop]
 mov [GType+bx], al
 push 257
 call expect
 add  sp, 2

;-268             expect(']'); i=lexvalL; }

 push 93
 call expect
 add  sp, 2
 mov eax, [lexvalL]
 mov word [bp-6], ax

;-269         nloc=nloc - i;  GData[LTop]=nloc;

@@dofunc105:
 mov ax, [bp-2]
 sub ax, [bp-6]
 mov word [bp-2], ax
 mov ax, [bp-2]
 mov bx, [LTop]
 shl bx, 2
 mov [GData+bx], eax

;-270         LTop++;

 inc  word [LTop]

;-271       } while (istoken(',')); expect(';'); }

 push 44
 call istoken
 add  sp, 2
 or  al, al
 je @@dofunc106
 jmp @@dofunc103
@@dofunc106:
 push 59
 call expect
 add  sp, 2

;-272   listproc(); 

 jmp @@dofunc101
@@dofunc102:
 call listproc

;-273   if (LTop>LSTART){prs(";\n ENTER  "); 

 mov ax, [LTop]
 cmp ax, 200
 jle @@dofunc107
 push dofunc_3
 call prs
 add  sp, 2

;-274     nloc=mkneg(nloc); pint1 (nloc); prs(",0"); }

 push word [bp-2]
 call mkneg
 add  sp, 2
 mov word [bp-2], ax
 push word [bp-2]
 call pint1
 add  sp, 2
 push dofunc_4
 call prs
 add  sp, 2

;-275   while(istoken('}')==0)   stmt();

@@dofunc107:
@@dofunc108:
 push 125
 call istoken
 add  sp, 2
 cmp ax, 0
 jne @@dofunc109
 call stmt

;-276   if (nreturn) { prs("\n@@retn:");}

 jmp @@dofunc108
@@dofunc109:
 mov ax, [nreturn]
 or  al, al
 je @@dofunc110
 push dofunc_5
 call prs
 add  sp, 2

;-277   if (LTop > LSTART) prs(" LEAVE");

@@dofunc110:
 mov ax, [LTop]
 cmp ax, 200
 jle @@dofunc111
 push dofunc_6
 call prs
 add  sp, 2

;-278   prs("\n ret"); prs("\n; ENDP"); 

@@dofunc111:
 push dofunc_7
 call prs
 add  sp, 2
 push dofunc_8
 call prs
 add  sp, 2

;-279   *cloc=0; prs(co); maxco1=strlen(co);

 mov eax, 0
 mov  bx, [cloc]
 mov  [bx], al
 lea  ax, [co]
 push ax
 call prs
 add  sp, 2
 lea  ax, [co]
 push ax
 call strlen
 add  sp, 2
 mov word [maxco1], ax

;-280   if (maxco1 > maxco) {maxco=maxco1; strcpy(coname, fname); }

 mov ax, [maxco1]
 cmp ax, [maxco]
 jle @@dofunc112
 mov ax, [maxco1]
 mov word [maxco], ax
 lea  ax, [fname]
 push ax
 lea  ax, [coname]
 push ax
 call strcpy
 add  sp, 4

;-281   if (LTop  > maxloc) {maxloc=LTop; strcpy(locname, fname); }

@@dofunc112:
 mov ax, [LTop]
 cmp ax, [maxloc]
 jle @@dofunc113
 mov ax, [LTop]
 mov word [maxloc], ax
 lea  ax, [fname]
 push ax
 lea  ax, [locname]
 push ax
 call strcpy
 add  sp, 4

;-282 }

@@dofunc113:

;-283 int isvariable() {
 LEAVE
 ret
; ENDP
dofunc_0 db "Function already defined",0
dofunc_1 db "\n\n",0
dofunc_2 db ":  ; *** PROC ***",0
dofunc_3 db ";\n ENTER  ",0
dofunc_4 db ",0",0
dofunc_5 db "\n@@retn:",0
dofunc_6 db " LEAVE",0
dofunc_7 db "\n ret",0
dofunc_8 db "\n; ENDP",0

isvariable:  ; *** PROC ***

;-284   if(token==T_SIGNED) goto v1;   if(token==T_UNSIGNED) goto v1;

 mov ax, [token]
 cmp ax, 531
 jne @@isvariable114
 jmp @@v1
@@isvariable114:
 mov ax, [token]
 cmp ax, 532
 jne @@isvariable115
 jmp @@v1

;-285   if(token==T_CHAR)   goto v1;   if(token==T_INT)      goto v1;

@@isvariable115:
 mov ax, [token]
 cmp ax, 530
 jne @@isvariable116
 jmp @@v1
@@isvariable116:
 mov ax, [token]
 cmp ax, 517
 jne @@isvariable117
 jmp @@v1

;-286   if(token==T_SHORT)  goto v1;   if(token==T_LONG)     goto v1;

@@isvariable117:
 mov ax, [token]
 cmp ax, 534
 jne @@isvariable118
 jmp @@v1
@@isvariable118:
 mov ax, [token]
 cmp ax, 533
 jne @@isvariable119
 jmp @@v1

;-287   if(token==T_UINT32) goto v1;   return 0;  v1: return 1;

@@isvariable119:
 mov ax, [token]
 cmp ax, 545
 jne @@isvariable120
 jmp @@v1
@@isvariable120:
 mov eax, 0
 jmp @@retn
@@v1:
 mov eax, 1
 jmp @@retn

;-288 }


;-289 int sd; //side: 0=left, 1=middle, 2=rigth

@@retn:
 ret
; ENDP
sd dw 0

;-290 char un; //1=unary, 2=binary, 3=assign, 4=mul, 5=mod, 6=div

un db 0

;-291 char ty; // 1const, 2call, 3reg, 4var, 5arr

ty db 0

;-292 char md[3];  int mod1; int mod2; //typename       issign,iswidth  0=m, 1=*,2=&

section .bss
absolute 46807
md resb 3
section .text
mod1 dw 0
mod2 dw 0

;-293 int  ir[3];  int irg1; int irg2; //checkreg       0=noreg, reg-nr

section .bss
absolute 46810
ir resw 3
section .text
irg1 dw 0
irg2 dw 0

;-294 int  ix[3];  int idx1; int idx2; //searchname     var-nr

section .bss
absolute 46816
ix resw 3
section .text
idx1 dw 0
idx2 dw 0

;-295 char is[3];  int ids1; int ids2; //gettypes(idx1) signi: 0=U, 1=S

section .bss
absolute 46822
is resb 3
section .text
ids1 dw 0
ids2 dw 0

;-296 char iw[3];  int idw1; int idw2; //gettypes(idx1) wi   : 1,2,4

section .bss
absolute 46825
iw resb 3
section .text
idw1 dw 0
idw2 dw 0

;-297 char it[3];  int idt1; int idt2; //gettypes(idx1) typei: 0=mem, 1=*, 2=&

section .bss
absolute 46828
it resb 3
section .text
idt1 dw 0
idt2 dw 0

;-298 long ia[3];  int ida1; int ida2; //array const or varnr

section .bss
absolute 46831
ia resd 3
section .text
ida1 dw 0
ida2 dw 0

;-299 char ic[3];  int idac1;int idac2;//array is const

section .bss
absolute 46843
ic resb 3
section .text
idac1 dw 0
idac2 dw 0

;-300 long iv[3];  long val1;long val2;// = lexvalL

section .bss
absolute 46846
iv resd 3
section .text
val1 dd 0
val2 dd 0

;-301 


;-302 


;-303 int pexpr() {expect('('); iscmp=0; 


pexpr:  ; *** PROC ***
 push 40
 call expect
 add  sp, 2
 mov eax, 0
 mov word [iscmp], ax

;-304   if (token==T_NAME) {if (eqstr(symbol, "_")) {constantexpr(); return;}

 mov ax, [token]
 cmp ax, 256
 jne @@pexpr121
 push pexpr_0
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@pexpr122
 call constantexpr
 jmp @@retn

;-305     irg1=checkreg();

@@pexpr122:
 call checkreg
 mov word [irg1], ax

;-306     if (irg1) { doreg1(1); return; }  }

 mov ax, [irg1]
 or  al, al
 je @@pexpr123
 push 1
 call doreg1
 add  sp, 2
 jmp @@retn
@@pexpr123:

;-307   exprstart(); if (iscmp==0) prs("\n or  al, al\n je @@");  prs(fname);

@@pexpr121:
 call exprstart
 mov ax, [iscmp]
 cmp ax, 0
 jne @@pexpr124
 push pexpr_1
 call prs
 add  sp, 2
@@pexpr124:
 lea  ax, [fname]
 push ax
 call prs
 add  sp, 2

;-308   expect(')'); }

 push 41
 call expect
 add  sp, 2

;-309 


;-310 void constantexpr() { int mode; int id1;int ids;

@@retn:
 ret
; ENDP
pexpr_0 db "_",0
pexpr_1 db "\n or  al, al\n je @@",0

constantexpr:  ; *** PROC ***

;-311   token=getlex();   mode=typeName();  

;Function : constantexpr, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   310 NULL bp-2    mode
;  201 var sign word   310 NULL bp-4    id1
;  202 var sign word   310 NULL bp-6    ids;
 ENTER  6,0
 call getlex
 mov word [token], ax
 call typeName
 mov word [bp-2], ax

;-312   id1=searchname(); gettypes(id1); ids=signi;

 call searchname
 mov word [bp-4], ax
 push word [bp-4]
 call gettypes
 add  sp, 2
 mov ax, [signi]
 mov word [bp-6], ax

;-313   if (isrelational() ==0) error1("Relational expression expected");

 call isrelational
 cmp ax, 0
 jne @@constantexpr125
 push constantexpr_0
 call error1
 add  sp, 2

;-314   expect(T_CONST);

@@constantexpr125:
 push 257
 call expect
 add  sp, 2

;-315   prs("\ncmp "); 

 push constantexpr_1
 call prs
 add  sp, 2

;-316   gettypes(id1);  pwi(wi);  v(id1);

 push word [bp-4]
 call gettypes
 add  sp, 2
 push word [wi]
 call pwi
 add  sp, 2
 push word [bp-4]
 call v
 add  sp, 2

;-317   prs(", "); prL(lexvalL); cmpneg(ids);   prs(fname);

 push constantexpr_2
 call prs
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4
 push word [bp-6]
 call cmpneg
 add  sp, 2
 lea  ax, [fname]
 push ax
 call prs
 add  sp, 2

;-318   expect(')');

 push 41
 call expect
 add  sp, 2

;-319 }  


;-320 void exprstart() { if (eqstr(symbol, "_")) simplexpr(); else expr(); }
 LEAVE
 ret
; ENDP
constantexpr_0 db "Relational expression expected",0
constantexpr_1 db "\ncmp ",0
constantexpr_2 db ", ",0

exprstart:  ; *** PROC ***
 push exprstart_0
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@exprstart126
 call simplexpr
 jmp @@exprstart127
@@exprstart126:
 call expr
@@exprstart127:

;-321 // 1const, 2call, 3reg, 4var, 5arr


;-322 int simplexpr() {  int i;

 ret
; ENDP
exprstart_0 db "_",0

simplexpr:  ; *** PROC ***

;-323   sd=0;

;Function : simplexpr, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   322 NULL bp-2    i;
 ENTER  2,0
 mov eax, 0
 mov word [sd], ax

;-324   token=getlex();

 call getlex
 mov word [token], ax

;-325   if (istoken(T_CONST)) { prs("\n mov eax, "); prL(lexvalL); return; }//1const

 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@simplexpr128
 push simplexpr_0
 call prs
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4
 jmp @@retn

;-326   mod1=typeName();

@@simplexpr128:
 call typeName
 mov word [mod1], ax

;-327   if (token=='(')  {ids1=issign; idw1=iswidth; docall1(); return; }   //2call

 mov ax, [token]
 cmp ax, 40
 jne @@simplexpr129
 mov al, [issign]
 mov word [ids1], ax
 mov al, [iswidth]
 mov word [idw1], ax
 call docall1
 jmp @@retn

;-328   if (mod1 == 2) error1(" & is not allowed in left side");

@@simplexpr129:
 mov ax, [mod1]
 cmp ax, 2
 jne @@simplexpr130
 push simplexpr_1
 call error1
 add  sp, 2

;-329   irg1=checkreg();

@@simplexpr130:
 call checkreg
 mov word [irg1], ax

;-330   if (irg1)       {doreg1(0); return; }                               //3reg

 mov ax, [irg1]
 or  al, al
 je @@simplexpr131
 push 0
 call doreg1
 add  sp, 2
 jmp @@retn

;-331   if (irg1 == 0) { idx1=searchname();

@@simplexpr131:
 mov ax, [irg1]
 cmp ax, 0
 jne @@simplexpr132
 call searchname
 mov word [idx1], ax

;-332     gettypes(idx1); ids1=signi; idw1=wi; idt1=typei;                  //4var

 push word [idx1]
 call gettypes
 add  sp, 2
 mov ax, [signi]
 mov word [ids1], ax
 mov ax, [wi]
 mov word [idw1], ax
 mov ax, [typei]
 mov word [idt1], ax

;-333     if (idt1==2)  error1("Array not allowed left side"); }//todo     //5arr

 mov ax, [idt1]
 cmp ax, 2
 jne @@simplexpr133
 push simplexpr_2
 call error1
 add  sp, 2
@@simplexpr133:

;-334 


;-335   if (isrelational()) { error1("Relational not implemented yet"); //todo

@@simplexpr132:
 call isrelational
 or  al, al
 je @@simplexpr134
 push simplexpr_3
 call error1
 add  sp, 2

;-336   }


;-337   if (istoken('=') == 0) error1("Assign expected");

@@simplexpr134:
 push 61
 call istoken
 add  sp, 2
 cmp ax, 0
 jne @@simplexpr135
 push simplexpr_4
 call error1
 add  sp, 2

;-338   if (istoken(T_CONST) ) { val2=lexvalL;

@@simplexpr135:
 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@simplexpr136
 mov eax, [lexvalL]
 mov dword [val2], eax

;-339     prs("\nmov ");

 push simplexpr_5
 call prs
 add  sp, 2

;-340     pwi(idw1);   v(idx1);

 push word [idw1]
 call pwi
 add  sp, 2
 push word [idx1]
 call v
 add  sp, 2

;-341     prs(", "); prL(val2);

 push simplexpr_6
 call prs
 add  sp, 2
 push dword [val2]
 call prL
 add  sp, 4

;-342     if (idx1 >= LSTART) { prs("; ");

 mov ax, [idx1]
 cmp ax, 200 ;unsigned : 1
 jl  @@simplexpr137
 push simplexpr_7
 call prs
 add  sp, 2

;-343       loadName(NA, idx1); prs(NA); } return; }

 push word [idx1]
 lea  ax, [NA]
 push ax
 call loadName
 add  sp, 4
 lea  ax, [NA]
 push ax
 call prs
 add  sp, 2
@@simplexpr137:
 jmp @@retn

;-344   


;-345   mod2=typeName(); irg2=checkreg();

@@simplexpr136:
 call typeName
 mov word [mod2], ax
 call checkreg
 mov word [irg2], ax

;-346   if (irg2) { prs("\nmov ");

 mov ax, [irg2]
 or  al, al
 je @@simplexpr138
 push simplexpr_8
 call prs
 add  sp, 2

;-347     if (irg1) printreg(irg1, mod1);

 mov ax, [irg1]
 or  al, al
 je @@simplexpr139
 push word [mod1]
 push word [irg1]
 call printreg
 add  sp, 4

;-348     else { pwi(idx1); v(idx1); }

 jmp @@simplexpr140
@@simplexpr139:
 push word [idx1]
 call pwi
 add  sp, 2
 push word [idx1]
 call v
 add  sp, 2

;-349     prs(", "); printreg(irg2, mod2);return;}

@@simplexpr140:
 push simplexpr_9
 call prs
 add  sp, 2
 push word [mod2]
 push word [irg2]
 call printreg
 add  sp, 4
 jmp @@retn

;-350   else {

 jmp @@simplexpr141
@@simplexpr138:

;-351     if (mod2 == 2) error1("& not allowed");

 mov ax, [mod2]
 cmp ax, 2
 jne @@simplexpr142
 push simplexpr_10
 call error1
 add  sp, 2

;-352     


;-353     idx2=searchname();

@@simplexpr142:
 call searchname
 mov word [idx2], ax

;-354     gettypes(idx2); ids2=signi; idw2=wi; idt2=typei;

 push word [idx2]
 call gettypes
 add  sp, 2
 mov ax, [signi]
 mov word [ids2], ax
 mov ax, [wi]
 mov word [idw2], ax
 mov ax, [typei]
 mov word [idt2], ax

;-355     if (idt2 == 1)  error1("Array right side not implemented"); //todo

 mov ax, [idt2]
 cmp ax, 1
 jne @@simplexpr143
 push simplexpr_11
 call error1
 add  sp, 2

;-356     prs("\nmov ");

@@simplexpr143:
 push simplexpr_12
 call prs
 add  sp, 2

;-357     if (irg1) printreg(irg1, mod1);

 mov ax, [irg1]
 or  al, al
 je @@simplexpr144
 push word [mod1]
 push word [irg1]
 call printreg
 add  sp, 4

;-358     else error1("Mem to Mem not allowed by x86-CPU");

 jmp @@simplexpr145
@@simplexpr144:
 push simplexpr_13
 call error1
 add  sp, 2

;-359     prs(", ");

@@simplexpr145:
 push simplexpr_14
 call prs
 add  sp, 2

;-360     if (mod2 == 2) a(idx2);

 mov ax, [mod2]
 cmp ax, 2
 jne @@simplexpr146
 push word [idx2]
 call a
 add  sp, 2

;-361     else {

 jmp @@simplexpr147
@@simplexpr146:

;-362       pwi(idw2);  v(idx2);

 push word [idw2]
 call pwi
 add  sp, 2
 push word [idx2]
 call v
 add  sp, 2

;-363       if (idx2 >= LSTART) { prs("; ");

 mov ax, [idx2]
 cmp ax, 200 ;unsigned : 1
 jl  @@simplexpr148
 push simplexpr_15
 call prs
 add  sp, 2

;-364        loadName(NA, idx2); prs(NA); }  }

 push word [idx2]
 lea  ax, [NA]
 push ax
 call loadName
 add  sp, 4
 lea  ax, [NA]
 push ax
 call prs
 add  sp, 2
@@simplexpr148:

;-365   }

@@simplexpr147:

;-366 }

@@simplexpr141:

;-367 char ops[6];

@@retn: LEAVE
 ret
; ENDP
simplexpr_0 db "\n mov eax, ",0
simplexpr_1 db " & is not allowed in left side",0
simplexpr_2 db "Array not allowed left side",0
simplexpr_3 db "Relational not implemented yet",0
simplexpr_4 db "Assign expected",0
simplexpr_5 db "\nmov ",0
simplexpr_6 db ", ",0
simplexpr_7 db "; ",0
simplexpr_8 db "\nmov ",0
simplexpr_9 db ", ",0
simplexpr_10 db "& not allowed",0
simplexpr_11 db "Array right side not implemented",0
simplexpr_12 db "\nmov ",0
simplexpr_13 db "Mem to Mem not allowed by x86-CPU",0
simplexpr_14 db ", ",0
simplexpr_15 db "; ",0
section .bss
absolute 46858
ops resb 6
section .text

;-368 int getop() { int i;              *ops=0;       _ un=0;


getop:  ; *** PROC ***
;Function : getop, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   368 NULL bp-2    i;
 ENTER  2,0
 mov eax, 0
 mov  bx, [ops]
 mov  [bx], al
mov byte [un], 0

;-369   if (istoken('='))         {strcpy(ops, "mov");_ un=2;}

 push 61
 call istoken
 add  sp, 2
 or  al, al
 je @@getop149
 push getop_0
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
mov byte [un], 2

;-370   if (istoken(T_PLUSASS))   {strcpy(ops, "add");_ un=2;}

@@getop149:
 push 1230
 call istoken
 add  sp, 2
 or  al, al
 je @@getop150
 push getop_1
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
mov byte [un], 2

;-371   if (istoken(T_MINUSASS))  {strcpy(ops, "sub");_ un=2;}

@@getop150:
 push 1231
 call istoken
 add  sp, 2
 or  al, al
 je @@getop151
 push getop_2
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
mov byte [un], 2

;-372   if (istoken(T_ANDASS))    {strcpy(ops, "and");_ un=2;}

@@getop151:
 push 1234
 call istoken
 add  sp, 2
 or  al, al
 je @@getop152
 push getop_3
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
mov byte [un], 2

;-373   if (istoken(T_ORASS))     {strcpy(ops, "or" );_ un=2;}

@@getop152:
 push 1235
 call istoken
 add  sp, 2
 or  al, al
 je @@getop153
 push getop_4
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
mov byte [un], 2

;-374   if (istoken(T_LESSLESS))  {strcpy(ops, "shl");_ un=2;}

@@getop153:
 push 1240
 call istoken
 add  sp, 2
 or  al, al
 je @@getop154
 push getop_5
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
mov byte [un], 2

;-375   if (istoken(T_GREATGREAT)){strcpy(ops, "shr");_ un=2;}

@@getop154:
 push 1241
 call istoken
 add  sp, 2
 or  al, al
 je @@getop155
 push getop_6
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
mov byte [un], 2

;-376   if (istoken(T_PLUSPLUS))  {strcpy(ops, "inc");_ un=1;}

@@getop155:
 push 1219
 call istoken
 add  sp, 2
 or  al, al
 je @@getop156
 push getop_7
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
mov byte [un], 1

;-377   if (istoken(T_MINUSMINUS)){strcpy(ops, "dec");_ un=1;}

@@getop156:
 push 1225
 call istoken
 add  sp, 2
 or  al, al
 je @@getop157
 push getop_8
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
mov byte [un], 1

;-378   if (istoken(T_MULASS))    {strcpy(ops, "mul");_ un=1;}//reg only

@@getop157:
 push 1232
 call istoken
 add  sp, 2
 or  al, al
 je @@getop158
 push getop_9
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
mov byte [un], 1

;-379   if (istoken(T_DIVASS))    {strcpy(ops, "div");_ un=1;}//reg only

@@getop158:
 push 1233
 call istoken
 add  sp, 2
 or  al, al
 je @@getop159
 push getop_10
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
mov byte [un], 1

;-380 /*  if (istoken('+'))         {strcpy(ops, "add");_ un=3;}


;-381   if (istoken('-'))         {strcpy(ops, "sub");_ un=3;}


;-382   if (istoken('&'))         {strcpy(ops, "and");_ un=3;}


;-383   if (istoken('|'))         {strcpy(ops, "or" );_ un=3;}


;-384   if (istoken('*'))                             _ un=4;


;-385   if (istoken('%'))                             _ un=5;


;-386   if (istoken('/'))                             _ un=6;     */


;-387 }

@@getop159:

;-388 int prleftreg() { prnl(); prs(ops); prs("  "); printreg(irg1, mod1); }
 LEAVE
 ret
; ENDP
getop_0 db "mov",0
getop_1 db "add",0
getop_2 db "sub",0
getop_3 db "and",0
getop_4 db "or",0
getop_5 db "shl",0
getop_6 db "shr",0
getop_7 db "inc",0
getop_8 db "dec",0
getop_9 db "mul",0
getop_10 db "div",0

prleftreg:  ; *** PROC ***
 call prnl
 lea  ax, [ops]
 push ax
 call prs
 add  sp, 2
 push prleftreg_0
 call prs
 add  sp, 2
 push word [mod1]
 push word [irg1]
 call printreg
 add  sp, 4

;-389 int prleftvar() { }

 ret
; ENDP
prleftreg_0 db "  ",0

prleftvar:  ; *** PROC ***

;-390 


;-391 int printvar(int i, int mode) {  }

 ret
; ENDP

printvar:  ; *** PROC ***
;Function : printvar, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   391 NULL bp+4    i
;  201 var sign word   391 NULL bp+6    mode;
 ENTER  0,0

;-392 


;-393 int doreg1(int iscmp1) { int i; char sz;
 LEAVE
 ret
; ENDP

doreg1:  ; *** PROC ***

;-394   getop();

;Function : doreg1, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   393 NULL bp+4    iscmp1
;  201 var sign word   393 NULL bp-2    i
;  202 var sign byte   393 NULL bp-4    sz;
 ENTER  4,0
 call getop

;-395   if (iscmp1 == 1) {

 mov ax, [bp+4]
 cmp ax, 1
 jne @@doreg1160

;-396       token=getlex();

 call getlex
 mov word [token], ax

;-397       if (isrelational() ==0) error1("relational expected");

 call isrelational
 cmp ax, 0
 jne @@doreg1161
 push doreg1_0
 call error1
 add  sp, 2

;-398       strcpy(ops, "cmp");

@@doreg1161:
 push doreg1_1
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4

;-399       }


;-400   if (un==1) { prleftreg(); return; }

@@doreg1160:
 mov al, [un]
 cmp al, 1
 jne @@doreg1162
 call prleftreg
 jmp @@retn

;-401 


;-402   if (istoken(T_CONST)) {prleftreg(); prs(", "); prL(lexvalL); goto reg1;}

@@doreg1162:
 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@doreg1163
 call prleftreg
 push doreg1_2
 call prs
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4
 jmp @@reg1

;-403   


;-404   mod2=typeName(); irg2=checkreg();

@@doreg1163:
 call typeName
 mov word [mod2], ax
 call checkreg
 mov word [irg2], ax

;-405   if (irg2) {prleftreg(); prs(", "); printreg(irg2, mod2); goto reg1;}

 mov ax, [irg2]
 or  al, al
 je @@doreg1164
 call prleftreg
 push doreg1_3
 call prs
 add  sp, 2
 push word [mod2]
 push word [irg2]
 call printreg
 add  sp, 4
 jmp @@reg1

;-406 


;-407   i=searchname();

@@doreg1164:
 call searchname
 mov word [bp-2], ax

;-408   gettypes(i);

 push word [bp-2]
 call gettypes
 add  sp, 2

;-409   ids2=signi; idw2=wi; idt2=typei;

 mov ax, [signi]
 mov word [ids2], ax
 mov ax, [wi]
 mov word [idw2], ax
 mov ax, [typei]
 mov word [idt2], ax

;-410   if (eqstr(ops,"mov")) {_ sz=0;

 push doreg1_4
 lea  ax, [ops]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@doreg1165
mov byte [bp-4], 0; sz

;-411     if (_ irg1 >= 17) if (_ idw2==1) sz++;  // cast byte to word or dword

cmp word [irg1], 17 ;unsigned : 1
 jl  @@doreg1166
cmp word [idw2], 1
 jne @@doreg1167
 inc  byte [bp-4]

;-412     if (_ irg1 >= 47) if (_ idw2==2) sz++; }// cast word to dword

@@doreg1167:
@@doreg1166:
cmp word [irg1], 47 ;unsigned : 1
 jl  @@doreg1168
cmp word [idw2], 2
 jne @@doreg1169
 inc  byte [bp-4]
@@doreg1169:
@@doreg1168:

;-413   if (sz) { if (ids2) strcpy(ops,"movsx"); else strcpy(ops,"movzx"); }

@@doreg1165:
 mov al, [bp-4]
 or  al, al
 je @@doreg1170
 mov ax, [ids2]
 or  al, al
 je @@doreg1171
 push doreg1_5
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
 jmp @@doreg1172
@@doreg1171:
 push doreg1_6
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4
@@doreg1172:

;-414 


;-415   prleftreg(); prs(", ");

@@doreg1170:
 call prleftreg
 push doreg1_7
 call prs
 add  sp, 2

;-416   


;-417 //  if (sz) { if (_ idw2==1) prs("byte "); else prs("word "); }


;-418   if (sz) pwi(idw2);

 mov al, [bp-4]
 or  al, al
 je @@doreg1173
 push word [idw2]
 call pwi
 add  sp, 2

;-419   


;-420   if (mod2 == 2) a(i);

@@doreg1173:
 mov ax, [mod2]
 cmp ax, 2
 jne @@doreg1174
 push word [bp-2]
 call a
 add  sp, 2

;-421   else  {pwi(i); v(i); }

 jmp @@doreg1175
@@doreg1174:
 push word [bp-2]
 call pwi
 add  sp, 2
 push word [bp-2]
 call v
 add  sp, 2

;-422   reg1: if (iscmp1 == 1) {cmpneg(0); prs(fname); expect(')'); }

@@doreg1175:
@@reg1:
 mov ax, [bp+4]
 cmp ax, 1
 jne @@doreg1176
 push 0
 call cmpneg
 add  sp, 2
 lea  ax, [fname]
 push ax
 call prs
 add  sp, 2
 push 41
 call expect
 add  sp, 2

;-423 }

@@doreg1176:

;-424 int checkreg() { // >=17 = 16bit, >=47 = 32bit

@@retn: LEAVE
 ret
; ENDP
doreg1_0 db "relational expected",0
doreg1_1 db "cmp",0
doreg1_2 db ", ",0
doreg1_3 db ", ",0
doreg1_4 db "mov",0
doreg1_5 db "movsx",0
doreg1_6 db "movzx",0
doreg1_7 db ", ",0

checkreg:  ; *** PROC ***

;-425   if (strlen(symbol) <  2) return 0;

 lea  ax, [symbol]
 push ax
 call strlen
 add  sp, 2
 cmp ax, 2
 jge @@checkreg177
 mov eax, 0
 jmp @@retn

;-426   if (eqstr(symbol,"al")) return 1;   if (eqstr(symbol,"cl")) return 3;

@@checkreg177:
 push checkreg_0
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg178
 mov eax, 1
 jmp @@retn
@@checkreg178:
 push checkreg_1
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg179
 mov eax, 3
 jmp @@retn

;-427   if (eqstr(symbol,"dl")) return 5;   if (eqstr(symbol,"bl")) return 7;

@@checkreg179:
 push checkreg_2
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg180
 mov eax, 5
 jmp @@retn
@@checkreg180:
 push checkreg_3
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg181
 mov eax, 7
 jmp @@retn

;-428   if (eqstr(symbol,"ah")) return 9;   if (eqstr(symbol,"ch")) return 11;

@@checkreg181:
 push checkreg_4
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg182
 mov eax, 9
 jmp @@retn
@@checkreg182:
 push checkreg_5
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg183
 mov eax, 11
 jmp @@retn

;-429   if (eqstr(symbol,"dh")) return 13;  if (eqstr(symbol,"bh")) return 15;

@@checkreg183:
 push checkreg_6
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg184
 mov eax, 13
 jmp @@retn
@@checkreg184:
 push checkreg_7
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg185
 mov eax, 15
 jmp @@retn

;-430   if (eqstr(symbol,"ax")) return 17;  if (eqstr(symbol,"cx")) return 19;

@@checkreg185:
 push checkreg_8
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg186
 mov eax, 17
 jmp @@retn
@@checkreg186:
 push checkreg_9
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg187
 mov eax, 19
 jmp @@retn

;-431   if (eqstr(symbol,"dx")) return 21;  if (eqstr(symbol,"bx")) return 23;

@@checkreg187:
 push checkreg_10
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg188
 mov eax, 21
 jmp @@retn
@@checkreg188:
 push checkreg_11
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg189
 mov eax, 23
 jmp @@retn

;-432   if (eqstr(symbol,"sp")) return 25;  if (eqstr(symbol,"bp")) return 27;

@@checkreg189:
 push checkreg_12
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg190
 mov eax, 25
 jmp @@retn
@@checkreg190:
 push checkreg_13
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg191
 mov eax, 27
 jmp @@retn

;-433   if (eqstr(symbol,"si")) return 29;  if (eqstr(symbol,"di")) return 31;

@@checkreg191:
 push checkreg_14
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg192
 mov eax, 29
 jmp @@retn
@@checkreg192:
 push checkreg_15
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg193
 mov eax, 31
 jmp @@retn

;-434   if (eqstr(symbol,"es")) return 33;  if (eqstr(symbol,"cs")) return 35;

@@checkreg193:
 push checkreg_16
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg194
 mov eax, 33
 jmp @@retn
@@checkreg194:
 push checkreg_17
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg195
 mov eax, 35
 jmp @@retn

;-435   if (eqstr(symbol,"ss")) return 37;  if (eqstr(symbol,"ds")) return 39;

@@checkreg195:
 push checkreg_18
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg196
 mov eax, 37
 jmp @@retn
@@checkreg196:
 push checkreg_19
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg197
 mov eax, 39
 jmp @@retn

;-436   if (eqstr(symbol,"fs")) return 41;  if (eqstr(symbol,"gs")) return 43;

@@checkreg197:
 push checkreg_20
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg198
 mov eax, 41
 jmp @@retn
@@checkreg198:
 push checkreg_21
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg199
 mov eax, 43
 jmp @@retn

;-437   // (eqstr(symbol,"ip")) return 45;


;-438   if (strlen(symbol) >   3) return 0;

@@checkreg199:
 lea  ax, [symbol]
 push ax
 call strlen
 add  sp, 2
 cmp ax, 3
 jle @@checkreg200
 mov eax, 0
 jmp @@retn

;-439   if (eqstr(symbol,"eax")) return 47; if (eqstr(symbol,"ecx")) return 50;

@@checkreg200:
 push checkreg_22
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg201
 mov eax, 47
 jmp @@retn
@@checkreg201:
 push checkreg_23
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg202
 mov eax, 50
 jmp @@retn

;-440   if (eqstr(symbol,"edx")) return 53; if (eqstr(symbol,"ebx")) return 56;

@@checkreg202:
 push checkreg_24
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg203
 mov eax, 53
 jmp @@retn
@@checkreg203:
 push checkreg_25
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg204
 mov eax, 56
 jmp @@retn

;-441   if (eqstr(symbol,"esp")) return 59; if (eqstr(symbol,"ebp")) return 62;

@@checkreg204:
 push checkreg_26
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg205
 mov eax, 59
 jmp @@retn
@@checkreg205:
 push checkreg_27
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg206
 mov eax, 62
 jmp @@retn

;-442   if (eqstr(symbol,"esi")) return 65; if (eqstr(symbol,"edi")) return 68;

@@checkreg206:
 push checkreg_28
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg207
 mov eax, 65
 jmp @@retn
@@checkreg207:
 push checkreg_29
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg208
 mov eax, 68
 jmp @@retn

;-443   if (eqstr(symbol,"cr0")) return 71;

@@checkreg208:
 push checkreg_30
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkreg209
 mov eax, 71
 jmp @@retn

;-444   return 0;   }

@@checkreg209:
 mov eax, 0
 jmp @@retn

;-445 char printregstr[]

@@retn:
 ret
; ENDP
checkreg_0 db "al",0
checkreg_1 db "cl",0
checkreg_2 db "dl",0
checkreg_3 db "bl",0
checkreg_4 db "ah",0
checkreg_5 db "ch",0
checkreg_6 db "dh",0
checkreg_7 db "bh",0
checkreg_8 db "ax",0
checkreg_9 db "cx",0
checkreg_10 db "dx",0
checkreg_11 db "bx",0
checkreg_12 db "sp",0
checkreg_13 db "bp",0
checkreg_14 db "si",0
checkreg_15 db "di",0
checkreg_16 db "es",0
checkreg_17 db "cs",0
checkreg_18 db "ss",0
checkreg_19 db "ds",0
checkreg_20 db "fs",0
checkreg_21 db "gs",0
checkreg_22 db "eax",0
checkreg_23 db "ecx",0
checkreg_24 db "edx",0
checkreg_25 db "ebx",0
checkreg_26 db "esp",0
checkreg_27 db "ebp",0
checkreg_28 db "esi",0
checkreg_29 db "edi",0
checkreg_30 db "cr0",0

;-446 ="*alcldlblahchdhbhaxcxdxbxspbpsidiescsssdsfsgsipeaxecxedxebxespebpesiedicr0";

printregstr db "*alcldlblahchdhbhaxcxdxbxspbpsidiescsssdsfsgsipeaxecxedxebxespebpesiedicr0",0

;-447 //          1         2         3         4         5         6         7


;-448 // 1 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3


;-449 void printreg(int i, int mode) {  unsigned int k; unsigned char c;


printreg:  ; *** PROC ***

;-450   if (_ mode == 1) prc('[');

;Function : printreg, Number of local variables: 4
;   # type sign width line used address name   list of local variables
;  200 var sign word   449 NULL bp+4    i
;  201 var sign word   449 NULL bp+6    mode
;  202 var unsg word   449 NULL bp-2    k
;  203 var unsg byte   449 NULL bp-4    c;
 ENTER  4,0
cmp word [bp+6], 1
 jne @@printreg210
 push 91
 call prc
 add  sp, 2

;-451   k = &printregstr + i; c=*k; prc(c); i++;

@@printreg210:
 mov ax, printregstr
 add ax, [bp+4]
 mov word [bp-2], ax
 mov bx, [bp-2]
 mov ax, [bx]
 mov byte [bp-4], al
 mov al, byte [bp-4]
 mov ah, 0
 push ax
 call prc
 add  sp, 2
 inc  word [bp+4]

;-452   k = &printregstr + i; c=*k; prc(c);

 mov ax, printregstr
 add ax, [bp+4]
 mov word [bp-2], ax
 mov bx, [bp-2]
 mov ax, [bx]
 mov byte [bp-4], al
 mov al, byte [bp-4]
 mov ah, 0
 push ax
 call prc
 add  sp, 2

;-453   if (i > 47) { i++; k = &printregstr + i; c=*k; prc(c); }

 mov ax, [bp+4]
 cmp ax, 47
 jle @@printreg211
 inc  word [bp+4]
 mov ax, printregstr
 add ax, [bp+4]
 mov word [bp-2], ax
 mov bx, [bp-2]
 mov ax, [bx]
 mov byte [bp-4], al
 mov al, byte [bp-4]
 mov ah, 0
 push ax
 call prc
 add  sp, 2

;-454   if (_ mode == 1) prc(']');

@@printreg211:
cmp word [bp+6], 1
 jne @@printreg212
 push 93
 call prc
 add  sp, 2

;-455 }

@@printreg212:

;-456 printpri(int w) { if (w == 1) printreg(1, 0); if (w == 2) printreg(17, 0);
 LEAVE
 ret
; ENDP

printpri:  ; *** PROC ***
;Function : printpri, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   456 NULL bp+4    w;
 ENTER  0,0
 mov ax, [bp+4]
 cmp ax, 1
 jne @@printpri213
 push 0
 push 1
 call printreg
 add  sp, 4
@@printpri213:
 mov ax, [bp+4]
 cmp ax, 2
 jne @@printpri214
 push 0
 push 17
 call printreg
 add  sp, 4

;-457   if (wi == 4) printreg (47, 0);

@@printpri214:
 mov ax, [wi]
 cmp ax, 4
 jne @@printpri215
 push 0
 push 47
 call printreg
 add  sp, 4

;-458 }

@@printpri215:

;-459 


;-460 


;-461 


;-462 int expr()
 LEAVE
 ret
; ENDP

expr:  ; *** PROC ***

;-463 { int mode; int id1;     int ixarr; int ixconst;


;-464   int ids;  int isCONST; int i;     unsigned char *p;


;-465   if (istoken(T_CONST)) { prs("\n mov eax, "); prL(lexvalL); return; }

;Function : expr, Number of local variables: 8
;   # type sign width line used address name   list of local variables
;  200 var sign word   463 NULL bp-2    mode
;  201 var sign word   463 NULL bp-4    id1
;  202 var sign word   463 NULL bp-6    ixarr
;  203 var sign word   463 NULL bp-8    ixconst
;  204 var sign word   464 NULL bp-10    ids
;  205 var sign word   464 NULL bp-12    isCONST
;  206 var sign word   464 NULL bp-14    i
;  207 ptr unsg byte   464 NULL bp-16    p;
 ENTER  16,0
 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@expr216
 push expr_0
 call prs
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4
 jmp @@retn

;-466   mode=typeName(); /*0=V,1=*,2=&*/

@@expr216:
 call typeName
 mov word [bp-2], ax

;-467   mod1=mode;

 mov ax, [bp-2]
 mov word [mod1], ax

;-468   irg1=checkreg();

 call checkreg
 mov word [irg1], ax

;-469   if (irg1) { doreg1(0); return; }

 mov ax, [irg1]
 or  al, al
 je @@expr217
 push 0
 call doreg1
 add  sp, 2
 jmp @@retn

;-470   if (token=='(')  {docall1(); goto e1; }

@@expr217:
 mov ax, [token]
 cmp ax, 40
 jne @@expr218
 call docall1
 jmp @@e1

;-471 


;-472   id1=searchname(); gettypes(id1); ids=signi;  ixarr=0;  ixconst=0;

@@expr218:
 call searchname
 mov word [bp-4], ax
 push word [bp-4]
 call gettypes
 add  sp, 2
 mov ax, [signi]
 mov word [bp-10], ax
 mov eax, 0
 mov word [bp-6], ax
 mov eax, 0
 mov word [bp-8], ax

;-473     if (istoken('[')) { if (istoken(T_CONST)) {

 push 91
 call istoken
 add  sp, 2
 or  al, al
 je @@expr219
 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@expr220

;-474       ixconst=1; ixarr=lexvalL; expect(']');  }

 mov eax, 1
 mov word [bp-8], ax
 mov eax, [lexvalL]
 mov word [bp-6], ax
 push 93
 call expect
 add  sp, 2

;-475     else {ixarr=searchname(); expect(T_NAME); expect(']');

 jmp @@expr221
@@expr220:
 call searchname
 mov word [bp-6], ax
 push 256
 call expect
 add  sp, 2
 push 93
 call expect
 add  sp, 2

;-476     gettypes(ixarr);

 push word [bp-6]
 call gettypes
 add  sp, 2

;-477     if (widthi != 2) error1("Array index must be number or int"); } }

 mov ax, [widthi]
 cmp ax, 2
 je  @@expr222
 push expr_1
 call error1
 add  sp, 2
@@expr222:
@@expr221:

;-478   if (istoken(T_PLUSPLUS  )) {if(mode)error1("Only var allowed");

@@expr219:
 push 1219
 call istoken
 add  sp, 2
 or  al, al
 je @@expr223
 mov ax, [bp-2]
 or  al, al
 je @@expr224
 push expr_2
 call error1
 add  sp, 2

;-479      prs("\n inc  ");  pwi(wi); v(id1); goto e1;}

@@expr224:
 push expr_3
 call prs
 add  sp, 2
 push word [wi]
 call pwi
 add  sp, 2
 push word [bp-4]
 call v
 add  sp, 2
 jmp @@e1

;-480   if (istoken(T_MINUSMINUS)) {if(mode)error1("Only Var allowed");

@@expr223:
 push 1225
 call istoken
 add  sp, 2
 or  al, al
 je @@expr225
 mov ax, [bp-2]
 or  al, al
 je @@expr226
 push expr_4
 call error1
 add  sp, 2

;-481      prs("\n dec  ");  pwi(wi); v(id1); goto e1;}

@@expr226:
 push expr_5
 call prs
 add  sp, 2
 push word [wi]
 call pwi
 add  sp, 2
 push word [bp-4]
 call v
 add  sp, 2
 jmp @@e1

;-482        


;-483   if (istoken(T_PLUSASS   )) {compoundass("add", mode, id1); goto e1;}

@@expr225:
 push 1230
 call istoken
 add  sp, 2
 or  al, al
 je @@expr227
 push word [bp-4]
 push word [bp-2]
 push expr_6
 call compoundass
 add  sp, 6
 jmp @@e1

;-484   if (istoken(T_MINUSASS  )) {compoundass("sub", mode, id1); goto e1;}

@@expr227:
 push 1231
 call istoken
 add  sp, 2
 or  al, al
 je @@expr228
 push word [bp-4]
 push word [bp-2]
 push expr_7
 call compoundass
 add  sp, 6
 jmp @@e1

;-485   if (istoken(T_ANDASS    )) {compoundass("and", mode, id1); goto e1;}

@@expr228:
 push 1234
 call istoken
 add  sp, 2
 or  al, al
 je @@expr229
 push word [bp-4]
 push word [bp-2]
 push expr_8
 call compoundass
 add  sp, 6
 jmp @@e1

;-486   if (istoken(T_ORASS     )) {compoundass("or" , mode, id1); goto e1;}    

@@expr229:
 push 1235
 call istoken
 add  sp, 2
 or  al, al
 je @@expr230
 push word [bp-4]
 push word [bp-2]
 push expr_9
 call compoundass
 add  sp, 6
 jmp @@e1

;-487   if (istoken(T_MULASS    )) {error1("not implemented");}

@@expr230:
 push 1232
 call istoken
 add  sp, 2
 or  al, al
 je @@expr231
 push expr_10
 call error1
 add  sp, 2

;-488   if (istoken(T_DIVASS    )) {error1("not implemented");}

@@expr231:
 push 1233
 call istoken
 add  sp, 2
 or  al, al
 je @@expr232
 push expr_11
 call error1
 add  sp, 2

;-489 


;-490   if (istoken('=')) { expr();

@@expr232:
 push 61
 call istoken
 add  sp, 2
 or  al, al
 je @@expr233
 call expr

;-491   doassign(mode, id1, ixarr, ixconst); goto e1;  }

 push word [bp-8]
 push word [bp-6]
 push word [bp-4]
 push word [bp-2]
 call doassign
 add  sp, 8
 jmp @@e1

;-492   dovar1(mode, "mov", ixarr, id1);

@@expr233:
 push word [bp-4]
 push word [bp-6]
 push expr_12
 push word [bp-2]
 call dovar1
 add  sp, 8

;-493   


;-494 e1:    if (istoken('+')) rterm("add");

@@e1:
 push 43
 call istoken
 add  sp, 2
 or  al, al
 je @@expr234
 push expr_13
 call rterm
 add  sp, 2

;-495   else if (istoken('-')) rterm("sub" );

 jmp @@expr235
@@expr234:
 push 45
 call istoken
 add  sp, 2
 or  al, al
 je @@expr236
 push expr_14
 call rterm
 add  sp, 2

;-496   else if (istoken('&')) rterm("and" );

 jmp @@expr237
@@expr236:
 push 38
 call istoken
 add  sp, 2
 or  al, al
 je @@expr238
 push expr_15
 call rterm
 add  sp, 2

;-497   else if (istoken('|')) rterm("or" );  

 jmp @@expr239
@@expr238:
 push 124
 call istoken
 add  sp, 2
 or  al, al
 je @@expr240
 push expr_16
 call rterm
 add  sp, 2

;-498   else if (istoken(T_LESSLESS)) rterm("shl");

 jmp @@expr241
@@expr240:
 push 1240
 call istoken
 add  sp, 2
 or  al, al
 je @@expr242
 push expr_17
 call rterm
 add  sp, 2

;-499   else if (istoken(T_GREATGREAT)) rterm("shr");  

 jmp @@expr243
@@expr242:
 push 1241
 call istoken
 add  sp, 2
 or  al, al
 je @@expr244
 push expr_18
 call rterm
 add  sp, 2

;-500   else if (istoken('*')) domul (ids);

 jmp @@expr245
@@expr244:
 push 42
 call istoken
 add  sp, 2
 or  al, al
 je @@expr246
 push word [bp-10]
 call domul
 add  sp, 2

;-501   else if (istoken('/')) doidiv(ids);

 jmp @@expr247
@@expr246:
 push 47
 call istoken
 add  sp, 2
 or  al, al
 je @@expr248
 push word [bp-10]
 call doidiv
 add  sp, 2

;-502   else if (istoken('%')) domod (ids);

 jmp @@expr249
@@expr248:
 push 37
 call istoken
 add  sp, 2
 or  al, al
 je @@expr250
 push word [bp-10]
 call domod
 add  sp, 2

;-503   if (isrelational()) { rterm("cmp"); cmpneg(ids);}

@@expr250:
@@expr249:
@@expr247:
@@expr245:
@@expr243:
@@expr241:
@@expr239:
@@expr237:
@@expr235:
 call isrelational
 or  al, al
 je @@expr251
 push expr_19
 call rterm
 add  sp, 2
 push word [bp-10]
 call cmpneg
 add  sp, 2

;-504   return 0;

@@expr251:
 mov eax, 0
 jmp @@retn

;-505 }


;-506 


;-507 int compoundass(char *op, int mode, int id1) {

@@retn: LEAVE
 ret
; ENDP
expr_0 db "\n mov eax, ",0
expr_1 db "Array index must be number or int",0
expr_2 db "Only var allowed",0
expr_3 db "\n inc  ",0
expr_4 db "Only Var allowed",0
expr_5 db "\n dec  ",0
expr_6 db "add",0
expr_7 db "sub",0
expr_8 db "and",0
expr_9 db "or",0
expr_10 db "not implemented",0
expr_11 db "not implemented",0
expr_12 db "mov",0
expr_13 db "add",0
expr_14 db "sub",0
expr_15 db "and",0
expr_16 db "or",0
expr_17 db "shl",0
expr_18 db "shr",0
expr_19 db "cmp",0

compoundass:  ; *** PROC ***

;-508   if(mode) error1("only scalar Var allowed");

;Function : compoundass, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte   507 NULL bp+4    op
;  201 var sign word   507 NULL bp+6    mode
;  202 var sign word   507 NULL bp+8    id1;
 ENTER  0,0
 mov ax, [bp+6]
 or  al, al
 je @@compoundass252
 push compoundass_0
 call error1
 add  sp, 2

;-509   prnl(); prs(op); prs("  "); 

@@compoundass252:
 call prnl
 push word [bp+4]
 call prs
 add  sp, 2
 push compoundass_1
 call prs
 add  sp, 2

;-510   gettypes(id1); pwi(wi); v(id1); prs(", ");

 push word [bp+8]
 call gettypes
 add  sp, 2
 push word [wi]
 call pwi
 add  sp, 2
 push word [bp+8]
 call v
 add  sp, 2
 push compoundass_2
 call prs
 add  sp, 2

;-511   expect(T_CONST); prL(lexvalL);

 push 257
 call expect
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4

;-512 }


;-513 int dovar1(int mode, int op, int ixarr, int id1) { 
 LEAVE
 ret
; ENDP
compoundass_0 db "only scalar Var allowed",0
compoundass_1 db "  ",0
compoundass_2 db ", ",0

dovar1:  ; *** PROC ***

;-514   gettypes(id1);

;Function : dovar1, Number of local variables: 4
;   # type sign width line used address name   list of local variables
;  200 var sign word   513 NULL bp+4    mode
;  201 var sign word   513 NULL bp+6    op
;  202 var sign word   513 NULL bp+8    ixarr
;  203 var sign word   513 NULL bp+10    id1;
 ENTER  0,0
 push word [bp+10]
 call gettypes
 add  sp, 2

;-515   if (mode==1) {prs("\n mov bx, "); v(id1); prnl(); prs(op);

 mov ax, [bp+4]
 cmp ax, 1
 jne @@dovar1253
 push dovar1_0
 call prs
 add  sp, 2
 push word [bp+10]
 call v
 add  sp, 2
 call prnl
 push word [bp+6]
 call prs
 add  sp, 2

;-516     if(widthi == 1) prs(" al, [bx]\n mov ah, 0");

 mov ax, [widthi]
 cmp ax, 1
 jne @@dovar1254
 push dovar1_1
 call prs
 add  sp, 2

;-517     if(widthi == 2) prs(" ax, [bx]");

@@dovar1254:
 mov ax, [widthi]
 cmp ax, 2
 jne @@dovar1255
 push dovar1_2
 call prs
 add  sp, 2

;-518     if(widthi == 4) prs(" eax, [bx]");

@@dovar1255:
 mov ax, [widthi]
 cmp ax, 4
 jne @@dovar1256
 push dovar1_3
 call prs
 add  sp, 2

;-519     return; }

@@dovar1256:
 jmp @@retn

;-520   if (mode==2){prnl();prs(op);prs(" ax, "); a(id1); return; }

@@dovar1253:
 mov ax, [bp+4]
 cmp ax, 2
 jne @@dovar1257
 call prnl
 push word [bp+6]
 call prs
 add  sp, 2
 push dovar1_4
 call prs
 add  sp, 2
 push word [bp+10]
 call a
 add  sp, 2
 jmp @@retn

;-521   if (ixarr) {

@@dovar1257:
 mov ax, [bp+8]
 or  al, al
 je @@dovar1258

;-522     prs("\n mov bx, "); v(ixarr);

 push dovar1_5
 call prs
 add  sp, 2
 push word [bp+8]
 call v
 add  sp, 2

;-523     if (wi==2) prs("\n shl bx, 1");

 mov ax, [wi]
 cmp ax, 2
 jne @@dovar1259
 push dovar1_6
 call prs
 add  sp, 2

;-524     if (wi==4) prs("\n shl bx, 2");

@@dovar1259:
 mov ax, [wi]
 cmp ax, 4
 jne @@dovar1260
 push dovar1_7
 call prs
 add  sp, 2

;-525     prs("\n "); prs(op); prc(' '); printpri(wi); prs(", ");

@@dovar1260:
 push dovar1_8
 call prs
 add  sp, 2
 push word [bp+6]
 call prs
 add  sp, 2
 push 32
 call prc
 add  sp, 2
 push word [wi]
 call printpri
 add  sp, 2
 push dovar1_9
 call prs
 add  sp, 2

;-526 // v(id1); prs(" [bx]");


;-527     prc('['); printName(id1); prs(" + bx]"); return; }

 push 91
 call prc
 add  sp, 2
 push word [bp+10]
 call printName
 add  sp, 2
 push dovar1_10
 call prs
 add  sp, 2
 jmp @@retn

;-528   prnl();prs(op); prc(' '); printpri(wi); prs(", ");  v(id1);

@@dovar1258:
 call prnl
 push word [bp+6]
 call prs
 add  sp, 2
 push 32
 call prc
 add  sp, 2
 push word [wi]
 call printpri
 add  sp, 2
 push dovar1_11
 call prs
 add  sp, 2
 push word [bp+10]
 call v
 add  sp, 2

;-529 }


;-530 int rterm(char *op) {int mode; int opint; int ixarr; int id1;

@@retn: LEAVE
 ret
; ENDP
dovar1_0 db "\n mov bx, ",0
dovar1_1 db " al, [bx]\n mov ah, 0",0
dovar1_2 db " ax, [bx]",0
dovar1_3 db " eax, [bx]",0
dovar1_4 db " ax, ",0
dovar1_5 db "\n mov bx, ",0
dovar1_6 db "\n shl bx, 1",0
dovar1_7 db "\n shl bx, 2",0
dovar1_8 db "\n ",0
dovar1_9 db ", ",0
dovar1_10 db " + bx]",0
dovar1_11 db ", ",0

rterm:  ; *** PROC ***

;-531   if (istoken(T_CONST)) { prnl(); prs(op); prc(' '); printpri(wi); prs(", ");

;Function : rterm, Number of local variables: 5
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte   530 NULL bp+4    op
;  201 var sign word   530 NULL bp-2    mode
;  202 var sign word   530 NULL bp-4    opint
;  203 var sign word   530 NULL bp-6    ixarr
;  204 var sign word   530 NULL bp-8    id1;
 ENTER  8,0
 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@rterm261
 call prnl
 push word [bp+4]
 call prs
 add  sp, 2
 push 32
 call prc
 add  sp, 2
 push word [wi]
 call printpri
 add  sp, 2
 push rterm_0
 call prs
 add  sp, 2

;-532     prL(lexvalL); return;}

 push dword [lexvalL]
 call prL
 add  sp, 4
 jmp @@retn

;-533   mode=typeName(); id1=searchname(); ixarr=0;

@@rterm261:
 call typeName
 mov word [bp-2], ax
 call searchname
 mov word [bp-8], ax
 mov eax, 0
 mov word [bp-6], ax

;-534   if (istoken('[')) { ixarr=searchname(); expect(T_NAME); expect(']');  

 push 91
 call istoken
 add  sp, 2
 or  al, al
 je @@rterm262
 call searchname
 mov word [bp-6], ax
 push 256
 call expect
 add  sp, 2
 push 93
 call expect
 add  sp, 2

;-535     gettypes(ixarr);

 push word [bp-6]
 call gettypes
 add  sp, 2

;-536     if (widthi != 2) error1("Array index must be int"); }

 mov ax, [widthi]
 cmp ax, 2
 je  @@rterm263
 push rterm_1
 call error1
 add  sp, 2
@@rterm263:

;-537   if (eqstr(symbol,"ax")) return;

@@rterm262:
 push rterm_2
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@rterm264
 jmp @@retn

;-538   opint=op; dovar1(mode, opint, ixarr, id1);

@@rterm264:
 mov ax, [bp+4]
 mov word [bp-4], ax
 push word [bp-8]
 push word [bp-6]
 push word [bp-4]
 push word [bp-2]
 call dovar1
 add  sp, 8

;-539 }


;-540 int doassign(int mode, int i, int ixarr, int ixconst) {

@@retn: LEAVE
 ret
; ENDP
rterm_0 db ", ",0
rterm_1 db "Array index must be int",0
rterm_2 db "ax",0

doassign:  ; *** PROC ***

;-541   gettypes(i);

;Function : doassign, Number of local variables: 4
;   # type sign width line used address name   list of local variables
;  200 var sign word   540 NULL bp+4    mode
;  201 var sign word   540 NULL bp+6    i
;  202 var sign word   540 NULL bp+8    ixarr
;  203 var sign word   540 NULL bp+10    ixconst;
 ENTER  0,0
 push word [bp+6]
 call gettypes
 add  sp, 2

;-542   if (mode==1) {prs("\n mov  bx, ");v(i);

 mov ax, [bp+4]
 cmp ax, 1
 jne @@doassign265
 push doassign_0
 call prs
 add  sp, 2
 push word [bp+6]
 call v
 add  sp, 2

;-543     prs("\n mov  [bx], "); printpri(widthi); return;}

 push doassign_1
 call prs
 add  sp, 2
 push word [widthi]
 call printpri
 add  sp, 2
 jmp @@retn

;-544   if (mode==2) {prs("\n mov  ");a(i); prs(", ax"); return;}

@@doassign265:
 mov ax, [bp+4]
 cmp ax, 2
 jne @@doassign266
 push doassign_2
 call prs
 add  sp, 2
 push word [bp+6]
 call a
 add  sp, 2
 push doassign_3
 call prs
 add  sp, 2
 jmp @@retn

;-545   if (ixarr) {  prs("\n mov bx, ");

@@doassign266:
 mov ax, [bp+8]
 or  al, al
 je @@doassign267
 push doassign_4
 call prs
 add  sp, 2

;-546     if(ixconst) prunsign1(ixarr); else v(ixarr);

 mov ax, [bp+10]
 or  al, al
 je @@doassign268
 push word [bp+8]
 call prunsign1
 add  sp, 2
 jmp @@doassign269
@@doassign268:
 push word [bp+8]
 call v
 add  sp, 2

;-547     if (wi==2) prs("\n shl bx, 1");

@@doassign269:
 mov ax, [wi]
 cmp ax, 2
 jne @@doassign270
 push doassign_5
 call prs
 add  sp, 2

;-548     if (wi==4) prs("\n shl bx, 2");

@@doassign270:
 mov ax, [wi]
 cmp ax, 4
 jne @@doassign271
 push doassign_6
 call prs
 add  sp, 2

;-549     prs("\n mov ["); printName(i); prs("+bx], "); printpri(wi); return; }

@@doassign271:
 push doassign_7
 call prs
 add  sp, 2
 push word [bp+6]
 call printName
 add  sp, 2
 push doassign_8
 call prs
 add  sp, 2
 push word [wi]
 call printpri
 add  sp, 2
 jmp @@retn

;-550   prs("\n mov "); pwi(wi); v(i); prs(", "); printpri(wi);

@@doassign267:
 push doassign_9
 call prs
 add  sp, 2
 push word [wi]
 call pwi
 add  sp, 2
 push word [bp+6]
 call v
 add  sp, 2
 push doassign_10
 call prs
 add  sp, 2
 push word [wi]
 call printpri
 add  sp, 2

;-551 }


;-552 int domul(int ids) {

@@retn: LEAVE
 ret
; ENDP
doassign_0 db "\n mov  bx, ",0
doassign_1 db "\n mov  [bx], ",0
doassign_2 db "\n mov  ",0
doassign_3 db ", ax",0
doassign_4 db "\n mov bx, ",0
doassign_5 db "\n shl bx, 1",0
doassign_6 db "\n shl bx, 2",0
doassign_7 db "\n mov [",0
doassign_8 db "+bx], ",0
doassign_9 db "\n mov ",0
doassign_10 db ", ",0

domul:  ; *** PROC ***

;-553   if (ids) rterm("imul"); else {

;Function : domul, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   552 NULL bp+4    ids;
 ENTER  0,0
 mov ax, [bp+4]
 or  al, al
 je @@domul272
 push domul_0
 call rterm
 add  sp, 2
 jmp @@domul273
@@domul272:

;-554   if (istoken(T_CONST)) {

 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@domul274

;-555       prs("\n mov ebx, "); prL(lexvalL); prs("\n mul ebx"); }

 push domul_1
 call prs
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4
 push domul_2
 call prs
 add  sp, 2

;-556   else error1("with MUL only const number as multiplicator allowed"); } }

 jmp @@domul275
@@domul274:
 push domul_3
 call error1
 add  sp, 2
@@domul275:
@@domul273:

;-557 int doidiv(int ids) { int mode; int id1;
 LEAVE
 ret
; ENDP
domul_0 db "imul",0
domul_1 db "\n mov ebx, ",0
domul_2 db "\n mul ebx",0
domul_3 db "with MUL only const number as multiplicator allowed",0

doidiv:  ; *** PROC ***

;-558   if (istoken(T_CONST)) {

;Function : doidiv, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   557 NULL bp+4    ids
;  201 var sign word   557 NULL bp-2    mode
;  202 var sign word   557 NULL bp-4    id1;
 ENTER  4,0
 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@doidiv276

;-559     prs("\n mov bx, "); prL(lexvalL);

 push doidiv_0
 call prs
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4

;-560     if (ids) prs("\n cwd\n idiv bx"); else prs("\n mov dx, 0\n div bx"); }

 mov ax, [bp+4]
 or  al, al
 je @@doidiv277
 push doidiv_1
 call prs
 add  sp, 2
 jmp @@doidiv278
@@doidiv277:
 push doidiv_2
 call prs
 add  sp, 2
@@doidiv278:

;-561   else {

 jmp @@doidiv279
@@doidiv276:

;-562     mode=typeName(); id1=searchname();

 call typeName
 mov word [bp-2], ax
 call searchname
 mov word [bp-4], ax

;-563     if (mode) error1("only const number or int as divisor allowed");

 mov ax, [bp-2]
 or  al, al
 je @@doidiv280
 push doidiv_3
 call error1
 add  sp, 2

;-564     gettypes(id1);

@@doidiv280:
 push word [bp-4]
 call gettypes
 add  sp, 2

;-565     if (typei) error1("only int as simple var divisor allowed");

 mov ax, [typei]
 or  al, al
 je @@doidiv281
 push doidiv_4
 call error1
 add  sp, 2

;-566     if (wi!=2) error1("only int, no byte as divisor allowed");

@@doidiv281:
 mov ax, [wi]
 cmp ax, 2
 je  @@doidiv282
 push doidiv_5
 call error1
 add  sp, 2

;-567     prs("\n mov bx, "); v(id1);

@@doidiv282:
 push doidiv_6
 call prs
 add  sp, 2
 push word [bp-4]
 call v
 add  sp, 2

;-568     if (ids) prs("\n cwd\n idiv bx"); else prs("\n mov dx, 0\n div bx"); }

 mov ax, [bp+4]
 or  al, al
 je @@doidiv283
 push doidiv_7
 call prs
 add  sp, 2
 jmp @@doidiv284
@@doidiv283:
 push doidiv_8
 call prs
 add  sp, 2
@@doidiv284:

;-569 }

@@doidiv279:

;-570 int domod(int ids) { doidiv(ids); prs("\n mov ax, dx"); }
 LEAVE
 ret
; ENDP
doidiv_0 db "\n mov bx, ",0
doidiv_1 db "\n cwd\n idiv bx",0
doidiv_2 db "\n mov dx, 0\n div bx",0
doidiv_3 db "only const number or int as divisor allowed",0
doidiv_4 db "only int as simple var divisor allowed",0
doidiv_5 db "only int, no byte as divisor allowed",0
doidiv_6 db "\n mov bx, ",0
doidiv_7 db "\n cwd\n idiv bx",0
doidiv_8 db "\n mov dx, 0\n div bx",0

domod:  ; *** PROC ***
;Function : domod, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   570 NULL bp+4    ids;
 ENTER  0,0
 push word [bp+4]
 call doidiv
 add  sp, 2
 push domod_0
 call prs
 add  sp, 2

;-571 


;-572 int docalltype[10]; int docallvalue[10];
 LEAVE
 ret
; ENDP
domod_0 db "\n mov ax, dx",0
section .bss
absolute 46864
docalltype resw 10
section .text
section .bss
absolute 46884
docallvalue resw 10
section .text

;-573 char procname[IDLENMAX]; // 1=CONST, 2=String, 3=&, 4=Name 5=register

section .bss
absolute 46904
procname resb 16
section .text

;-574 


;-575 void docall1() {int i; int narg; int t0; int n0;  int sz32;


docall1:  ; *** PROC ***

;-576   narg=0;  sz32=0;

;Function : docall1, Number of local variables: 5
;   # type sign width line used address name   list of local variables
;  200 var sign word   575 NULL bp-2    i
;  201 var sign word   575 NULL bp-4    narg
;  202 var sign word   575 NULL bp-6    t0
;  203 var sign word   575 NULL bp-8    n0
;  204 var sign word   575 NULL bp-10    sz32;
 ENTER  10,0
 mov eax, 0
 mov word [bp-4], ax
 mov eax, 0
 mov word [bp-10], ax

;-577   checknamelen();

 call checknamelen

;-578   strcpy(&procname, symbol);

 lea  ax, [symbol]
 push ax
 lea  ax, [procname]
 push ax
 call strcpy
 add  sp, 4

;-579   storecall();

 call storecall

;-580   expect('(');

 push 40
 call expect
 add  sp, 2

;-581 	if (istoken(')') ==0 ) {

 push 41
 call istoken
 add  sp, 2
 cmp ax, 0
 jne @@docall1285

;-582 	  do { narg++;

@@docall1286:
 inc  word [bp-4]

;-583 	    if (narg >9 ) error1("Max. 9 parameters");  t0=0;

 mov ax, [bp-4]
 cmp ax, 9
 jle @@docall1287
 push docall1_0
 call error1
 add  sp, 2
@@docall1287:
 mov eax, 0
 mov word [bp-6], ax

;-584       if(istoken(T_CONST)) {t0=1; n0=lexvalL; }

 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@docall1288
 mov eax, 1
 mov word [bp-6], ax
 mov eax, [lexvalL]
 mov word [bp-8], ax

;-585       if(istoken(T_STRING)){t0=2; n0=nconst;

@@docall1288:
 push 258
 call istoken
 add  sp, 2
 or  al, al
 je @@docall1289
 mov eax, 2
 mov word [bp-6], ax
 mov ax, [nconst]
 mov word [bp-8], ax

;-586         eprs("\n"); eprs(fname); eprc(95);eprnum(nconst);eprs(" db ");

 push docall1_1
 call eprs
 add  sp, 2
 lea  ax, [fname]
 push ax
 call eprs
 add  sp, 2
 push 95
 call eprc
 add  sp, 2
 push word [nconst]
 call eprnum
 add  sp, 2
 push docall1_2
 call eprs
 add  sp, 2

;-587         eprc(34);eprs(symbol);eprc(34);eprs(",0"); nconst++; }

 push 34
 call eprc
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call eprs
 add  sp, 2
 push 34
 call eprc
 add  sp, 2
 push docall1_3
 call eprs
 add  sp, 2
 inc  word [nconst]

;-588       if(istoken('&'))     {t0=3; name1(); n0=searchname();}

@@docall1289:
 push 38
 call istoken
 add  sp, 2
 or  al, al
 je @@docall1290
 mov eax, 3
 mov word [bp-6], ax
 call name1
 call searchname
 mov word [bp-8], ax

;-589       if(istoken(T_NAME))  { n0=checkreg();

@@docall1290:
 push 256
 call istoken
 add  sp, 2
 or  al, al
 je @@docall1291
 call checkreg
 mov word [bp-8], ax

;-590         if (n0) t0=5;

 mov ax, [bp-8]
 or  al, al
 je @@docall1292
 mov eax, 5
 mov word [bp-6], ax

;-591         else {t0=4; n0=searchname();

 jmp @@docall1293
@@docall1292:
 mov eax, 4
 mov word [bp-6], ax
 call searchname
 mov word [bp-8], ax

;-592           p1=&GType; p1=p1+n0; if (*p1=='&') t0=3; }  }

 mov ax, GType
 mov word [p1], ax
 mov ax, [p1]
 add ax, [bp-8]
 mov word [p1], ax
 mov bx, [p1]
 mov al, [bx]
 mov ah, 0
 cmp ax, 38
 jne @@docall1294
 mov eax, 3
 mov word [bp-6], ax
@@docall1294:
@@docall1293:

;-593       if (t0==0) error1("parameter not recognized (no * allowed)");

@@docall1291:
 mov ax, [bp-6]
 cmp ax, 0
 jne @@docall1295
 push docall1_4
 call error1
 add  sp, 2

;-594       docalltype [narg] = t0;

@@docall1295:
 mov ax, [bp-6]
 mov bx, [bp-4]
 shl bx, 1
 mov [docalltype+bx], ax

;-595       docallvalue[narg] = n0;

 mov ax, [bp-8]
 mov bx, [bp-4]
 shl bx, 1
 mov [docallvalue+bx], ax

;-596     } while (istoken(','));

 push 44
 call istoken
 add  sp, 2
 or  al, al
 je @@docall1296
 jmp @@docall1286
@@docall1296:

;-597     


;-598   	expect(')');  i=narg;

 push 41
 call expect
 add  sp, 2
 mov ax, [bp-4]
 mov word [bp-2], ax

;-599     do {

@@docall1297:

;-600       t0 = docalltype [i];

 mov bx, [bp-2]
 shl bx, 1
 mov ax, [docalltype + bx]
 mov word [bp-6], ax

;-601       n0 = docallvalue[i];     

 mov bx, [bp-2]
 shl bx, 1
 mov ax, [docallvalue + bx]
 mov word [bp-8], ax

;-602       if(t0==1){ prs("\n push "); pint1(n0);}

 mov ax, [bp-6]
 cmp ax, 1
 jne @@docall1298
 push docall1_5
 call prs
 add  sp, 2
 push word [bp-8]
 call pint1
 add  sp, 2

;-603       if(t0==2){ prs("\n push "); if(NASM==0) prs("offset ");

@@docall1298:
 mov ax, [bp-6]
 cmp ax, 2
 jne @@docall1299
 push docall1_6
 call prs
 add  sp, 2
 mov al, [NASM]
 cmp al, 0
 jne @@docall1300
 push docall1_7
 call prs
 add  sp, 2

;-604         prs(fname);prc(95);pint1(n0);}

@@docall1300:
 lea  ax, [fname]
 push ax
 call prs
 add  sp, 2
 push 95
 call prc
 add  sp, 2
 push word [bp-8]
 call pint1
 add  sp, 2

;-605       if(t0==3){ prs("\n lea  ax, "); if(NASM==0)prs("word ptr ");  v(n0);

@@docall1299:
 mov ax, [bp-6]
 cmp ax, 3
 jne @@docall1301
 push docall1_8
 call prs
 add  sp, 2
 mov al, [NASM]
 cmp al, 0
 jne @@docall1302
 push docall1_9
 call prs
 add  sp, 2
@@docall1302:
 push word [bp-8]
 call v
 add  sp, 2

;-606         prs("\n push ax");}

 push docall1_10
 call prs
 add  sp, 2

;-607       if(t0==4){ gettypes(n0);

@@docall1301:
 mov ax, [bp-6]
 cmp ax, 4
 jne @@docall1303
 push word [bp-8]
 call gettypes
 add  sp, 2

;-608         if(wi==4)      { prs("\n push "); pwi(wi); v(n0); sz32+=2; }

 mov ax, [wi]
 cmp ax, 4
 jne @@docall1304
 push docall1_11
 call prs
 add  sp, 2
 push word [wi]
 call pwi
 add  sp, 2
 push word [bp-8]
 call v
 add  sp, 2
 add  word [bp-10], 2

;-609         else if(wi==2) { prs("\n push "); pwi(wi); v(n0);}

 jmp @@docall1305
@@docall1304:
 mov ax, [wi]
 cmp ax, 2
 jne @@docall1306
 push docall1_12
 call prs
 add  sp, 2
 push word [wi]
 call pwi
 add  sp, 2
 push word [bp-8]
 call v
 add  sp, 2

;-610         else { prs("\n mov al, byte ");  if(NASM==0)prs("ptr "); v(n0);

 jmp @@docall1307
@@docall1306:
 push docall1_13
 call prs
 add  sp, 2
 mov al, [NASM]
 cmp al, 0
 jne @@docall1308
 push docall1_14
 call prs
 add  sp, 2
@@docall1308:
 push word [bp-8]
 call v
 add  sp, 2

;-611         prs("\n mov ah, 0\n push ax"); } }

 push docall1_15
 call prs
 add  sp, 2
@@docall1307:
@@docall1305:

;-612       if(t0==5){ prs("\n push "); printreg(n0, 0); if (n0 >= 47) sz32+=2;  }

@@docall1303:
 mov ax, [bp-6]
 cmp ax, 5
 jne @@docall1309
 push docall1_16
 call prs
 add  sp, 2
 push 0
 push word [bp-8]
 call printreg
 add  sp, 4
 mov ax, [bp-8]
 cmp ax, 47 ;unsigned : 1
 jl  @@docall1310
 add  word [bp-10], 2
@@docall1310:

;-613    i--; } while (i > 0);  }

@@docall1309:
 dec  word [bp-2]
 mov ax, [bp-2]
 cmp ax, 0
 jle @@docall1311
 jmp @@docall1297
@@docall1311:

;-614 	 prs("\n call "); prs(&procname);

@@docall1285:
 push docall1_17
 call prs
 add  sp, 2
 lea  ax, [procname]
 push ax
 call prs
 add  sp, 2

;-615 	 if (narg>0) {prs("\n add  sp, ");

 mov ax, [bp-4]
 cmp ax, 0
 jle @@docall1312
 push docall1_18
 call prs
 add  sp, 2

;-616      narg=narg+narg; narg=narg+sz32; pint1(narg); } }

 mov ax, [bp-4]
 add ax, [bp-4]
 mov word [bp-4], ax
 mov ax, [bp-4]
 add ax, [bp-10]
 mov word [bp-4], ax
 push word [bp-4]
 call pint1
 add  sp, 2
@@docall1312:

;-617 //********************************************************************


;-618 int main() { getarg();
 LEAVE
 ret
; ENDP
docall1_0 db "Max. 9 parameters",0
docall1_1 db "\n",0
docall1_2 db " db ",0
docall1_3 db ",0",0
docall1_4 db "parameter not recognized (no * allowed)",0
docall1_5 db "\n push ",0
docall1_6 db "\n push ",0
docall1_7 db "offset ",0
docall1_8 db "\n lea  ax, ",0
docall1_9 db "word ptr ",0
docall1_10 db "\n push ax",0
docall1_11 db "\n push ",0
docall1_12 db "\n push ",0
docall1_13 db "\n mov al, byte ",0
docall1_14 db "ptr ",0
docall1_15 db "\n mov ah, 0\n push ax",0
docall1_16 db "\n push ",0
docall1_17 db "\n call ",0
docall1_18 db "\n add  sp, ",0

main:  ; *** PROC ***
 call getarg

;-619   memresize(4096);       if (DOS_ERR) error1("memresize");

 push 4096
 call memresize
 add  sp, 2
 mov ax, [DOS_ERR]
 or  al, al
 je @@main313
 push main_0
 call error1
 add  sp, 2

;-620   segE=memalloc(4096);   if (DOS_ERR) error1("alloc memory");

@@main313:
 push 4096
 call memalloc
 add  sp, 2
 mov word [segE], ax
 mov ax, [DOS_ERR]
 or  al, al
 je @@main314
 push main_1
 call error1
 add  sp, 2

;-621   CNameTop=0;            getfirstchar();

@@main314:
 mov eax, 0
 mov word [CNameTop], ax
 call getfirstchar

;-622   cputs("Compiling, ");   parse(); cputs("Check calls ");

 push main_2
 call cputs
 add  sp, 2
 call parse
 push main_3
 call cputs
 add  sp, 2

;-623   callrecursive=0; checkcalls(); epilog();

 mov eax, 0
 mov word [callrecursive], ax
 call checkcalls
 call epilog

;-624 }


;-625 int getfirstchar() { fgetsp=&fgetsdest; *fgetsp=0; thechar=fgets1(); }

 ret
; ENDP
main_0 db "memresize",0
main_1 db "alloc memory",0
main_2 db "Compiling, ",0
main_3 db "Check calls ",0

getfirstchar:  ; *** PROC ***
 mov ax, fgetsdest
 mov word [fgetsp], ax
 mov eax, 0
 mov  bx, [fgetsp]
 mov  [bx], al
 call fgets1
 mov byte [thechar], al

;-626 char *arglen=0x80; char *argv=0x82;

 ret
; ENDP
arglen dw 128
argv dw 130

;-627 


;-628 int getarg() { int arglen1; int i; char *c;


getarg:  ; *** PROC ***

;-629   arglen1=*arglen;                                     NASM=1; //default

;Function : getarg, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   628 NULL bp-2    arglen1
;  201 var sign word   628 NULL bp-4    i
;  202 ptr sign byte   628 NULL bp-6    c;
 ENTER  6,0
 mov bx, [arglen]
 mov al, [bx]
 mov ah, 0
 mov word [bp-2], ax
 mov eax, 1
 mov byte [NASM], al

;-630   if (arglen1) { i=arglen1+129; *i=0; }

 mov ax, [bp-2]
 or  al, al
 je @@getarg315
 mov ax, [bp-2]
 add ax, 129
 mov word [bp-4], ax
 mov eax, 0
 mov  bx, [bp-4]
 mov  [bx], ax

;-631   else { cputs(Version1);

 jmp @@getarg316
@@getarg315:
 lea  ax, [Version1]
 push ax
 call cputs
 add  sp, 2

;-632     cputs(" Usage: A.COM [/N/P] in_file[.C] (/N=NASM, /P=ProtMode): ");

 push getarg_0
 call cputs
 add  sp, 2

;-633     DOS_NoBytes=readRL(argv, 0, CMDLENMAX); c=DOS_NoBytes+128; *c=0; prnl(); }

 push 67
 push 0
 push word [argv]
 call readRL
 add  sp, 6
 mov word [DOS_NoBytes], ax
 mov ax, [DOS_NoBytes]
 add ax, 128
 mov word [bp-6], ax
 mov eax, 0
 mov  bx, [bp-6]
 mov  [bx], al
 call prnl

;-634   strcpy(namein, argv);

@@getarg316:
 push word [argv]
 lea  ax, [namein]
 push ax
 call strcpy
 add  sp, 4

;-635   if (instr2(namein, '.') == 0) strcat1(namein, ".C");

 push 46
 lea  ax, [namein]
 push ax
 call instr2
 add  sp, 4
 cmp ax, 0
 jne @@getarg317
 push getarg_1
 lea  ax, [namein]
 push ax
 call strcat1
 add  sp, 4

;-636   toupper(namein);

@@getarg317:
 lea  ax, [namein]
 push ax
 call toupper
 add  sp, 2

;-637   c=instr2(namein, '/');

 push 47
 lea  ax, [namein]
 push ax
 call instr2
 add  sp, 4
 mov word [bp-6], ax

;-638   while (c != 0)  { c++;   //todo: only one parameter possible

@@getarg318:
 mov ax, [bp-6]
 cmp ax, 0
 je  @@getarg319
 inc  word [bp-6]

;-639          if (*c == 'N') NASM=1;

 mov bx, [bp-6]
 mov al, [bx]
 mov ah, 0
 cmp ax, 78
 jne @@getarg320
 mov eax, 1
 mov byte [NASM], al

;-640          if (*c == 'P') PROTECTED=1;

@@getarg320:
 mov bx, [bp-6]
 mov al, [bx]
 mov ah, 0
 cmp ax, 80
 jne @@getarg321
 mov eax, 1
 mov byte [PROTECTED], al

;-641 //    else {cputs("Parameter unknown "); exitR(3);  }


;-642     c+=2; strcpy(namein, c);

@@getarg321:
 add  word [bp-6], 2
 push word [bp-6]
 lea  ax, [namein]
 push ax
 call strcpy
 add  sp, 4

;-643     c=instr2(namein, '/'); }

 push 47
 lea  ax, [namein]
 push ax
 call instr2
 add  sp, 4
 mov word [bp-6], ax

;-644   ltrim(namein);

 jmp @@getarg318
@@getarg319:
 lea  ax, [namein]
 push ax
 call ltrim
 add  sp, 2

;-645   strcpy(namelst, namein); i=strlen(namelst); i--; c=&namelst+i; *c='S';

 lea  ax, [namein]
 push ax
 lea  ax, [namelst]
 push ax
 call strcpy
 add  sp, 4
 lea  ax, [namelst]
 push ax
 call strlen
 add  sp, 2
 mov word [bp-4], ax
 dec  word [bp-4]
 mov ax, namelst
 add ax, [bp-4]
 mov word [bp-6], ax
 mov eax, 83
 mov  bx, [bp-6]
 mov  [bx], al

;-646  


;-647   fdin=openR (namein);

 lea  ax, [namein]
 push ax
 call openR
 add  sp, 2
 mov word [fdin], ax

;-648   if(DOS_ERR){cputs("Source file missing (.C): "); cputs(namein); exitR(1); }

 mov ax, [DOS_ERR]
 or  al, al
 je @@getarg322
 push getarg_2
 call cputs
 add  sp, 2
 lea  ax, [namein]
 push ax
 call cputs
 add  sp, 2
 push 1
 call exitR
 add  sp, 2

;-649   fdout=creatR(namelst);

@@getarg322:
 lea  ax, [namelst]
 push ax
 call creatR
 add  sp, 2
 mov word [fdout], ax

;-650   if(DOS_ERR){cputs("list file not creatable: ");cputs(namelst);exitR(2);}

 mov ax, [DOS_ERR]
 or  al, al
 je @@getarg323
 push getarg_3
 call cputs
 add  sp, 2
 lea  ax, [namelst]
 push ax
 call cputs
 add  sp, 2
 push 2
 call exitR
 add  sp, 2

;-651   prs("\n; ");prs(Version1);

@@getarg323:
 push getarg_4
 call prs
 add  sp, 2
 lea  ax, [Version1]
 push ax
 call prs
 add  sp, 2

;-652   prs(", Arglen: "); pint1(arglen1); if(arglen1){prs(", Argv: "); prs(argv);}

 push getarg_5
 call prs
 add  sp, 2
 push word [bp-2]
 call pint1
 add  sp, 2
 mov ax, [bp-2]
 or  al, al
 je @@getarg324
 push getarg_6
 call prs
 add  sp, 2
 push word [argv]
 call prs
 add  sp, 2

;-653   prs(", Source: "); prs(namein);  prs(", Output asm: "); prs(namelst);

@@getarg324:
 push getarg_7
 call prs
 add  sp, 2
 lea  ax, [namein]
 push ax
 call prs
 add  sp, 2
 push getarg_8
 call prs
 add  sp, 2
 lea  ax, [namelst]
 push ax
 call prs
 add  sp, 2

;-654   prs("\n;PROTECTED: "); pint1(PROTECTED);

 push getarg_9
 call prs
 add  sp, 2
 mov al, byte [PROTECTED]
 mov ah, 0
 push ax
 call pint1
 add  sp, 2

;-655   if (isvirtual86()) prs(" V86 ON. ");else prs(" V86 OFF. ");

 call isvirtual86
 or  al, al
 je @@getarg325
 push getarg_10
 call prs
 add  sp, 2
 jmp @@getarg326
@@getarg325:
 push getarg_11
 call prs
 add  sp, 2

;-656   if (is32bit()) prs(" 32bit: ON. "); else prs("  32bit: OFF. ");

@@getarg326:
 call is32bit
 or  al, al
 je @@getarg327
 push getarg_12
 call prs
 add  sp, 2
 jmp @@getarg328
@@getarg327:
 push getarg_13
 call prs
 add  sp, 2

;-657   if (NASM) prs("\norg  256 ; NASM ON\njmp main"); else

@@getarg328:
 mov al, [NASM]
 or  al, al
 je @@getarg329
 push getarg_14
 call prs
 add  sp, 2

;-658   prs("\n.MODEL TINY,C\n.386P\n.CODE\nJUMPS\nLOCALS\nSTARTUPCODE\njmp main");

 jmp @@getarg330
@@getarg329:
 push getarg_15
 call prs
 add  sp, 2

;-659   if (PROTECTED) {prs("\n; Protected (unreal) mode ON. Ldata: "); prL(ldata);

@@getarg330:
 mov al, [PROTECTED]
 or  al, al
 je @@getarg331
 push getarg_16
 call prs
 add  sp, 2
 push dword [ldata]
 call prL
 add  sp, 4

;-660   if (isvirtual86()) cputs(" V86 ON. ");else cputs(" V86 OFF. ");

 call isvirtual86
 or  al, al
 je @@getarg332
 push getarg_17
 call cputs
 add  sp, 2
 jmp @@getarg333
@@getarg332:
 push getarg_18
 call cputs
 add  sp, 2

;-661   if (is32bit()) cputs(" 32bit: ON. "); else cputs("  32bit: OFF. ");

@@getarg333:
 call is32bit
 or  al, al
 je @@getarg334
 push getarg_19
 call cputs
 add  sp, 2
 jmp @@getarg335
@@getarg334:
 push getarg_20
 call cputs
 add  sp, 2

;-662   INITCPU32();

@@getarg335:
 call INITCPU32

;-663   prs("\n;After INITCPU32: ");

 push getarg_21
 call prs
 add  sp, 2

;-664   if (isvirtual86()) cputs(" after INIT V86 ON. ");

 call isvirtual86
 or  al, al
 je @@getarg336
 push getarg_22
 call cputs
 add  sp, 2

;-665     else cputs(" after INIT V86 OFF. ");

 jmp @@getarg337
@@getarg336:
 push getarg_23
 call cputs
 add  sp, 2

;-666   if (is32bit()) cputs(" 32bit: ON. "); else cputs("  32bit: OFF. ");

@@getarg337:
 call is32bit
 or  al, al
 je @@getarg338
 push getarg_24
 call cputs
 add  sp, 2
 jmp @@getarg339
@@getarg338:
 push getarg_25
 call cputs
 add  sp, 2

;-667    if (isvirtual86()) prs(" V86 ON. ");else prs(" V86 OFF. ");

@@getarg339:
 call isvirtual86
 or  al, al
 je @@getarg340
 push getarg_26
 call prs
 add  sp, 2
 jmp @@getarg341
@@getarg340:
 push getarg_27
 call prs
 add  sp, 2

;-668   if (is32bit()) prs(" 32bit: ON. "); else prs("  32bit: OFF. ");   }

@@getarg341:
 call is32bit
 or  al, al
 je @@getarg342
 push getarg_28
 call prs
 add  sp, 2
 jmp @@getarg343
@@getarg342:
 push getarg_29
 call prs
 add  sp, 2
@@getarg343:

;-669 }

@@getarg331:

;-670 ltrim(char *s) {
 LEAVE
 ret
; ENDP
getarg_0 db " Usage: A.COM [/N/P] in_file[.C] (/N=NASM, /P=ProtMode): ",0
getarg_1 db ".C",0
getarg_2 db "Source file missing (.C): ",0
getarg_3 db "list file not creatable: ",0
getarg_4 db "\n; ",0
getarg_5 db ", Arglen: ",0
getarg_6 db ", Argv: ",0
getarg_7 db ", Source: ",0
getarg_8 db ", Output asm: ",0
getarg_9 db "\n;PROTECTED: ",0
getarg_10 db " V86 ON. ",0
getarg_11 db " V86 OFF. ",0
getarg_12 db " 32bit: ON. ",0
getarg_13 db "  32bit: OFF. ",0
getarg_14 db "\norg  256 ; NASM ON\njmp main",0
getarg_15 db "\n.MODEL TINY,C\n.386P\n.CODE\nJUMPS\nLOCALS\nSTARTUPCODE\njmp main",0
getarg_16 db "\n; Protected (unreal) mode ON. Ldata: ",0
getarg_17 db " V86 ON. ",0
getarg_18 db " V86 OFF. ",0
getarg_19 db " 32bit: ON. ",0
getarg_20 db "  32bit: OFF. ",0
getarg_21 db "\n;After INITCPU32: ",0
getarg_22 db " after INIT V86 ON. ",0
getarg_23 db " after INIT V86 OFF. ",0
getarg_24 db " 32bit: ON. ",0
getarg_25 db "  32bit: OFF. ",0
getarg_26 db " V86 ON. ",0
getarg_27 db " V86 OFF. ",0
getarg_28 db " 32bit: ON. ",0
getarg_29 db "  32bit: OFF. ",0

ltrim:  ; *** PROC ***

;-671     }

;Function : ltrim, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte   670 NULL bp+4    s;
 ENTER  0,0

;-672 int parse() { token=getlex(); do {
 LEAVE
 ret
; ENDP

parse:  ; *** PROC ***
 call getlex
 mov word [token], ax
@@parse344:

;-673     if (token <= 0) return 1;

 mov ax, [token]
 cmp ax, 0
 jg  @@parse345
 mov eax, 1
 jmp @@retn

;-674     if (istoken('#')) {

@@parse345:
 push 35
 call istoken
 add  sp, 2
 or  al, al
 je @@parse346

;-675       if (istoken(T_DEFINE)) dodefine();

 push 511
 call istoken
 add  sp, 2
 or  al, al
 je @@parse347
 call dodefine

;-676       else if (istoken(T_INCLUDE)) doinclude();

 jmp @@parse348
@@parse347:
 push 510
 call istoken
 add  sp, 2
 or  al, al
 je @@parse349
 call doinclude

;-677       else error1("define or include expected");  }

 jmp @@parse350
@@parse349:
 push parse_0
 call error1
 add  sp, 2
@@parse350:
@@parse348:

;-678     else{ typeName();

 jmp @@parse351
@@parse346:
 call typeName

;-679     if (token=='(') dofunc(); else if (istoken('!')) doLdata();else doglob();}

 mov ax, [token]
 cmp ax, 40
 jne @@parse352
 call dofunc
 jmp @@parse353
@@parse352:
 push 33
 call istoken
 add  sp, 2
 or  al, al
 je @@parse354
 call doLdata
 jmp @@parse355
@@parse354:
 call doglob
@@parse355:
@@parse353:

;-680   } while(1);

@@parse351:
 mov eax, 1
 or  al, al
 je @@parse356
 jmp @@parse344
@@parse356:

;-681 }


;-682 int checkcalls() { int i; int j; int k;

@@retn:
 ret
; ENDP
parse_0 db "define or include expected",0

checkcalls:  ; *** PROC ***

;-683   prs("\n \n; missing functions: ");

;Function : checkcalls, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   682 NULL bp-2    i
;  201 var sign word   682 NULL bp-4    j
;  202 var sign word   682 NULL bp-6    k;
 ENTER  6,0
 push checkcalls_0
 call prs
 add  sp, 2

;-684   i=0;  k=0;

 mov eax, 0
 mov word [bp-2], ax
 mov eax, 0
 mov word [bp-6], ax

;-685   while (i < CTop) {  pt=CName[i]; from_far(NA, pt);

@@checkcalls357:
 mov ax, [bp-2]
 cmp ax, [CTop]
 jge @@checkcalls358
 mov bx, [bp-2]
 shl bx, 1
 mov ax, [CName + bx]
 mov word [pt], ax
 push word [pt]
 lea  ax, [NA]
 push ax
 call from_far
 add  sp, 4

;-686     j=0;

 mov eax, 0
 mov word [bp-4], ax

;-687     do {  p1=FName[j]; from_far(NB, p1);

@@checkcalls359:
 mov bx, [bp-4]
 shl bx, 1
 mov ax, [FName + bx]
 mov word [p1], ax
 push word [p1]
 lea  ax, [NB]
 push ax
 call from_far
 add  sp, 4

;-688       if (eqstr(NA, NB)){ CUnres[i]=1; j=FTop; }

 lea  ax, [NB]
 push ax
 lea  ax, [NA]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@checkcalls360
 mov eax, 1
 mov bx, [bp-2]
 mov [CUnres+bx], al
 mov ax, [FTop]
 mov word [bp-4], ax

;-689       j++;

@@checkcalls360:
 inc  word [bp-4]

;-690       } while (j < FTop);

 mov ax, [bp-4]
 cmp ax, [FTop]
 jge @@checkcalls361
 jmp @@checkcalls359
@@checkcalls361:

;-691     if (j == FTop) { k++; prs("\n; "); prs(NA); }

 mov ax, [bp-4]
 cmp ax, [FTop]
 jne @@checkcalls362
 inc  word [bp-6]
 push checkcalls_1
 call prs
 add  sp, 2
 lea  ax, [NA]
 push ax
 call prs
 add  sp, 2

;-692     i++; }

@@checkcalls362:
 inc  word [bp-2]

;-693   if (k!=0) doar(k); else {prs(" All FUNCTIONs in place");

 jmp @@checkcalls357
@@checkcalls358:
 mov ax, [bp-6]
 cmp ax, 0
 je  @@checkcalls363
 push word [bp-6]
 call doar
 add  sp, 2
 jmp @@checkcalls364
@@checkcalls363:
 push checkcalls_2
 call prs
 add  sp, 2

;-694     cputs(" OK! "); }

 push checkcalls_3
 call cputs
 add  sp, 2

;-695 }

@@checkcalls364:

;-696 char wasfunction;
 LEAVE
 ret
; ENDP
checkcalls_0 db "\n \n; missing functions: ",0
checkcalls_1 db "\n; ",0
checkcalls_2 db " All FUNCTIONs in place",0
checkcalls_3 db " OK! ",0
wasfunction db 0

;-697 int doar(int k) { int i; int fdtemp; int fdout1; int used; int found;


doar:  ; *** PROC ***

;-698   cputs("  Open CALLs :"); pint(k);

;Function : doar, Number of local variables: 6
;   # type sign width line used address name   list of local variables
;  200 var sign word   697 NULL bp+4    k
;  201 var sign word   697 NULL bp-2    i
;  202 var sign word   697 NULL bp-4    fdtemp
;  203 var sign word   697 NULL bp-6    fdout1
;  204 var sign word   697 NULL bp-8    used
;  205 var sign word   697 NULL bp-10    found;
 ENTER  10,0
 push doar_0
 call cputs
 add  sp, 2
 push word [bp+4]
 call pint
 add  sp, 2

;-699   prs("\n; Number of unresolved CALLs :"); printint51(k);

 push doar_1
 call prs
 add  sp, 2
 push word [bp+4]
 call printint51
 add  sp, 2

;-700   fdin=openR (archivename);

 lea  ax, [archivename]
 push ax
 call openR
 add  sp, 2
 mov word [fdin], ax

;-701   if(DOS_ERR){cputs("Archive file missing: "); cputs(archivename); exitR(3);}

 mov ax, [DOS_ERR]
 or  al, al
 je @@doar365
 push doar_2
 call cputs
 add  sp, 2
 lea  ax, [archivename]
 push ax
 call cputs
 add  sp, 2
 push 3
 call exitR
 add  sp, 2

;-702   prs("\n;use archive file: "); prs(archivename);

@@doar365:
 push doar_3
 call prs
 add  sp, 2
 lea  ax, [archivename]
 push ax
 call prs
 add  sp, 2

;-703   fdtemp=fdout; wasfunction=0; getfirstchar();

 mov ax, [fdout]
 mov word [bp-4], ax
 mov eax, 0
 mov byte [wasfunction], al
 call getfirstchar

;-704   do { fdout=0;do {found=getfunctionhead();}while (found==0); fdout=fdtemp;

@@doar366:
 mov eax, 0
 mov word [fdout], ax
@@doar367:
 call getfunctionhead
 mov word [bp-10], ax
 mov ax, [bp-10]
 cmp ax, 0
 jne @@doar368
 jmp @@doar367
@@doar368:
 mov ax, [bp-4]
 mov word [fdout], ax

;-705        if (found > 0) { used=0; i=0;

 mov ax, [bp-10]
 cmp ax, 0
 jle @@doar369
 mov eax, 0
 mov word [bp-8], ax
 mov eax, 0
 mov word [bp-2], ax

;-706          while (i < CTop) { pt=CName[i]; from_far(NA, pt);

@@doar370:
 mov ax, [bp-2]
 cmp ax, [CTop]
 jge @@doar371
 mov bx, [bp-2]
 shl bx, 1
 mov ax, [CName + bx]
 mov word [pt], ax
 push word [pt]
 lea  ax, [NA]
 push ax
 call from_far
 add  sp, 4

;-707            if (eqstr(symbol, NA)) {

 lea  ax, [NA]
 push ax
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@doar372

;-708              if (CUnres[i] == 0) {CUnres[i]=1; used++; } }       i++; }

 mov bx, [bp-2]
 mov al, [CUnres + bx]
 cmp al, 0
 jne @@doar373
 mov eax, 1
 mov bx, [bp-2]
 mov [CUnres+bx], al
 inc  word [bp-8]
@@doar373:
@@doar372:
 inc  word [bp-2]

;-709            if (used) { prs("\n;Number of CALLs:"); printint51(used);

 jmp @@doar370
@@doar371:
 mov ax, [bp-8]
 or  al, al
 je @@doar374
 push doar_4
 call prs
 add  sp, 2
 push word [bp-8]
 call printint51
 add  sp, 2

;-710               prs(" : "); prs(symbol); dofunc(); wasfunction=1; }  }

 push doar_5
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2
 call dofunc
 mov eax, 1
 mov byte [wasfunction], al
@@doar374:

;-711      } while (token);

@@doar369:
 mov ax, [token]
 or  al, al
 je @@doar375
 jmp @@doar366
@@doar375:

;-712   prs("\n;End of archive file. ");

 push doar_6
 call prs
 add  sp, 2

;-713   callrecursive++; if (callrecursive < 5) checkcalls();

 inc  word [callrecursive]
 mov ax, [callrecursive]
 cmp ax, 5
 jge @@doar376
 call checkcalls

;-714     else {putch(10); cputs("***ERROR*** function(s) missing! ");

 jmp @@doar377
@@doar376:
 push 10
 call putch
 add  sp, 2
 push doar_7
 call cputs
 add  sp, 2

;-715     error1("At least 1 function is missing in archive file! "); }

 push doar_8
 call error1
 add  sp, 2

;-716 }

@@doar377:

;-717 int getfunctionhead() {
 LEAVE
 ret
; ENDP
doar_0 db "  Open CALLs :",0
doar_1 db "\n; Number of unresolved CALLs :",0
doar_2 db "Archive file missing: ",0
doar_3 db "\n;use archive file: ",0
doar_4 db "\n;Number of CALLs:",0
doar_5 db " : ",0
doar_6 db "\n;End of archive file. ",0
doar_7 db "***ERROR*** function(s) missing! ",0
doar_8 db "At least 1 function is missing in archive file! ",0

getfunctionhead:  ; *** PROC ***

;-718   if (wasfunction) wasfunction=0; else token=getlex();

 mov al, [wasfunction]
 or  al, al
 je @@getfunctionhead378
 mov eax, 0
 mov byte [wasfunction], al
 jmp @@getfunctionhead379
@@getfunctionhead378:
 call getlex
 mov word [token], ax

;-719   if (token == 0) return 0xFFFF;

@@getfunctionhead379:
 mov ax, [token]
 cmp ax, 0
 jne @@getfunctionhead380
 mov eax, 65535
 jmp @@retn

;-720   if(istoken(T_INT))  { if (token != T_NAME) return 0;

@@getfunctionhead380:
 push 517
 call istoken
 add  sp, 2
 or  al, al
 je @@getfunctionhead381
 mov ax, [token]
 cmp ax, 256
 je  @@getfunctionhead382
 mov eax, 0
 jmp @@retn

;-721   token=getlex(); if (token == '(') return 1; }

@@getfunctionhead382:
 call getlex
 mov word [token], ax
 mov ax, [token]
 cmp ax, 40
 jne @@getfunctionhead383
 mov eax, 1
 jmp @@retn
@@getfunctionhead383:

;-722   return 0;

@@getfunctionhead381:
 mov eax, 0
 jmp @@retn

;-723 }


;-724 void doinclude() { int fdtemp;

@@retn:
 ret
; ENDP

doinclude:  ; *** PROC ***

;-725   if (token==T_STRING) {  fdtemp=fdin;

;Function : doinclude, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   724 NULL bp-2    fdtemp;
 ENTER  2,0
 mov ax, [token]
 cmp ax, 258
 jne @@doinclude384
 mov ax, [fdin]
 mov word [bp-2], ax

;-726   prs("\n;Use include file: "); prs(symbol);

 push doinclude_0
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2

;-727   fdin=openR(symbol);

 lea  ax, [symbol]
 push ax
 call openR
 add  sp, 2
 mov word [fdin], ax

;-728   if (DOS_ERR !=0) {LIST=1;

 mov ax, [DOS_ERR]
 cmp ax, 0
 je  @@doinclude385
 mov eax, 1
 mov byte [LIST], al

;-729     prs("\n;Include file missing: "); prs(symbol);

 push doinclude_1
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2

;-730     cputs(" STOP!!!");

 push doinclude_2
 call cputs
 add  sp, 2

;-731     error1("\n; Stop!!");

 push doinclude_3
 call error1
 add  sp, 2

;-732     }


;-733   linenoinclude=lineno; lineno=1;

@@doinclude385:
 mov ax, [lineno]
 mov word [linenoinclude], ax
 mov eax, 1
 mov word [lineno], ax

;-734   parse(); lineno=linenoinclude;

 call parse
 mov ax, [linenoinclude]
 mov word [lineno], ax

;-735   fdin=fdtemp; prs("\n;Back to main program: "); prs(namein);

 mov ax, [bp-2]
 mov word [fdin], ax
 push doinclude_4
 call prs
 add  sp, 2
 lea  ax, [namein]
 push ax
 call prs
 add  sp, 2

;-736   getfirstchar(); token=getlex(); }

 call getfirstchar
 call getlex
 mov word [token], ax

;-737 }

@@doinclude384:

;-738 int dodefine() { int i; int j; int fdtemp;
 LEAVE
 ret
; ENDP
doinclude_0 db "\n;Use include file: ",0
doinclude_1 db "\n;Include file missing: ",0
doinclude_2 db " STOP!!!",0
doinclude_3 db "\n; Stop!!",0
doinclude_4 db "\n;Back to main program: ",0

dodefine:  ; *** PROC ***

;-739   if (eqstr(symbol, "BSS"   )) {BSS =1; token=getlex(); return; }

;Function : dodefine, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   738 NULL bp-2    i
;  201 var sign word   738 NULL bp-4    j
;  202 var sign word   738 NULL bp-6    fdtemp;
 ENTER  6,0
 push dodefine_0
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@dodefine386
 mov eax, 1
 mov byte [BSS], al
 call getlex
 mov word [token], ax
 jmp @@retn

;-740   if (eqstr(symbol, "LIST"  )) {LIST=1; token=getlex(); return; }

@@dodefine386:
 push dodefine_1
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@dodefine387
 mov eax, 1
 mov byte [LIST], al
 call getlex
 mov word [token], ax
 jmp @@retn

;-741   if (eqstr(symbol, "NOLIST")) {LIST=0; token=getlex(); return; }

@@dodefine387:
 push dodefine_2
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@dodefine388
 mov eax, 0
 mov byte [LIST], al
 call getlex
 mov word [token], ax
 jmp @@retn

;-742   if (eqstr(symbol, "ORGDATA")) {token=getlex();

@@dodefine388:
 push dodefine_3
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@dodefine389
 call getlex
 mov word [token], ax

;-743     if (token==T_CONST)  { ORGDATAORIG=lexvalL; orgData=lexvalL; }

 mov ax, [token]
 cmp ax, 257
 jne @@dodefine390
 mov eax, [lexvalL]
 mov dword [ORGDATAORIG], eax
 mov eax, [lexvalL]
 mov dword [orgData], eax

;-744     else  error1("start address missing"); token=getlex(); return; }

 jmp @@dodefine391
@@dodefine390:
 push dodefine_4
 call error1
 add  sp, 2
@@dodefine391:
 call getlex
 mov word [token], ax
 jmp @@retn

;-745   if (eqstr(symbol, "ARCHIVE")) {token=getlex();

@@dodefine389:
 push dodefine_5
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@dodefine392
 call getlex
 mov word [token], ax

;-746     if (token==T_STRING) { prs("\n;Use archive file: ");

 mov ax, [token]
 cmp ax, 258
 jne @@dodefine393
 push dodefine_6
 call prs
 add  sp, 2

;-747     strcpy(archivename, symbol); prs(archivename);

 lea  ax, [symbol]
 push ax
 lea  ax, [archivename]
 push ax
 call strcpy
 add  sp, 4
 lea  ax, [archivename]
 push ax
 call prs
 add  sp, 2

;-748     } else error1("Name of archive file missing"); token=getlex(); return;}

 jmp @@dodefine394
@@dodefine393:
 push dodefine_7
 call error1
 add  sp, 2
@@dodefine394:
 call getlex
 mov word [token], ax
 jmp @@retn

;-749    expect(T_NAME);

@@dodefine392:
 push 256
 call expect
 add  sp, 2

;-750   if (token==T_CONST) { 

 mov ax, [token]
 cmp ax, 257
 jne @@dodefine395

;-751     if (GTop >= LSTART) error1("global table (define) full");

 mov ax, [GTop]
 cmp ax, 200 ;unsigned : 1
 jl  @@dodefine396
 push dodefine_8
 call error1
 add  sp, 2

;-752     checknamelen();

@@dodefine396:
 call checknamelen

;-753     GSign [GTop]='U'; GWidth[GTop]=1; GType [GTop]='#';

 mov eax, 85
 mov bx, [GTop]
 mov [GSign+bx], al
 mov eax, 1
 mov bx, [GTop]
 mov [GWidth+bx], al
 mov eax, 35
 mov bx, [GTop]
 mov [GType+bx], al

;-754     GLino [GTop]=lineno-1; GUsed [GTop]=0;

 mov ax, [lineno]
 sub ax, 1
 mov bx, [GTop]
 shl bx, 1
 mov [GLino+bx], ax
 mov eax, 0
 mov bx, [GTop]
 shl bx, 1
 mov [GUsed+bx], ax

;-755     GAdr  [GTop]=LONG0;

 mov eax, [LONG0]
 mov bx, [GTop]
 shl bx, 2
 mov [GAdr+bx], eax

;-756     GName [GTop] = CNameTop; storeName();

 mov ax, [CNameTop]
 mov bx, [GTop]
 shl bx, 1
 mov [GName+bx], ax
 call storeName

;-757     GData[GTop]=lexvalL;

 mov eax, [lexvalL]
 mov bx, [GTop]
 shl bx, 2
 mov [GData+bx], eax

;-758     expect(T_CONST); GTop++;  } 

 push 257
 call expect
 add  sp, 2
 inc  word [GTop]

;-759 }

@@dodefine395:

;-760 int stmt() { int c; char cha;

@@retn: LEAVE
 ret
; ENDP
dodefine_0 db "BSS",0
dodefine_1 db "LIST",0
dodefine_2 db "NOLIST",0
dodefine_3 db "ORGDATA",0
dodefine_4 db "start address missing",0
dodefine_5 db "ARCHIVE",0
dodefine_6 db "\n;Use archive file: ",0
dodefine_7 db "Name of archive file missing",0
dodefine_8 db "global table (define) full",0

stmt:  ; *** PROC ***

;-761        if(istoken('{'))     {while(istoken('}')==0) stmt();}

;Function : stmt, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   760 NULL bp-2    c
;  201 var sign byte   760 NULL bp-4    cha;
 ENTER  4,0
 push 123
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt397
@@stmt398:
 push 125
 call istoken
 add  sp, 2
 cmp ax, 0
 jne @@stmt399
 call stmt
 jmp @@stmt398
@@stmt399:

;-762   else if(istoken(T_IF))    doif();

 jmp @@stmt400
@@stmt397:
 push 513
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt401
 call doif

;-763   else if(istoken(T_DO))    dodo();

 jmp @@stmt402
@@stmt401:
 push 516
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt403
 call dodo

;-764   else if(istoken(T_WHILE)) dowhile();

 jmp @@stmt404
@@stmt403:
 push 515
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt405
 call dowhile

;-765   else if(istoken(T_GOTO))  {prs("\n jmp @@");name1();prs(symbol);expect(';');}

 jmp @@stmt406
@@stmt405:
 push 521
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt407
 push stmt_0
 call prs
 add  sp, 2
 call name1
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2
 push 59
 call expect
 add  sp, 2

;-766   else if(token==T_ASM)     {prs("\n"); c=next();

 jmp @@stmt408
@@stmt407:
 mov ax, [token]
 cmp ax, 518
 jne @@stmt409
 push stmt_1
 call prs
 add  sp, 2
 call next
 mov word [bp-2], ax

;-767     while(c != '\n') { prc(c);	c=next(); }; token=getlex(); }

@@stmt410:
 mov ax, [bp-2]
 cmp ax, 10
 je  @@stmt411
 push word [bp-2]
 call prc
 add  sp, 2
 call next
 mov word [bp-2], ax
 jmp @@stmt410
@@stmt411:
 call getlex
 mov word [token], ax

;-768   else if(istoken(T_ASMBLOCK)) { if (token== '{' )  { prs("\n"); cha=next();  

 jmp @@stmt412
@@stmt409:
 push 519
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt413
 mov ax, [token]
 cmp ax, 123
 jne @@stmt414
 push stmt_2
 call prs
 add  sp, 2
 call next
 mov byte [bp-4], al

;-769     while(_ cha!= '}') { prc(cha); cha=next(); }

@@stmt415:
cmp byte [bp-4], 125
 je  @@stmt416
 mov al, byte [bp-4]
 mov ah, 0
 push ax
 call prc
 add  sp, 2
 call next
 mov byte [bp-4], al

;-770     token=getlex(); }

 jmp @@stmt415
@@stmt416:
 call getlex
 mov word [token], ax

;-771     else error1("Curly open expected"); }

 jmp @@stmt417
@@stmt414:
 push stmt_3
 call error1
 add  sp, 2
@@stmt417:

;-772   else if(istoken(T_INTH))  {prs("\n int  "); expect(T_CONST);

 jmp @@stmt418
@@stmt413:
 push 600
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt419
 push stmt_4
 call prs
 add  sp, 2
 push 257
 call expect
 add  sp, 2

;-773     prL(lexvalL); expect(';');    }

 push dword [lexvalL]
 call prL
 add  sp, 4
 push 59
 call expect
 add  sp, 2

;-774   else if(istoken(T_IFCARRY))doifcarry();

 jmp @@stmt420
@@stmt419:
 push 601
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt421
 call doifcarry

;-775   else if(istoken(T_IFZERO))doifzero();

 jmp @@stmt422
@@stmt421:
 push 602
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt423
 call doifzero

;-776   else if(istoken(T_EMIT))   doemit();

 jmp @@stmt424
@@stmt423:
 push 520
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt425
 call doemit

;-777   else if(istoken(';'))      { }

 jmp @@stmt426
@@stmt425:
 push 59
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt427

;-778   else if(istoken(T_RETURN)) {if (token!=';')  exprstart();

 jmp @@stmt428
@@stmt427:
 push 512
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt429
 mov ax, [token]
 cmp ax, 59
 je  @@stmt430
 call exprstart

;-779     prs("\n jmp @@retn"); nreturn++; expect(';');}

@@stmt430:
 push stmt_5
 call prs
 add  sp, 2
 inc  word [nreturn]
 push 59
 call expect
 add  sp, 2

;-780   else if(_ thechar==':')      {prs("\n@@"); // Label

 jmp @@stmt431
@@stmt429:
cmp byte [thechar], 58
 jne @@stmt432
 push stmt_6
 call prs
 add  sp, 2

;-781      prs(symbol); prc(':');  expect(T_NAME); expect(':'); }

 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2
 push 58
 call prc
 add  sp, 2
 push 256
 call expect
 add  sp, 2
 push 58
 call expect
 add  sp, 2

;-782   else                       {exprstart(); expect(';'); } }

 jmp @@stmt433
@@stmt432:
 call exprstart
 push 59
 call expect
 add  sp, 2
@@stmt433:
@@stmt431:
@@stmt428:
@@stmt426:
@@stmt424:
@@stmt422:
@@stmt420:
@@stmt418:
@@stmt412:
@@stmt408:
@@stmt406:
@@stmt404:
@@stmt402:
@@stmt400:

;-783 


;-784 int doemit() {prs("\n db ");
 LEAVE
 ret
; ENDP
stmt_0 db "\n jmp @@",0
stmt_1 db "\n",0
stmt_2 db "\n",0
stmt_3 db "Curly open expected",0
stmt_4 db "\n int  ",0
stmt_5 db "\n jmp @@retn",0
stmt_6 db "\n@@",0

doemit:  ; *** PROC ***
 push doemit_0
 call prs
 add  sp, 2

;-785   L1: token=getlex(); prL(lexvalL); token=getlex();

@@L1:
 call getlex
 mov word [token], ax
 push dword [lexvalL]
 call prL
 add  sp, 4
 call getlex
 mov word [token], ax

;-786     if (token== ',') {prc(','); goto L1;} expect(')'); }

 mov ax, [token]
 cmp ax, 44
 jne @@doemit434
 push 44
 call prc
 add  sp, 2
 jmp @@L1
@@doemit434:
 push 41
 call expect
 add  sp, 2

;-787 


;-788 int cmpneg(int ids) {

 ret
; ENDP
doemit_0 db "\n db ",0

cmpneg:  ; *** PROC ***

;-789        if(iscmp==T_EQ) prs("\n jne @@");         //ZF=0

;Function : cmpneg, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   788 NULL bp+4    ids;
 ENTER  0,0
 mov ax, [iscmp]
 cmp ax, 806
 jne @@cmpneg435
 push cmpneg_0
 call prs
 add  sp, 2

;-790   else if(iscmp==T_NE) prs("\n je  @@");         //ZF=1

 jmp @@cmpneg436
@@cmpneg435:
 mov ax, [iscmp]
 cmp ax, 807
 jne @@cmpneg437
 push cmpneg_1
 call prs
 add  sp, 2

;-791   else if(iscmp==T_LE) if (ids) prs("\n jg  @@");//ZF=0      SF =OF

 jmp @@cmpneg438
@@cmpneg437:
 mov ax, [iscmp]
 cmp ax, 824
 jne @@cmpneg439
 mov ax, [bp+4]
 or  al, al
 je @@cmpneg440
 push cmpneg_2
 call prs
 add  sp, 2

;-792                            else prs("\n ja  @@");//ZF=0 CF=0

 jmp @@cmpneg441
@@cmpneg440:
 push cmpneg_3
 call prs
 add  sp, 2

;-793   else if(iscmp==T_GE) if (ids){prs(" ;unsigned : "); prunsign1(ids);

@@cmpneg441:
 jmp @@cmpneg442
@@cmpneg439:
 mov ax, [iscmp]
 cmp ax, 811
 jne @@cmpneg443
 mov ax, [bp+4]
 or  al, al
 je @@cmpneg444
 push cmpneg_4
 call prs
 add  sp, 2
 push word [bp+4]
 call prunsign1
 add  sp, 2

;-794                                prs("\n jl  @@");}//          SF!=OF

 push cmpneg_5
 call prs
 add  sp, 2

;-795                            else{prs(" ;unsigned : "); prunsign1(ids);

 jmp @@cmpneg445
@@cmpneg444:
 push cmpneg_6
 call prs
 add  sp, 2
 push word [bp+4]
 call prunsign1
 add  sp, 2

;-796                                prs("\n jb  @@");}//jb=jc=CF=1

 push cmpneg_7
 call prs
 add  sp, 2

;-797   else if(iscmp=='<' ) prs("\n jge @@");         //          SF =OF

@@cmpneg445:
 jmp @@cmpneg446
@@cmpneg443:
 mov ax, [iscmp]
 cmp ax, 60
 jne @@cmpneg447
 push cmpneg_8
 call prs
 add  sp, 2

;-798   else if(iscmp=='>' ) prs("\n jle @@");         //ZF=1 oder SF!=OF

 jmp @@cmpneg448
@@cmpneg447:
 mov ax, [iscmp]
 cmp ax, 62
 jne @@cmpneg449
 push cmpneg_9
 call prs
 add  sp, 2

;-799   else error1("compare unknown in CMPNEG()");  }

 jmp @@cmpneg450
@@cmpneg449:
 push cmpneg_10
 call error1
 add  sp, 2
@@cmpneg450:
@@cmpneg448:
@@cmpneg446:
@@cmpneg442:
@@cmpneg438:
@@cmpneg436:

;-800 


;-801 int prlabel(int n) {prs("\n@@"); prs(fname); pint1(n); prc(':'); }
 LEAVE
 ret
; ENDP
cmpneg_0 db "\n jne @@",0
cmpneg_1 db "\n je  @@",0
cmpneg_2 db "\n jg  @@",0
cmpneg_3 db "\n ja  @@",0
cmpneg_4 db " ;unsigned : ",0
cmpneg_5 db "\n jl  @@",0
cmpneg_6 db " ;unsigned : ",0
cmpneg_7 db "\n jb  @@",0
cmpneg_8 db "\n jge @@",0
cmpneg_9 db "\n jle @@",0
cmpneg_10 db "compare unknown in CMPNEG()",0

prlabel:  ; *** PROC ***
;Function : prlabel, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   801 NULL bp+4    n;
 ENTER  0,0
 push prlabel_0
 call prs
 add  sp, 2
 lea  ax, [fname]
 push ax
 call prs
 add  sp, 2
 push word [bp+4]
 call pint1
 add  sp, 2
 push 58
 call prc
 add  sp, 2

;-802 int prjump (int n) {prs("\n jmp @@"); prs(fname); pint1(n); }
 LEAVE
 ret
; ENDP
prlabel_0 db "\n@@",0

prjump:  ; *** PROC ***
;Function : prjump, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   802 NULL bp+4    n;
 ENTER  0,0
 push prjump_0
 call prs
 add  sp, 2
 lea  ax, [fname]
 push ax
 call prs
 add  sp, 2
 push word [bp+4]
 call pint1
 add  sp, 2

;-803 int doif() {int jdest; int tst; pexpr(); nlabel++; jdest=nlabel;
 LEAVE
 ret
; ENDP
prjump_0 db "\n jmp @@",0

doif:  ; *** PROC ***
;Function : doif, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   803 NULL bp-2    jdest
;  201 var sign word   803 NULL bp-4    tst;
 ENTER  4,0
 call pexpr
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-2], ax

;-804   pint1(jdest); stmt();

 push word [bp-2]
 call pint1
 add  sp, 2
 call stmt

;-805   if (istoken(T_ELSE)) { nlabel++; tst=nlabel;

 push 514
 call istoken
 add  sp, 2
 or  al, al
 je @@doif451
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-4], ax

;-806     prjump(tst); prlabel(jdest); stmt(); prlabel(tst); }

 push word [bp-4]
 call prjump
 add  sp, 2
 push word [bp-2]
 call prlabel
 add  sp, 2
 call stmt
 push word [bp-4]
 call prlabel
 add  sp, 2

;-807   else prlabel(jdest); }

 jmp @@doif452
@@doif451:
 push word [bp-2]
 call prlabel
 add  sp, 2
@@doif452:

;-808 int doifcarry() {int jdest;  nlabel++; jdest=nlabel;
 LEAVE
 ret
; ENDP

doifcarry:  ; *** PROC ***
;Function : doifcarry, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   808 NULL bp-2    jdest;
 ENTER  2,0
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-2], ax

;-809   prs("\n jae short @@");/*jnc*/ prs(fname);  pint1(jdest);

 push doifcarry_0
 call prs
 add  sp, 2
 lea  ax, [fname]
 push ax
 call prs
 add  sp, 2
 push word [bp-2]
 call pint1
 add  sp, 2

;-810   stmt(); prlabel(jdest); }

 call stmt
 push word [bp-2]
 call prlabel
 add  sp, 2

;-811 int doifzero() {int jdest;  nlabel++; jdest=nlabel;
 LEAVE
 ret
; ENDP
doifcarry_0 db "\n jae short @@",0

doifzero:  ; *** PROC ***
;Function : doifzero, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   811 NULL bp-2    jdest;
 ENTER  2,0
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-2], ax

;-812   prs("\n jne short @@");        prs(fname);  pint1(jdest);

 push doifzero_0
 call prs
 add  sp, 2
 lea  ax, [fname]
 push ax
 call prs
 add  sp, 2
 push word [bp-2]
 call pint1
 add  sp, 2

;-813   stmt(); prlabel(jdest); }

 call stmt
 push word [bp-2]
 call prlabel
 add  sp, 2

;-814 int dodo() {int jdest; int jtemp;
 LEAVE
 ret
; ENDP
doifzero_0 db "\n jne short @@",0

dodo:  ; *** PROC ***

;-815   nlabel++; jdest=nlabel; prlabel(jdest); stmt();

;Function : dodo, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   814 NULL bp-2    jdest
;  201 var sign word   814 NULL bp-4    jtemp;
 ENTER  4,0
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-2], ax
 push word [bp-2]
 call prlabel
 add  sp, 2
 call stmt

;-816   expect(T_WHILE); pexpr(); nlabel++; jtemp=nlabel; pint1(jtemp);

 push 515
 call expect
 add  sp, 2
 call pexpr
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-4], ax
 push word [bp-4]
 call pint1
 add  sp, 2

;-817   prjump(jdest); prlabel(jtemp); }

 push word [bp-2]
 call prjump
 add  sp, 2
 push word [bp-4]
 call prlabel
 add  sp, 2

;-818 int dowhile() {int jdest; int tst; nlabel++; jdest=nlabel;
 LEAVE
 ret
; ENDP

dowhile:  ; *** PROC ***
;Function : dowhile, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   818 NULL bp-2    jdest
;  201 var sign word   818 NULL bp-4    tst;
 ENTER  4,0
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-2], ax

;-819   prlabel(jdest); pexpr(); nlabel++; tst=nlabel; pint1(tst);

 push word [bp-2]
 call prlabel
 add  sp, 2
 call pexpr
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-4], ax
 push word [bp-4]
 call pint1
 add  sp, 2

;-820   stmt(); prjump(jdest); prlabel(tst); }

 call stmt
 push word [bp-2]
 call prjump
 add  sp, 2
 push word [bp-4]
 call prlabel
 add  sp, 2

;-821 int isrelational() {
 LEAVE
 ret
; ENDP

isrelational:  ; *** PROC ***

;-822   if (token==T_EQ) goto w; if (token==T_NE) goto w;

 mov ax, [token]
 cmp ax, 806
 jne @@isrelational453
 jmp @@w
@@isrelational453:
 mov ax, [token]
 cmp ax, 807
 jne @@isrelational454
 jmp @@w

;-823   if (token==T_LE) goto w; if (token==T_GE) goto w;

@@isrelational454:
 mov ax, [token]
 cmp ax, 824
 jne @@isrelational455
 jmp @@w
@@isrelational455:
 mov ax, [token]
 cmp ax, 811
 jne @@isrelational456
 jmp @@w

;-824   if (token=='<' ) goto w; if (token=='>' ) goto w;

@@isrelational456:
 mov ax, [token]
 cmp ax, 60
 jne @@isrelational457
 jmp @@w
@@isrelational457:
 mov ax, [token]
 cmp ax, 62
 jne @@isrelational458
 jmp @@w

;-825   return 0;  w: iscmp=token; token=getlex(); return 1;}

@@isrelational458:
 mov eax, 0
 jmp @@retn
@@w:
 mov ax, [token]
 mov word [iscmp], ax
 call getlex
 mov word [token], ax
 mov eax, 1
 jmp @@retn

;-826  


;-827 char symboltemp[80];    

@@retn:
 ret
; ENDP
section .bss
absolute 46920
symboltemp resb 80
section .text

;-828 int getlex() { char c; char *p; 


getlex:  ; *** PROC ***

;-829 g1: c=next(); if (c == 0) return 0; if (c <= ' ') goto g1;

;Function : getlex, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign byte   828 NULL bp-2    c
;  201 ptr sign byte   828 NULL bp-4    p;
 ENTER  4,0
@@g1:
 call next
 mov byte [bp-2], al
 mov al, [bp-2]
 cmp al, 0
 jne @@getlex459
 mov eax, 0
 jmp @@retn
@@getlex459:
 mov al, [bp-2]
 cmp al, 32
 jg  @@getlex460
 jmp @@g1

;-830   if (c=='=') {if(thechar=='=') {next(); return T_EQ; }}

@@getlex460:
 mov al, [bp-2]
 cmp al, 61
 jne @@getlex461
 mov al, [thechar]
 cmp al, 61
 jne @@getlex462
 call next
 mov eax, 806
 jmp @@retn
@@getlex462:

;-831   if (c=='!') {if(thechar=='=') {next(); return T_NE; }}

@@getlex461:
 mov al, [bp-2]
 cmp al, 33
 jne @@getlex463
 mov al, [thechar]
 cmp al, 61
 jne @@getlex464
 call next
 mov eax, 807
 jmp @@retn
@@getlex464:

;-832   if (c=='<') {if(thechar=='=') {next(); return T_LE; }}

@@getlex463:
 mov al, [bp-2]
 cmp al, 60
 jne @@getlex465
 mov al, [thechar]
 cmp al, 61
 jne @@getlex466
 call next
 mov eax, 824
 jmp @@retn
@@getlex466:

;-833   if (c=='>') {if(thechar=='=') {next(); return T_GE; }}

@@getlex465:
 mov al, [bp-2]
 cmp al, 62
 jne @@getlex467
 mov al, [thechar]
 cmp al, 61
 jne @@getlex468
 call next
 mov eax, 811
 jmp @@retn
@@getlex468:

;-834   if (c=='<') {if(thechar=='<') {next(); return T_LESSLESS;  }}

@@getlex467:
 mov al, [bp-2]
 cmp al, 60
 jne @@getlex469
 mov al, [thechar]
 cmp al, 60
 jne @@getlex470
 call next
 mov eax, 1240
 jmp @@retn
@@getlex470:

;-835   if (c=='>') {if(thechar=='>') {next(); return T_GREATGREAT;}}

@@getlex469:
 mov al, [bp-2]
 cmp al, 62
 jne @@getlex471
 mov al, [thechar]
 cmp al, 62
 jne @@getlex472
 call next
 mov eax, 1241
 jmp @@retn
@@getlex472:

;-836   if (c=='+') {if(thechar=='+') {next(); return T_PLUSPLUS;  }}

@@getlex471:
 mov al, [bp-2]
 cmp al, 43
 jne @@getlex473
 mov al, [thechar]
 cmp al, 43
 jne @@getlex474
 call next
 mov eax, 1219
 jmp @@retn
@@getlex474:

;-837   if (c=='-') {if(thechar=='-') {next(); return T_MINUSMINUS;}}

@@getlex473:
 mov al, [bp-2]
 cmp al, 45
 jne @@getlex475
 mov al, [thechar]
 cmp al, 45
 jne @@getlex476
 call next
 mov eax, 1225
 jmp @@retn
@@getlex476:

;-838   if (c=='+') {if(thechar=='=') {next(); return T_PLUSASS;   }}

@@getlex475:
 mov al, [bp-2]
 cmp al, 43
 jne @@getlex477
 mov al, [thechar]
 cmp al, 61
 jne @@getlex478
 call next
 mov eax, 1230
 jmp @@retn
@@getlex478:

;-839   if (c=='-') {if(thechar=='=') {next(); return T_MINUSASS;  }}

@@getlex477:
 mov al, [bp-2]
 cmp al, 45
 jne @@getlex479
 mov al, [thechar]
 cmp al, 61
 jne @@getlex480
 call next
 mov eax, 1231
 jmp @@retn
@@getlex480:

;-840   if (c=='&') {if(thechar=='=') {next(); return T_ANDASS;    }}

@@getlex479:
 mov al, [bp-2]
 cmp al, 38
 jne @@getlex481
 mov al, [thechar]
 cmp al, 61
 jne @@getlex482
 call next
 mov eax, 1234
 jmp @@retn
@@getlex482:

;-841   if (c=='|') {if(thechar=='=') {next(); return T_ORASS;     }}    

@@getlex481:
 mov al, [bp-2]
 cmp al, 124
 jne @@getlex483
 mov al, [thechar]
 cmp al, 61
 jne @@getlex484
 call next
 mov eax, 1235
 jmp @@retn
@@getlex484:

;-842   if (c=='*') {if(thechar=='=') {next(); return T_MULASS;    }}

@@getlex483:
 mov al, [bp-2]
 cmp al, 42
 jne @@getlex485
 mov al, [thechar]
 cmp al, 61
 jne @@getlex486
 call next
 mov eax, 1232
 jmp @@retn
@@getlex486:

;-843   if (c=='/') {if(thechar=='=') {next(); return T_DIVASS;    }}        

@@getlex485:
 mov al, [bp-2]
 cmp al, 47
 jne @@getlex487
 mov al, [thechar]
 cmp al, 61
 jne @@getlex488
 call next
 mov eax, 1233
 jmp @@retn
@@getlex488:

;-844   if (instr1("()[]{},;*:%-><=+!&|#?", c)) return c ;

@@getlex487:
 mov al, byte [bp-2]
 mov ah, 0
 push ax
 push getlex_0
 call instr1
 add  sp, 4
 or  al, al
 je @@getlex489
 mov al, [bp-2]
 jmp @@retn

;-845   if (c == '/') { if (thechar == '/') {

@@getlex489:
 mov al, [bp-2]
 cmp al, 47
 jne @@getlex490
 mov al, [thechar]
 cmp al, 47
 jne @@getlex491

;-846       do c=next(); while(c != 13); /* c=next(); */ return getlex(); } }

@@getlex492:
 call next
 mov byte [bp-2], al
 mov al, [bp-2]
 cmp al, 13
 je  @@getlex493
 jmp @@getlex492
@@getlex493:
 call getlex
 jmp @@retn
@@getlex491:

;-847   if (c == '/') { if (thechar == '*') {

@@getlex490:
 mov al, [bp-2]
 cmp al, 47
 jne @@getlex494
 mov al, [thechar]
 cmp al, 42
 jne @@getlex495

;-848       g2: c=next(); if (c != '*') goto g2; if (thechar != '/') goto g2;

@@g2:
 call next
 mov byte [bp-2], al
 mov al, [bp-2]
 cmp al, 42
 je  @@getlex496
 jmp @@g2
@@getlex496:
 mov al, [thechar]
 cmp al, 47
 je  @@getlex497
 jmp @@g2

;-849       c=next(); return getlex(); } else  return '/'; }

@@getlex497:
 call next
 mov byte [bp-2], al
 call getlex
 jmp @@retn
 jmp @@getlex498
@@getlex495:
 mov eax, 47
 jmp @@retn
@@getlex498:

;-850   if (c == '"') {getstring(c); return T_STRING;}

@@getlex494:
 mov al, [bp-2]
 cmp al, 34
 jne @@getlex499
 mov al, byte [bp-2]
 mov ah, 0
 push ax
 call getstring
 add  sp, 2
 mov eax, 258
 jmp @@retn

;-851   if (digit(c)) { getdigit(c); return T_CONST; }

@@getlex499:
 mov al, byte [bp-2]
 mov ah, 0
 push ax
 call digit
 add  sp, 2
 or  al, al
 je @@getlex500
 mov al, byte [bp-2]
 mov ah, 0
 push ax
 call getdigit
 add  sp, 2
 mov eax, 257
 jmp @@retn

;-852   if (c==39) { lexvalL=next();

@@getlex500:
 mov al, [bp-2]
 cmp al, 39
 jne @@getlex501
 call next
 mov dword [lexvalL], eax

;-853     if (lexvalL==92) {lexvalL=next();

 mov eax, [lexvalL]
 cmp eax, 92
 jne @@getlex502
 call next
 mov dword [lexvalL], eax

;-854       if (lexvalL=='n') lexvalL=10; if (lexvalL=='t') lexvalL= 9;

 mov eax, [lexvalL]
 cmp eax, 110
 jne @@getlex503
 mov eax, 10
 mov dword [lexvalL], eax
@@getlex503:
 mov eax, [lexvalL]
 cmp eax, 116
 jne @@getlex504
 mov eax, 9
 mov dword [lexvalL], eax

;-855       if (lexvalL=='0') lexvalL= 0; } next(); return T_CONST; }

@@getlex504:
 mov eax, [lexvalL]
 cmp eax, 48
 jne @@getlex505
 mov eax, 0
 mov dword [lexvalL], eax
@@getlex505:
@@getlex502:
 call next
 mov eax, 257
 jmp @@retn

;-856   if (letter(c)) { 

@@getlex501:
 mov al, byte [bp-2]
 mov ah, 0
 push ax
 call letter
 add  sp, 2
 or  al, al
 je @@getlex506

;-857     strcpy(symboltemp, symbol); p=&symbol;  *p=c;  p++;

 lea  ax, [symbol]
 push ax
 lea  ax, [symboltemp]
 push ax
 call strcpy
 add  sp, 4
 mov ax, symbol
 mov word [bp-4], ax
 mov al, [bp-2]
 mov  bx, [bp-4]
 mov  [bx], al
 inc  word [bp-4]

;-858     while(letter(thechar)) {c=next(); *p=c;  p++; } 

@@getlex507:
 mov al, byte [thechar]
 mov ah, 0
 push ax
 call letter
 add  sp, 2
 or  al, al
 je @@getlex508
 call next
 mov byte [bp-2], al
 mov al, [bp-2]
 mov  bx, [bp-4]
 mov  [bx], al
 inc  word [bp-4]

;-859       *p=0;

 jmp @@getlex507
@@getlex508:
 mov eax, 0
 mov  bx, [bp-4]
 mov  [bx], al

;-860     if (eqstr(symbol,"signed"  )) return T_SIGNED;

 push getlex_1
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex509
 mov eax, 531
 jmp @@retn

;-861     if (eqstr(symbol,"unsigned")) return T_UNSIGNED;

@@getlex509:
 push getlex_2
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex510
 mov eax, 532
 jmp @@retn

;-862     if (eqstr(symbol,"void"    )) return T_VOID;

@@getlex510:
 push getlex_3
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex511
 mov eax, 529
 jmp @@retn

;-863     if (eqstr(symbol,"int"     )) return T_INT;

@@getlex511:
 push getlex_4
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex512
 mov eax, 517
 jmp @@retn

;-864     if (eqstr(symbol,"short"   )) return T_SHORT;

@@getlex512:
 push getlex_5
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex513
 mov eax, 534
 jmp @@retn

;-865     if (eqstr(symbol,"long"    )) return T_LONG;

@@getlex513:
 push getlex_6
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex514
 mov eax, 533
 jmp @@retn

;-866     if (eqstr(symbol,"uint32"  )) return T_UINT32;

@@getlex514:
 push getlex_7
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex515
 mov eax, 545
 jmp @@retn

;-867     if (eqstr(symbol,"inth"    )) return T_INTH;

@@getlex515:
 push getlex_8
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex516
 mov eax, 600
 jmp @@retn

;-868     if (eqstr(symbol,"char"    )) return T_CHAR;

@@getlex516:
 push getlex_9
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex517
 mov eax, 530
 jmp @@retn

;-869     if (eqstr(symbol,"asm"     )) return T_ASM;

@@getlex517:
 push getlex_10
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex518
 mov eax, 518
 jmp @@retn

;-870     if (eqstr(symbol,"__asm"   )) return T_ASMBLOCK;

@@getlex518:
 push getlex_11
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex519
 mov eax, 519
 jmp @@retn

;-871     if (eqstr(symbol,"__emit__")) return T_EMIT;

@@getlex519:
 push getlex_12
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex520
 mov eax, 520
 jmp @@retn

;-872     if (eqstr(symbol,"return"  )) return T_RETURN;

@@getlex520:
 push getlex_13
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex521
 mov eax, 512
 jmp @@retn

;-873     if (eqstr(symbol,"if"      )) return T_IF;

@@getlex521:
 push getlex_14
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex522
 mov eax, 513
 jmp @@retn

;-874     if (eqstr(symbol,"ifcarry" )) return T_IFCARRY;

@@getlex522:
 push getlex_15
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex523
 mov eax, 601
 jmp @@retn

;-875     if (eqstr(symbol,"ifzero"  )) return T_IFZERO;

@@getlex523:
 push getlex_16
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex524
 mov eax, 602
 jmp @@retn

;-876     if (eqstr(symbol,"else"    )) return T_ELSE;

@@getlex524:
 push getlex_17
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex525
 mov eax, 514
 jmp @@retn

;-877     if (eqstr(symbol,"while"   )) return T_WHILE;

@@getlex525:
 push getlex_18
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex526
 mov eax, 515
 jmp @@retn

;-878     if (eqstr(symbol,"do"      )) return T_DO;

@@getlex526:
 push getlex_19
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex527
 mov eax, 516
 jmp @@retn

;-879     if (eqstr(symbol,"goto"    )) return T_GOTO;

@@getlex527:
 push getlex_20
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex528
 mov eax, 521
 jmp @@retn

;-880     if (eqstr(symbol,"define"  )) return T_DEFINE;   

@@getlex528:
 push getlex_21
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex529
 mov eax, 511
 jmp @@retn

;-881     if (eqstr(symbol,"include" )) return T_INCLUDE;   

@@getlex529:
 push getlex_22
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex530
 mov eax, 510
 jmp @@retn

;-882     if (convertdefine() ) {strcpy(symbol, symboltemp); return T_CONST;}

@@getlex530:
 call convertdefine
 or  al, al
 je @@getlex531
 lea  ax, [symboltemp]
 push ax
 lea  ax, [symbol]
 push ax
 call strcpy
 add  sp, 4
 mov eax, 257
 jmp @@retn

;-883     return T_NAME; } error1("Input item not recognized"); }

@@getlex531:
 mov eax, 256
 jmp @@retn
@@getlex506:
 push getlex_23
 call error1
 add  sp, 2

;-884 


;-885 int convertdefine() { int i; int j;   i=0;

@@retn: LEAVE
 ret
; ENDP
getlex_0 db "()[]{},;*:%-><=+!&|#?",0
getlex_1 db "signed",0
getlex_2 db "unsigned",0
getlex_3 db "void",0
getlex_4 db "int",0
getlex_5 db "short",0
getlex_6 db "long",0
getlex_7 db "uint32",0
getlex_8 db "inth",0
getlex_9 db "char",0
getlex_10 db "asm",0
getlex_11 db "__asm",0
getlex_12 db "__emit__",0
getlex_13 db "return",0
getlex_14 db "if",0
getlex_15 db "ifcarry",0
getlex_16 db "ifzero",0
getlex_17 db "else",0
getlex_18 db "while",0
getlex_19 db "do",0
getlex_20 db "goto",0
getlex_21 db "define",0
getlex_22 db "include",0
getlex_23 db "Input item not recognized",0

convertdefine:  ; *** PROC ***
;Function : convertdefine, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   885 NULL bp-2    i
;  201 var sign word   885 NULL bp-4    j;
 ENTER  4,0
 mov eax, 0
 mov word [bp-2], ax

;-886   while (i < GTop) {  j=GName[i]; from_far(NA, j);

@@convertdefine532:
 mov ax, [bp-2]
 cmp ax, [GTop]
 jge @@convertdefine533
 mov bx, [bp-2]
 shl bx, 1
 mov ax, [GName + bx]
 mov word [bp-4], ax
 push word [bp-4]
 lea  ax, [NA]
 push ax
 call from_far
 add  sp, 4

;-887    if (eqstr(symbol, NA)) { if (GType[i]=='#') { lexvalL=GData[i];

 lea  ax, [NA]
 push ax
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@convertdefine534
 mov bx, [bp-2]
 mov al, [GType + bx]
 cmp al, 35
 jne @@convertdefine535
 mov bx, [bp-2]
 shl bx, 2
 mov eax, [GData + bx]
 mov dword [lexvalL], eax

;-888      eax=lexvalL; _ lexvalL=eax;   return T_CONST; } }      i++; }

 mov  eax, [lexvalL]
mov [lexvalL], eax
 mov eax, 257
 jmp @@retn
@@convertdefine535:
@@convertdefine534:
 inc  word [bp-2]

;-889    return 0;

 jmp @@convertdefine532
@@convertdefine533:
 mov eax, 0
 jmp @@retn

;-890 }


;-891 long getdigit(unsigned char c) { unsigned long L;

@@retn: LEAVE
 ret
; ENDP

getdigit:  ; *** PROC ***

;-892     _ lexvalL=0;    c-='0';

;Function : getdigit, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg byte   891 NULL bp+4    c
;  201 var unsg dwrd   891 NULL bp-4    L;
 ENTER  4,0
mov dword [lexvalL], 0
 sub  byte [bp+4], 48

;-893     eax=c;/* cast B2L */  _ lexvalL=eax;

 movzx  eax, byte [bp+4]
mov [lexvalL], eax

;-894     if (thechar=='x') thechar='X';

 mov al, [thechar]
 cmp al, 120
 jne @@getdigit536
 mov eax, 88
 mov byte [thechar], al

;-895     if (thechar=='X') { next();

@@getdigit536:
 mov al, [thechar]
 cmp al, 88
 jne @@getdigit537
 call next

;-896       while(letter(thechar)) { c=next(); if(_ c>96) c-=39;

@@getdigit538:
 mov al, byte [thechar]
 mov ah, 0
 push ax
 call letter
 add  sp, 2
 or  al, al
 je @@getdigit539
 call next
 mov byte [bp+4], al
cmp byte [bp+4], 96
 jle @@getdigit540
 sub  byte [bp+4], 39

;-897 	      if (_ c>64) c-=7; c-=48; lexvalL=lexvalL << 4; // * 16

@@getdigit540:
cmp byte [bp+4], 64
 jle @@getdigit541
 sub  byte [bp+4], 7
@@getdigit541:
 sub  byte [bp+4], 48
 mov eax, [lexvalL]
 shl eax, 4
 mov dword [lexvalL], eax

;-898     eax=c;/* cast B2L */  _ L=eax;  lexvalL=lexvalL+L; } }

 movzx  eax, byte [bp+4]
mov [bp-4], eax
 mov eax, [lexvalL]
 add eax, [bp-4]
 mov dword [lexvalL], eax
 jmp @@getdigit538
@@getdigit539:

;-899     else


;-900     { while(digit(thechar )) { c=next(); c-='0'; lexvalL=lexvalL*10;

 jmp @@getdigit542
@@getdigit537:
@@getdigit543:
 mov al, byte [thechar]
 mov ah, 0
 push ax
 call digit
 add  sp, 2
 or  al, al
 je @@getdigit544
 call next
 mov byte [bp+4], al
 sub  byte [bp+4], 48
 mov eax, [lexvalL]
 mov ebx, 10
 mul ebx
 mov dword [lexvalL], eax

;-901     eax=c;/* cast B2L */  _ L=eax;  lexvalL=lexvalL+L; } }

 movzx  eax, byte [bp+4]
mov [bp-4], eax
 mov eax, [lexvalL]
 add eax, [bp-4]
 mov dword [lexvalL], eax
 jmp @@getdigit543
@@getdigit544:

;-902     _ islong=0; if (_ lexvalL > 0xFFFF) islong++;

@@getdigit542:
mov byte [islong], 0
cmp dword [lexvalL], 65535
 jle @@getdigit545
 inc  byte [islong]

;-903 }

@@getdigit545:

;-904 int getstring(int delim) {int c; char *p;  p=&symbol; c=next();
 LEAVE
 ret
; ENDP

getstring:  ; *** PROC ***
;Function : getstring, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   904 NULL bp+4    delim
;  201 var sign word   904 NULL bp-2    c
;  202 ptr sign byte   904 NULL bp-4    p;
 ENTER  4,0
 mov ax, symbol
 mov word [bp-4], ax
 call next
 mov word [bp-2], ax

;-905   while (c != delim) {*p=c; p++; c=next(); } *p=0; }

@@getstring546:
 mov ax, [bp-2]
 cmp ax, [bp+4]
 je  @@getstring547
 mov ax, [bp-2]
 mov  bx, [bp-4]
 mov  [bx], al
 inc  word [bp-4]
 call next
 mov word [bp-2], ax
 jmp @@getstring546
@@getstring547:
 mov eax, 0
 mov  bx, [bp-4]
 mov  [bx], al

;-906 


;-907 int next() {char r; r = thechar; globC=r; thechar = fgets1(); return r; }
 LEAVE
 ret
; ENDP

next:  ; *** PROC ***
;Function : next, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign byte   907 NULL bp-2    r;
 ENTER  2,0
 mov al, [thechar]
 mov byte [bp-2], al
 mov al, [bp-2]
 mov byte [globC], al
 call fgets1
 mov byte [thechar], al
 mov al, [bp-2]
 jmp @@retn

;-908 int istoken(int t) {if (token == t) { token=getlex(); return 1; } return 0;}

@@retn: LEAVE
 ret
; ENDP

istoken:  ; *** PROC ***
;Function : istoken, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   908 NULL bp+4    t;
 ENTER  0,0
 mov ax, [token]
 cmp ax, [bp+4]
 jne @@istoken548
 call getlex
 mov word [token], ax
 mov eax, 1
 jmp @@retn
@@istoken548:
 mov eax, 0
 jmp @@retn

;-909 int expect(int t) {if (istoken(t)==0) { *cloc=0; prs(co); listproc();

@@retn: LEAVE
 ret
; ENDP

expect:  ; *** PROC ***
;Function : expect, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   909 NULL bp+4    t;
 ENTER  0,0
 push word [bp+4]
 call istoken
 add  sp, 2
 cmp ax, 0
 jne @@expect549
 mov eax, 0
 mov  bx, [cloc]
 mov  [bx], al
 lea  ax, [co]
 push ax
 call prs
 add  sp, 2
 call listproc

;-910   prs("\nExpected ASCII(dez): "); pint1(t); error1(" not found"); } }

 push expect_0
 call prs
 add  sp, 2
 push word [bp+4]
 call pint1
 add  sp, 2
 push expect_1
 call error1
 add  sp, 2
@@expect549:

;-911 


;-912 int eprc(char c)  {*cloc=c; cloc++; }
 LEAVE
 ret
; ENDP
expect_0 db "\nExpected ASCII(dez): ",0
expect_1 db " not found",0

eprc:  ; *** PROC ***
;Function : eprc, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign byte   912 NULL bp+4    c;
 ENTER  0,0
 mov al, [bp+4]
 mov  bx, [cloc]
 mov  [bx], al
 inc  word [cloc]

;-913 int eprs(char *s) {char c;  while(*s) { c=*s; eprc(c); s++; } }
 LEAVE
 ret
; ENDP

eprs:  ; *** PROC ***
;Function : eprs, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte   913 NULL bp+4    s
;  201 var sign byte   913 NULL bp-2    c;
 ENTER  2,0
@@eprs550:
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 or  al, al
 je @@eprs551
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 mov byte [bp-2], al
 mov al, byte [bp-2]
 mov ah, 0
 push ax
 call eprc
 add  sp, 2
 inc  word [bp+4]
 jmp @@eprs550
@@eprs551:

;-914 int prc(unsigned char c) { if (LIST) { if (_ c==10) {ax=13; writetty(); }
 LEAVE
 ret
; ENDP

prc:  ; *** PROC ***
;Function : prc, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg byte   914 NULL bp+4    c;
 ENTER  0,0
 mov al, [LIST]
 or  al, al
 je @@prc552
cmp byte [bp+4], 10
 jne @@prc553
 mov  ax, 13
 call writetty

;-915    al=c; writetty(); } fputcR(c, fdout); }

@@prc553:
 mov  al, [bp+4]
 call writetty
@@prc552:
 push word [fdout]
 mov al, byte [bp+4]
 mov ah, 0
 push ax
 call fputcR
 add  sp, 4

;-916 int prscomment(unsigned char *s) {unsigned char c;
 LEAVE
 ret
; ENDP

prscomment:  ; *** PROC ***

;-917   while(*s){c=*s;prc(c);s++;} }

;Function : prscomment, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr unsg byte   916 NULL bp+4    s
;  201 var unsg byte   916 NULL bp-2    c;
 ENTER  2,0
@@prscomment554:
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 or  al, al
 je @@prscomment555
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 mov byte [bp-2], al
 mov al, byte [bp-2]
 mov ah, 0
 push ax
 call prc
 add  sp, 2
 inc  word [bp+4]
 jmp @@prscomment554
@@prscomment555:

;-918 int prnl() { prs("\n ");}
 LEAVE
 ret
; ENDP

prnl:  ; *** PROC ***
 push prnl_0
 call prs
 add  sp, 2

;-919 


;-920 int prs(unsigned char *s) {unsigned char c; int com; com=0;

 ret
; ENDP
prnl_0 db "\n ",0

prs:  ; *** PROC ***
;Function : prs, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 ptr unsg byte   920 NULL bp+4    s
;  201 var unsg byte   920 NULL bp-2    c
;  202 var sign word   920 NULL bp-4    com;
 ENTER  4,0
 mov eax, 0
 mov word [bp-4], ax

;-921   while(*s) { c=*s; if (c==34) if (com) com=0; else com=1;

@@prs556:
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 or  al, al
 je @@prs557
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 mov byte [bp-2], al
 mov al, [bp-2]
 cmp al, 34
 jne @@prs558
 mov ax, [bp-4]
 or  al, al
 je @@prs559
 mov eax, 0
 mov word [bp-4], ax
 jmp @@prs560
@@prs559:
 mov eax, 1
 mov word [bp-4], ax

;-922     if (c==92) { if (com==0) { s++; c=*s;

@@prs560:
@@prs558:
 mov al, [bp-2]
 cmp al, 92
 jne @@prs561
 mov ax, [bp-4]
 cmp ax, 0
 jne @@prs562
 inc  word [bp+4]
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 mov byte [bp-2], al

;-923           if (c=='n') c=10; if (c=='t') c= 9; } } prc(c); s++;  } }

 mov al, [bp-2]
 cmp al, 110
 jne @@prs563
 mov eax, 10
 mov byte [bp-2], al
@@prs563:
 mov al, [bp-2]
 cmp al, 116
 jne @@prs564
 mov eax, 9
 mov byte [bp-2], al
@@prs564:
@@prs562:
@@prs561:
 mov al, byte [bp-2]
 mov ah, 0
 push ax
 call prc
 add  sp, 2
 inc  word [bp+4]
 jmp @@prs556
@@prs557:

;-924 int eprnum(int n){int e; if(n<0) { eprc('-'); n=mkneg(n); }
 LEAVE
 ret
; ENDP

eprnum:  ; *** PROC ***
;Function : eprnum, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   924 NULL bp+4    n
;  201 var sign word   924 NULL bp-2    e;
 ENTER  2,0
 mov ax, [bp+4]
 cmp ax, 0
 jge @@eprnum565
 push 45
 call eprc
 add  sp, 2
 push word [bp+4]
 call mkneg
 add  sp, 2
 mov word [bp+4], ax

;-925   if (n >= 10) {e=n/10; eprnum(e);}  n=n%10; n=n+'0'; eprc(n); }

@@eprnum565:
 mov ax, [bp+4]
 cmp ax, 10 ;unsigned : 1
 jl  @@eprnum566
 mov ax, [bp+4]
 mov bx, 10
 cwd
 idiv bx
 mov word [bp-2], ax
 push word [bp-2]
 call eprnum
 add  sp, 2
@@eprnum566:
 mov ax, [bp+4]
 mov bx, 10
 cwd
 idiv bx
 mov ax, dx
 mov word [bp+4], ax
 mov ax, [bp+4]
 add ax, 48
 mov word [bp+4], ax
 push word [bp+4]
 call eprc
 add  sp, 2

;-926 int pint1 (int n){int e; if(n<0) {  prc('-');  n=mkneg(n); }
 LEAVE
 ret
; ENDP

pint1:  ; *** PROC ***
;Function : pint1, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   926 NULL bp+4    n
;  201 var sign word   926 NULL bp-2    e;
 ENTER  2,0
 mov ax, [bp+4]
 cmp ax, 0
 jge @@pint1567
 push 45
 call prc
 add  sp, 2
 push word [bp+4]
 call mkneg
 add  sp, 2
 mov word [bp+4], ax

;-927   if (n >= 10) {e=n/10;  pint1(e);}  n=n%10; n=n+'0'; prc(n); }

@@pint1567:
 mov ax, [bp+4]
 cmp ax, 10 ;unsigned : 1
 jl  @@pint1568
 mov ax, [bp+4]
 mov bx, 10
 cwd
 idiv bx
 mov word [bp-2], ax
 push word [bp-2]
 call pint1
 add  sp, 2
@@pint1568:
 mov ax, [bp+4]
 mov bx, 10
 cwd
 idiv bx
 mov ax, dx
 mov word [bp+4], ax
 mov ax, [bp+4]
 add ax, 48
 mov word [bp+4], ax
 push word [bp+4]
 call prc
 add  sp, 2

;-928 int prunsign1(unsigned int n) { unsigned int e;
 LEAVE
 ret
; ENDP

prunsign1:  ; *** PROC ***

;-929   if ( _ n >= 10) {  e=n/10; /*DIV*/ prunsign1(e); }

;Function : prunsign1, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg word   928 NULL bp+4    n
;  201 var unsg word   928 NULL bp-2    e;
 ENTER  2,0
cmp word [bp+4], 10 ;unsigned : 0
 jb  @@prunsign1569
 mov ax, [bp+4]
 mov bx, 10
 mov dx, 0
 div bx
 mov word [bp-2], ax
 push word [bp-2]
 call prunsign1
 add  sp, 2

;-930     n = n % 10; /*unsigned mod*/   n += '0'; prc(n); }

@@prunsign1569:
 mov ax, [bp+4]
 mov bx, 10
 mov dx, 0
 div bx
 mov ax, dx
 mov word [bp+4], ax
 add  word [bp+4], 48
 push word [bp+4]
 call prc
 add  sp, 2

;-931 int printint51(unsigned int j)  {
 LEAVE
 ret
; ENDP

printint51:  ; *** PROC ***

;-932   if (j<10000) prc(32); if (j<1000) prc(32);  if (j<100) prc(32);

;Function : printint51, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word   931 NULL bp+4    j;
 ENTER  0,0
 mov ax, [bp+4]
 cmp ax, 10000
 jge @@printint51570
 push 32
 call prc
 add  sp, 2
@@printint51570:
 mov ax, [bp+4]
 cmp ax, 1000
 jge @@printint51571
 push 32
 call prc
 add  sp, 2
@@printint51571:
 mov ax, [bp+4]
 cmp ax, 100
 jge @@printint51572
 push 32
 call prc
 add  sp, 2

;-933    if (j<10) prc(32);  prunsign1(j); }

@@printint51572:
 mov ax, [bp+4]
 cmp ax, 10
 jge @@printint51573
 push 32
 call prc
 add  sp, 2
@@printint51573:
 push word [bp+4]
 call prunsign1
 add  sp, 2

;-934 


;-935 int fgets1() { char c; c=*fgetsp;
 LEAVE
 ret
; ENDP

fgets1:  ; *** PROC ***
;Function : fgets1, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign byte   935 NULL bp-2    c;
 ENTER  2,0
 mov bx, [fgetsp]
 mov al, [bx]
 mov ah, 0
 mov byte [bp-2], al

;-936   if (c==0) { printinputline(); if (DOS_NoBytes == 0) return 0;

 mov al, [bp-2]
 cmp al, 0
 jne @@fgets1574
 call printinputline
 mov ax, [DOS_NoBytes]
 cmp ax, 0
 jne @@fgets1575
 mov eax, 0
 jmp @@retn

;-937     fgetsp=&fgetsdest; c=*fgetsp; spalte=0; }

@@fgets1575:
 mov ax, fgetsdest
 mov word [fgetsp], ax
 mov bx, [fgetsp]
 mov al, [bx]
 mov ah, 0
 mov byte [bp-2], al
 mov eax, 0
 mov word [spalte], ax

;-938   fgetsp++; spalte++;  return c; }

@@fgets1574:
 inc  word [fgetsp]
 inc  word [spalte]
 mov al, [bp-2]
 jmp @@retn

;-939 int printinputline() { fgetsp=&fgetsdest;

@@retn: LEAVE
 ret
; ENDP

printinputline:  ; *** PROC ***
 mov ax, fgetsdest
 mov word [fgetsp], ax

;-940   do {DOS_NoBytes=readR(&DOS_ByteRead, fdin);

@@printinputline576:
 push word [fdin]
 lea  ax, [DOS_ByteRead]
 push ax
 call readR
 add  sp, 4
 mov word [DOS_NoBytes], ax

;-941   if (DOS_NoBytes == 0) return; 

 mov ax, [DOS_NoBytes]
 cmp ax, 0
 jne @@printinputline577
 jmp @@retn

;-942     *fgetsp=DOS_ByteRead; fgetsp++;} 

@@printinputline577:
 mov al, [DOS_ByteRead]
 mov  bx, [fgetsp]
 mov  [bx], al
 inc  word [fgetsp]

;-943   while (DOS_ByteRead != 10); *fgetsp=0;

 mov al, [DOS_ByteRead]
 cmp al, 10
 je  @@printinputline578
 jmp @@printinputline576
@@printinputline578:
 mov eax, 0
 mov  bx, [fgetsp]
 mov  [bx], al

;-944     if (fdout) { prs("\n\n;-"); prunsign1(lineno); prc(' '); lineno++;

 mov ax, [fdout]
 or  al, al
 je @@printinputline579
 push printinputline_0
 call prs
 add  sp, 2
 push word [lineno]
 call prunsign1
 add  sp, 2
 push 32
 call prc
 add  sp, 2
 inc  word [lineno]

;-945       prscomment(&fgetsdest);}

 lea  ax, [fgetsdest]
 push ax
 call prscomment
 add  sp, 2

;-946 }

@@printinputline579:

;-947 int end1(int n) {fcloseR(fdin); fcloseR(fdout); exitR(n); }

@@retn:
 ret
; ENDP
printinputline_0 db "\n\n;-",0

end1:  ; *** PROC ***
;Function : end1, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   947 NULL bp+4    n;
 ENTER  0,0
 push word [fdin]
 call fcloseR
 add  sp, 2
 push word [fdout]
 call fcloseR
 add  sp, 2
 push word [bp+4]
 call exitR
 add  sp, 2

;-948 int error1(char *s) { LIST=1;
 LEAVE
 ret
; ENDP

error1:  ; *** PROC ***
;Function : error1, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte   948 NULL bp+4    s;
 ENTER  0,0
 mov eax, 1
 mov byte [LIST], al

;-949   lineno--;

 dec  word [lineno]

;-950   prnl(); prscomment(&fgetsdest);

 call prnl
 lea  ax, [fgetsdest]
 push ax
 call prscomment
 add  sp, 2

;-951   prs(";Line: "); prunsign1(lineno);

 push error1_0
 call prs
 add  sp, 2
 push word [lineno]
 call prunsign1
 add  sp, 2

;-952   prs(" ************** ERROR: "); prs(s);

 push error1_1
 call prs
 add  sp, 2
 push word [bp+4]
 call prs
 add  sp, 2

;-953   prs("  in column: "); pint1(spalte);

 push error1_2
 call prs
 add  sp, 2
 push word [spalte]
 call pint1
 add  sp, 2

;-954   prs("\nToken: "); prunsign1(token); prs(", globC: "); prc(globC);

 push error1_3
 call prs
 add  sp, 2
 push word [token]
 call prunsign1
 add  sp, 2
 push error1_4
 call prs
 add  sp, 2
 mov al, byte [globC]
 mov ah, 0
 push ax
 call prc
 add  sp, 2

;-955   prs(", thechar: "); pint1(thechar); prs(", symbol: "); prs(symbol);

 push error1_5
 call prs
 add  sp, 2
 mov al, byte [thechar]
 mov ah, 0
 push ax
 call pint1
 add  sp, 2
 push error1_6
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2

;-956   end1(1); }

 push 1
 call end1
 add  sp, 2

;-957 int listproc() {int i; 
 LEAVE
 ret
; ENDP
error1_0 db ";Line: ",0
error1_1 db " ************** ERROR: ",0
error1_2 db "  in column: ",0
error1_3 db "\nToken: ",0
error1_4 db ", globC: ",0
error1_5 db ", thechar: ",0
error1_6 db ", symbol: ",0

listproc:  ; *** PROC ***

;-958   if (LTop > LSTART) {

;Function : listproc, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   957 NULL bp-2    i;
 ENTER  2,0
 mov ax, [LTop]
 cmp ax, 200
 jle @@listproc580

;-959   prs("\n;Function : "); prs(fname);

 push listproc_0
 call prs
 add  sp, 2
 lea  ax, [fname]
 push ax
 call prs
 add  sp, 2

;-960   prs(", Number of local variables: "); i=LTop - LSTART; prunsign1(i);

 push listproc_1
 call prs
 add  sp, 2
 mov ax, [LTop]
 sub ax, 200
 mov word [bp-2], ax
 push word [bp-2]
 call prunsign1
 add  sp, 2

;-961   prs("\n;   # type sign width line used address name   list of local variables");

 push listproc_2
 call prs
 add  sp, 2

;-962     i=LSTART; 

 mov eax, 200
 mov word [bp-2], ax

;-963     while (i < LTop) { listvar(i); i++; } } 

@@listproc581:
 mov ax, [bp-2]
 cmp ax, [LTop]
 jge @@listproc582
 push word [bp-2]
 call listvar
 add  sp, 2
 inc  word [bp-2]
 jmp @@listproc581
@@listproc582:

;-964 }

@@listproc580:

;-965 int listvar(unsigned int i) {unsigned int j; char c;  long L;
 LEAVE
 ret
; ENDP
listproc_0 db "\n;Function : ",0
listproc_1 db ", Number of local variables: ",0
listproc_2 db "\n;   # type sign width line used address name   list of local variables",0

listvar:  ; *** PROC ***

;-966   prs("\n;"); printint51(i); prc(32);

;Function : listvar, Number of local variables: 4
;   # type sign width line used address name   list of local variables
;  200 var unsg word   965 NULL bp+4    i
;  201 var unsg word   965 NULL bp-2    j
;  202 var sign byte   965 NULL bp-4    c
;  203 var sign dwrd   965 NULL bp-8    L;
 ENTER  8,0
 push listvar_0
 call prs
 add  sp, 2
 push word [bp+4]
 call printint51
 add  sp, 2
 push 32
 call prc
 add  sp, 2

;-967   c=GType [i]; if(c=='V')prs("var ");   if(c=='*')prs("ptr ");

 mov bx, [bp+4]
 mov al, [GType + bx]
 mov byte [bp-4], al
 mov al, [bp-4]
 cmp al, 86
 jne @@listvar583
 push listvar_1
 call prs
 add  sp, 2
@@listvar583:
 mov al, [bp-4]
 cmp al, 42
 jne @@listvar584
 push listvar_2
 call prs
 add  sp, 2

;-968                if(c=='&')prs("arr ");   if(c=='#')prs("def ");

@@listvar584:
 mov al, [bp-4]
 cmp al, 38
 jne @@listvar585
 push listvar_3
 call prs
 add  sp, 2
@@listvar585:
 mov al, [bp-4]
 cmp al, 35
 jne @@listvar586
 push listvar_4
 call prs
 add  sp, 2

;-969   c=GSign [i]; if(c=='S')prs("sign ");  if(c=='U')prs("unsg ");

@@listvar586:
 mov bx, [bp+4]
 mov al, [GSign + bx]
 mov byte [bp-4], al
 mov al, [bp-4]
 cmp al, 83
 jne @@listvar587
 push listvar_5
 call prs
 add  sp, 2
@@listvar587:
 mov al, [bp-4]
 cmp al, 85
 jne @@listvar588
 push listvar_6
 call prs
 add  sp, 2

;-970   c=GWidth[i]; if(c==  1)prs("byte " ); if(c==  2)prs("word " );

@@listvar588:
 mov bx, [bp+4]
 mov al, [GWidth + bx]
 mov byte [bp-4], al
 mov al, [bp-4]
 cmp al, 1
 jne @@listvar589
 push listvar_7
 call prs
 add  sp, 2
@@listvar589:
 mov al, [bp-4]
 cmp al, 2
 jne @@listvar590
 push listvar_8
 call prs
 add  sp, 2

;-971                if(c==  4)prs("dwrd " );

@@listvar590:
 mov al, [bp-4]
 cmp al, 4
 jne @@listvar591
 push listvar_9
 call prs
 add  sp, 2

;-972   j=GLino[i]; printint51(j);

@@listvar591:
 mov bx, [bp+4]
 shl bx, 1
 mov ax, [GLino + bx]
 mov word [bp-2], ax
 push word [bp-2]
 call printint51
 add  sp, 2

;-973   j=GUsed[i]; if (j) printint51(j);

 mov bx, [bp+4]
 shl bx, 1
 mov ax, [GUsed + bx]
 mov word [bp-2], ax
 mov ax, [bp-2]
 or  al, al
 je @@listvar592
 push word [bp-2]
 call printint51
 add  sp, 2

;-974   else {if(GType[i]=='#') prs("    -"); else prs(" NULL");}

 jmp @@listvar593
@@listvar592:
 mov bx, [bp+4]
 mov al, [GType + bx]
 cmp al, 35
 jne @@listvar594
 push listvar_10
 call prs
 add  sp, 2
 jmp @@listvar595
@@listvar594:
 push listvar_11
 call prs
 add  sp, 2
@@listvar595:

;-975   prc(32);  L=GAdr[i];

@@listvar593:
 push 32
 call prc
 add  sp, 2
 mov bx, [bp+4]
 shl bx, 2
 mov eax, [GAdr + bx]
 mov dword [bp-8], eax

;-976   if (i < LSTART) { /*if (L == 0) prs("       0"); else */ prf(L, 8); }

 mov ax, [bp+4]
 cmp ax, 200
 jge @@listvar596
 push 8
 push dword [bp-8]
 call prf
 add  sp, 6

;-977   else  { prs("bp"); j=GData[i];

 jmp @@listvar597
@@listvar596:
 push listvar_12
 call prs
 add  sp, 2
 mov bx, [bp+4]
 shl bx, 2
 mov eax, [GData + bx]
 mov word [bp-2], ax

;-978     if (j > 0) prc('+'); pint1(j); prs("   "); }

 mov ax, [bp-2]
 cmp ax, 0
 jle @@listvar598
 push 43
 call prc
 add  sp, 2
@@listvar598:
 push word [bp-2]
 call pint1
 add  sp, 2
 push listvar_13
 call prs
 add  sp, 2

;-979   prc(32);  j=GName[i]; from_far(NA, j); prs(NA);

@@listvar597:
 push 32
 call prc
 add  sp, 2
 mov bx, [bp+4]
 shl bx, 1
 mov ax, [GName + bx]
 mov word [bp-2], ax
 push word [bp-2]
 lea  ax, [NA]
 push ax
 call from_far
 add  sp, 4
 lea  ax, [NA]
 push ax
 call prs
 add  sp, 2

;-980   if(GType[i]=='#') { prc('='); L=GData[i]; prL(L); }

 mov bx, [bp+4]
 mov al, [GType + bx]
 cmp al, 35
 jne @@listvar599
 push 61
 call prc
 add  sp, 2
 mov bx, [bp+4]
 shl bx, 2
 mov eax, [GData + bx]
 mov dword [bp-8], eax
 push dword [bp-8]
 call prL
 add  sp, 4

;-981   if(GType[i]=='&') { prc('['); L=GData[i]; prL(L); prc(']');}

@@listvar599:
 mov bx, [bp+4]
 mov al, [GType + bx]
 cmp al, 38
 jne @@listvar600
 push 91
 call prc
 add  sp, 2
 mov bx, [bp+4]
 shl bx, 2
 mov eax, [GData + bx]
 mov dword [bp-8], eax
 push dword [bp-8]
 call prL
 add  sp, 4
 push 93
 call prc
 add  sp, 2

;-982 }

@@listvar600:

;-983 int listcall() { int i;  prs("\n\n;    #  addr name   list of CALLs\n");
 LEAVE
 ret
; ENDP
listvar_0 db "\n;",0
listvar_1 db "var ",0
listvar_2 db "ptr ",0
listvar_3 db "arr ",0
listvar_4 db "def ",0
listvar_5 db "sign ",0
listvar_6 db "unsg ",0
listvar_7 db "byte ",0
listvar_8 db "word ",0
listvar_9 db "dwrd ",0
listvar_10 db "    -",0
listvar_11 db " NULL",0
listvar_12 db "bp",0
listvar_13 db "   ",0

listcall:  ; *** PROC ***
;Function : listcall, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   983 NULL bp-2    i;
 ENTER  2,0
 push listcall_0
 call prs
 add  sp, 2

;-984   i=0;  while (i< CTop) { calllisting(i); i++; } }

 mov eax, 0
 mov word [bp-2], ax
@@listcall601:
 mov ax, [bp-2]
 cmp ax, [CTop]
 jge @@listcall602
 push word [bp-2]
 call calllisting
 add  sp, 2
 inc  word [bp-2]
 jmp @@listcall601
@@listcall602:

;-985 int calllisting(int i) {char c; int j;
 LEAVE
 ret
; ENDP
listcall_0 db "\n\n;    #  addr name   list of CALLs\n",0

calllisting:  ; *** PROC ***

;-986   prs("\n;"); printint51(i); prc(32);

;Function : calllisting, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   985 NULL bp+4    i
;  201 var sign byte   985 NULL bp-2    c
;  202 var sign word   985 NULL bp-4    j;
 ENTER  4,0
 push calllisting_0
 call prs
 add  sp, 2
 push word [bp+4]
 call printint51
 add  sp, 2
 push 32
 call prc
 add  sp, 2

;-987   c=CUnres [i]; if(c==0)prs("unresolved ");

 mov bx, [bp+4]
 mov al, [CUnres + bx]
 mov byte [bp-2], al
 mov al, [bp-2]
 cmp al, 0
 jne @@calllisting603
 push calllisting_1
 call prs
 add  sp, 2

;-988   j=CName[i];            printint51(j); prc(32);

@@calllisting603:
 mov bx, [bp+4]
 shl bx, 1
 mov ax, [CName + bx]
 mov word [bp-4], ax
 push word [bp-4]
 call printint51
 add  sp, 2
 push 32
 call prc
 add  sp, 2

;-989   from_far(NA, j);   prs(NA);

 push word [bp-4]
 lea  ax, [NA]
 push ax
 call from_far
 add  sp, 4
 lea  ax, [NA]
 push ax
 call prs
 add  sp, 2

;-990 }


;-991 int countcalls(int f) { unsigned int i;
 LEAVE
 ret
; ENDP
calllisting_0 db "\n;",0
calllisting_1 db "unresolved ",0

countcalls:  ; *** PROC ***

;-992   pt=FName[f]; from_far(NA, pt);

;Function : countcalls, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   991 NULL bp+4    f
;  201 var unsg word   991 NULL bp-2    i;
 ENTER  2,0
 mov bx, [bp+4]
 shl bx, 1
 mov ax, [FName + bx]
 mov word [pt], ax
 push word [pt]
 lea  ax, [NA]
 push ax
 call from_far
 add  sp, 4

;-993   i=0;  while (i < CTop) {  p1=CName[i]; from_far(NB, p1);

 mov eax, 0
 mov word [bp-2], ax
@@countcalls604:
 mov ax, [bp-2]
 cmp ax, [CTop]
 jge @@countcalls605
 mov bx, [bp-2]
 shl bx, 1
 mov ax, [CName + bx]
 mov word [p1], ax
 push word [p1]
 lea  ax, [NB]
 push ax
 call from_far
 add  sp, 4

;-994     if (eqstr(NA, NB))  FCalls[f] = FCalls[f] + 1;         i++; }

 lea  ax, [NB]
 push ax
 lea  ax, [NA]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@countcalls606
 mov bx, [bp+4]
 shl bx, 1
 mov ax, [FCalls + bx]
 add ax, 1
 mov bx, [bp+4]
 shl bx, 1
 mov [FCalls+bx], ax
@@countcalls606:
 inc  word [bp-2]

;-995 }

 jmp @@countcalls604
@@countcalls605:

;-996 int listfunc() { int i;
 LEAVE
 ret
; ENDP

listfunc:  ; *** PROC ***

;-997   prs("\n\n\n;   # Calls Line Width  Name   list of functions\n");

;Function : listfunc, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   996 NULL bp-2    i;
 ENTER  2,0
 push listfunc_0
 call prs
 add  sp, 2

;-998   i=0;  while (i < FTop) { countcalls (i); i++; } 

 mov eax, 0
 mov word [bp-2], ax
@@listfunc607:
 mov ax, [bp-2]
 cmp ax, [FTop]
 jge @@listfunc608
 push word [bp-2]
 call countcalls
 add  sp, 2
 inc  word [bp-2]

;-999   i=0;  while (i < FTop) { funclisting(i); i++; } }

 jmp @@listfunc607
@@listfunc608:
 mov eax, 0
 mov word [bp-2], ax
@@listfunc609:
 mov ax, [bp-2]
 cmp ax, [FTop]
 jge @@listfunc610
 push word [bp-2]
 call funclisting
 add  sp, 2
 inc  word [bp-2]
 jmp @@listfunc609
@@listfunc610:

;-1000 int funclisting(int i) {int j;  char c;
 LEAVE
 ret
; ENDP
listfunc_0 db "\n\n\n;   # Calls Line Width  Name   list of functions\n",0

funclisting:  ; *** PROC ***

;-1001   prs("\n;");    printint51(i);

;Function : funclisting, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word  1000 NULL bp+4    i
;  201 var sign word  1000 NULL bp-2    j
;  202 var sign byte  1000 NULL bp-4    c;
 ENTER  4,0
 push funclisting_0
 call prs
 add  sp, 2
 push word [bp+4]
 call printint51
 add  sp, 2

;-1002   j = FCalls[i]; if (j) printint51(j); else prs(" NULL");

 mov bx, [bp+4]
 shl bx, 1
 mov ax, [FCalls + bx]
 mov word [bp-2], ax
 mov ax, [bp-2]
 or  al, al
 je @@funclisting611
 push word [bp-2]
 call printint51
 add  sp, 2
 jmp @@funclisting612
@@funclisting611:
 push funclisting_1
 call prs
 add  sp, 2

;-1003   j = FLino[i];   printint51(j); prc(32);

@@funclisting612:
 mov bx, [bp+4]
 shl bx, 1
 mov ax, [FLino + bx]
 mov word [bp-2], ax
 push word [bp-2]
 call printint51
 add  sp, 2
 push 32
 call prc
 add  sp, 2

;-1004   c=FWidth[i];

 mov bx, [bp+4]
 mov al, [FWidth + bx]
 mov byte [bp-4], al

;-1005   if(_ c==0)prs("void " );    if(_ c==1)prs("byte " );

cmp byte [bp-4], 0
 jne @@funclisting613
 push funclisting_2
 call prs
 add  sp, 2
@@funclisting613:
cmp byte [bp-4], 1
 jne @@funclisting614
 push funclisting_3
 call prs
 add  sp, 2

;-1006   if(_ c==2)prs("word " );    if(_ c==4)prs("dwrd " );

@@funclisting614:
cmp byte [bp-4], 2
 jne @@funclisting615
 push funclisting_4
 call prs
 add  sp, 2
@@funclisting615:
cmp byte [bp-4], 4
 jne @@funclisting616
 push funclisting_5
 call prs
 add  sp, 2

;-1007   prc(32); prc(32);

@@funclisting616:
 push 32
 call prc
 add  sp, 2
 push 32
 call prc
 add  sp, 2

;-1008   j=FName[i]; from_far(NA, j); prs(NA);

 mov bx, [bp+4]
 shl bx, 1
 mov ax, [FName + bx]
 mov word [bp-2], ax
 push word [bp-2]
 lea  ax, [NA]
 push ax
 call from_far
 add  sp, 4
 lea  ax, [NA]
 push ax
 call prs
 add  sp, 2

;-1009 }


;-1010 unsigned int MAXUI=65535;
 LEAVE
 ret
; ENDP
funclisting_0 db "\n;",0
funclisting_1 db " NULL",0
funclisting_2 db "void ",0
funclisting_3 db "byte ",0
funclisting_4 db "word ",0
funclisting_5 db "dwrd ",0
MAXUI dw 65535

;-1011 int epilog() {unsigned int i; 


epilog:  ; *** PROC ***

;-1012   strcpy(symbol, "LastFunctionByt");  storefunc();

;Function : epilog, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word  1011 NULL bp-2    i;
 ENTER  2,0
 push epilog_0
 lea  ax, [symbol]
 push ax
 call strcpy
 add  sp, 4
 call storefunc

;-1013   prs("\nLastFunctionByt:db 0E8h, 0, 0\npop ax\nret");

 push epilog_1
 call prs
 add  sp, 2

;-1014   prs("\n \n;   # type sign width line used  address name   list of global variables\n");

 push epilog_2
 call prs
 add  sp, 2

;-1015   i=1;      while (i< GTop) { listvar(i); i++; }

 mov eax, 1
 mov word [bp-2], ax
@@epilog617:
 mov ax, [bp-2]
 cmp ax, [GTop]
 jge @@epilog618
 push word [bp-2]
 call listvar
 add  sp, 2
 inc  word [bp-2]

;-1016   listfunc();   listcall();   LIST=1;

 jmp @@epilog617
@@epilog618:
 call listfunc
 call listcall
 mov eax, 1
 mov byte [LIST], al

;-1017   prs("\n;Input: "); prs(&namein);

 push epilog_3
 call prs
 add  sp, 2
 lea  ax, [namein]
 push ax
 call prs
 add  sp, 2

;-1018   prs(", List: ");   prs(&namelst);

 push epilog_4
 call prs
 add  sp, 2
 lea  ax, [namelst]
 push ax
 call prs
 add  sp, 2

;-1019   prs(",  Lines:"); printint51(lineno);

 push epilog_5
 call prs
 add  sp, 2
 push word [lineno]
 call printint51
 add  sp, 2

;-1020   prs("\n;Glob. variables:"); GTop--; printint51(GTop);

 push epilog_6
 call prs
 add  sp, 2
 dec  word [GTop]
 push word [GTop]
 call printint51
 add  sp, 2

;-1021   prs(" max.:"); printint51(LSTART);

 push epilog_7
 call prs
 add  sp, 2
 push 200
 call printint51
 add  sp, 2

;-1022   prs("\n;Local variables:"); i=maxloc-LSTART; printint51(i);

 push epilog_8
 call prs
 add  sp, 2
 mov ax, [maxloc]
 sub ax, 200
 mov word [bp-2], ax
 push word [bp-2]
 call printint51
 add  sp, 2

;-1023   prs(" max.:"); _ i=VARMAX; i-=LSTART; printint51(i);

 push epilog_9
 call prs
 add  sp, 2
mov word [bp-2], 300; i
 sub  word [bp-2], 200
 push word [bp-2]
 call printint51
 add  sp, 2

;-1024   prs(", in '"); prs(locname); prs("'");

 push epilog_10
 call prs
 add  sp, 2
 lea  ax, [locname]
 push ax
 call prs
 add  sp, 2
 push epilog_11
 call prs
 add  sp, 2

;-1025   prs("\n;Functions      :"); printint51(FTop);

 push epilog_12
 call prs
 add  sp, 2
 push word [FTop]
 call printint51
 add  sp, 2

;-1026   prs(" max.:"); printint51(FUNCMAX);

 push epilog_13
 call prs
 add  sp, 2
 push 300
 call printint51
 add  sp, 2

;-1027   prs("\n;Calls          :"); printint51(CTop);

 push epilog_14
 call prs
 add  sp, 2
 push word [CTop]
 call printint51
 add  sp, 2

;-1028   prs(" max.:"); printint51(CALLMAX);

 push epilog_15
 call prs
 add  sp, 2
 push 2000
 call printint51
 add  sp, 2

;-1029   prs(", NameField:"); printint51(CNameTop);

 push epilog_16
 call prs
 add  sp, 2
 push word [CNameTop]
 call printint51
 add  sp, 2

;-1030   prs(" max.:"); printint51(MAXUI);

 push epilog_17
 call prs
 add  sp, 2
 push word [MAXUI]
 call printint51
 add  sp, 2

;-1031   __asm{call LastFunctionByt}  _ i=ax;

call LastFunctionByt
mov [bp-2], ax

;-1032   prs("\n;Code until     :"); printint51(i);

 push epilog_18
 call prs
 add  sp, 2
 push word [bp-2]
 call printint51
 add  sp, 2

;-1033   prs(" max.: "); printint51(ORGDATAORIG); i=ORGDATAORIG-i; prs(", free:");

 push epilog_19
 call prs
 add  sp, 2
 push dword [ORGDATAORIG]
 call printint51
 add  sp, 4
 mov eax, [ORGDATAORIG]
 sub ax, [bp-2]
 mov word [bp-2], ax
 push epilog_20
 call prs
 add  sp, 2

;-1034   printint51(i); if (i <= 1000) {prs(" *** Warning *** Code area too small");

 push word [bp-2]
 call printint51
 add  sp, 2
 mov ax, [bp-2]
 cmp ax, 1000
 ja  @@epilog619
 push epilog_21
 call prs
 add  sp, 2

;-1035   prs("\nuse #define ORGDATA > "); printint51(ORGDATAORIG); }

 push epilog_22
 call prs
 add  sp, 2
 push dword [ORGDATAORIG]
 call printint51
 add  sp, 4

;-1036   prs("\n;Data (HeapEnd) :"); prunsign1(orgData); i=MAXUI-orgData;

@@epilog619:
 push epilog_23
 call prs
 add  sp, 2
 push dword [orgData]
 call prunsign1
 add  sp, 4
 mov ax, [MAXUI]
 sub eax, [orgData]
 mov word [bp-2], ax

;-1037   prs(", resting stacksize: ");printint51(i);

 push epilog_24
 call prs
 add  sp, 2
 push word [bp-2]
 call printint51
 add  sp, 2

;-1038   if (i <= 5000) prs(" *** Warning *** Stack too small");

 mov ax, [bp-2]
 cmp ax, 5000
 ja  @@epilog620
 push epilog_25
 call prs
 add  sp, 2

;-1039   prs("\n;Max. Const in '"); prs(coname); prs("' :"); printint51(maxco);

@@epilog620:
 push epilog_26
 call prs
 add  sp, 2
 lea  ax, [coname]
 push ax
 call prs
 add  sp, 2
 push epilog_27
 call prs
 add  sp, 2
 push word [maxco]
 call printint51
 add  sp, 2

;-1040   prs(" max."); printint51(COMAX); i=COMAX; i=i-maxco; prs(", free:");

 push epilog_28
 call prs
 add  sp, 2
 push 3000
 call printint51
 add  sp, 2
 mov eax, 3000
 mov word [bp-2], ax
 mov ax, [bp-2]
 sub ax, [maxco]
 mov word [bp-2], ax
 push epilog_29
 call prs
 add  sp, 2

;-1041   printint51(i);if (i <= 1000)prs(" *** Warning *** constant area too small");

 push word [bp-2]
 call printint51
 add  sp, 2
 mov ax, [bp-2]
 cmp ax, 1000
 ja  @@epilog621
 push epilog_30
 call prs
 add  sp, 2

;-1042   if(NASM==0)prs("\nEND");end1(0);}

@@epilog621:
 mov al, [NASM]
 cmp al, 0
 jne @@epilog622
 push epilog_31
 call prs
 add  sp, 2
@@epilog622:
 push 0
 call end1
 add  sp, 2

;-1043 


;-1044 int memresize(unsigned int i) {
 LEAVE
 ret
; ENDP
epilog_0 db "LastFunctionByt",0
epilog_1 db "\nLastFunctionByt:db 0E8h, 0, 0\npop ax\nret",0
epilog_2 db "\n \n;   # type sign width line used  address name   list of global variables\n",0
epilog_3 db "\n;Input: ",0
epilog_4 db ", List: ",0
epilog_5 db ",  Lines:",0
epilog_6 db "\n;Glob. variables:",0
epilog_7 db " max.:",0
epilog_8 db "\n;Local variables:",0
epilog_9 db " max.:",0
epilog_10 db ", in '",0
epilog_11 db "'",0
epilog_12 db "\n;Functions      :",0
epilog_13 db " max.:",0
epilog_14 db "\n;Calls          :",0
epilog_15 db " max.:",0
epilog_16 db ", NameField:",0
epilog_17 db " max.:",0
epilog_18 db "\n;Code until     :",0
epilog_19 db " max.: ",0
epilog_20 db ", free:",0
epilog_21 db " *** Warning *** Code area too small",0
epilog_22 db "\nuse #define ORGDATA > ",0
epilog_23 db "\n;Data (HeapEnd) :",0
epilog_24 db ", resting stacksize: ",0
epilog_25 db " *** Warning *** Stack too small",0
epilog_26 db "\n;Max. Const in '",0
epilog_27 db "' :",0
epilog_28 db " max.",0
epilog_29 db ", free:",0
epilog_30 db " *** Warning *** constant area too small",0
epilog_31 db "\nEND",0

memresize:  ; *** PROC ***

;-1045   _ DOS_ERR=0; bx=i; _ ax=cs; es=ax; ax=0x4A00; DosInt(); }

;Function : memresize, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word  1044 NULL bp+4    i;
 ENTER  0,0
mov word [DOS_ERR], 0
 mov  bx, [bp+4]
 mov  ax, cs
 mov  es, ax
 mov  ax, 18944
 call DosInt

;-1046 int memalloc(unsigned int i) { unsigned int vAX; unsigned int vBX;
 LEAVE
 ret
; ENDP

memalloc:  ; *** PROC ***

;-1047   _ DOS_ERR=0; bx=i;  ax=0x4800; DosInt(); _ vAX=ax; _ vBX=bx;

;Function : memalloc, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var unsg word  1046 NULL bp+4    i
;  201 var unsg word  1046 NULL bp-2    vAX
;  202 var unsg word  1046 NULL bp-4    vBX;
 ENTER  4,0
mov word [DOS_ERR], 0
 mov  bx, [bp+4]
 mov  ax, 18432
 call DosInt
mov [bp-2], ax
mov [bp-4], bx

;-1048   if(DOS_ERR) return vBX;   return vAX;  }

 mov ax, [DOS_ERR]
 or  al, al
 je @@memalloc623
 mov ax, [bp-4]
 jmp @@retn
@@memalloc623:
 mov ax, [bp-2]
 jmp @@retn

;-1049 int copyF(char *dest, char *src, unsigned int sz) {

@@retn: LEAVE
 ret
; ENDP

copyF:  ; *** PROC ***

;-1050   segE;  _ es=ax;  _ si=src;  _ di=dest; _ cx=sz;  // ds:si   es:di

;Function : copyF, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1049 NULL bp+4    dest
;  201 ptr sign byte  1049 NULL bp+6    src
;  202 var unsg word  1049 NULL bp+8    sz;
 ENTER  0,0
 mov ax, [segE]
 mov  es, ax
 mov  si, [bp+6]
 mov  di, [bp+4]
 mov  cx, [bp+8]

;-1051   __asm{cld} __asm{rep movsb} __asm{mov byte [es:di], 0}   }

cld
rep movsb
mov byte [es:di], 0

;-1052 int loadName(char *dest, int i) {
 LEAVE
 ret
; ENDP

loadName:  ; *** PROC ***

;-1053   segE;  _ es=ax; _ di=dest;  GName[i]; _ si=ax;

;Function : loadName, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1052 NULL bp+4    dest
;  201 var sign word  1052 NULL bp+6    i;
 ENTER  0,0
 mov ax, [segE]
 mov  es, ax
 mov  di, [bp+4]
 mov bx, [bp+6]
 shl bx, 1
 mov ax, [GName + bx]
 mov  si, ax

;-1054   do{ __asm{mov al, [es:si]} si++; *di=al;  di++; } while (al != 0); }

@@loadName624:
mov al, [es:si]
 inc  si
 mov  [di], al
 inc  di
 cmp  al, 0
 je  @@loadName625
 jmp @@loadName624
@@loadName625:

;-1055 int to_far(char *dest, char *src) {
 LEAVE
 ret
; ENDP

to_far:  ; *** PROC ***

;-1056   segE;  _ es=ax;  _ si=src;  _ di=dest;  // ds:si   es:di

;Function : to_far, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1055 NULL bp+4    dest
;  201 ptr sign byte  1055 NULL bp+6    src;
 ENTER  0,0
 mov ax, [segE]
 mov  es, ax
 mov  si, [bp+6]
 mov  di, [bp+4]

;-1057   do{ al= *si; si++; __asm{mov [es:di], al} di++; } while (al != 0); }

@@to_far626:
 mov  al, [si]
 inc  si
mov [es:di], al
 inc  di
 cmp  al, 0
 je  @@to_far627
 jmp @@to_far626
@@to_far627:

;-1058 int from_far(char *dest, char *src) {
 LEAVE
 ret
; ENDP

from_far:  ; *** PROC ***

;-1059   segE;  _ es=ax;  _ si=src;  _ di=dest;  // ds:si   es:di

;Function : from_far, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1058 NULL bp+4    dest
;  201 ptr sign byte  1058 NULL bp+6    src;
 ENTER  0,0
 mov ax, [segE]
 mov  es, ax
 mov  si, [bp+6]
 mov  di, [bp+4]

;-1060   do{ __asm{mov al, [es:si]} si++; *di=al;  di++; } while (al != 0); }

@@from_far628:
mov al, [es:si]
 inc  si
 mov  [di], al
 inc  di
 cmp  al, 0
 je  @@from_far629
 jmp @@from_far628
@@from_far629:

;-1061 


;-1062 unsigned char GDT1[]={15,0,0,0,0,0,0,0, 0xFF,0xFF,0x00,0x00,0x00,0x92,0xCF,0};
 LEAVE
 ret
; ENDP
GDT1 db 15,0,0,0,0,0,0,0,255,255,0,0,0,146,207,0

;-1063 int isvirtual86() { eax=cr0;  ax &= 1; }


isvirtual86:  ; *** PROC ***
 mov  eax, cr0
 and  ax, 1

;-1064 int is32bit() { ecx=0xFFFF; __asm{jmp $ + 2;} ecx++; ifzero return 0; return 1;}

 ret
; ENDP

is32bit:  ; *** PROC ***
 mov  ecx, 65535
jmp $ + 2;
 inc  ecx
 jne short @@is32bit630
 mov eax, 0
 jmp @@retn
@@is32bit630:
 mov eax, 1
 jmp @@retn

;-1065 int INITCPU32() { eax=0;	ax=ds; eax << 4;

@@retn:
 ret
; ENDP

INITCPU32:  ; *** PROC ***
 mov  eax, 0
 mov  ax, ds
 shl  eax, 4

;-1066 	asm add eax, GDT1       ;//Offset GDT

 add eax, GDT1       ;//Offset GDT

;-1067 	asm mov [GDT1+2], eax

 mov [GDT1+2], eax

;-1068 	asm lgdt [GDT1]

 lgdt [GDT1]

;-1069 	bx=8;

 mov  bx, 8

;-1070 	asm push ds

 push ds

;-1071 	asm cli

 cli

;-1072 	eax=cr0; al++; cr0=eax;

 mov  eax, cr0
 inc  al
 mov  cr0, eax

;-1073 	asm use32

 use32

;-1074 	__asm{jmp dword PROT_EN}   __asm{PROT_EN:}

jmp dword PROT_EN
PROT_EN:

;-1075 	fs=bx;	al--;	cr0=eax;

 mov  fs, bx
 dec  al
 mov  cr0, eax

;-1076 	asm use16

 use16

;-1077 	__asm{jmp word PROT_DI} __asm{PROT_DI:}

jmp word PROT_DI
PROT_DI:

;-1078 	asm sti

 sti

;-1079 	asm pop ds

 pop ds

;-1080 }


;-1081 


;-1082 void to32  (long L,  char *src) { }

 ret
; ENDP

to32:  ; *** PROC ***
;Function : to32, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign dwrd  1082 NULL bp+4    L
;  201 ptr sign byte  1082 NULL bp+8    src;
 ENTER  0,0

;-1083 void from32(char *dest, long L) { }
 LEAVE
 ret
; ENDP

from32:  ; *** PROC ***
;Function : from32, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1083 NULL bp+4    dest
;  201 var sign dwrd  1083 NULL bp+6    L;
 ENTER  0,0

;-1084 void prLr(unsigned long L) {           ultoar(L, Ls); prs(Ls); }//right
 LEAVE
 ret
; ENDP

prLr:  ; *** PROC ***
;Function : prLr, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg dwrd  1084 NULL bp+4    L;
 ENTER  0,0
 lea  ax, [Ls]
 push ax
 push dword [bp+4]
 call ultoar
 add  sp, 6
 lea  ax, [Ls]
 push ax
 call prs
 add  sp, 2

;-1085 void prL (unsigned long L) {char *p; p=ultoaL(L, Ls); prs(p ); }//left
 LEAVE
 ret
; ENDP

prL:  ; *** PROC ***
;Function : prL, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg dwrd  1085 NULL bp+4    L
;  201 ptr sign byte  1085 NULL bp-2    p;
 ENTER  2,0
 lea  ax, [Ls]
 push ax
 push dword [bp+4]
 call ultoaL
 add  sp, 6
 mov word [bp-2], ax
 push word [bp-2]
 call prs
 add  sp, 2

;-1086 void prf(unsigned long L, int w) {char len; char *p;            //format width
 LEAVE
 ret
; ENDP

prf:  ; *** PROC ***

;-1087   p=ultoaL(L, Ls); len=strlen(p); if (w > len) do {prc(32); w--;} while (w>len);

;Function : prf, Number of local variables: 4
;   # type sign width line used address name   list of local variables
;  200 var unsg dwrd  1086 NULL bp+4    L
;  201 var sign word  1086 NULL bp+8    w
;  202 var sign byte  1086 NULL bp-2    len
;  203 ptr sign byte  1086 NULL bp-4    p;
 ENTER  4,0
 lea  ax, [Ls]
 push ax
 push dword [bp+4]
 call ultoaL
 add  sp, 6
 mov word [bp-4], ax
 push word [bp-4]
 call strlen
 add  sp, 2
 mov byte [bp-2], al
 mov ax, [bp+8]
 cmp al, [bp-2]
 jle @@prf631
@@prf632:
 push 32
 call prc
 add  sp, 2
 dec  word [bp+8]
 mov ax, [bp+8]
 cmp al, [bp-2]
 jle @@prf633
 jmp @@prf632
@@prf633:
@@prf631:

;-1088   prs(p); }

 push word [bp-4]
 call prs
 add  sp, 2

;-1089 void ultoar(unsigned long L, char *s) { int i;//edx:eax DIV ebx = eax Modulo edx
 LEAVE
 ret
; ENDP

ultoar:  ; *** PROC ***

;-1090   i=0;  while(i<10) { *s = '0'; s++; i++; }   *s = 0;   s--;  eax=L;

;Function : ultoar, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var unsg dwrd  1089 NULL bp+4    L
;  201 ptr sign byte  1089 NULL bp+8    s
;  202 var sign word  1089 NULL bp-2    i;
 ENTER  2,0
 mov eax, 0
 mov word [bp-2], ax
@@ultoar634:
 mov ax, [bp-2]
 cmp ax, 10
 jge @@ultoar635
 mov eax, 48
 mov  bx, [bp+8]
 mov  [bx], al
 inc  word [bp+8]
 inc  word [bp-2]
 jmp @@ultoar634
@@ultoar635:
 mov eax, 0
 mov  bx, [bp+8]
 mov  [bx], al
 dec  word [bp+8]
 mov  eax, [bp+4]

;-1091   do { edx=0;  ebx=10; ebx /= ;

@@ultoar636:
 mov  edx, 0
 mov  ebx, 10
 div  ebx

;-1092        dl+=48; bx=s;   *bx=dl;  s--; } while (eax != 0);  }

 add  dl, 48
 mov  bx, [bp+8]
 mov  [bx], dl
 dec  word [bp+8]
 cmp  eax, 0
 je  @@ultoar637
 jmp @@ultoar636
@@ultoar637:

;-1093 int ultoaL(unsigned long L, char *s) { // edx:eax DIV ebx = eax Modulo edx
 LEAVE
 ret
; ENDP

ultoaL:  ; *** PROC ***

;-1094   s=s+10;  *s = 0;   s--;  eax=L;

;Function : ultoaL, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg dwrd  1093 NULL bp+4    L
;  201 ptr sign byte  1093 NULL bp+8    s;
 ENTER  0,0
 mov ax, [bp+8]
 add ax, 10
 mov word [bp+8], ax
 mov eax, 0
 mov  bx, [bp+8]
 mov  [bx], al
 dec  word [bp+8]
 mov  eax, [bp+4]

;-1095   do { edx=0;  ebx=10; ebx /= ;

@@ultoaL638:
 mov  edx, 0
 mov  ebx, 10
 div  ebx

;-1096        dl+=48; bx=s;   *bx=dl;  s--; } while (eax != 0);   s++; ax=s;

 add  dl, 48
 mov  bx, [bp+8]
 mov  [bx], dl
 dec  word [bp+8]
 cmp  eax, 0
 je  @@ultoaL639
 jmp @@ultoaL638
@@ultoaL639:
 inc  word [bp+8]
 mov  ax, [bp+8]

;-1097 }
 LEAVE
 ret
; ENDP
 
; missing functions: 
; strlen
; strlen
; strcpy
; strlen
; strcpy
; eqstr
; eqstr
; eqstr
; strcpy
; mkneg
; strlen
; strcpy
; strcpy
; eqstr
; eqstr
; strcpy
; strcpy
; strcpy
; strcpy
; strcpy
; strcpy
; strcpy
; strcpy
; strcpy
; strcpy
; strcpy
; strcpy
; eqstr
; strcpy
; strcpy
; strlen
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; strlen
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; strcpy
; cputs
; cputs
; cputs
; cputs
; readRL
; strcpy
; instr2
; strcat1
; toupper
; instr2
; strcpy
; instr2
; strcpy
; strlen
; openR
; cputs
; cputs
; exitR
; creatR
; cputs
; cputs
; exitR
; cputs
; cputs
; cputs
; cputs
; cputs
; cputs
; cputs
; cputs
; eqstr
; cputs
; cputs
; pint
; openR
; cputs
; cputs
; exitR
; eqstr
; putch
; cputs
; openR
; cputs
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; strcpy
; instr1
; digit
; letter
; strcpy
; letter
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; eqstr
; strcpy
; eqstr
; letter
; digit
; writetty
; writetty
; fputcR
; mkneg
; mkneg
; readR
; fcloseR
; fcloseR
; exitR
; eqstr
; strcpy
; DosInt
; DosInt
; strlen
; Number of unresolved CALLs :  159
;use archive file: AR.C

;-1098 // AR.C Archive file for PLA.DE The MIT License (MIT) starting 1.1.2015  (c) 2015 Helmut Guenther

;Number of CALLs:    2 : writetty

writetty:  ; *** PROC ***
 mov  ah, 14
 mov  bx, 0
 int  16

;-1099 int putch(char c)  {if (_ c==10) {al=13; writetty();} al=c; writetty(); }

 ret
; ENDP
;Number of CALLs:    1 : putch

putch:  ; *** PROC ***
;Function : putch, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign byte  1099 NULL bp+4    c;
 ENTER  0,0
cmp byte [bp+4], 10
 jne @@putch640
 mov  al, 13
 call writetty
@@putch640:
 mov  al, [bp+4]
 call writetty

;-1100 int cputs(char *s) {char c;  while(*s) { c=*s; putch(c); s++; } }
 LEAVE
 ret
; ENDP
;Number of CALLs:   22 : cputs

cputs:  ; *** PROC ***
;Function : cputs, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1100 NULL bp+4    s
;  201 var sign byte  1100 NULL bp-2    c;
 ENTER  2,0
@@cputs641:
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 or  al, al
 je @@cputs642
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 mov byte [bp-2], al
 mov al, byte [bp-2]
 mov ah, 0
 push ax
 call putch
 add  sp, 2
 inc  word [bp+4]
 jmp @@cputs641
@@cputs642:

;-1101 int mkneg(int n) { n; __asm {neg ax} }
 LEAVE
 ret
; ENDP
;Number of CALLs:    3 : mkneg

mkneg:  ; *** PROC ***
;Function : mkneg, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word  1101 NULL bp+4    n;
 ENTER  0,0
 mov ax, [bp+4]
neg ax

;-1102 int prunsign(unsigned int n) { unsigned int e;
 LEAVE
 ret
; ENDP
;Number of CALLs:    1 : pint

pint:  ; *** PROC ***
;Function : pint, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word  1102 NULL bp+4    n
;  201 var sign word  1102 NULL bp-2    e;
 ENTER  2,0
 mov ax, [bp+4]
 cmp ax, 0
 jge @@pint643
 push 45
 call prc
 add  sp, 2
 push word [bp+4]
 call mkneg
 add  sp, 2
 mov word [bp+4], ax

;-1103   if (n >= 10) {e=n/10;  pint(e);}  n=n%10; n=n+'0'; putch(n); }

@@pint643:
 mov ax, [bp+4]
 cmp ax, 10 ;unsigned : 1
 jl  @@pint644
 mov ax, [bp+4]
 mov bx, 10
 cwd
 idiv bx
 mov word [bp-2], ax
 push word [bp-2]
 call pint
 add  sp, 2
@@pint644:
 mov ax, [bp+4]
 mov bx, 10
 cwd
 idiv bx
 mov ax, dx
 mov word [bp+4], ax
 mov ax, [bp+4]
 add ax, 48
 mov word [bp+4], ax
 push word [bp+4]
 call putch
 add  sp, 2

;-1104 int printint5(unsigned int j)  {
 LEAVE
 ret
; ENDP
;Number of CALLs:    1 : toupper

toupper:  ; *** PROC ***
;Function : toupper, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1104 NULL bp+4    s;
 ENTER  0,0
@@toupper645:
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 or  al, al
 je @@toupper646
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 cmp ax, 97 ;unsigned : 1
 jl  @@toupper647
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 cmp ax, 122
 jg  @@toupper648
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 sub ax, 32
 mov  bx, [bp+4]
 mov  [bx], al
@@toupper648:
@@toupper647:
 inc  word [bp+4]
 jmp @@toupper645
@@toupper646:

;-1105 //int head1  (char *s) {char c; do{c=*s; c=letter(c); s++; }while(c) *s=0; }


;-1106 int strlen(char *s) { int c; c=0; while (*s!=0) {s++; c++;} return c; }
 LEAVE
 ret
; ENDP
;Number of CALLs:    8 : strlen

strlen:  ; *** PROC ***
;Function : strlen, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1106 NULL bp+4    s
;  201 var sign word  1106 NULL bp-2    c;
 ENTER  2,0
 mov eax, 0
 mov word [bp-2], ax
@@strlen649:
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 cmp ax, 0
 je  @@strlen650
 inc  word [bp+4]
 inc  word [bp-2]
 jmp @@strlen649
@@strlen650:
 mov ax, [bp-2]
 jmp @@retn

;-1107 int strcpy1(char *s, char *t) {do { *s=*t; s++; t++; } while (*t!=0); *s=0; }

@@retn: LEAVE
 ret
; ENDP
;Number of CALLs:   27 : strcpy

strcpy:  ; *** PROC ***
;Function : strcpy, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1107 NULL bp+4    s
;  201 ptr sign byte  1107 NULL bp+6    t;
 ENTER  0,0
@@strcpy651:
 mov bx, [bp+6]
 mov al, [bx]
 mov ah, 0
 mov  bx, [bp+4]
 mov  [bx], al
 inc  word [bp+4]
 inc  word [bp+6]

;-1108   while (*t!=0); *s=0; return s; }

 mov bx, [bp+6]
 mov al, [bx]
 mov ah, 0
 cmp ax, 0
 je  @@strcpy652
 jmp @@strcpy651
@@strcpy652:
 mov eax, 0
 mov  bx, [bp+4]
 mov  [bx], al
 mov ax, [bp+4]
 jmp @@retn

;-1109 int strncpy(char *s, char *t, int n) { if (_ n==0) return;

@@retn: LEAVE
 ret
; ENDP
;Number of CALLs:    1 : instr1

instr1:  ; *** PROC ***
;Function : instr1, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1109 NULL bp+4    s
;  201 var sign byte  1109 NULL bp+6    c;
 ENTER  0,0
@@instr1653:
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 or  al, al
 je @@instr1654
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 cmp al, [bp+6]
 jne @@instr1655
 mov eax, 1
 jmp @@retn
@@instr1655:
 inc  word [bp+4]
 jmp @@instr1653
@@instr1654:
 mov eax, 0
 jmp @@retn

;-1110 int instr2(char *s, char c) { while(*s) { if (*s==c) return &s; s++;} return 0;}

@@retn: LEAVE
 ret
; ENDP
;Number of CALLs:    3 : instr2

instr2:  ; *** PROC ***
;Function : instr2, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1110 NULL bp+4    s
;  201 var sign byte  1110 NULL bp+6    c;
 ENTER  0,0
@@instr2656:
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 or  al, al
 je @@instr2657
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 cmp al, [bp+6]
 jne @@instr2658
 mov ax, [bp+4]
 jmp @@retn
@@instr2658:
 inc  word [bp+4]
 jmp @@instr2656
@@instr2657:
 mov eax, 0
 jmp @@retn

;-1111 int digit(char c){ if(c<'0') return 0; if(c>'9') return 0; return 1; }

@@retn: LEAVE
 ret
; ENDP
;Number of CALLs:    2 : digit

digit:  ; *** PROC ***
;Function : digit, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign byte  1111 NULL bp+4    c;
 ENTER  0,0
 mov al, [bp+4]
 cmp al, 48
 jge @@digit659
 mov eax, 0
 jmp @@retn
@@digit659:
 mov al, [bp+4]
 cmp al, 57
 jle @@digit660
 mov eax, 0
 jmp @@retn
@@digit660:
 mov eax, 1
 jmp @@retn

;-1112 int letter(char c) { if (digit(c)) return 1; if (c=='_') return 1;

@@retn: LEAVE
 ret
; ENDP
;Number of CALLs:    3 : letter

letter:  ; *** PROC ***
;Function : letter, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign byte  1112 NULL bp+4    c;
 ENTER  0,0
 mov al, byte [bp+4]
 mov ah, 0
 push ax
 call digit
 add  sp, 2
 or  al, al
 je @@letter661
 mov eax, 1
 jmp @@retn
@@letter661:
 mov al, [bp+4]
 cmp al, 95
 jne @@letter662
 mov eax, 1
 jmp @@retn

;-1113   if (c> 'z') return 0; if (c< '@') return 0;

@@letter662:
 mov al, [bp+4]
 cmp al, 122
 jle @@letter663
 mov eax, 0
 jmp @@retn
@@letter663:
 mov al, [bp+4]
 cmp al, 64
 jge @@letter664
 mov eax, 0
 jmp @@retn

;-1114   if (c> 'Z') { if (c< 'a') return 0; }  return 1; }

@@letter664:
 mov al, [bp+4]
 cmp al, 90
 jle @@letter665
 mov al, [bp+4]
 cmp al, 97
 jge @@letter666
 mov eax, 0
 jmp @@retn
@@letter666:
@@letter665:
 mov eax, 1
 jmp @@retn

;-1115 int alnum(char c) { if (digit(c)) return 1; if (c=='_') return 1;

@@retn: LEAVE
 ret
; ENDP
;Number of CALLs:   69 : eqstr

eqstr:  ; *** PROC ***
;Function : eqstr, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1115 NULL bp+4    p
;  201 ptr sign byte  1115 NULL bp+6    q;
 ENTER  0,0
@@eqstr667:
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 or  al, al
 je @@eqstr668

;-1116     if (*p != *q) return 0; p++; q++; }

 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 mov bx, [bp+6]
 cmp al, [bx]
 mov ah, 0
 je  @@eqstr669
 mov eax, 0
 jmp @@retn
@@eqstr669:
 inc  word [bp+4]
 inc  word [bp+6]

;-1117     if(*q) return 0; return 1; }

 jmp @@eqstr667
@@eqstr668:
 mov bx, [bp+6]
 mov al, [bx]
 mov ah, 0
 or  al, al
 je @@eqstr670
 mov eax, 0
 jmp @@retn
@@eqstr670:
 mov eax, 1
 jmp @@retn

;-1118 int strcat1(char *s, char *t) { while (*s != 0) s++; strcpy(s, t);  }

@@retn: LEAVE
 ret
; ENDP
;Number of CALLs:    1 : strcat1

strcat1:  ; *** PROC ***
;Function : strcat1, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1118 NULL bp+4    s
;  201 ptr sign byte  1118 NULL bp+6    t;
 ENTER  0,0
@@strcat1671:
 mov bx, [bp+4]
 mov al, [bx]
 mov ah, 0
 cmp ax, 0
 je  @@strcat1672
 inc  word [bp+4]
 jmp @@strcat1671
@@strcat1672:
 push word [bp+6]
 push word [bp+4]
 call strcpy
 add  sp, 4

;-1119 int basename(char *s) { char *p; p=0;
 LEAVE
 ret
; ENDP
;Number of CALLs:    2 : DosInt

DosInt:  ; *** PROC ***
 int  33
 jae short @@DosInt673
 inc  word [DOS_ERR]
@@DosInt673:

;-1120 int openR (char *s) { dx=s; ax=0x3D02;  DosInt(); }

 ret
; ENDP
;Number of CALLs:    3 : openR

openR:  ; *** PROC ***
;Function : openR, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1120 NULL bp+4    s;
 ENTER  0,0
 mov  dx, [bp+4]
 mov  ax, 15618
 call DosInt

;-1121 int creatR(char *s) { dx=s; cx=0; ax=0x3C00; DosInt(); }
 LEAVE
 ret
; ENDP
;Number of CALLs:    1 : creatR

creatR:  ; *** PROC ***
;Function : creatR, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1121 NULL bp+4    s;
 ENTER  0,0
 mov  dx, [bp+4]
 mov  cx, 0
 mov  ax, 15360
 call DosInt

;-1122 int readR (char *s, int fd) {dx=s; cx=1; bx=fd; ax=0x3F00; DosInt(); }
 LEAVE
 ret
; ENDP
;Number of CALLs:    1 : readR

readR:  ; *** PROC ***
;Function : readR, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1122 NULL bp+4    s
;  201 var sign word  1122 NULL bp+6    fd;
 ENTER  0,0
 mov  dx, [bp+4]
 mov  cx, 1
 mov  bx, [bp+6]
 mov  ax, 16128
 call DosInt

;-1123 int readRL(char *s, int fd, int len){dx=s; cx=len; bx=fd; ax=0x3F00; DosInt();}
 LEAVE
 ret
; ENDP
;Number of CALLs:    1 : readRL

readRL:  ; *** PROC ***
;Function : readRL, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1123 NULL bp+4    s
;  201 var sign word  1123 NULL bp+6    fd
;  202 var sign word  1123 NULL bp+8    len;
 ENTER  0,0
 mov  dx, [bp+4]
 mov  cx, [bp+8]
 mov  bx, [bp+6]
 mov  ax, 16128
 call DosInt

;-1124 int fputcR(char *n, int fd) { __asm{lea dx, [bp+4]}; /* = *n */
 LEAVE
 ret
; ENDP
;Number of CALLs:    1 : fputcR

fputcR:  ; *** PROC ***
;Function : fputcR, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1124 NULL bp+4    n
;  201 var sign word  1124 NULL bp+6    fd;
 ENTER  0,0
lea dx, [bp+4]

;-1125   cx=1; bx=fd; ax=0x4000; DosInt(); }

 mov  cx, 1
 mov  bx, [bp+6]
 mov  ax, 16384
 call DosInt

;-1126 int writeRL(char *s, int fd, int len){dx=s; cx=len; bx=fd; ax=0x4000; DosInt();}
 LEAVE
 ret
; ENDP
;Number of CALLs:    2 : fcloseR

fcloseR:  ; *** PROC ***
;Function : fcloseR, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word  1126 NULL bp+4    fd;
 ENTER  0,0
 mov  bx, [bp+4]
 mov  ax, 15872
 int  33

;-1127 int exitR(char c) {ah=0x4C; al=c; inth 0x21; }
 LEAVE
 ret
; ENDP
;Number of CALLs:    4 : exitR

exitR:  ; *** PROC ***
;Function : exitR, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign byte  1127 NULL bp+4    c;
 ENTER  0,0
 mov  ah, 76
 mov  al, [bp+4]
 int  33

;-1128 int setdta(char *s) {dx=s; ah=0x1A; inth 0x21; }
 LEAVE
 ret
; ENDP
;End of archive file. 
 
; missing functions:  All FUNCTIONs in place
LastFunctionByt:db 0E8h, 0, 0
pop ax
ret
 
;   # type sign width line used  address name   list of global variables

;    1 arr sign byte     2    2        0 Version1[16]
;    2 var sign byte     6    3        0 BSS
;    3 var sign byte     6   17        0 NASM
;    4 var sign byte     6    3        0 PROTECTED
;    5 var sign byte     6    6        0 LIST
;    6 def unsg byte     7    -        0 LSTART=200
;    7 def unsg byte     8    -        0 VARMAX=300
;    8 def unsg byte     9    -        0 FUNCMAX=300
;    9 def unsg byte    10    -        0 CALLMAX=2000
;   10 def unsg byte    11    -        0 IDLENMAX=16
;   11 def unsg byte    13    -        0 T_NAME=256
;   12 def unsg byte    14    -        0 T_CONST=257
;   13 def unsg byte    15    -        0 T_STRING=258
;   14 def unsg byte    16    -        0 T_INCLUDE=510
;   15 def unsg byte    17    -        0 T_DEFINE=511
;   16 def unsg byte    18    -        0 T_RETURN=512
;   17 def unsg byte    19    -        0 T_IF=513
;   18 def unsg byte    20    -        0 T_ELSE=514
;   19 def unsg byte    21    -        0 T_WHILE=515
;   20 def unsg byte    22    -        0 T_DO=516
;   21 def unsg byte    23    -        0 T_INT=517
;   22 def unsg byte    24    -        0 T_ASM=518
;   23 def unsg byte    25    -        0 T_ASMBLOCK=519
;   24 def unsg byte    26    -        0 T_EMIT=520
;   25 def unsg byte    27    -        0 T_GOTO=521
;   26 def unsg byte    28    -        0 T_VOID=529
;   27 def unsg byte    29    -        0 T_CHAR=530
;   28 def unsg byte    30    -        0 T_SIGNED=531
;   29 def unsg byte    31    -        0 T_UNSIGNED=532
;   30 def unsg byte    32    -        0 T_LONG=533
;   31 def unsg byte    33    -        0 T_SHORT=534
;   32 def unsg byte    34    -        0 T_UINT32=545
;   33 def unsg byte    35    -        0 T_INTH=600
;   34 def unsg byte    36    -        0 T_IFCARRY=601
;   35 def unsg byte    37    -        0 T_IFZERO=602
;   36 def unsg byte    38    -        0 T_EQ=806
;   37 def unsg byte    39    -        0 T_NE=807
;   38 def unsg byte    40    -        0 T_GE=811
;   39 def unsg byte    41    -        0 T_LE=824
;   40 def unsg byte    42    -        0 T_PLUSPLUS=1219
;   41 def unsg byte    43    -        0 T_MINUSMINUS=1225
;   42 def unsg byte    44    -        0 T_PLUSASS=1230
;   43 def unsg byte    45    -        0 T_MINUSASS=1231
;   44 def unsg byte    46    -        0 T_MULASS=1232
;   45 def unsg byte    47    -        0 T_DIVASS=1233
;   46 def unsg byte    48    -        0 T_ANDASS=1234
;   47 def unsg byte    49    -        0 T_ORASS=1235
;   48 def unsg byte    50    -        0 T_LESSLESS=1240
;   49 def unsg byte    51    -        0 T_GREATGREAT=1241
;   50 def unsg byte    52    -        0 COMAX=3000
;   51 def unsg byte    53    -        0 CMDLENMAX=67
;   52 var unsg dwrd    54 NULL        0 LDATAORIG
;   53 var unsg dwrd    54    5        0 ldata
;   54 var sign dwrd    54    2        0 LONG0
;   55 var unsg dwrd    55    4        0 ORGDATAORIG
;   56 var unsg dwrd    55   12        0 orgData
;   57 arr sign byte    56    4    30000 co[3000]
;   58 var sign word    56    4        0 maxco
;   59 var sign word    56    3        0 maxco1
;   60 arr sign byte    57    2    33000 coname[67]
;   61 ptr sign byte    57    5        0 cloc
;   62 arr sign byte    58    2    33067 locname[67]
;   63 var sign word    58    3        0 maxloc
;   64 var sign word    59    7        0 fdin
;   65 var sign word    59    7        0 fdout
;   66 arr sign byte    59   96    33134 symbol[128]
;   67 arr sign byte    60   13    33262 fname[67]
;   68 arr sign byte    60   14    33329 namein[67]
;   69 arr sign byte    61    7    33396 namelst[67]
;   70 arr sign byte    61    5        0 archivename[4]
;   71 var sign word    62   55        0 token
;   72 var sign byte    62    2        0 globC
;   73 var sign word    62    3        0 spalte
;   74 var sign byte    63   28        0 thechar
;   75 var sign word    63    9        0 iscmp
;   76 var sign word    63    4        0 nconst
;   77 var sign word    64    3        0 nreturn
;   78 var sign word    64   16        0 nlabel
;   79 var sign word    64    3        0 callrecursive
;   80 var unsg dwrd    65   55        0 lexvalL
;   81 var sign byte    65    2        0 islong
;   82 var sign byte    65 NULL        0 isldata
;   83 var sign word    66    7        0 typei
;   84 var sign byte    66   10        0 istype
;   85 arr sign byte    66   12    33463 GType[300]
;   86 var sign word    67    7        0 signi
;   87 var sign byte    67    8        0 issign
;   88 arr sign byte    67    6    33763 GSign[300]
;   89 var sign word    68   10        0 widthi
;   90 var sign word    68   28        0 wi
;   91 var sign byte    68   30        0 iswidth
;   92 arr sign byte    68    6    34063 GWidth[300]
;   93 var sign word    69   38        0 GTop
;   94 var sign word    69   21        0 LTop
;   95 arr sign word    70    5    34363 GLino[300]
;   96 arr sign word    71    7    34963 GUsed[300]
;   97 arr sign dwrd    72   12    35563 GData[300]
;   98 arr sign dwrd    73    5    36763 GAdr[300]
;   99 arr sign word    74    7    37963 GName[300]
;  100 var sign word    75   13        0 FTop
;  101 arr sign byte    76    2    38563 FWidth[300]
;  102 arr sign word    77    2    38863 FLino[300]
;  103 arr sign word    78    4    39463 FCalls[300]
;  104 arr sign word    79    5    40063 FName[300]
;  105 var sign word    80    9        0 CTop
;  106 arr sign word    81    5    40663 CName[2000]
;  107 arr sign byte    82    5    44663 CUnres[2000]
;  108 arr sign byte    83    4        0 Ls[11]
;  109 arr sign byte    84   27        0 NA[32]
;  110 arr sign byte    85    4        0 NB[32]
;  111 arr sign byte    86    5    46663 fgetsdest[128]
;  112 ptr unsg byte    86   13        0 CNameTop
;  113 ptr unsg byte    87   10        0 fgetsp
;  114 var unsg word    87    5        0 segE
;  115 var unsg word    88   13        0 lineno
;  116 var unsg word    88    2        0 linenoinclude
;  117 ptr unsg byte    89    6        0 pt
;  118 ptr unsg byte    89    8        0 p1
;  119 var sign word    90   10        0 DOS_ERR
;  120 var sign word    90    5        0 DOS_NoBytes
;  121 var sign byte    90    3        0 DOS_ByteRead
;  122 var sign dwrd    92 NULL  2000000 varL1
;  123 var sign word    92 NULL  2000004 vari1
;  124 arr unsg word    92 NULL  2000006 vari2[6]
;  125 var sign byte    93 NULL  2000012 varc1
;  126 var sign dwrd    93 NULL  2000013 varL2
;  127 arr sign dwrd    94 NULL  2000017 arrL1[12]
;  128 var sign dwrd    94 NULL  2000029 varL4
;  129 var sign byte    94 NULL  2000033 chc2
;  130 arr sign byte   109    2    46791 doglobName[16]
;  131 var sign word   289    1        0 sd
;  132 var sign byte   290   13        0 un
;  133 var sign byte   291 NULL        0 ty
;  134 arr sign byte   292 NULL    46807 md[3]
;  135 var sign word   292    6        0 mod1
;  136 var sign word   292    7        0 mod2
;  137 arr sign word   293 NULL    46810 ir[3]
;  138 var sign word   293   14        0 irg1
;  139 var sign word   293    6        0 irg2
;  140 arr sign word   294 NULL    46816 ix[3]
;  141 var sign word   294    7        0 idx1
;  142 var sign word   294    6        0 idx2
;  143 arr sign byte   295 NULL    46822 is[3]
;  144 var sign word   295    2        0 ids1
;  145 var sign word   295    3        0 ids2
;  146 arr sign byte   296 NULL    46825 iw[3]
;  147 var sign word   296    3        0 idw1
;  148 var sign word   296    6        0 idw2
;  149 arr sign byte   297 NULL    46828 it[3]
;  150 var sign word   297    2        0 idt1
;  151 var sign word   297    3        0 idt2
;  152 arr sign dwrd   298 NULL    46831 ia[3]
;  153 var sign word   298 NULL        0 ida1
;  154 var sign word   298 NULL        0 ida2
;  155 arr sign byte   299 NULL    46843 ic[3]
;  156 var sign word   299 NULL        0 idac1
;  157 var sign word   299 NULL        0 idac2
;  158 arr sign dwrd   300 NULL    46846 iv[3]
;  159 var sign dwrd   300 NULL        0 val1
;  160 var sign dwrd   300    2        0 val2
;  161 arr sign byte   367   17    46858 ops[6]
;  162 arr sign byte   446    3        0 printregstr[74]
;  163 arr sign word   572    2    46864 docalltype[10]
;  164 arr sign word   572    2    46884 docallvalue[10]
;  165 arr sign byte   573    2    46904 procname[16]
;  166 ptr sign byte   626    1        0 arglen
;  167 ptr sign byte   626    3        0 argv
;  168 var sign byte   696    4        0 wasfunction
;  169 arr sign byte   827    2    46920 symboltemp[80]
;  170 var unsg word  1010    2        0 MAXUI
;  171 arr unsg byte  1062 NULL        0 GDT1[16]


;   # Calls Line Width  Name   list of functions

;    0 NULL   95 void   ttt
;    1    4   97 void   a
;    2   19   98 void   v
;    3    6  100 void   checknamelen
;    4   12  102 void   pwi
;    5    6  106 void   storeName
;    6    1  110 void   doLdata
;    7    1  133 void   doglob
;    8   13  185 word   gettypes
;    9    4  195 void   printName
;   10   11  199 word   searchname
;   11    4  203 word   checkName
;   12   10  208 word   typeName
;   13    3  218 void   name1
;   14    1  220 void   storecall
;   15    2  227 void   storefunc
;   16    2  234 void   addlocal
;   17    1  241 word   checkFunction
;   18    2  247 void   dofunc
;   19    1  283 word   isvariable
;   20    3  303 word   pexpr
;   21    1  310 void   constantexpr
;   22    3  320 void   exprstart
;   23    1  322 word   simplexpr
;   24    1  368 word   getop
;   25    4  388 word   prleftreg
;   26 NULL  389 word   prleftvar
;   27 NULL  391 word   printvar
;   28    3  393 word   doreg1
;   29    6  424 word   checkreg
;   30    9  449 void   printreg
;   31    6  456 word   printpri
;   32    2  462 word   expr
;   33    4  507 word   compoundass
;   34    2  513 word   dovar1
;   35    8  530 word   rterm
;   36    1  540 word   doassign
;   37    1  552 word   domul
;   38    2  557 word   doidiv
;   39    1  570 word   domod
;   40    2  575 void   docall1
;   41 NULL  618 word   main
;   42    3  625 word   getfirstchar
;   43    1  628 word   getarg
;   44    1  670 word   ltrim
;   45    2  672 word   parse
;   46    2  682 word   checkcalls
;   47    1  697 word   doar
;   48    1  717 word   getfunctionhead
;   49    1  724 void   doinclude
;   50    1  738 word   dodefine
;   51    8  760 word   stmt
;   52    1  784 word   doemit
;   53    3  788 word   cmpneg
;   54    9  801 word   prlabel
;   55    3  802 word   prjump
;   56    1  803 word   doif
;   57    1  808 word   doifcarry
;   58    1  811 word   doifzero
;   59    1  814 word   dodo
;   60    1  818 word   dowhile
;   61    4  821 word   isrelational
;   62   23  828 word   getlex
;   63    1  885 word   convertdefine
;   64    1  891 dwrd   getdigit
;   65    1  904 word   getstring
;   66   31  907 word   next
;   67   89  908 word   istoken
;   68   40  909 word   expect
;   69    6  912 word   eprc
;   70    5  913 word   eprs
;   71   49  914 word   prc
;   72    3  916 word   prscomment
;   73    8  918 word   prnl
;   74  276  920 word   prs
;   75    2  924 word   eprnum
;   76   19  926 word   pint1
;   77   13  928 word   prunsign1
;   78   29  931 word   printint51
;   79    2  935 word   fgets1
;   80    1  939 word   printinputline
;   81    2  947 word   end1
;   82   51  948 word   error1
;   83    2  957 word   listproc
;   84    2  965 word   listvar
;   85    1  983 word   listcall
;   86    1  985 word   calllisting
;   87    1  991 word   countcalls
;   88    1  996 word   listfunc
;   89    1 1000 word   funclisting
;   90    1 1011 word   epilog
;   91    1 1044 word   memresize
;   92    1 1046 word   memalloc
;   93 NULL 1049 word   copyF
;   94    5 1052 word   loadName
;   95    1 1055 word   to_far
;   96   10 1058 word   from_far
;   97    4 1063 word   isvirtual86
;   98    4 1064 word   is32bit
;   99    1 1065 word   INITCPU32
;  100 NULL 1082 void   to32
;  101 NULL 1083 void   from32
;  102 NULL 1084 void   prLr
;  103   19 1085 void   prL
;  104    1 1086 void   prf
;  105    1 1089 void   ultoar
;  106    2 1093 word   ultoaL
;  107    4 1098 word   writetty
;  108    3 1099 word   putch
;  109   22 1100 word   cputs
;  110    4 1101 word   mkneg
;  111    2 1102 word   pint
;  112    1 1104 word   toupper
;  113    8 1106 word   strlen
;  114   28 1107 word   strcpy
;  115    1 1109 word   instr1
;  116    3 1110 word   instr2
;  117    3 1111 word   digit
;  118    3 1112 word   letter
;  119   69 1115 word   eqstr
;  120    1 1118 word   strcat1
;  121    7 1119 word   DosInt
;  122    3 1120 word   openR
;  123    1 1121 word   creatR
;  124    1 1122 word   readR
;  125    1 1123 word   readRL
;  126    1 1124 word   fputcR
;  127    2 1126 word   fcloseR
;  128    4 1127 word   exitR
;  129 NULL 1128 word   LastFunctionByt

;    #  addr name   list of CALLs

;    0   951 prs
;    1   955 printName
;    2   969 prc
;    3   973 printName
;    4   983 prc
;    5  1002 strlen
;    6  1009 error1
;    7  1022 prs
;    8  1026 prs
;    9  1030 prs
;   10  1034 prs
;   11  1050 strlen
;   12  1057 to_far
;   13  1083 error1
;   14  1090 error1
;   15  1097 checknamelen
;   16  1110 checkName
;   17  1120 error1
;   18  1127 istoken
;   19  1135 expect
;   20  1142 expect
;   21  1149 prs
;   22  1153 prL
;   23  1157 prs
;   24  1161 prs
;   25  1165 prs
;   26  1169 prL
;   27  1173 prc
;   28  1177 storeName
;   29  1187 expect
;   30  1214 error1
;   31  1221 error1
;   32  1228 checknamelen
;   33  1241 checkName
;   34  1251 error1
;   35  1258 istoken
;   36  1266 istoken
;   37  1274 prs
;   38  1278 prunsign1
;   39  1288 prs
;   40  1292 prunsign1
;   41  1302 prs
;   42  1306 prs
;   43  1310 prs
;   44  1314 prs
;   45  1318 prs
;   46  1322 prs
;   47  1326 prs
;   48  1330 prs
;   49  1334 prL
;   50  1338 prs
;   51  1342 prs
;   52  1346 prs
;   53  1350 expect
;   54  1357 expect
;   55  1364 error1
;   56  1371 prs
;   57  1375 prs
;   58  1379 prs
;   59  1383 strcpy
;   60  1390 expect
;   61  1397 istoken
;   62  1405 prc
;   63  1409 prscomment
;   64  1420 prc
;   65  1424 prs
;   66  1428 strlen
;   67  1435 istoken
;   68  1443 prc
;   69  1447 expect
;   70  1454 prL
;   71  1458 istoken
;   72  1466 expect
;   73  1473 error1
;   74  1480 prs
;   75  1484 prs
;   76  1488 prs
;   77  1492 prs
;   78  1496 prs
;   79  1500 prs
;   80  1504 istoken
;   81  1512 prc
;   82  1516 istoken
;   83  1524 expect
;   84  1531 prL
;   85  1535 prunsign1
;   86  1545 strcpy
;   87  1552 storeName
;   88  1562 expect
;   89  1598 loadName
;   90  1607 prs
;   91  1611 prs
;   92  1615 prc
;   93  1619 pint1
;   94  1625 prc
;   95  1642 checkName
;   96  1652 error1
;   97  1673 loadName
;   98  1682 eqstr
;   99  1688 loadName
;  100  1697 eqstr
;  101  1714 istoken
;  102  1722 istoken
;  103  1730 istoken
;  104  1738 istoken
;  105  1746 istoken
;  106  1754 istoken
;  107  1762 istoken
;  108  1770 istoken
;  109  1778 istoken
;  110  1786 istoken
;  111  1794 name1
;  112  1806 error1
;  113  1813 getlex
;  114  1832 error1
;  115  1839 error1
;  116  1846 storeName
;  117  1868 error1
;  118  1875 storeName
;  119  1894 error1
;  120  1901 checkName
;  121  1911 error1
;  122  1918 storeName
;  123  1946 from_far
;  124  1955 eqstr
;  125  1980 checknamelen
;  126  1993 strcpy
;  127  2000 checkFunction
;  128  2014 error1
;  129  2021 storefunc
;  130  2031 prs
;  131  2035 prs
;  132  2039 prs
;  133  2043 expect
;  134  2050 istoken
;  135  2058 typeName
;  136  2067 addlocal
;  137  2076 istoken
;  138  2084 expect
;  139  2091 expect
;  140  2098 isvariable
;  141  2109 typeName
;  142  2118 checknamelen
;  143  2131 addlocal
;  144  2140 istoken
;  145  2148 expect
;  146  2155 expect
;  147  2162 istoken
;  148  2170 expect
;  149  2177 listproc
;  150  2186 prs
;  151  2190 mkneg
;  152  2196 pint1
;  153  2202 prs
;  154  2206 istoken
;  155  2214 stmt
;  156  2219 prs
;  157  2223 prs
;  158  2227 prs
;  159  2231 prs
;  160  2235 prs
;  161  2239 strlen
;  162  2246 strcpy
;  163  2253 strcpy
;  164  2405 expect
;  165  2412 eqstr
;  166  2418 constantexpr
;  167  2431 checkreg
;  168  2440 doreg1
;  169  2447 exprstart
;  170  2457 prs
;  171  2461 prs
;  172  2465 expect
;  173  2498 getlex
;  174  2505 typeName
;  175  2514 searchname
;  176  2525 gettypes
;  177  2534 isrelational
;  178  2547 error1
;  179  2554 expect
;  180  2561 prs
;  181  2565 gettypes
;  182  2574 pwi
;  183  2578 v
;  184  2580 prs
;  185  2584 prL
;  186  2588 cmpneg
;  187  2595 prs
;  188  2599 expect
;  189  2616 eqstr
;  190  2622 simplexpr
;  191  2632 expr
;  192  2649 getlex
;  193  2656 istoken
;  194  2664 prs
;  195  2668 prL
;  196  2672 typeName
;  197  2681 docall1
;  198  2689 error1
;  199  2696 checkreg
;  200  2705 doreg1
;  201  2712 searchname
;  202  2723 gettypes
;  203  2732 error1
;  204  2739 isrelational
;  205  2752 error1
;  206  2759 istoken
;  207  2767 error1
;  208  2774 istoken
;  209  2782 prs
;  210  2786 pwi
;  211  2790 v
;  212  2792 prs
;  213  2796 prL
;  214  2800 prs
;  215  2804 loadName
;  216  2813 prs
;  217  2817 typeName
;  218  2826 checkreg
;  219  2835 prs
;  220  2839 printreg
;  221  2848 pwi
;  222  2852 v
;  223  2854 prs
;  224  2858 printreg
;  225  2867 error1
;  226  2874 searchname
;  227  2885 gettypes
;  228  2894 error1
;  229  2901 prs
;  230  2905 printreg
;  231  2914 error1
;  232  2921 prs
;  233  2925 a
;  234  2927 pwi
;  235  2931 v
;  236  2933 prs
;  237  2937 loadName
;  238  2946 prs
;  239  2962 istoken
;  240  2970 strcpy
;  241  2977 istoken
;  242  2985 strcpy
;  243  2992 istoken
;  244  3000 strcpy
;  245  3007 istoken
;  246  3015 strcpy
;  247  3022 istoken
;  248  3030 strcpy
;  249  3037 istoken
;  250  3045 strcpy
;  251  3052 istoken
;  252  3060 strcpy
;  253  3067 istoken
;  254  3075 strcpy
;  255  3082 istoken
;  256  3090 strcpy
;  257  3097 istoken
;  258  3105 strcpy
;  259  3112 istoken
;  260  3120 strcpy
;  261  3137 prnl
;  262  3142 prs
;  263  3146 prs
;  264  3150 printreg
;  265  3204 getop
;  266  3210 getlex
;  267  3217 isrelational
;  268  3230 error1
;  269  3237 strcpy
;  270  3244 prleftreg
;  271  3254 istoken
;  272  3262 prleftreg
;  273  3272 prs
;  274  3276 prL
;  275  3280 typeName
;  276  3289 checkreg
;  277  3298 prleftreg
;  278  3308 prs
;  279  3312 printreg
;  280  3321 searchname
;  281  3332 gettypes
;  282  3341 eqstr
;  283  3347 strcpy
;  284  3354 strcpy
;  285  3361 prleftreg
;  286  3371 prs
;  287  3375 pwi
;  288  3379 a
;  289  3381 pwi
;  290  3385 v
;  291  3387 cmpneg
;  292  3394 prs
;  293  3398 expect
;  294  3414 strlen
;  295  3421 eqstr
;  296  3427 eqstr
;  297  3433 eqstr
;  298  3439 eqstr
;  299  3445 eqstr
;  300  3451 eqstr
;  301  3457 eqstr
;  302  3463 eqstr
;  303  3469 eqstr
;  304  3475 eqstr
;  305  3481 eqstr
;  306  3487 eqstr
;  307  3493 eqstr
;  308  3499 eqstr
;  309  3505 eqstr
;  310  3511 eqstr
;  311  3517 eqstr
;  312  3523 eqstr
;  313  3529 eqstr
;  314  3535 eqstr
;  315  3541 eqstr
;  316  3547 eqstr
;  317  3553 strlen
;  318  3560 eqstr
;  319  3566 eqstr
;  320  3572 eqstr
;  321  3578 eqstr
;  322  3584 eqstr
;  323  3590 eqstr
;  324  3596 eqstr
;  325  3602 eqstr
;  326  3608 eqstr
;  327  3646 prc
;  328  3650 prc
;  329  3654 prc
;  330  3658 prc
;  331  3662 prc
;  332  3677 printreg
;  333  3686 printreg
;  334  3695 printreg
;  335  3748 istoken
;  336  3756 prs
;  337  3760 prL
;  338  3764 typeName
;  339  3773 checkreg
;  340  3782 doreg1
;  341  3789 docall1
;  342  3797 searchname
;  343  3808 gettypes
;  344  3817 istoken
;  345  3825 istoken
;  346  3833 expect
;  347  3840 searchname
;  348  3851 expect
;  349  3858 expect
;  350  3865 gettypes
;  351  3874 error1
;  352  3881 istoken
;  353  3889 error1
;  354  3896 prs
;  355  3900 pwi
;  356  3904 v
;  357  3906 istoken
;  358  3914 error1
;  359  3921 prs
;  360  3925 pwi
;  361  3929 v
;  362  3931 istoken
;  363  3939 compoundass
;  364  3951 istoken
;  365  3959 compoundass
;  366  3971 istoken
;  367  3979 compoundass
;  368  3991 istoken
;  369  3999 compoundass
;  370  4011 istoken
;  371  4019 error1
;  372  4026 istoken
;  373  4034 error1
;  374  4041 istoken
;  375  4049 expr
;  376  4054 doassign
;  377  4063 dovar1
;  378  4070 istoken
;  379  4078 rterm
;  380  4084 istoken
;  381  4092 rterm
;  382  4098 istoken
;  383  4106 rterm
;  384  4112 istoken
;  385  4120 rterm
;  386  4126 istoken
;  387  4134 rterm
;  388  4140 istoken
;  389  4148 rterm
;  390  4154 istoken
;  391  4162 domul
;  392  4168 istoken
;  393  4176 doidiv
;  394  4183 istoken
;  395  4191 domod
;  396  4197 isrelational
;  397  4210 rterm
;  398  4216 cmpneg
;  399  4247 error1
;  400  4254 prnl
;  401  4259 prs
;  402  4263 prs
;  403  4267 gettypes
;  404  4276 pwi
;  405  4280 v
;  406  4282 prs
;  407  4286 expect
;  408  4293 prL
;  409  4322 gettypes
;  410  4331 prs
;  411  4335 v
;  412  4337 prnl
;  413  4342 prs
;  414  4346 prs
;  415  4350 prs
;  416  4354 prs
;  417  4358 prnl
;  418  4363 prs
;  419  4367 prs
;  420  4371 a
;  421  4373 prs
;  422  4377 v
;  423  4379 prs
;  424  4383 prs
;  425  4387 prs
;  426  4391 prs
;  427  4395 prc
;  428  4399 printpri
;  429  4408 prs
;  430  4412 prc
;  431  4416 printName
;  432  4426 prs
;  433  4430 prnl
;  434  4435 prs
;  435  4439 prc
;  436  4443 printpri
;  437  4452 prs
;  438  4456 v
;  439  4488 istoken
;  440  4496 prnl
;  441  4501 prs
;  442  4505 prc
;  443  4509 printpri
;  444  4518 prs
;  445  4522 prL
;  446  4526 typeName
;  447  4535 searchname
;  448  4546 istoken
;  449  4554 searchname
;  450  4565 expect
;  451  4572 expect
;  452  4579 gettypes
;  453  4588 error1
;  454  4595 eqstr
;  455  4601 dovar1
;  456  4638 gettypes
;  457  4647 prs
;  458  4651 v
;  459  4653 prs
;  460  4657 printpri
;  461  4666 prs
;  462  4670 a
;  463  4672 prs
;  464  4676 prs
;  465  4680 prunsign1
;  466  4690 v
;  467  4692 prs
;  468  4696 prs
;  469  4700 prs
;  470  4704 printName
;  471  4714 prs
;  472  4718 printpri
;  473  4727 prs
;  474  4731 pwi
;  475  4735 v
;  476  4737 prs
;  477  4741 printpri
;  478  4760 rterm
;  479  4766 istoken
;  480  4774 prs
;  481  4778 prL
;  482  4782 prs
;  483  4786 error1
;  484  4813 istoken
;  485  4821 prs
;  486  4825 prL
;  487  4829 prs
;  488  4833 prs
;  489  4837 typeName
;  490  4846 searchname
;  491  4857 error1
;  492  4864 gettypes
;  493  4873 error1
;  494  4880 error1
;  495  4887 prs
;  496  4891 v
;  497  4893 prs
;  498  4897 prs
;  499  4911 doidiv
;  500  4918 prs
;  501  4980 checknamelen
;  502  4993 strcpy
;  503  5000 storecall
;  504  5010 expect
;  505  5017 istoken
;  506  5025 error1
;  507  5032 istoken
;  508  5040 istoken
;  509  5048 eprs
;  510  5053 eprs
;  511  5058 eprc
;  512  5063 eprnum
;  513  5070 eprs
;  514  5075 eprc
;  515  5080 eprs
;  516  5085 eprc
;  517  5090 eprs
;  518  5095 istoken
;  519  5103 name1
;  520  5109 searchname
;  521  5120 istoken
;  522  5128 checkreg
;  523  5137 searchname
;  524  5148 error1
;  525  5155 istoken
;  526  5163 expect
;  527  5170 prs
;  528  5174 pint1
;  529  5180 prs
;  530  5184 prs
;  531  5188 prs
;  532  5192 prc
;  533  5196 pint1
;  534  5202 prs
;  535  5206 prs
;  536  5210 v
;  537  5212 prs
;  538  5216 gettypes
;  539  5225 prs
;  540  5229 pwi
;  541  5233 v
;  542  5235 prs
;  543  5239 pwi
;  544  5243 v
;  545  5245 prs
;  546  5249 prs
;  547  5253 v
;  548  5255 prs
;  549  5259 prs
;  550  5263 printreg
;  551  5272 prs
;  552  5276 prs
;  553  5280 prs
;  554  5284 pint1
;  555  5295 getarg
;  556  5302 memresize
;  557  5312 error1
;  558  5319 memalloc
;  559  5328 error1
;  560  5335 getfirstchar
;  561  5348 cputs
;  562  5354 parse
;  563  5360 cputs
;  564  5366 checkcalls
;  565  5377 epilog
;  566  5397 fgets1
;  567  5435 cputs
;  568  5441 cputs
;  569  5447 readRL
;  570  5454 prnl
;  571  5459 strcpy
;  572  5466 instr2
;  573  5473 strcat1
;  574  5481 toupper
;  575  5489 instr2
;  576  5496 strcpy
;  577  5503 instr2
;  578  5510 ltrim
;  579  5516 strcpy
;  580  5523 strlen
;  581  5530 openR
;  582  5536 cputs
;  583  5542 cputs
;  584  5548 exitR
;  585  5554 creatR
;  586  5561 cputs
;  587  5567 cputs
;  588  5573 exitR
;  589  5579 prs
;  590  5583 prs
;  591  5587 prs
;  592  5591 pint1
;  593  5597 prs
;  594  5601 prs
;  595  5605 prs
;  596  5609 prs
;  597  5613 prs
;  598  5617 prs
;  599  5621 prs
;  600  5625 pint1
;  601  5631 isvirtual86
;  602  5643 prs
;  603  5647 prs
;  604  5651 is32bit
;  605  5659 prs
;  606  5663 prs
;  607  5667 prs
;  608  5671 prs
;  609  5675 prs
;  610  5679 prL
;  611  5683 isvirtual86
;  612  5695 cputs
;  613  5701 cputs
;  614  5707 is32bit
;  615  5715 cputs
;  616  5721 cputs
;  617  5727 INITCPU32
;  618  5737 prs
;  619  5741 isvirtual86
;  620  5753 cputs
;  621  5759 cputs
;  622  5765 is32bit
;  623  5773 cputs
;  624  5779 cputs
;  625  5785 isvirtual86
;  626  5797 prs
;  627  5801 prs
;  628  5805 is32bit
;  629  5813 prs
;  630  5817 prs
;  631  5835 getlex
;  632  5842 istoken
;  633  5850 istoken
;  634  5858 dodefine
;  635  5867 istoken
;  636  5875 doinclude
;  637  5885 error1
;  638  5892 typeName
;  639  5901 dofunc
;  640  5908 istoken
;  641  5916 doLdata
;  642  5924 doglob
;  643  5948 prs
;  644  5952 from_far
;  645  5961 from_far
;  646  5970 eqstr
;  647  5976 prs
;  648  5980 prs
;  649  5984 doar
;  650  5989 prs
;  651  5993 cputs
;  652  6045 cputs
;  653  6051 pint
;  654  6056 prs
;  655  6060 printint51
;  656  6071 openR
;  657  6077 cputs
;  658  6083 cputs
;  659  6089 exitR
;  660  6095 prs
;  661  6099 prs
;  662  6103 getfirstchar
;  663  6116 getfunctionhead
;  664  6132 from_far
;  665  6141 eqstr
;  666  6147 prs
;  667  6151 printint51
;  668  6162 prs
;  669  6166 prs
;  670  6170 dofunc
;  671  6177 prs
;  672  6181 checkcalls
;  673  6192 putch
;  674  6198 cputs
;  675  6204 error1
;  676  6227 getlex
;  677  6234 istoken
;  678  6242 getlex
;  679  6266 prs
;  680  6270 prs
;  681  6274 openR
;  682  6280 prs
;  683  6284 prs
;  684  6288 cputs
;  685  6294 error1
;  686  6301 parse
;  687  6307 prs
;  688  6311 prs
;  689  6315 getfirstchar
;  690  6328 getlex
;  691  6355 eqstr
;  692  6361 getlex
;  693  6368 eqstr
;  694  6374 getlex
;  695  6381 eqstr
;  696  6387 getlex
;  697  6394 eqstr
;  698  6400 getlex
;  699  6407 error1
;  700  6414 getlex
;  701  6421 eqstr
;  702  6427 getlex
;  703  6434 prs
;  704  6438 strcpy
;  705  6445 prs
;  706  6449 error1
;  707  6456 getlex
;  708  6463 expect
;  709  6470 error1
;  710  6477 checknamelen
;  711  6490 storeName
;  712  6500 expect
;  713  6518 istoken
;  714  6526 istoken
;  715  6534 stmt
;  716  6539 istoken
;  717  6547 doif
;  718  6552 istoken
;  719  6560 dodo
;  720  6565 istoken
;  721  6573 dowhile
;  722  6581 istoken
;  723  6589 prs
;  724  6593 name1
;  725  6599 prs
;  726  6603 expect
;  727  6610 prs
;  728  6614 next
;  729  6619 prc
;  730  6623 next
;  731  6628 getlex
;  732  6635 istoken
;  733  6643 prs
;  734  6647 next
;  735  6652 prc
;  736  6656 next
;  737  6661 getlex
;  738  6668 error1
;  739  6675 istoken
;  740  6683 prs
;  741  6687 expect
;  742  6694 prL
;  743  6698 expect
;  744  6705 istoken
;  745  6713 doifcarry
;  746  6723 istoken
;  747  6731 doifzero
;  748  6740 istoken
;  749  6748 doemit
;  750  6755 istoken
;  751  6763 istoken
;  752  6771 exprstart
;  753  6781 prs
;  754  6785 expect
;  755  6792 prs
;  756  6796 prs
;  757  6800 prc
;  758  6804 expect
;  759  6811 expect
;  760  6818 exprstart
;  761  6828 expect
;  762  6842 prs
;  763  6846 getlex
;  764  6853 prL
;  765  6857 getlex
;  766  6864 prc
;  767  6868 expect
;  768  6886 prs
;  769  6890 prs
;  770  6894 prs
;  771  6898 prs
;  772  6902 prs
;  773  6906 prunsign1
;  774  6916 prs
;  775  6920 prs
;  776  6924 prunsign1
;  777  6934 prs
;  778  6938 prs
;  779  6942 prs
;  780  6946 error1
;  781  6963 prs
;  782  6967 prs
;  783  6971 pint1
;  784  6977 prc
;  785  6990 prs
;  786  6994 prs
;  787  6998 pint1
;  788  7019 pexpr
;  789  7025 pint1
;  790  7031 stmt
;  791  7036 istoken
;  792  7044 prjump
;  793  7051 prlabel
;  794  7059 stmt
;  795  7064 prlabel
;  796  7072 prlabel
;  797  7096 prs
;  798  7100 prs
;  799  7104 pint1
;  800  7110 stmt
;  801  7115 prlabel
;  802  7138 prs
;  803  7142 prs
;  804  7146 pint1
;  805  7152 stmt
;  806  7157 prlabel
;  807  7182 prlabel
;  808  7190 stmt
;  809  7195 expect
;  810  7202 pexpr
;  811  7208 pint1
;  812  7214 prjump
;  813  7221 prlabel
;  814  7247 prlabel
;  815  7255 pexpr
;  816  7261 pint1
;  817  7267 stmt
;  818  7272 prjump
;  819  7279 prlabel
;  820  7300 getlex
;  821  7329 next
;  822  7334 next
;  823  7339 next
;  824  7344 next
;  825  7349 next
;  826  7354 next
;  827  7359 next
;  828  7364 next
;  829  7369 next
;  830  7374 next
;  831  7379 next
;  832  7384 next
;  833  7389 next
;  834  7394 next
;  835  7399 next
;  836  7404 instr1
;  837  7411 next
;  838  7416 getlex
;  839  7423 next
;  840  7428 next
;  841  7433 getlex
;  842  7440 getstring
;  843  7450 digit
;  844  7456 getdigit
;  845  7465 next
;  846  7470 next
;  847  7475 next
;  848  7480 letter
;  849  7487 strcpy
;  850  7494 letter
;  851  7501 next
;  852  7506 eqstr
;  853  7512 eqstr
;  854  7518 eqstr
;  855  7524 eqstr
;  856  7530 eqstr
;  857  7536 eqstr
;  858  7542 eqstr
;  859  7548 eqstr
;  860  7554 eqstr
;  861  7560 eqstr
;  862  7566 eqstr
;  863  7572 eqstr
;  864  7578 eqstr
;  865  7584 eqstr
;  866  7590 eqstr
;  867  7596 eqstr
;  868  7602 eqstr
;  869  7608 eqstr
;  870  7614 eqstr
;  871  7620 eqstr
;  872  7626 eqstr
;  873  7632 eqstr
;  874  7638 convertdefine
;  875  7652 strcpy
;  876  7659 error1
;  877  7684 from_far
;  878  7693 eqstr
;  879  7712 next
;  880  7717 letter
;  881  7724 next
;  882  7729 digit
;  883  7735 next
;  884  7760 next
;  885  7765 next
;  886  7777 fgets1
;  887  7794 getlex
;  888  7810 istoken
;  889  7818 prs
;  890  7822 listproc
;  891  7831 prs
;  892  7835 pint1
;  893  7841 error1
;  894  7864 eprc
;  895  7875 writetty
;  896  7884 writetty
;  897  7893 fputcR
;  898  7915 prc
;  899  7924 prs
;  900  7940 prc
;  901  7955 eprc
;  902  7960 mkneg
;  903  7966 eprnum
;  904  7973 eprc
;  905  7988 prc
;  906  7992 mkneg
;  907  7998 pint1
;  908  8004 prc
;  909  8022 prunsign1
;  910  8032 prc
;  911  8049 prc
;  912  8053 prc
;  913  8057 prc
;  914  8061 prc
;  915  8065 prunsign1
;  916  8084 printinputline
;  917  8114 readR
;  918  8120 prs
;  919  8124 prunsign1
;  920  8134 prc
;  921  8138 prscomment
;  922  8156 fcloseR
;  923  8164 fcloseR
;  924  8172 exitR
;  925  8187 prnl
;  926  8192 prscomment
;  927  8203 prs
;  928  8207 prunsign1
;  929  8217 prs
;  930  8221 prs
;  931  8225 prs
;  932  8229 pint1
;  933  8235 prs
;  934  8239 prunsign1
;  935  8249 prs
;  936  8253 prc
;  937  8257 prs
;  938  8261 pint1
;  939  8267 prs
;  940  8271 prs
;  941  8275 end1
;  942  8291 prs
;  943  8295 prs
;  944  8299 prs
;  945  8303 prunsign1
;  946  8313 prs
;  947  8317 listvar
;  948  8341 prs
;  949  8345 printint51
;  950  8356 prc
;  951  8360 prs
;  952  8364 prs
;  953  8368 prs
;  954  8372 prs
;  955  8376 prs
;  956  8380 prs
;  957  8384 prs
;  958  8388 prs
;  959  8392 prs
;  960  8396 printint51
;  961  8407 printint51
;  962  8418 prs
;  963  8422 prs
;  964  8426 prc
;  965  8430 prf
;  966  8434 prs
;  967  8438 prc
;  968  8442 pint1
;  969  8448 prs
;  970  8452 prc
;  971  8456 from_far
;  972  8465 prs
;  973  8469 prc
;  974  8473 prL
;  975  8477 prc
;  976  8481 prL
;  977  8485 prc
;  978  8500 prs
;  979  8504 calllisting
;  980  8534 prs
;  981  8538 printint51
;  982  8549 prc
;  983  8553 prs
;  984  8557 printint51
;  985  8568 prc
;  986  8572 from_far
;  987  8581 prs
;  988  8600 from_far
;  989  8609 from_far
;  990  8618 eqstr
;  991  8635 prs
;  992  8639 countcalls
;  993  8650 funclisting
;  994  8680 prs
;  995  8684 printint51
;  996  8695 printint51
;  997  8706 prs
;  998  8710 printint51
;  999  8721 prc
; 1000  8725 prs
; 1001  8729 prs
; 1002  8733 prs
; 1003  8737 prs
; 1004  8741 prc
; 1005  8745 prc
; 1006  8749 from_far
; 1007  8758 prs
; 1008  8777 strcpy
; 1009  8784 storefunc
; 1010  8794 prs
; 1011  8798 prs
; 1012  8802 listvar
; 1013  8810 listfunc
; 1014  8819 listcall
; 1015  8828 prs
; 1016  8832 prs
; 1017  8836 prs
; 1018  8840 prs
; 1019  8844 prs
; 1020  8848 printint51
; 1021  8859 prs
; 1022  8863 printint51
; 1023  8874 prs
; 1024  8878 printint51
; 1025  8889 prs
; 1026  8893 printint51
; 1027  8904 prs
; 1028  8908 printint51
; 1029  8919 prs
; 1030  8923 prs
; 1031  8927 prs
; 1032  8931 prs
; 1033  8935 printint51
; 1034  8946 prs
; 1035  8950 printint51
; 1036  8961 prs
; 1037  8965 printint51
; 1038  8976 prs
; 1039  8980 printint51
; 1040  8991 prs
; 1041  8995 printint51
; 1042  9006 prs
; 1043  9010 printint51
; 1044  9021 prs
; 1045  9025 printint51
; 1046  9036 prs
; 1047  9040 printint51
; 1048  9051 prs
; 1049  9055 printint51
; 1050  9066 prs
; 1051  9070 prs
; 1052  9074 printint51
; 1053  9085 prs
; 1054  9089 prunsign1
; 1055  9099 prs
; 1056  9103 printint51
; 1057  9114 prs
; 1058  9118 prs
; 1059  9122 prs
; 1060  9126 prs
; 1061  9130 printint51
; 1062  9141 prs
; 1063  9145 printint51
; 1064  9156 prs
; 1065  9160 printint51
; 1066  9171 prs
; 1067  9175 prs
; 1068  9179 end1
; 1069  9196 DosInt
; 1070  9222 DosInt
; 1071  9364 ultoar
; 1072  9371 prs
; 1073  9383 ultoaL
; 1074  9390 prs
; 1075  9408 ultoaL
; 1076  9415 strlen
; 1077  9422 prc
; 1078  9426 prs
; 1079  9471 writetty
; 1080  9480 writetty
; 1081  9499 putch
; 1082  9522 prc
; 1083  9526 mkneg
; 1084  9532 pint
; 1085  9537 putch
; 1086  9614 digit
; 1087  9642 strcpy
; 1088  9664 DosInt
; 1089  9680 DosInt
; 1090  9698 DosInt
; 1091  9721 DosInt
; 1092  9740 DosInt
;Input: A.C, List: A.S,  Lines: 1129
;Glob. variables:  171 max.:  200
;Local variables:    8 max.:  100, in 'expr'
;Functions      :  130 max.:  300
;Calls          : 1093 max.: 2000, NameField: 9782 max.:    65535
;Code until     :25853 max.: 30000, free: 4147
;Data (HeapEnd) :47000, resting stacksize: 18535
;Max. Const in 'epilog' : 1131 max. 3000, free: 1869