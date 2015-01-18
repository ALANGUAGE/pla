
; A.COM CComp V0.6, Arglen: 4, Argv: A.C, Source: A.C, Output asm: A.S
;PROTECTED: 0 V86 OFF.  32bit: ON. 
org  256 ; NASM ON
jmp main

;-1 //A.C  The MIT License (c) 2015 Helmut Guenther


;-2 char Version1[]="A.COM CComp V0.6";

Version1 db "A.COM CComp V0.6",0

;-3 #define BSS


;-4 #define ORGDATA     30000


;-5 char BSS=0;  char NASM=0;  char PROTECTED=0;     char LIST=0;

BSS db 0
NASM db 0
PROTECTED db 0
LIST db 0

;-6 #define LSTART        200


;-7 #define VARMAX        300


;-8 #define FUNCMAX       300


;-9 #define CALLMAX      2000


;-10 #define IDLENMAX       16


;-11 #define _  // constant compare


;-12 #define T_NAME        256


;-13 #define T_CONST       257 


;-14 #define T_STRING      258     


;-15 #define T_INCLUDE     510     


;-16 #define T_DEFINE      511  


;-17 #define T_RETURN      512


;-18 #define T_IF          513      


;-19 #define T_ELSE        514  


;-20 #define T_WHILE       515      


;-21 #define T_DO          516


;-22 #define T_INT         517     


;-23 #define T_ASM         518   


;-24 #define T_ASMBLOCK    519   


;-25 #define T_EMIT        520


;-26 #define T_GOTO        521    


;-27 #define T_VOID        529  


;-28 #define T_CHAR        530       


;-29 #define T_SIGNED      531


;-30 #define T_UNSIGNED    532


;-31 #define T_LONG        533


;-32 #define T_SHORT       534


;-33 #define T_UINT32      545


;-34 #define T_INTH        600


;-35 #define T_IFCARRY     601


;-36 #define T_IFZERO      602


;-37 #define T_EQ          806


;-38 #define T_NE          807


;-39 #define T_GE          811


;-40 #define T_LE          824


;-41 #define T_PLUSPLUS   1219


;-42 #define T_MINUSMINUS 1225


;-43 #define T_PLUSASS    1230


;-44 #define T_MINUSASS   1231


;-45 #define T_MULASS     1232


;-46 #define T_DIVASS     1233


;-47 #define T_ANDASS     1234


;-48 #define T_ORASS      1235


;-49 #define T_LESSLESS   1240


;-50 #define T_GREATGREAT 1241


;-51 #define COMAX        3000


;-52 #define CMDLENMAX      67


;-53 unsigned long LDATAORIG=2000000;     unsigned long ldata=2000000; long LONG0=0;

LDATAORIG dd 2000000
ldata dd 2000000
LONG0 dd 0

;-54 unsigned long ORGDATAORIG=30000;     unsigned long orgData=30000;

ORGDATAORIG dd 30000
orgData dd 30000

;-55 char co[COMAX];    int maxco=0;      int maxco1=0;

section .bss
absolute 30000
co resb 3000
section .text
maxco dw 0
maxco1 dw 0

;-56 char coname[CMDLENMAX];              char *cloc=0;

section .bss
absolute 33000
coname resb 67
section .text
cloc dw 0

;-57 char locname[CMDLENMAX]; int maxloc=0;

section .bss
absolute 33067
locname resb 67
section .text
maxloc dw 0

;-58 int fdin=0;        int fdout=0;      char symbol[128];

fdin dw 0
fdout dw 0
section .bss
absolute 33134
symbol resb 128
section .text

;-59 char fname[CMDLENMAX];               char namein[CMDLENMAX];

section .bss
absolute 33262
fname resb 67
section .text
section .bss
absolute 33329
namein resb 67
section .text

;-60 char namelst[CMDLENMAX];             char archivename[]="AR.C";

section .bss
absolute 33396
namelst resb 67
section .text
archivename db "AR.C",0

;-61 int token=0;       char globC=0;     int spalte=0;

token dw 0
globC db 0
spalte dw 0

;-62 char thechar=0;    int iscmp=0;      int nconst=0;

thechar db 0
iscmp dw 0
nconst dw 0

;-63 int nreturn=0;     int nlabel=0;     int callrecursive=0;

nreturn dw 0
nlabel dw 0
callrecursive dw 0

;-64 unsigned long lexvalL;  char islong; char isldata=0;

lexvalL dd 0
islong db 0
isldata db 0

;-65 int typei;        char istype;  char GType [VARMAX]; // 0=V, 1=*, 2=&,#

typei dw 0
istype db 0
section .bss
absolute 33463
GType resb 300
section .text

;-66 int signi;        char issign;  char GSign [VARMAX]; // 0=U, 1=S

signi dw 0
issign db 0
section .bss
absolute 33763
GSign resb 300
section .text

;-67 int widthi;int wi;char iswidth; char GWidth[VARMAX]; // 0, 1, 2, 4

widthi dw 0
wi dw 0
iswidth db 0
section .bss
absolute 34063
GWidth resb 300
section .text

;-68 int  GTop=1;        int LTop=150;

GTop dw 1
LTop dw 150

;-69 int  GLino   [VARMAX];     // lineno

section .bss
absolute 34363
GLino resw 300
section .text

;-70 int  GUsed   [VARMAX];     // how manytimes is var used

section .bss
absolute 34963
GUsed resw 300
section .text

;-71 long GData   [VARMAX];     // init data or local addr or array len or define no

section .bss
absolute 35563
GData resd 300
section .text

;-72 long GAdr    [VARMAX];     // Address 32 bit

section .bss
absolute 36763
GAdr resd 300
section .text

;-73 int  GName   [VARMAX];     // start of var name in list

section .bss
absolute 37963
GName resw 300
section .text

;-74 int  FTop=0;               // top of function list

FTop dw 0

;-75 char FWidth  [FUNCMAX];    // iswidth

section .bss
absolute 38563
FWidth resb 300
section .text

;-76 int  FLino   [FUNCMAX];    // lineno

section .bss
absolute 38863
FLino resw 300
section .text

;-77 int  FCalls  [FUNCMAX];    // no of calls for this function

section .bss
absolute 39463
FCalls resw 300
section .text

;-78 int  FName   [FUNCMAX];    // start of function name in list

section .bss
absolute 40063
FName resw 300
section .text

;-79 int  CTop=0;               // top of call list

CTop dw 0

;-80 int  CName   [CALLMAX];    // CNameTop

section .bss
absolute 40663
CName resw 2000
section .text

;-81 char CUnres  [CALLMAX];    // 0 = unresolved call

section .bss
absolute 44663
CUnres resb 2000
section .text

;-82 char Ls[]="12345678901";                      //must be in low memory

Ls db "12345678901",0

;-83 char NA[]="12345678901234567890123456789012"; //must be in low memory

NA db "12345678901234567890123456789012",0

;-84 char NB[]="12345678901234567890123456789012"; //must be in low memory

NB db "12345678901234567890123456789012",0

;-85 char fgetsdest[128];         unsigned char *CNameTop=0;

section .bss
absolute 46663
fgetsdest resb 128
section .text
CNameTop dw 0

;-86 unsigned char *fgetsp=0;     unsigned int segE;

fgetsp dw 0
segE dw 0

;-87 unsigned int lineno=1;       unsigned int linenoinclude=1;

lineno dw 1
linenoinclude dw 1

;-88 unsigned char *pt=0;         unsigned char *p1=0;

pt dw 0
p1 dw 0

;-89 int DOS_ERR=0; int DOS_NoBytes=0; char DOS_ByteRead=0;

DOS_ERR dw 0
DOS_NoBytes dw 0
DOS_ByteRead db 0

;-90 


;-91 long varL1!; int vari1!; unsigned int vari2![3];

;p32  adr: 2000000, varL1 [4]
;p32  adr: 2000004, vari1 [2]
;p32  adr: 2000006, vari2 [6]

;-92 char varc1!; long varL2!;

;p32  adr: 2000012, varc1 [1]
;p32  adr: 2000013, varL2 [4]

;-93 long arrL1![3]; long varL4!; char chc2!;

;p32  adr: 2000017, arrL1 [12]
;p32  adr: 2000029, varL4 [4]
;p32  adr: 2000033, chc2 [1]

;-94 void ttt(long par1, char *s)


ttt:  ; *** PROC ***

;-95   {   }

;Function : ttt, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign dwrd    94 NULL bp+4    par1
;  201 ptr sign byte    94 NULL bp+8    s;
 ENTER  0,0

;-96 void a(unsigned int i) { if(NASM == 0) prs("offset "); printName(i);}//address
 LEAVE
 ret
; ENDP

a:  ; *** PROC ***
;Function : a, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word    96 NULL bp+4    i;
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

;-97 void v(unsigned int i) { if(NASM) { if (i < LSTART) prc('['); }
 LEAVE
 ret
; ENDP
a_0 db "offset ",0

v:  ; *** PROC ***
;Function : v, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word    97 NULL bp+4    i;
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

;-98   printName(i); if(NASM) { if (i < LSTART) prc(']'); }   }//value

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

;-99 void checknamelen() { int i;    i=strlen(symbol);
 LEAVE
 ret
; ENDP

checknamelen:  ; *** PROC ***
;Function : checknamelen, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word    99 NULL bp-2    i;
 ENTER  2,0
 lea  ax, [symbol]
 push ax
 call strlen
 add  sp, 2
 mov word [bp-2], ax

;-100   if (i >= IDLENMAX) error1("Item name is too long in characters)"); }

 mov ax, [bp-2]
 cmp ax, 16 ;unsigned : 1
 jl  @@checknamelen6
 push checknamelen_0
 call error1
 add  sp, 2
@@checknamelen6:

;-101 void pwi(int i) {  // print width
 LEAVE
 ret
; ENDP
checknamelen_0 db "Item name is too long in characters)",0

pwi:  ; *** PROC ***

;-102   if (i == 1) prs("byte ");    if (i == 2) prs("word ");

;Function : pwi, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   101 NULL bp+4    i;
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

;-103   if (i == 4) prs("dword ");   if (NASM == 0) prs("ptr ");

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

;-104 }

@@pwi10:

;-105 void storeName() {int i;
 LEAVE
 ret
; ENDP
pwi_0 db "byte ",0
pwi_1 db "word ",0
pwi_2 db "dword ",0
pwi_3 db "ptr ",0

storeName:  ; *** PROC ***

;-106   i=strlen(symbol); to_far(CNameTop, symbol); CNameTop=CNameTop+i; CNameTop++;

;Function : storeName, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   105 NULL bp-2    i;
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

;-107 }


;-108 char doglobName[IDLENMAX];
 LEAVE
 ret
; ENDP
section .bss
absolute 46791
doglobName resb 16
section .text

;-109 void doLdata() {


doLdata:  ; *** PROC ***

;-110   if (GTop >= LSTART) error1("Global table full");

 mov ax, [GTop]
 cmp ax, 200 ;unsigned : 1
 jl  @@doLdata11
 push doLdata_0
 call error1
 add  sp, 2

;-111   if (iswidth == 0) error1("no VOID as var type");

@@doLdata11:
 mov al, [iswidth]
 cmp al, 0
 jne @@doLdata12
 push doLdata_1
 call error1
 add  sp, 2

;-112   checknamelen();

@@doLdata12:
 call checknamelen

;-113   if (checkName() != 0) error1("Global variable already defined");

 call checkName
 cmp al, 0
 je  @@doLdata13
 push doLdata_2
 call error1
 add  sp, 2

;-114   GAdr[GTop]=ldata;

@@doLdata13:
 mov eax, [ldata]
 mov bx, [GTop]
 shl bx, 2
 mov [GAdr+bx], eax

;-115   eax=0;  lexvalL=iswidth; // Cast B2L

 mov  eax, 0
 mov al, [iswidth]
 mov dword [lexvalL], eax

;-116   if (istoken('[')) { istype='&';

 push 91
 call istoken
 add  sp, 2
 or  al, al
 je @@doLdata14
 mov eax, 38
 mov byte [istype], al

;-117     expect(T_CONST);

 push 257
 call expect
 add  sp, 2

;-118     if (iswidth==2) lexvalL=lexvalL << 1;

 mov al, [iswidth]
 cmp al, 2
 jne @@doLdata15
 mov eax, [lexvalL]
 shl eax, 1
 mov dword [lexvalL], eax

;-119     if (iswidth==4) lexvalL=lexvalL << 2;

@@doLdata15:
 mov al, [iswidth]
 cmp al, 4
 jne @@doLdata16
 mov eax, [lexvalL]
 shl eax, 2
 mov dword [lexvalL], eax

;-120     expect(']');

@@doLdata16:
 push 93
 call expect
 add  sp, 2

;-121   }


;-122   prs("\n;p32  adr: "); prL(ldata); prs(", "); prs(symbol);

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

;-123   prs(" ["); prL(lexvalL); prc(']');

 push doLdata_5
 call prs
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4
 push 93
 call prc
 add  sp, 2

;-124   ldata=ldata+lexvalL; GData[GTop]=lexvalL;

 mov eax, [ldata]
 add eax, [lexvalL]
 mov dword [ldata], eax
 mov eax, [lexvalL]
 mov bx, [GTop]
 shl bx, 2
 mov [GData+bx], eax

;-125   GSign[GTop]=issign;  GWidth[GTop]=iswidth; GType[GTop]=istype;

 mov al, [issign]
 mov bx, [GTop]
 mov [GSign+bx], al
 mov al, [iswidth]
 mov bx, [GTop]
 mov [GWidth+bx], al
 mov al, [istype]
 mov bx, [GTop]
 mov [GType+bx], al

;-126   GLino [GTop]=lineno-1; GUsed [GTop]=0;

 mov ax, [lineno]
 sub ax, 1
 mov bx, [GTop]
 shl bx, 1
 mov [GLino+bx], ax
 mov eax, 0
 mov bx, [GTop]
 shl bx, 1
 mov [GUsed+bx], ax

;-127 //  if (isstrarr) strcpy(symbol, doglobName);


;-128   GName[GTop] = CNameTop;

 mov ax, [CNameTop]
 mov bx, [GTop]
 shl bx, 1
 mov [GName+bx], ax

;-129   storeName();

 call storeName

;-130   GTop++; expect(';');

 inc  word [GTop]
 push 59
 call expect
 add  sp, 2

;-131 }


;-132 void doglob() { int i; int j; int isstrarr; isstrarr=0;

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
;  200 var sign word   132 NULL bp-2    i
;  201 var sign word   132 NULL bp-4    j
;  202 var sign word   132 NULL bp-6    isstrarr;
 ENTER  6,0
 mov eax, 0
 mov word [bp-6], ax

;-133   if (GTop >= LSTART) error1("Global table full");

 mov ax, [GTop]
 cmp ax, 200 ;unsigned : 1
 jl  @@doglob17
 push doglob_0
 call error1
 add  sp, 2

;-134   if (iswidth == 0) error1("no VOID as var type");

@@doglob17:
 mov al, [iswidth]
 cmp al, 0
 jne @@doglob18
 push doglob_1
 call error1
 add  sp, 2

;-135   checknamelen();

@@doglob18:
 call checknamelen

;-136   if (checkName() != 0) error1("Global variable already defined");

 call checkName
 cmp al, 0
 je  @@doglob19
 push doglob_2
 call error1
 add  sp, 2

;-137   GAdr[GTop]=LONG0;

@@doglob19:
 mov eax, [LONG0]
 mov bx, [GTop]
 shl bx, 2
 mov [GAdr+bx], eax

;-138   if (istoken('[')) { istype='&';

 push 91
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob20
 mov eax, 38
 mov byte [istype], al

;-139       if (istoken(T_CONST)) {

 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob21

;-140       if (BSS) { if (NASM) {prs("\nsection .bss\nabsolute ");

 mov al, [BSS]
 or  al, al
 je @@doglob22
 mov al, [NASM]
 or  al, al
 je @@doglob23
 push doglob_3
 call prs
 add  sp, 2

;-141         GAdr[GTop]=orgData;

 mov eax, [orgData]
 mov bx, [GTop]
 shl bx, 2
 mov [GAdr+bx], eax

;-142         prunsign1(orgData); }

 push dword [orgData]
 call prunsign1
 add  sp, 4

;-143         else {prs("\nAData = $\norg "); prunsign1(orgData);} }

 jmp @@doglob24
@@doglob23:
 push doglob_4
 call prs
 add  sp, 2
 push dword [orgData]
 call prunsign1
 add  sp, 4
@@doglob24:

;-144       prs("\n"); prs(symbol); 

@@doglob22:
 push doglob_5
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2

;-145       if (iswidth==1) {if (NASM) prs(" resb "); else prs(" db ");}

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

;-146       if (iswidth==2) {if (NASM) prs(" resw "); else prs(" dw ");}

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

;-147       if (iswidth==4) {if (NASM) prs(" resd "); else prs(" dd ");}

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

;-148       prL(lexvalL); if (NASM==0)prs(" dup (?)");

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

;-149       if (BSS) {if(NASM) prs("\nsection .text");

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

;-150         else prs("\norg AData"); }

 jmp @@doglob37
@@doglob36:
 push doglob_14
 call prs
 add  sp, 2
@@doglob37:

;-151       orgData=orgData+lexvalL;

@@doglob35:
 mov eax, [orgData]
 add eax, [lexvalL]
 mov dword [orgData], eax

;-152       if (iswidth==2) orgData=orgData+lexvalL;

 mov al, [iswidth]
 cmp al, 2
 jne @@doglob38
 mov eax, [orgData]
 add eax, [lexvalL]
 mov dword [orgData], eax

;-153       if (iswidth==4) {i= lexvalL * 3; orgData=orgData + i;}

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

;-154       GData[GTop]=lexvalL; expect(']');

@@doglob39:
 mov eax, [lexvalL]
 mov bx, [GTop]
 shl bx, 2
 mov [GData+bx], eax
 push 93
 call expect
 add  sp, 2

;-155     }else { expect(']');

 jmp @@doglob40
@@doglob21:
 push 93
 call expect
 add  sp, 2

;-156       if (iswidth != 1) error1("Only ByteArray allowed");

 mov al, [iswidth]
 cmp al, 1
 je  @@doglob41
 push doglob_15
 call error1
 add  sp, 2

;-157       prs("\n"); prs(symbol); prs(" db "); 

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

;-158       isstrarr=1; strcpy(doglobName, symbol);

 mov eax, 1
 mov word [bp-6], ax
 lea  ax, [symbol]
 push ax
 lea  ax, [doglobName]
 push ax
 call strcpy
 add  sp, 4

;-159       expect('='); 

 push 61
 call expect
 add  sp, 2

;-160       if (istoken(T_STRING)) { 

 push 258
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob42

;-161         prc(34); prscomment(symbol); prc(34); prs(",0"); 

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

;-162         i=strlen(symbol); GData[GTop]=i; }

 lea  ax, [symbol]
 push ax
 call strlen
 add  sp, 2
 mov word [bp-2], ax
 mov ax, [bp-2]
 mov bx, [GTop]
 shl bx, 2
 mov [GData+bx], eax

;-163       else if (istoken('{' )) { i=0;

 jmp @@doglob43
@@doglob42:
 push 123
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob44
 mov eax, 0
 mov word [bp-2], ax

;-164         do { if(i) prc(','); 

@@doglob45:
 mov ax, [bp-2]
 or  al, al
 je @@doglob46
 push 44
 call prc
 add  sp, 2

;-165           expect(T_CONST); prL(lexvalL); i++; }

@@doglob46:
 push 257
 call expect
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4
 inc  word [bp-2]

;-166         while (istoken(',')); expect('}'); GData[GTop]=i; }

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

;-167       else error1("String or number array expected");

 jmp @@doglob48
@@doglob44:
 push doglob_19
 call error1
 add  sp, 2

;-168       }; 

@@doglob48:
@@doglob43:
@@doglob40:

;-169     } else { //expect('=');

 jmp @@doglob49
@@doglob20:

;-170     prs("\n"); prs(symbol); if (istype=='*') prs(" dw ");

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

;-171     else {if (iswidth==1) prs(" db ");

 jmp @@doglob51
@@doglob50:
 mov al, [iswidth]
 cmp al, 1
 jne @@doglob52
 push doglob_22
 call prs
 add  sp, 2

;-172           if (iswidth==2) prs(" dw ");

@@doglob52:
 mov al, [iswidth]
 cmp al, 2
 jne @@doglob53
 push doglob_23
 call prs
 add  sp, 2

;-173           if (iswidth==4) prs(" dd ");  }

@@doglob53:
 mov al, [iswidth]
 cmp al, 4
 jne @@doglob54
 push doglob_24
 call prs
 add  sp, 2
@@doglob54:

;-174     if(istoken('-')) prc('-');

@@doglob51:
 push 45
 call istoken
 add  sp, 2
 or  al, al
 je @@doglob55
 push 45
 call prc
 add  sp, 2

;-175     if (istoken('=')) {expect(T_CONST); prL(lexvalL); }

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

;-176     else prunsign1(0); }

 jmp @@doglob57
@@doglob56:
 push 0
 call prunsign1
 add  sp, 2
@@doglob57:

;-177   GSign[GTop]=issign; GWidth[GTop]=iswidth; GType[GTop]=istype;

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

;-178   GLino [GTop]=lineno-1; GUsed [GTop]=0;

 mov ax, [lineno]
 sub ax, 1
 mov bx, [GTop]
 shl bx, 1
 mov [GLino+bx], ax
 mov eax, 0
 mov bx, [GTop]
 shl bx, 1
 mov [GUsed+bx], ax

;-179   if (isstrarr) strcpy(symbol, doglobName);

 mov ax, [bp-6]
 or  al, al
 je @@doglob58
 lea  ax, [doglobName]
 push ax
 lea  ax, [symbol]
 push ax
 call strcpy
 add  sp, 4

;-180   GName[GTop] = CNameTop;

@@doglob58:
 mov ax, [CNameTop]
 mov bx, [GTop]
 shl bx, 1
 mov [GName+bx], ax

;-181   storeName();

 call storeName

;-182   GTop++; expect(';');

 inc  word [GTop]
 push 59
 call expect
 add  sp, 2

;-183 }


;-184 int gettypes(int i) {int j; char c;
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

;-185   c=GSign [i]; if (c=='S') signi =1;    else signi =0;

;Function : gettypes, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   184 NULL bp+4    i
;  201 var sign word   184 NULL bp-2    j
;  202 var sign byte   184 NULL bp-4    c;
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

;-186   c=GWidth[i]; widthi=0;wi=0;

@@gettypes60:
 mov bx, [bp+4]
 mov al, [GWidth + bx]
 mov byte [bp-4], al
 mov eax, 0
 mov word [widthi], ax
 mov eax, 0
 mov word [wi], ax

;-187   if (c==1) {widthi=1;wi=1;}

 mov al, [bp-4]
 cmp al, 1
 jne @@gettypes61
 mov eax, 1
 mov word [widthi], ax
 mov eax, 1
 mov word [wi], ax

;-188   if (c==2) {widthi=2;wi=2;}

@@gettypes61:
 mov al, [bp-4]
 cmp al, 2
 jne @@gettypes62
 mov eax, 2
 mov word [widthi], ax
 mov eax, 2
 mov word [wi], ax

;-189   if (c==4) {widthi=4;wi=4;}

@@gettypes62:
 mov al, [bp-4]
 cmp al, 4
 jne @@gettypes63
 mov eax, 4
 mov word [widthi], ax
 mov eax, 4
 mov word [wi], ax

;-190   c=GType [i]; typei=0; if (c=='*') {typei=1;wi=2;}

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

;-191   if (c=='&')  typei=2;  

@@gettypes64:
 mov al, [bp-4]
 cmp al, 38
 jne @@gettypes65
 mov eax, 2
 mov word [typei], ax

;-192   return i; }  

@@gettypes65:
 mov ax, [bp+4]
 jmp @@retn

;-193 


;-194 void printName(unsigned int i) {int j;

@@retn: LEAVE
 ret
; ENDP

printName:  ; *** PROC ***

;-195   if (i < LSTART) { loadName(NA, i); prs(NA); }

;Function : printName, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg word   194 NULL bp+4    i
;  201 var sign word   194 NULL bp-2    j;
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

;-196   else { prs("[bp"); j = GData[i]; if (j>0) prc('+'); pint1(j); prc(']'); }

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

;-197 }

@@printName67:

;-198 int searchname() { unsigned int i;
 LEAVE
 ret
; ENDP
printName_0 db "[bp",0

searchname:  ; *** PROC ***

;-199   i=checkName(); if (i == 0) error1("Variable unknown");

;Function : searchname, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word   198 NULL bp-2    i;
 ENTER  2,0
 call checkName
 mov word [bp-2], ax
 mov ax, [bp-2]
 cmp ax, 0
 jne @@searchname69
 push searchname_0
 call error1
 add  sp, 2

;-200   GUsed[i]=GUsed[i] + 1; return i;

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

;-201 }


;-202 int checkName() { unsigned int i; unsigned int j;

@@retn: LEAVE
 ret
; ENDP
searchname_0 db "Variable unknown",0

checkName:  ; *** PROC ***

;-203   i=LSTART;while(i<LTop){loadName(NA,i);if(eqstr(symbol,NA))return i;i++;}

;Function : checkName, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg word   202 NULL bp-2    i
;  201 var unsg word   202 NULL bp-4    j;
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

;-204   i=1;     while(i<GTop){loadName(NA,i);if(eqstr(symbol,NA))return i;i++;}

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

;-205   return 0;

 jmp @@checkName73
@@checkName74:
 mov eax, 0
 jmp @@retn

;-206 }    


;-207 int typeName() { int m; //0=V,1=*,2=&

@@retn: LEAVE
 ret
; ENDP

typeName:  ; *** PROC ***

;-208   issign='S';

;Function : typeName, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   207 NULL bp-2    m;
 ENTER  2,0
 mov eax, 83
 mov byte [issign], al

;-209   if(istoken(T_SIGNED))   issign='S';  if(istoken(T_UNSIGNED)) issign='U';

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

;-210   iswidth=2;                           if(istoken(T_VOID))     iswidth=0;

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

;-211   if(istoken(T_CHAR))     iswidth=1;   if(istoken(T_INT))      iswidth=2;

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

;-212   if(istoken(T_SHORT))    iswidth=2;   if(istoken(T_LONG))     iswidth=4;

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

;-213   if(istoken(T_UINT32)) { iswidth=4; issign='U'; }

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

;-214   istype='V'; m=0;

@@typeName83:
 mov eax, 86
 mov byte [istype], al
 mov eax, 0
 mov word [bp-2], ax

;-215   if(istoken('*'))  { istype='*'; m=1; } if(istoken('&'))  {istype='&'; m=2;}

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

;-216   name1(); return m; }

@@typeName85:
 call name1
 mov ax, [bp-2]
 jmp @@retn

;-217 void name1() {if (token!=T_NAME) error1("Name expected"); token=getlex(); }

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

;-218 


;-219 void storecall() { int i;

 ret
; ENDP
name1_0 db "Name expected",0

storecall:  ; *** PROC ***

;-220   if (CTop >= CALLMAX) error1("Call table full");

;Function : storecall, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   219 NULL bp-2    i;
 ENTER  2,0
 mov ax, [CTop]
 cmp ax, 2000 ;unsigned : 1
 jl  @@storecall87
 push storecall_0
 call error1
 add  sp, 2

;-221   if (CNameTop >= 65468) error1("Call name table fuill");

@@storecall87:
 mov ax, [CNameTop]
 cmp ax, 65468 ;unsigned : 0
 jb  @@storecall88
 push storecall_1
 call error1
 add  sp, 2

;-222   CUnres[CTop]=0;  CName [CTop]=CNameTop;

@@storecall88:
 mov eax, 0
 mov bx, [CTop]
 mov [CUnres+bx], al
 mov ax, [CNameTop]
 mov bx, [CTop]
 shl bx, 1
 mov [CName+bx], ax

;-223   storeName();

 call storeName

;-224   CTop++;

 inc  word [CTop]

;-225 }


;-226 void storefunc() { int i;
 LEAVE
 ret
; ENDP
storecall_0 db "Call table full",0
storecall_1 db "Call name table fuill",0

storefunc:  ; *** PROC ***

;-227   if (FTop >= FUNCMAX) error1("Function table full");

;Function : storefunc, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   226 NULL bp-2    i;
 ENTER  2,0
 mov ax, [FTop]
 cmp ax, 300 ;unsigned : 1
 jl  @@storefunc89
 push storefunc_0
 call error1
 add  sp, 2

;-228   FLino[FTop]=lineno - 1;  FCalls[FTop]=0;   FWidth[FTop]=iswidth;

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

;-229   FName[FTop]=CNameTop;

 mov ax, [CNameTop]
 mov bx, [FTop]
 shl bx, 1
 mov [FName+bx], ax

;-230   storeName();

 call storeName

;-231   FTop++;

 inc  word [FTop]

;-232 }


;-233 void addlocal() { if(LTop >= VARMAX) error1("Local variable table full");
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

;-234   if (checkName() != 0) error1("Local variable already defined");

@@addlocal90:
 call checkName
 cmp ax, 0
 je  @@addlocal91
 push addlocal_1
 call error1
 add  sp, 2

;-235   GSign[LTop]=issign; GWidth[LTop]=iswidth; GType[LTop]=istype;

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

;-236   GLino [LTop]=lineno-1; GUsed[LTop]=0;

 mov ax, [lineno]
 sub ax, 1
 mov bx, [LTop]
 shl bx, 1
 mov [GLino+bx], ax
 mov eax, 0
 mov bx, [LTop]
 shl bx, 1
 mov [GUsed+bx], ax

;-237   GName[LTop]=CNameTop;

 mov ax, [CNameTop]
 mov bx, [LTop]
 shl bx, 1
 mov [GName+bx], ax

;-238   storeName();

 call storeName

;-239 }


;-240 int checkFunction() { unsigned int i; unsigned int j; i=0;

 ret
; ENDP
addlocal_0 db "Local variable table full",0
addlocal_1 db "Local variable already defined",0

checkFunction:  ; *** PROC ***
;Function : checkFunction, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg word   240 NULL bp-2    i
;  201 var unsg word   240 NULL bp-4    j;
 ENTER  4,0
 mov eax, 0
 mov word [bp-2], ax

;-241   while (i < FTop) {

@@checkFunction92:
 mov ax, [bp-2]
 cmp ax, [FTop]
 jge @@checkFunction93

;-242     j=FName[i]; from_far(NA, j);

 mov bx, [bp-2]
 shl bx, 1
 mov ax, [FName + bx]
 mov word [bp-4], ax
 push word [bp-4]
 lea  ax, [NA]
 push ax
 call from_far
 add  sp, 4

;-243     if(eqstr(symbol, NA))return i; i++;}

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

;-244   return 0;

 jmp @@checkFunction92
@@checkFunction93:
 mov eax, 0
 jmp @@retn

;-245 }


;-246 void dofunc() { int nloc; int narg; int i;

@@retn: LEAVE
 ret
; ENDP

dofunc:  ; *** PROC ***

;-247   cloc=&co; 

;Function : dofunc, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   246 NULL bp-2    nloc
;  201 var sign word   246 NULL bp-4    narg
;  202 var sign word   246 NULL bp-6    i;
 ENTER  6,0
 mov ax, co
 mov word [cloc], ax

;-248   checknamelen();

 call checknamelen

;-249   strcpy(fname, symbol);

 lea  ax, [symbol]
 push ax
 lea  ax, [fname]
 push ax
 call strcpy
 add  sp, 4

;-250   if (checkFunction() ) error1("Function already defined");

 call checkFunction
 or  al, al
 je @@dofunc95
 push dofunc_0
 call error1
 add  sp, 2

;-251   storefunc();

@@dofunc95:
 call storefunc

;-252   prs("\n\n"); prs(symbol); prs(":  ; *** PROC ***");

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

;-253   expect('(');  LTop=LSTART;

 push 40
 call expect
 add  sp, 2
 mov eax, 200
 mov word [LTop], ax

;-254   if (istoken(')')==0) { narg=4; // return address and old bp value

 push 41
 call istoken
 add  sp, 2
 cmp ax, 0
 jne @@dofunc96
 mov eax, 4
 mov word [bp-4], ax

;-255     do { typeName();  addlocal();

@@dofunc97:
 call typeName
 call addlocal

;-256          GData[LTop]=narg;

 mov ax, [bp-4]
 mov bx, [LTop]
 shl bx, 2
 mov [GData+bx], eax

;-257          if (iswidth < 2) narg+=2; else narg=narg+iswidth;

 mov al, [iswidth]
 cmp al, 2
 jge @@dofunc98
 add  word [bp-4], 2
 jmp @@dofunc99
@@dofunc98:
 mov ax, [bp-4]
 add al, [iswidth]
 mov word [bp-4], ax

;-258          LTop++; }

@@dofunc99:
 inc  word [LTop]

;-259     while (istoken(','));  expect(')'); }

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

;-260     


;-261   expect('{'); /*body*/

@@dofunc96:
 push 123
 call expect
 add  sp, 2

;-262   nloc=0; nreturn=0; nconst=0;

 mov eax, 0
 mov word [bp-2], ax
 mov eax, 0
 mov word [nreturn], ax
 mov eax, 0
 mov word [nconst], ax

;-263   while(isvariable()) {

@@dofunc101:
 call isvariable
 or  al, al
 je @@dofunc102

;-264     do {typeName(); checknamelen(); addlocal();

@@dofunc103:
 call typeName
 call checknamelen
 call addlocal

;-265         _ i= 2; if(_ iswidth > 2)  { ax=iswidth; /*cast b2w*/ _ i=ax; }

mov word [bp-6], 2; i
cmp byte [iswidth], 2
 jle @@dofunc104
 movsx  ax, byte [iswidth]
mov [bp-6], ax

;-266         if (istoken('[')){istype='&';GType[LTop]='&';expect(T_CONST);

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

;-267             expect(']'); i=lexvalL; }

 push 93
 call expect
 add  sp, 2
 mov eax, [lexvalL]
 mov word [bp-6], ax

;-268         nloc=nloc - i;  GData[LTop]=nloc;

@@dofunc105:
 mov ax, [bp-2]
 sub ax, [bp-6]
 mov word [bp-2], ax
 mov ax, [bp-2]
 mov bx, [LTop]
 shl bx, 2
 mov [GData+bx], eax

;-269         LTop++;

 inc  word [LTop]

;-270       } while (istoken(',')); expect(';'); }

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

;-271   listproc(); 

 jmp @@dofunc101
@@dofunc102:
 call listproc

;-272   if (LTop>LSTART){prs(";\n ENTER  "); 

 mov ax, [LTop]
 cmp ax, 200
 jle @@dofunc107
 push dofunc_3
 call prs
 add  sp, 2

;-273     nloc=mkneg(nloc); pint1 (nloc); prs(",0"); }

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

;-274   while(istoken('}')==0)   stmt();

@@dofunc107:
@@dofunc108:
 push 125
 call istoken
 add  sp, 2
 cmp ax, 0
 jne @@dofunc109
 call stmt

;-275   if (nreturn) { prs("\n@@retn:");}

 jmp @@dofunc108
@@dofunc109:
 mov ax, [nreturn]
 or  al, al
 je @@dofunc110
 push dofunc_5
 call prs
 add  sp, 2

;-276   if (LTop > LSTART) prs(" LEAVE");

@@dofunc110:
 mov ax, [LTop]
 cmp ax, 200
 jle @@dofunc111
 push dofunc_6
 call prs
 add  sp, 2

;-277   prs("\n ret"); prs("\n; ENDP"); 

@@dofunc111:
 push dofunc_7
 call prs
 add  sp, 2
 push dofunc_8
 call prs
 add  sp, 2

;-278   *cloc=0; prs(co); maxco1=strlen(co);

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

;-279   if (maxco1 > maxco) {maxco=maxco1; strcpy(coname, fname); }

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

;-280   if (LTop  > maxloc) {maxloc=LTop; strcpy(locname, fname); }

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

;-281 }

@@dofunc113:

;-282 int isvariable() {
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

;-283   if(token==T_SIGNED) goto v1;   if(token==T_UNSIGNED) goto v1;

 mov ax, [token]
 cmp ax, 531
 jne @@isvariable114
 jmp @@v1
@@isvariable114:
 mov ax, [token]
 cmp ax, 532
 jne @@isvariable115
 jmp @@v1

;-284   if(token==T_CHAR)   goto v1;   if(token==T_INT)      goto v1;

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

;-285   if(token==T_SHORT)  goto v1;   if(token==T_LONG)     goto v1;

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

;-286   if(token==T_UINT32) goto v1;   return 0;  v1: return 1;

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

;-287 }


;-288 int sd; //side: 0=left, 1=middle, 2=rigth

@@retn:
 ret
; ENDP
sd dw 0

;-289 char un; //1=unary, 2=binary, 3=assign, 4=mul, 5=mod, 6=div

un db 0

;-290 char ty; // 1const, 2call, 3reg, 4var, 5arr

ty db 0

;-291 char md[3];  int mod1; int mod2; //typename       issign,iswidth  0=m, 1=*,2=&

section .bss
absolute 46807
md resb 3
section .text
mod1 dw 0
mod2 dw 0

;-292 int  ir[3];  int irg1; int irg2; //checkreg       0=noreg, reg-nr

section .bss
absolute 46810
ir resw 3
section .text
irg1 dw 0
irg2 dw 0

;-293 int  ix[3];  int idx1; int idx2; //searchname     var-nr

section .bss
absolute 46816
ix resw 3
section .text
idx1 dw 0
idx2 dw 0

;-294 char is[3];  int ids1; int ids2; //gettypes(idx1) signi: 0=U, 1=S

section .bss
absolute 46822
is resb 3
section .text
ids1 dw 0
ids2 dw 0

;-295 char iw[3];  int idw1; int idw2; //gettypes(idx1) wi   : 1,2,4

section .bss
absolute 46825
iw resb 3
section .text
idw1 dw 0
idw2 dw 0

;-296 char it[3];  int idt1; int idt2; //gettypes(idx1) typei: 0=mem, 1=*, 2=&

section .bss
absolute 46828
it resb 3
section .text
idt1 dw 0
idt2 dw 0

;-297 long ia[3];  int ida1; int ida2; //array const or varnr

section .bss
absolute 46831
ia resd 3
section .text
ida1 dw 0
ida2 dw 0

;-298 char ic[3];  int idac1;int idac2;//array is const

section .bss
absolute 46843
ic resb 3
section .text
idac1 dw 0
idac2 dw 0

;-299 long iv[3];  long val1;long val2;// = lexvalL

section .bss
absolute 46846
iv resd 3
section .text
val1 dd 0
val2 dd 0

;-300 


;-301 


;-302 int pexpr() {expect('('); iscmp=0; 


pexpr:  ; *** PROC ***
 push 40
 call expect
 add  sp, 2
 mov eax, 0
 mov word [iscmp], ax

;-303   if (token==T_NAME) {if (eqstr(symbol, "_")) {constantexpr(); return;}

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

;-304     irg1=checkreg();

@@pexpr122:
 call checkreg
 mov word [irg1], ax

;-305     if (irg1) { doreg1(1); return; }  }

 mov ax, [irg1]
 or  al, al
 je @@pexpr123
 push 1
 call doreg1
 add  sp, 2
 jmp @@retn
@@pexpr123:

;-306   exprstart(); if (iscmp==0) prs("\n or  al, al\n je @@");  prs(fname);

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

;-307   expect(')'); }

 push 41
 call expect
 add  sp, 2

;-308 


;-309 void constantexpr() { int mode; int id1;int ids;

@@retn:
 ret
; ENDP
pexpr_0 db "_",0
pexpr_1 db "\n or  al, al\n je @@",0

constantexpr:  ; *** PROC ***

;-310   token=getlex();   mode=typeName();  

;Function : constantexpr, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   309 NULL bp-2    mode
;  201 var sign word   309 NULL bp-4    id1
;  202 var sign word   309 NULL bp-6    ids;
 ENTER  6,0
 call getlex
 mov word [token], ax
 call typeName
 mov word [bp-2], ax

;-311   id1=searchname(); gettypes(id1); ids=signi;

 call searchname
 mov word [bp-4], ax
 push word [bp-4]
 call gettypes
 add  sp, 2
 mov ax, [signi]
 mov word [bp-6], ax

;-312   if (isrelational() ==0) error1("Relational expression expected");

 call isrelational
 cmp ax, 0
 jne @@constantexpr125
 push constantexpr_0
 call error1
 add  sp, 2

;-313   expect(T_CONST);

@@constantexpr125:
 push 257
 call expect
 add  sp, 2

;-314   prs("\ncmp "); 

 push constantexpr_1
 call prs
 add  sp, 2

;-315   gettypes(id1);  pwi(wi);  v(id1);

 push word [bp-4]
 call gettypes
 add  sp, 2
 push word [wi]
 call pwi
 add  sp, 2
 push word [bp-4]
 call v
 add  sp, 2

;-316   prs(", "); prL(lexvalL); cmpneg(ids);   prs(fname);

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

;-317   expect(')');

 push 41
 call expect
 add  sp, 2

;-318 }  


;-319 void exprstart() { if (eqstr(symbol, "_")) simplexpr(); else expr(); }
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

;-320 // 1const, 2call, 3reg, 4var, 5arr


;-321 int simplexpr() {  int i;

 ret
; ENDP
exprstart_0 db "_",0

simplexpr:  ; *** PROC ***

;-322   sd=0;

;Function : simplexpr, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   321 NULL bp-2    i;
 ENTER  2,0
 mov eax, 0
 mov word [sd], ax

;-323   token=getlex();

 call getlex
 mov word [token], ax

;-324   if (istoken(T_CONST)) { prs("\n mov eax, "); prL(lexvalL); return; }//1const

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

;-325   mod1=typeName();

@@simplexpr128:
 call typeName
 mov word [mod1], ax

;-326   if (token=='(')  {ids1=issign; idw1=iswidth; docall1(); return; }   //2call

 mov ax, [token]
 cmp ax, 40
 jne @@simplexpr129
 mov al, [issign]
 mov word [ids1], ax
 mov al, [iswidth]
 mov word [idw1], ax
 call docall1
 jmp @@retn

;-327   if (mod1 == 2) error1(" & is not allowed in left side");

@@simplexpr129:
 mov ax, [mod1]
 cmp ax, 2
 jne @@simplexpr130
 push simplexpr_1
 call error1
 add  sp, 2

;-328   irg1=checkreg();

@@simplexpr130:
 call checkreg
 mov word [irg1], ax

;-329   if (irg1)       {doreg1(0); return; }                               //3reg

 mov ax, [irg1]
 or  al, al
 je @@simplexpr131
 push 0
 call doreg1
 add  sp, 2
 jmp @@retn

;-330   if (irg1 == 0) { idx1=searchname();

@@simplexpr131:
 mov ax, [irg1]
 cmp ax, 0
 jne @@simplexpr132
 call searchname
 mov word [idx1], ax

;-331     gettypes(idx1); ids1=signi; idw1=wi; idt1=typei;                  //4var

 push word [idx1]
 call gettypes
 add  sp, 2
 mov ax, [signi]
 mov word [ids1], ax
 mov ax, [wi]
 mov word [idw1], ax
 mov ax, [typei]
 mov word [idt1], ax

;-332     if (idt1==2)  error1("Array not allowed left side"); }//todo     //5arr

 mov ax, [idt1]
 cmp ax, 2
 jne @@simplexpr133
 push simplexpr_2
 call error1
 add  sp, 2
@@simplexpr133:

;-333 


;-334   if (isrelational()) { error1("Relational not implemented yet"); //todo

@@simplexpr132:
 call isrelational
 or  al, al
 je @@simplexpr134
 push simplexpr_3
 call error1
 add  sp, 2

;-335   }


;-336   if (istoken('=') == 0) error1("Assign expected");

@@simplexpr134:
 push 61
 call istoken
 add  sp, 2
 cmp ax, 0
 jne @@simplexpr135
 push simplexpr_4
 call error1
 add  sp, 2

;-337   if (istoken(T_CONST) ) { val2=lexvalL;

@@simplexpr135:
 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@simplexpr136
 mov eax, [lexvalL]
 mov dword [val2], eax

;-338     prs("\nmov ");

 push simplexpr_5
 call prs
 add  sp, 2

;-339     pwi(idw1);   v(idx1);

 push word [idw1]
 call pwi
 add  sp, 2
 push word [idx1]
 call v
 add  sp, 2

;-340     prs(", "); prL(val2);

 push simplexpr_6
 call prs
 add  sp, 2
 push dword [val2]
 call prL
 add  sp, 4

;-341     if (idx1 >= LSTART) { prs("; ");

 mov ax, [idx1]
 cmp ax, 200 ;unsigned : 1
 jl  @@simplexpr137
 push simplexpr_7
 call prs
 add  sp, 2

;-342       loadName(NA, idx1); prs(NA); } return; }

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

;-343   


;-344   mod2=typeName(); irg2=checkreg();

@@simplexpr136:
 call typeName
 mov word [mod2], ax
 call checkreg
 mov word [irg2], ax

;-345   if (irg2) { prs("\nmov ");

 mov ax, [irg2]
 or  al, al
 je @@simplexpr138
 push simplexpr_8
 call prs
 add  sp, 2

;-346     if (irg1) printreg(irg1, mod1);

 mov ax, [irg1]
 or  al, al
 je @@simplexpr139
 push word [mod1]
 push word [irg1]
 call printreg
 add  sp, 4

;-347     else { pwi(idx1); v(idx1); }

 jmp @@simplexpr140
@@simplexpr139:
 push word [idx1]
 call pwi
 add  sp, 2
 push word [idx1]
 call v
 add  sp, 2

;-348     prs(", "); printreg(irg2, mod2);return;}

@@simplexpr140:
 push simplexpr_9
 call prs
 add  sp, 2
 push word [mod2]
 push word [irg2]
 call printreg
 add  sp, 4
 jmp @@retn

;-349   else {

 jmp @@simplexpr141
@@simplexpr138:

;-350     if (mod2 == 2) error1("& not allowed");

 mov ax, [mod2]
 cmp ax, 2
 jne @@simplexpr142
 push simplexpr_10
 call error1
 add  sp, 2

;-351     


;-352     idx2=searchname();

@@simplexpr142:
 call searchname
 mov word [idx2], ax

;-353     gettypes(idx2); ids2=signi; idw2=wi; idt2=typei;

 push word [idx2]
 call gettypes
 add  sp, 2
 mov ax, [signi]
 mov word [ids2], ax
 mov ax, [wi]
 mov word [idw2], ax
 mov ax, [typei]
 mov word [idt2], ax

;-354     if (idt2 == 1)  error1("Array right side not implemented"); //todo

 mov ax, [idt2]
 cmp ax, 1
 jne @@simplexpr143
 push simplexpr_11
 call error1
 add  sp, 2

;-355     prs("\nmov ");

@@simplexpr143:
 push simplexpr_12
 call prs
 add  sp, 2

;-356     if (irg1) printreg(irg1, mod1);

 mov ax, [irg1]
 or  al, al
 je @@simplexpr144
 push word [mod1]
 push word [irg1]
 call printreg
 add  sp, 4

;-357     else error1("Mem to Mem not allowed by x86-CPU");

 jmp @@simplexpr145
@@simplexpr144:
 push simplexpr_13
 call error1
 add  sp, 2

;-358     prs(", ");

@@simplexpr145:
 push simplexpr_14
 call prs
 add  sp, 2

;-359     if (mod2 == 2) a(idx2);

 mov ax, [mod2]
 cmp ax, 2
 jne @@simplexpr146
 push word [idx2]
 call a
 add  sp, 2

;-360     else {

 jmp @@simplexpr147
@@simplexpr146:

;-361       pwi(idw2);  v(idx2);

 push word [idw2]
 call pwi
 add  sp, 2
 push word [idx2]
 call v
 add  sp, 2

;-362       if (idx2 >= LSTART) { prs("; ");

 mov ax, [idx2]
 cmp ax, 200 ;unsigned : 1
 jl  @@simplexpr148
 push simplexpr_15
 call prs
 add  sp, 2

;-363        loadName(NA, idx2); prs(NA); }  }

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

;-364   }

@@simplexpr147:

;-365 }

@@simplexpr141:

;-366 char ops[6];

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

;-367 int getop() { int i;              *ops=0;       _ un=0;


getop:  ; *** PROC ***
;Function : getop, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   367 NULL bp-2    i;
 ENTER  2,0
 mov eax, 0
 mov  bx, [ops]
 mov  [bx], al
mov byte [un], 0

;-368   if (istoken('='))         {strcpy(ops, "mov");_ un=2;}

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

;-369   if (istoken(T_PLUSASS))   {strcpy(ops, "add");_ un=2;}

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

;-370   if (istoken(T_MINUSASS))  {strcpy(ops, "sub");_ un=2;}

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

;-371   if (istoken(T_ANDASS))    {strcpy(ops, "and");_ un=2;}

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

;-372   if (istoken(T_ORASS))     {strcpy(ops, "or" );_ un=2;}

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

;-373   if (istoken(T_LESSLESS))  {strcpy(ops, "shl");_ un=2;}

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

;-374   if (istoken(T_GREATGREAT)){strcpy(ops, "shr");_ un=2;}

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

;-375   if (istoken(T_PLUSPLUS))  {strcpy(ops, "inc");_ un=1;}

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

;-376   if (istoken(T_MINUSMINUS)){strcpy(ops, "dec");_ un=1;}

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

;-377   if (istoken(T_MULASS))    {strcpy(ops, "mul");_ un=1;}//reg only

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

;-378   if (istoken(T_DIVASS))    {strcpy(ops, "div");_ un=1;}//reg only

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

;-379 /*  if (istoken('+'))         {strcpy(ops, "add");_ un=3;}


;-380   if (istoken('-'))         {strcpy(ops, "sub");_ un=3;}


;-381   if (istoken('&'))         {strcpy(ops, "and");_ un=3;}


;-382   if (istoken('|'))         {strcpy(ops, "or" );_ un=3;}


;-383   if (istoken('*'))                             _ un=4;


;-384   if (istoken('%'))                             _ un=5;


;-385   if (istoken('/'))                             _ un=6;     */


;-386 }

@@getop159:

;-387 int prleftreg() { prnl(); prs(ops); prs("  "); printreg(irg1, mod1); }
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

;-388 int prleftvar() { }

 ret
; ENDP
prleftreg_0 db "  ",0

prleftvar:  ; *** PROC ***

;-389 


;-390 int printvar(int i, int mode) {  }

 ret
; ENDP

printvar:  ; *** PROC ***
;Function : printvar, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   390 NULL bp+4    i
;  201 var sign word   390 NULL bp+6    mode;
 ENTER  0,0

;-391 


;-392 int doreg1(int iscmp1) { int i; char sz;
 LEAVE
 ret
; ENDP

doreg1:  ; *** PROC ***

;-393   getop();

;Function : doreg1, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   392 NULL bp+4    iscmp1
;  201 var sign word   392 NULL bp-2    i
;  202 var sign byte   392 NULL bp-4    sz;
 ENTER  4,0
 call getop

;-394   if (iscmp1 == 1) {

 mov ax, [bp+4]
 cmp ax, 1
 jne @@doreg1160

;-395       token=getlex();

 call getlex
 mov word [token], ax

;-396       if (isrelational() ==0) error1("relational expected");

 call isrelational
 cmp ax, 0
 jne @@doreg1161
 push doreg1_0
 call error1
 add  sp, 2

;-397       strcpy(ops, "cmp");

@@doreg1161:
 push doreg1_1
 lea  ax, [ops]
 push ax
 call strcpy
 add  sp, 4

;-398       }


;-399   if (un==1) { prleftreg(); return; }

@@doreg1160:
 mov al, [un]
 cmp al, 1
 jne @@doreg1162
 call prleftreg
 jmp @@retn

;-400 


;-401   if (istoken(T_CONST)) {prleftreg(); prs(", "); prL(lexvalL); goto reg1;}

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

;-402   


;-403   mod2=typeName(); irg2=checkreg();

@@doreg1163:
 call typeName
 mov word [mod2], ax
 call checkreg
 mov word [irg2], ax

;-404   if (irg2) {prleftreg(); prs(", "); printreg(irg2, mod2); goto reg1;}

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

;-405 


;-406   i=searchname();

@@doreg1164:
 call searchname
 mov word [bp-2], ax

;-407   gettypes(i);

 push word [bp-2]
 call gettypes
 add  sp, 2

;-408   ids2=signi; idw2=wi; idt2=typei;

 mov ax, [signi]
 mov word [ids2], ax
 mov ax, [wi]
 mov word [idw2], ax
 mov ax, [typei]
 mov word [idt2], ax

;-409   if (eqstr(ops,"mov")) {_ sz=0;

 push doreg1_4
 lea  ax, [ops]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@doreg1165
mov byte [bp-4], 0; sz

;-410     if (_ irg1 >= 17) if (_ idw2==1) sz++;  // cast byte to word or dword

cmp word [irg1], 17 ;unsigned : 1
 jl  @@doreg1166
cmp word [idw2], 1
 jne @@doreg1167
 inc  byte [bp-4]

;-411     if (_ irg1 >= 47) if (_ idw2==2) sz++; }// cast word to dword

@@doreg1167:
@@doreg1166:
cmp word [irg1], 47 ;unsigned : 1
 jl  @@doreg1168
cmp word [idw2], 2
 jne @@doreg1169
 inc  byte [bp-4]
@@doreg1169:
@@doreg1168:

;-412   if (sz) { if (ids2) strcpy(ops,"movsx"); else strcpy(ops,"movzx"); }

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

;-413 


;-414   prleftreg(); prs(", ");

@@doreg1170:
 call prleftreg
 push doreg1_7
 call prs
 add  sp, 2

;-415   


;-416 //  if (sz) { if (_ idw2==1) prs("byte "); else prs("word "); }


;-417   if (sz) pwi(idw2);

 mov al, [bp-4]
 or  al, al
 je @@doreg1173
 push word [idw2]
 call pwi
 add  sp, 2

;-418   


;-419   if (mod2 == 2) a(i);

@@doreg1173:
 mov ax, [mod2]
 cmp ax, 2
 jne @@doreg1174
 push word [bp-2]
 call a
 add  sp, 2

;-420   else  {pwi(i); v(i); }

 jmp @@doreg1175
@@doreg1174:
 push word [bp-2]
 call pwi
 add  sp, 2
 push word [bp-2]
 call v
 add  sp, 2

;-421   reg1: if (iscmp1 == 1) {cmpneg(0); prs(fname); expect(')'); }

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

;-422 }

@@doreg1176:

;-423 int checkreg() { // >=17 = 16bit, >=47 = 32bit

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

;-424   if (strlen(symbol) <  2) return 0;

 lea  ax, [symbol]
 push ax
 call strlen
 add  sp, 2
 cmp ax, 2
 jge @@checkreg177
 mov eax, 0
 jmp @@retn

;-425   if (eqstr(symbol,"al")) return 1;   if (eqstr(symbol,"cl")) return 3;

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

;-426   if (eqstr(symbol,"dl")) return 5;   if (eqstr(symbol,"bl")) return 7;

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

;-427   if (eqstr(symbol,"ah")) return 9;   if (eqstr(symbol,"ch")) return 11;

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

;-428   if (eqstr(symbol,"dh")) return 13;  if (eqstr(symbol,"bh")) return 15;

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

;-429   if (eqstr(symbol,"ax")) return 17;  if (eqstr(symbol,"cx")) return 19;

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

;-430   if (eqstr(symbol,"dx")) return 21;  if (eqstr(symbol,"bx")) return 23;

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

;-431   if (eqstr(symbol,"sp")) return 25;  if (eqstr(symbol,"bp")) return 27;

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

;-432   if (eqstr(symbol,"si")) return 29;  if (eqstr(symbol,"di")) return 31;

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

;-433   if (eqstr(symbol,"es")) return 33;  if (eqstr(symbol,"cs")) return 35;

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

;-434   if (eqstr(symbol,"ss")) return 37;  if (eqstr(symbol,"ds")) return 39;

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

;-435   if (eqstr(symbol,"fs")) return 41;  if (eqstr(symbol,"gs")) return 43;

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

;-436   // (eqstr(symbol,"ip")) return 45;


;-437   if (strlen(symbol) >   3) return 0;

@@checkreg199:
 lea  ax, [symbol]
 push ax
 call strlen
 add  sp, 2
 cmp ax, 3
 jle @@checkreg200
 mov eax, 0
 jmp @@retn

;-438   if (eqstr(symbol,"eax")) return 47; if (eqstr(symbol,"ecx")) return 50;

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

;-439   if (eqstr(symbol,"edx")) return 53; if (eqstr(symbol,"ebx")) return 56;

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

;-440   if (eqstr(symbol,"esp")) return 59; if (eqstr(symbol,"ebp")) return 62;

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

;-441   if (eqstr(symbol,"esi")) return 65; if (eqstr(symbol,"edi")) return 68;

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

;-442   if (eqstr(symbol,"cr0")) return 71;

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

;-443   return 0;   }

@@checkreg209:
 mov eax, 0
 jmp @@retn

;-444 char printregstr[]

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

;-445 ="*alcldlblahchdhbhaxcxdxbxspbpsidiescsssdsfsgsipeaxecxedxebxespebpesiedicr0";

printregstr db "*alcldlblahchdhbhaxcxdxbxspbpsidiescsssdsfsgsipeaxecxedxebxespebpesiedicr0",0

;-446 //          1         2         3         4         5         6         7


;-447 // 1 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3


;-448 void printreg(int i, int mode) {  unsigned int k; unsigned char c;


printreg:  ; *** PROC ***

;-449   if (_ mode == 1) prc('[');

;Function : printreg, Number of local variables: 4
;   # type sign width line used address name   list of local variables
;  200 var sign word   448 NULL bp+4    i
;  201 var sign word   448 NULL bp+6    mode
;  202 var unsg word   448 NULL bp-2    k
;  203 var unsg byte   448 NULL bp-4    c;
 ENTER  4,0
cmp word [bp+6], 1
 jne @@printreg210
 push 91
 call prc
 add  sp, 2

;-450   k = &printregstr + i; c=*k; prc(c); i++;

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

;-451   k = &printregstr + i; c=*k; prc(c);

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

;-452   if (i > 47) { i++; k = &printregstr + i; c=*k; prc(c); }

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

;-453   if (_ mode == 1) prc(']');

@@printreg211:
cmp word [bp+6], 1
 jne @@printreg212
 push 93
 call prc
 add  sp, 2

;-454 }

@@printreg212:

;-455 printpri(int w) { if (w == 1) printreg(1, 0); if (w == 2) printreg(17, 0);
 LEAVE
 ret
; ENDP

printpri:  ; *** PROC ***
;Function : printpri, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   455 NULL bp+4    w;
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

;-456   if (wi == 4) printreg (47, 0);

@@printpri214:
 mov ax, [wi]
 cmp ax, 4
 jne @@printpri215
 push 0
 push 47
 call printreg
 add  sp, 4

;-457 }

@@printpri215:

;-458 


;-459 


;-460 


;-461 int expr()
 LEAVE
 ret
; ENDP

expr:  ; *** PROC ***

;-462 { int mode; int id1;     int ixarr; int ixconst;


;-463   int ids;  int isCONST; int i;     unsigned char *p;


;-464   if (istoken(T_CONST)) { prs("\n mov eax, "); prL(lexvalL); return; }

;Function : expr, Number of local variables: 8
;   # type sign width line used address name   list of local variables
;  200 var sign word   462 NULL bp-2    mode
;  201 var sign word   462 NULL bp-4    id1
;  202 var sign word   462 NULL bp-6    ixarr
;  203 var sign word   462 NULL bp-8    ixconst
;  204 var sign word   463 NULL bp-10    ids
;  205 var sign word   463 NULL bp-12    isCONST
;  206 var sign word   463 NULL bp-14    i
;  207 ptr unsg byte   463 NULL bp-16    p;
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

;-465   mode=typeName(); /*0=V,1=*,2=&*/

@@expr216:
 call typeName
 mov word [bp-2], ax

;-466   mod1=mode;

 mov ax, [bp-2]
 mov word [mod1], ax

;-467   irg1=checkreg();

 call checkreg
 mov word [irg1], ax

;-468   if (irg1) { doreg1(0); return; }

 mov ax, [irg1]
 or  al, al
 je @@expr217
 push 0
 call doreg1
 add  sp, 2
 jmp @@retn

;-469   if (token=='(')  {docall1(); goto e1; }

@@expr217:
 mov ax, [token]
 cmp ax, 40
 jne @@expr218
 call docall1
 jmp @@e1

;-470 


;-471   id1=searchname(); gettypes(id1); ids=signi;  ixarr=0;  ixconst=0;

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

;-472     if (istoken('[')) { if (istoken(T_CONST)) {

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

;-473       ixconst=1; ixarr=lexvalL; expect(']');  }

 mov eax, 1
 mov word [bp-8], ax
 mov eax, [lexvalL]
 mov word [bp-6], ax
 push 93
 call expect
 add  sp, 2

;-474     else {ixarr=searchname(); expect(T_NAME); expect(']');

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

;-475     gettypes(ixarr);

 push word [bp-6]
 call gettypes
 add  sp, 2

;-476     if (widthi != 2) error1("Array index must be number or int"); } }

 mov ax, [widthi]
 cmp ax, 2
 je  @@expr222
 push expr_1
 call error1
 add  sp, 2
@@expr222:
@@expr221:

;-477   if (istoken(T_PLUSPLUS  )) {if(mode)error1("Only var allowed");

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

;-478      prs("\n inc  ");  pwi(wi); v(id1); goto e1;}

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

;-479   if (istoken(T_MINUSMINUS)) {if(mode)error1("Only Var allowed");

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

;-480      prs("\n dec  ");  pwi(wi); v(id1); goto e1;}

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

;-481        


;-482   if (istoken(T_PLUSASS   )) {compoundass("add", mode, id1); goto e1;}

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

;-483   if (istoken(T_MINUSASS  )) {compoundass("sub", mode, id1); goto e1;}

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

;-484   if (istoken(T_ANDASS    )) {compoundass("and", mode, id1); goto e1;}

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

;-485   if (istoken(T_ORASS     )) {compoundass("or" , mode, id1); goto e1;}    

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

;-486   if (istoken(T_MULASS    )) {error1("not implemented");}

@@expr230:
 push 1232
 call istoken
 add  sp, 2
 or  al, al
 je @@expr231
 push expr_10
 call error1
 add  sp, 2

;-487   if (istoken(T_DIVASS    )) {error1("not implemented");}

@@expr231:
 push 1233
 call istoken
 add  sp, 2
 or  al, al
 je @@expr232
 push expr_11
 call error1
 add  sp, 2

;-488 


;-489   if (istoken('=')) { expr();

@@expr232:
 push 61
 call istoken
 add  sp, 2
 or  al, al
 je @@expr233
 call expr

;-490   doassign(mode, id1, ixarr, ixconst); goto e1;  }

 push word [bp-8]
 push word [bp-6]
 push word [bp-4]
 push word [bp-2]
 call doassign
 add  sp, 8
 jmp @@e1

;-491   dovar1(mode, "mov", ixarr, id1);

@@expr233:
 push word [bp-4]
 push word [bp-6]
 push expr_12
 push word [bp-2]
 call dovar1
 add  sp, 8

;-492   


;-493 e1:    if (istoken('+')) rterm("add");

@@e1:
 push 43
 call istoken
 add  sp, 2
 or  al, al
 je @@expr234
 push expr_13
 call rterm
 add  sp, 2

;-494   else if (istoken('-')) rterm("sub" );

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

;-495   else if (istoken('&')) rterm("and" );

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

;-496   else if (istoken('|')) rterm("or" );  

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

;-497   else if (istoken(T_LESSLESS)) rterm("shl");

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

;-498   else if (istoken(T_GREATGREAT)) rterm("shr");  

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

;-499   else if (istoken('*')) domul (ids);

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

;-500   else if (istoken('/')) doidiv(ids);

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

;-501   else if (istoken('%')) domod (ids);

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

;-502   if (isrelational()) { rterm("cmp"); cmpneg(ids);}

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

;-503   return 0;

@@expr251:
 mov eax, 0
 jmp @@retn

;-504 }


;-505 


;-506 int compoundass(char *op, int mode, int id1) {

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

;-507   if(mode) error1("only scalar Var allowed");

;Function : compoundass, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte   506 NULL bp+4    op
;  201 var sign word   506 NULL bp+6    mode
;  202 var sign word   506 NULL bp+8    id1;
 ENTER  0,0
 mov ax, [bp+6]
 or  al, al
 je @@compoundass252
 push compoundass_0
 call error1
 add  sp, 2

;-508   prnl(); prs(op); prs("  "); 

@@compoundass252:
 call prnl
 push word [bp+4]
 call prs
 add  sp, 2
 push compoundass_1
 call prs
 add  sp, 2

;-509   gettypes(id1); pwi(wi); v(id1); prs(", ");

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

;-510   expect(T_CONST); prL(lexvalL);

 push 257
 call expect
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4

;-511 }


;-512 int dovar1(int mode, int op, int ixarr, int id1) { 
 LEAVE
 ret
; ENDP
compoundass_0 db "only scalar Var allowed",0
compoundass_1 db "  ",0
compoundass_2 db ", ",0

dovar1:  ; *** PROC ***

;-513   gettypes(id1);

;Function : dovar1, Number of local variables: 4
;   # type sign width line used address name   list of local variables
;  200 var sign word   512 NULL bp+4    mode
;  201 var sign word   512 NULL bp+6    op
;  202 var sign word   512 NULL bp+8    ixarr
;  203 var sign word   512 NULL bp+10    id1;
 ENTER  0,0
 push word [bp+10]
 call gettypes
 add  sp, 2

;-514   if (mode==1) {prs("\n mov bx, "); v(id1); prnl(); prs(op);

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

;-515     if(widthi == 1) prs(" al, [bx]\n mov ah, 0");

 mov ax, [widthi]
 cmp ax, 1
 jne @@dovar1254
 push dovar1_1
 call prs
 add  sp, 2

;-516     if(widthi == 2) prs(" ax, [bx]");

@@dovar1254:
 mov ax, [widthi]
 cmp ax, 2
 jne @@dovar1255
 push dovar1_2
 call prs
 add  sp, 2

;-517     if(widthi == 4) prs(" eax, [bx]");

@@dovar1255:
 mov ax, [widthi]
 cmp ax, 4
 jne @@dovar1256
 push dovar1_3
 call prs
 add  sp, 2

;-518     return; }

@@dovar1256:
 jmp @@retn

;-519   if (mode==2){prnl();prs(op);prs(" ax, "); a(id1); return; }

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

;-520   if (ixarr) {

@@dovar1257:
 mov ax, [bp+8]
 or  al, al
 je @@dovar1258

;-521     prs("\n mov bx, "); v(ixarr);

 push dovar1_5
 call prs
 add  sp, 2
 push word [bp+8]
 call v
 add  sp, 2

;-522     if (wi==2) prs("\n shl bx, 1");

 mov ax, [wi]
 cmp ax, 2
 jne @@dovar1259
 push dovar1_6
 call prs
 add  sp, 2

;-523     if (wi==4) prs("\n shl bx, 2");

@@dovar1259:
 mov ax, [wi]
 cmp ax, 4
 jne @@dovar1260
 push dovar1_7
 call prs
 add  sp, 2

;-524     prs("\n "); prs(op); prc(' '); printpri(wi); prs(", ");

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

;-525 // v(id1); prs(" [bx]");


;-526     prc('['); printName(id1); prs(" + bx]"); return; }

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

;-527   prnl();prs(op); prc(' '); printpri(wi); prs(", ");  v(id1);

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

;-528 }


;-529 int rterm(char *op) {int mode; int opint; int ixarr; int id1;

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

;-530   if (istoken(T_CONST)) { prnl(); prs(op); prc(' '); printpri(wi); prs(", ");

;Function : rterm, Number of local variables: 5
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte   529 NULL bp+4    op
;  201 var sign word   529 NULL bp-2    mode
;  202 var sign word   529 NULL bp-4    opint
;  203 var sign word   529 NULL bp-6    ixarr
;  204 var sign word   529 NULL bp-8    id1;
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

;-531     prL(lexvalL); return;}

 push dword [lexvalL]
 call prL
 add  sp, 4
 jmp @@retn

;-532   mode=typeName(); id1=searchname(); ixarr=0;

@@rterm261:
 call typeName
 mov word [bp-2], ax
 call searchname
 mov word [bp-8], ax
 mov eax, 0
 mov word [bp-6], ax

;-533   if (istoken('[')) { ixarr=searchname(); expect(T_NAME); expect(']');  

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

;-534     gettypes(ixarr);

 push word [bp-6]
 call gettypes
 add  sp, 2

;-535     if (widthi != 2) error1("Array index must be int"); }

 mov ax, [widthi]
 cmp ax, 2
 je  @@rterm263
 push rterm_1
 call error1
 add  sp, 2
@@rterm263:

;-536   if (eqstr(symbol,"ax")) return;

@@rterm262:
 push rterm_2
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@rterm264
 jmp @@retn

;-537   opint=op; dovar1(mode, opint, ixarr, id1);

@@rterm264:
 mov ax, [bp+4]
 mov word [bp-4], ax
 push word [bp-8]
 push word [bp-6]
 push word [bp-4]
 push word [bp-2]
 call dovar1
 add  sp, 8

;-538 }


;-539 int doassign(int mode, int i, int ixarr, int ixconst) {

@@retn: LEAVE
 ret
; ENDP
rterm_0 db ", ",0
rterm_1 db "Array index must be int",0
rterm_2 db "ax",0

doassign:  ; *** PROC ***

;-540   gettypes(i);

;Function : doassign, Number of local variables: 4
;   # type sign width line used address name   list of local variables
;  200 var sign word   539 NULL bp+4    mode
;  201 var sign word   539 NULL bp+6    i
;  202 var sign word   539 NULL bp+8    ixarr
;  203 var sign word   539 NULL bp+10    ixconst;
 ENTER  0,0
 push word [bp+6]
 call gettypes
 add  sp, 2

;-541   if (mode==1) {prs("\n mov  bx, ");v(i);

 mov ax, [bp+4]
 cmp ax, 1
 jne @@doassign265
 push doassign_0
 call prs
 add  sp, 2
 push word [bp+6]
 call v
 add  sp, 2

;-542     prs("\n mov  [bx], "); printpri(widthi); return;}

 push doassign_1
 call prs
 add  sp, 2
 push word [widthi]
 call printpri
 add  sp, 2
 jmp @@retn

;-543   if (mode==2) {prs("\n mov  ");a(i); prs(", ax"); return;}

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

;-544   if (ixarr) {  prs("\n mov bx, ");

@@doassign266:
 mov ax, [bp+8]
 or  al, al
 je @@doassign267
 push doassign_4
 call prs
 add  sp, 2

;-545     if(ixconst) prunsign1(ixarr); else v(ixarr);

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

;-546     if (wi==2) prs("\n shl bx, 1");

@@doassign269:
 mov ax, [wi]
 cmp ax, 2
 jne @@doassign270
 push doassign_5
 call prs
 add  sp, 2

;-547     if (wi==4) prs("\n shl bx, 2");

@@doassign270:
 mov ax, [wi]
 cmp ax, 4
 jne @@doassign271
 push doassign_6
 call prs
 add  sp, 2

;-548     prs("\n mov ["); printName(i); prs("+bx], "); printpri(wi); return; }

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

;-549   prs("\n mov "); pwi(wi); v(i); prs(", "); printpri(wi);

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

;-550 }


;-551 int domul(int ids) {

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

;-552   if (ids) rterm("imul"); else {

;Function : domul, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   551 NULL bp+4    ids;
 ENTER  0,0
 mov ax, [bp+4]
 or  al, al
 je @@domul272
 push domul_0
 call rterm
 add  sp, 2
 jmp @@domul273
@@domul272:

;-553   if (istoken(T_CONST)) {

 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@domul274

;-554       prs("\n mov ebx, "); prL(lexvalL); prs("\n mul ebx"); }

 push domul_1
 call prs
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4
 push domul_2
 call prs
 add  sp, 2

;-555   else error1("with MUL only const number as multiplicator allowed"); } }

 jmp @@domul275
@@domul274:
 push domul_3
 call error1
 add  sp, 2
@@domul275:
@@domul273:

;-556 int doidiv(int ids) { int mode; int id1;
 LEAVE
 ret
; ENDP
domul_0 db "imul",0
domul_1 db "\n mov ebx, ",0
domul_2 db "\n mul ebx",0
domul_3 db "with MUL only const number as multiplicator allowed",0

doidiv:  ; *** PROC ***

;-557   if (istoken(T_CONST)) {

;Function : doidiv, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   556 NULL bp+4    ids
;  201 var sign word   556 NULL bp-2    mode
;  202 var sign word   556 NULL bp-4    id1;
 ENTER  4,0
 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@doidiv276

;-558     prs("\n mov bx, "); prL(lexvalL);

 push doidiv_0
 call prs
 add  sp, 2
 push dword [lexvalL]
 call prL
 add  sp, 4

;-559     if (ids) prs("\n cwd\n idiv bx"); else prs("\n mov dx, 0\n div bx"); }

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

;-560   else {

 jmp @@doidiv279
@@doidiv276:

;-561     mode=typeName(); id1=searchname();

 call typeName
 mov word [bp-2], ax
 call searchname
 mov word [bp-4], ax

;-562     if (mode) error1("only const number or int as divisor allowed");

 mov ax, [bp-2]
 or  al, al
 je @@doidiv280
 push doidiv_3
 call error1
 add  sp, 2

;-563     gettypes(id1);

@@doidiv280:
 push word [bp-4]
 call gettypes
 add  sp, 2

;-564     if (typei) error1("only int as simple var divisor allowed");

 mov ax, [typei]
 or  al, al
 je @@doidiv281
 push doidiv_4
 call error1
 add  sp, 2

;-565     if (wi!=2) error1("only int, no byte as divisor allowed");

@@doidiv281:
 mov ax, [wi]
 cmp ax, 2
 je  @@doidiv282
 push doidiv_5
 call error1
 add  sp, 2

;-566     prs("\n mov bx, "); v(id1);

@@doidiv282:
 push doidiv_6
 call prs
 add  sp, 2
 push word [bp-4]
 call v
 add  sp, 2

;-567     if (ids) prs("\n cwd\n idiv bx"); else prs("\n mov dx, 0\n div bx"); }

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

;-568 }

@@doidiv279:

;-569 int domod(int ids) { doidiv(ids); prs("\n mov ax, dx"); }
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
;  200 var sign word   569 NULL bp+4    ids;
 ENTER  0,0
 push word [bp+4]
 call doidiv
 add  sp, 2
 push domod_0
 call prs
 add  sp, 2

;-570 


;-571 int docalltype[10]; int docallvalue[10];
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

;-572 char procname[IDLENMAX]; // 1=CONST, 2=String, 3=&, 4=Name 5=register

section .bss
absolute 46904
procname resb 16
section .text

;-573 


;-574 void docall1() {int i; int narg; int t0; int n0;  int sz32;


docall1:  ; *** PROC ***

;-575   narg=0;  sz32=0;

;Function : docall1, Number of local variables: 5
;   # type sign width line used address name   list of local variables
;  200 var sign word   574 NULL bp-2    i
;  201 var sign word   574 NULL bp-4    narg
;  202 var sign word   574 NULL bp-6    t0
;  203 var sign word   574 NULL bp-8    n0
;  204 var sign word   574 NULL bp-10    sz32;
 ENTER  10,0
 mov eax, 0
 mov word [bp-4], ax
 mov eax, 0
 mov word [bp-10], ax

;-576   checknamelen();

 call checknamelen

;-577   strcpy(&procname, symbol);

 lea  ax, [symbol]
 push ax
 lea  ax, [procname]
 push ax
 call strcpy
 add  sp, 4

;-578   storecall();

 call storecall

;-579   expect('(');

 push 40
 call expect
 add  sp, 2

;-580 	if (istoken(')') ==0 ) {

 push 41
 call istoken
 add  sp, 2
 cmp ax, 0
 jne @@docall1285

;-581 	  do { narg++;

@@docall1286:
 inc  word [bp-4]

;-582 	    if (narg >9 ) error1("Max. 9 parameters");  t0=0;

 mov ax, [bp-4]
 cmp ax, 9
 jle @@docall1287
 push docall1_0
 call error1
 add  sp, 2
@@docall1287:
 mov eax, 0
 mov word [bp-6], ax

;-583       if(istoken(T_CONST)) {t0=1; n0=lexvalL; }

 push 257
 call istoken
 add  sp, 2
 or  al, al
 je @@docall1288
 mov eax, 1
 mov word [bp-6], ax
 mov eax, [lexvalL]
 mov word [bp-8], ax

;-584       if(istoken(T_STRING)){t0=2; n0=nconst;

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

;-585         eprs("\n"); eprs(fname); eprc(95);eprnum(nconst);eprs(" db ");

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

;-586         eprc(34);eprs(symbol);eprc(34);eprs(",0"); nconst++; }

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

;-587       if(istoken('&'))     {t0=3; name1(); n0=searchname();}

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

;-588       if(istoken(T_NAME))  { n0=checkreg();

@@docall1290:
 push 256
 call istoken
 add  sp, 2
 or  al, al
 je @@docall1291
 call checkreg
 mov word [bp-8], ax

;-589         if (n0) t0=5;

 mov ax, [bp-8]
 or  al, al
 je @@docall1292
 mov eax, 5
 mov word [bp-6], ax

;-590         else {t0=4; n0=searchname();

 jmp @@docall1293
@@docall1292:
 mov eax, 4
 mov word [bp-6], ax
 call searchname
 mov word [bp-8], ax

;-591           p1=&GType; p1=p1+n0; if (*p1=='&') t0=3; }  }

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

;-592       if (t0==0) error1("parameter not recognized (no * allowed)");

@@docall1291:
 mov ax, [bp-6]
 cmp ax, 0
 jne @@docall1295
 push docall1_4
 call error1
 add  sp, 2

;-593       docalltype [narg] = t0;

@@docall1295:
 mov ax, [bp-6]
 mov bx, [bp-4]
 shl bx, 1
 mov [docalltype+bx], ax

;-594       docallvalue[narg] = n0;

 mov ax, [bp-8]
 mov bx, [bp-4]
 shl bx, 1
 mov [docallvalue+bx], ax

;-595     } while (istoken(','));

 push 44
 call istoken
 add  sp, 2
 or  al, al
 je @@docall1296
 jmp @@docall1286
@@docall1296:

;-596     


;-597   	expect(')');  i=narg;

 push 41
 call expect
 add  sp, 2
 mov ax, [bp-4]
 mov word [bp-2], ax

;-598     do {

@@docall1297:

;-599       t0 = docalltype [i];

 mov bx, [bp-2]
 shl bx, 1
 mov ax, [docalltype + bx]
 mov word [bp-6], ax

;-600       n0 = docallvalue[i];     

 mov bx, [bp-2]
 shl bx, 1
 mov ax, [docallvalue + bx]
 mov word [bp-8], ax

;-601       if(t0==1){ prs("\n push "); pint1(n0);}

 mov ax, [bp-6]
 cmp ax, 1
 jne @@docall1298
 push docall1_5
 call prs
 add  sp, 2
 push word [bp-8]
 call pint1
 add  sp, 2

;-602       if(t0==2){ prs("\n push "); if(NASM==0) prs("offset ");

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

;-603         prs(fname);prc(95);pint1(n0);}

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

;-604       if(t0==3){ prs("\n lea  ax, "); if(NASM==0)prs("word ptr ");  v(n0);

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

;-605         prs("\n push ax");}

 push docall1_10
 call prs
 add  sp, 2

;-606       if(t0==4){ gettypes(n0);

@@docall1301:
 mov ax, [bp-6]
 cmp ax, 4
 jne @@docall1303
 push word [bp-8]
 call gettypes
 add  sp, 2

;-607         if(wi==4)      { prs("\n push "); pwi(wi); v(n0); sz32+=2; }

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

;-608         else if(wi==2) { prs("\n push "); pwi(wi); v(n0);}

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

;-609         else { prs("\n mov al, byte ");  if(NASM==0)prs("ptr "); v(n0);

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

;-610         prs("\n mov ah, 0\n push ax"); } }

 push docall1_15
 call prs
 add  sp, 2
@@docall1307:
@@docall1305:

;-611       if(t0==5){ prs("\n push "); printreg(n0, 0); if (n0 >= 47) sz32+=2;  }

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

;-612    i--; } while (i > 0);  }

@@docall1309:
 dec  word [bp-2]
 mov ax, [bp-2]
 cmp ax, 0
 jle @@docall1311
 jmp @@docall1297
@@docall1311:

;-613 	 prs("\n call "); prs(&procname);

@@docall1285:
 push docall1_17
 call prs
 add  sp, 2
 lea  ax, [procname]
 push ax
 call prs
 add  sp, 2

;-614 	 if (narg>0) {prs("\n add  sp, ");

 mov ax, [bp-4]
 cmp ax, 0
 jle @@docall1312
 push docall1_18
 call prs
 add  sp, 2

;-615      narg=narg+narg; narg=narg+sz32; pint1(narg); } }

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

;-616 //********************************************************************


;-617 int main() { getarg();
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

;-618   memresize(4096);       if (DOS_ERR) error1("memresize");

 push 4096
 call memresize
 add  sp, 2
 mov ax, [DOS_ERR]
 or  al, al
 je @@main313
 push main_0
 call error1
 add  sp, 2

;-619   segE=memalloc(4096);   if (DOS_ERR) error1("alloc memory");

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

;-620   CNameTop=0;            getfirstchar();

@@main314:
 mov eax, 0
 mov word [CNameTop], ax
 call getfirstchar

;-621   cputs("Compiling, ");   parse(); cputs("Check calls ");

 push main_2
 call cputs
 add  sp, 2
 call parse
 push main_3
 call cputs
 add  sp, 2

;-622   callrecursive=0; checkcalls(); epilog();

 mov eax, 0
 mov word [callrecursive], ax
 call checkcalls
 call epilog

;-623 }


;-624 int getfirstchar() { fgetsp=&fgetsdest; *fgetsp=0; thechar=fgets1(); }

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

;-625 char *arglen=0x80; char *argv=0x82;

 ret
; ENDP
arglen dw 128
argv dw 130

;-626 


;-627 int getarg() { int arglen1; int i; char *c;


getarg:  ; *** PROC ***

;-628   arglen1=*arglen;                                     NASM=1; //default

;Function : getarg, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   627 NULL bp-2    arglen1
;  201 var sign word   627 NULL bp-4    i
;  202 ptr sign byte   627 NULL bp-6    c;
 ENTER  6,0
 mov bx, [arglen]
 mov al, [bx]
 mov ah, 0
 mov word [bp-2], ax
 mov eax, 1
 mov byte [NASM], al

;-629   if (arglen1) { i=arglen1+129; *i=0; }

 mov ax, [bp-2]
 or  al, al
 je @@getarg315
 mov ax, [bp-2]
 add ax, 129
 mov word [bp-4], ax
 mov eax, 0
 mov  bx, [bp-4]
 mov  [bx], ax

;-630   else { cputs(Version1);

 jmp @@getarg316
@@getarg315:
 lea  ax, [Version1]
 push ax
 call cputs
 add  sp, 2

;-631     cputs(" Usage: A.COM [/N/P] in_file[.C] (/N=NASM, /P=ProtMode): ");

 push getarg_0
 call cputs
 add  sp, 2

;-632     DOS_NoBytes=readRL(argv, 0, CMDLENMAX); c=DOS_NoBytes+128; *c=0; prnl(); }

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

;-633   strcpy(namein, argv);

@@getarg316:
 push word [argv]
 lea  ax, [namein]
 push ax
 call strcpy
 add  sp, 4

;-634   if (instr2(namein, '.') == 0) strcat1(namein, ".C");

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

;-635   toupper(namein);

@@getarg317:
 lea  ax, [namein]
 push ax
 call toupper
 add  sp, 2

;-636   c=instr2(namein, '/');

 push 47
 lea  ax, [namein]
 push ax
 call instr2
 add  sp, 4
 mov word [bp-6], ax

;-637   while (c != 0)  { c++;   //todo: only one parameter possible

@@getarg318:
 mov ax, [bp-6]
 cmp ax, 0
 je  @@getarg319
 inc  word [bp-6]

;-638          if (*c == 'N') NASM=1;

 mov bx, [bp-6]
 mov al, [bx]
 mov ah, 0
 cmp ax, 78
 jne @@getarg320
 mov eax, 1
 mov byte [NASM], al

;-639          if (*c == 'P') PROTECTED=1;

@@getarg320:
 mov bx, [bp-6]
 mov al, [bx]
 mov ah, 0
 cmp ax, 80
 jne @@getarg321
 mov eax, 1
 mov byte [PROTECTED], al

;-640 //    else {cputs("Parameter unknown "); exitR(3);  }


;-641     c+=2; strcpy(namein, c);

@@getarg321:
 add  word [bp-6], 2
 push word [bp-6]
 lea  ax, [namein]
 push ax
 call strcpy
 add  sp, 4

;-642     c=instr2(namein, '/'); }

 push 47
 lea  ax, [namein]
 push ax
 call instr2
 add  sp, 4
 mov word [bp-6], ax

;-643   ltrim(namein);

 jmp @@getarg318
@@getarg319:
 lea  ax, [namein]
 push ax
 call ltrim
 add  sp, 2

;-644   strcpy(namelst, namein); i=strlen(namelst); i--; c=&namelst+i; *c='S';

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

;-645  


;-646   fdin=openR (namein);

 lea  ax, [namein]
 push ax
 call openR
 add  sp, 2
 mov word [fdin], ax

;-647   if(DOS_ERR){cputs("Source file missing (.C): "); cputs(namein); exitR(1); }

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

;-648   fdout=creatR(namelst);

@@getarg322:
 lea  ax, [namelst]
 push ax
 call creatR
 add  sp, 2
 mov word [fdout], ax

;-649   if(DOS_ERR){cputs("list file not creatable: ");cputs(namelst);exitR(2);}

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

;-650   prs("\n; ");prs(Version1);

@@getarg323:
 push getarg_4
 call prs
 add  sp, 2
 lea  ax, [Version1]
 push ax
 call prs
 add  sp, 2

;-651   prs(", Arglen: "); pint1(arglen1); if(arglen1){prs(", Argv: "); prs(argv);}

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

;-652   prs(", Source: "); prs(namein);  prs(", Output asm: "); prs(namelst);

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

;-653   prs("\n;PROTECTED: "); pint1(PROTECTED);

 push getarg_9
 call prs
 add  sp, 2
 mov al, byte [PROTECTED]
 mov ah, 0
 push ax
 call pint1
 add  sp, 2

;-654   if (isvirtual86()) prs(" V86 ON. ");else prs(" V86 OFF. ");

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

;-655   if (is32bit()) prs(" 32bit: ON. "); else prs("  32bit: OFF. ");

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

;-656   if (NASM) prs("\norg  256 ; NASM ON\njmp main"); else

@@getarg328:
 mov al, [NASM]
 or  al, al
 je @@getarg329
 push getarg_14
 call prs
 add  sp, 2

;-657   prs("\n.MODEL TINY,C\n.386P\n.CODE\nJUMPS\nLOCALS\nSTARTUPCODE\njmp main");

 jmp @@getarg330
@@getarg329:
 push getarg_15
 call prs
 add  sp, 2

;-658   if (PROTECTED) {prs("\n; Protected (unreal) mode ON. Ldata: "); prL(ldata);

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

;-659   if (isvirtual86()) cputs(" V86 ON. ");else cputs(" V86 OFF. ");

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

;-660   if (is32bit()) cputs(" 32bit: ON. "); else cputs("  32bit: OFF. ");

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

;-661   INITCPU32();

@@getarg335:
 call INITCPU32

;-662   prs("\n;After INITCPU32: ");

 push getarg_21
 call prs
 add  sp, 2

;-663   if (isvirtual86()) cputs(" after INIT V86 ON. ");

 call isvirtual86
 or  al, al
 je @@getarg336
 push getarg_22
 call cputs
 add  sp, 2

;-664     else cputs(" after INIT V86 OFF. ");

 jmp @@getarg337
@@getarg336:
 push getarg_23
 call cputs
 add  sp, 2

;-665   if (is32bit()) cputs(" 32bit: ON. "); else cputs("  32bit: OFF. ");

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

;-666    if (isvirtual86()) prs(" V86 ON. ");else prs(" V86 OFF. ");

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

;-667   if (is32bit()) prs(" 32bit: ON. "); else prs("  32bit: OFF. ");   }

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

;-668 }

@@getarg331:

;-669 ltrim(char *s) {
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

;-670     }

;Function : ltrim, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte   669 NULL bp+4    s;
 ENTER  0,0

;-671 int parse() { token=getlex(); do {
 LEAVE
 ret
; ENDP

parse:  ; *** PROC ***
 call getlex
 mov word [token], ax
@@parse344:

;-672     if (token <= 0) return 1;

 mov ax, [token]
 cmp ax, 0
 jg  @@parse345
 mov eax, 1
 jmp @@retn

;-673     if (istoken('#')) {

@@parse345:
 push 35
 call istoken
 add  sp, 2
 or  al, al
 je @@parse346

;-674       if (istoken(T_DEFINE)) dodefine();

 push 511
 call istoken
 add  sp, 2
 or  al, al
 je @@parse347
 call dodefine

;-675       else if (istoken(T_INCLUDE)) doinclude();

 jmp @@parse348
@@parse347:
 push 510
 call istoken
 add  sp, 2
 or  al, al
 je @@parse349
 call doinclude

;-676       else error1("define or include expected");  }

 jmp @@parse350
@@parse349:
 push parse_0
 call error1
 add  sp, 2
@@parse350:
@@parse348:

;-677     else{ typeName();

 jmp @@parse351
@@parse346:
 call typeName

;-678     if (token=='(') dofunc(); else if (istoken('!')) doLdata();else doglob();}

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

;-679   } while(1);

@@parse351:
 mov eax, 1
 or  al, al
 je @@parse356
 jmp @@parse344
@@parse356:

;-680 }


;-681 int checkcalls() { int i; int j; int k;

@@retn:
 ret
; ENDP
parse_0 db "define or include expected",0

checkcalls:  ; *** PROC ***

;-682   prs("\n \n; missing functions: ");

;Function : checkcalls, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   681 NULL bp-2    i
;  201 var sign word   681 NULL bp-4    j
;  202 var sign word   681 NULL bp-6    k;
 ENTER  6,0
 push checkcalls_0
 call prs
 add  sp, 2

;-683   i=0;  k=0;

 mov eax, 0
 mov word [bp-2], ax
 mov eax, 0
 mov word [bp-6], ax

;-684   while (i < CTop) {  pt=CName[i]; from_far(NA, pt);

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

;-685     j=0;

 mov eax, 0
 mov word [bp-4], ax

;-686     do {  p1=FName[j]; from_far(NB, p1);

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

;-687       if (eqstr(NA, NB)){ CUnres[i]=1; j=FTop; }

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

;-688       j++;

@@checkcalls360:
 inc  word [bp-4]

;-689       } while (j < FTop);

 mov ax, [bp-4]
 cmp ax, [FTop]
 jge @@checkcalls361
 jmp @@checkcalls359
@@checkcalls361:

;-690     if (j == FTop) { k++; prs("\n; "); prs(NA); }

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

;-691     i++; }

@@checkcalls362:
 inc  word [bp-2]

;-692   if (k!=0) doar(k); else {prs(" All FUNCTIONs in place");

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

;-693     cputs(" OK! "); }

 push checkcalls_3
 call cputs
 add  sp, 2

;-694 }

@@checkcalls364:

;-695 char wasfunction;
 LEAVE
 ret
; ENDP
checkcalls_0 db "\n \n; missing functions: ",0
checkcalls_1 db "\n; ",0
checkcalls_2 db " All FUNCTIONs in place",0
checkcalls_3 db " OK! ",0
wasfunction db 0

;-696 int doar(int k) { int i; int fdtemp; int fdout1; int used; int found;


doar:  ; *** PROC ***

;-697   cputs("  Open CALLs :"); pint(k);

;Function : doar, Number of local variables: 6
;   # type sign width line used address name   list of local variables
;  200 var sign word   696 NULL bp+4    k
;  201 var sign word   696 NULL bp-2    i
;  202 var sign word   696 NULL bp-4    fdtemp
;  203 var sign word   696 NULL bp-6    fdout1
;  204 var sign word   696 NULL bp-8    used
;  205 var sign word   696 NULL bp-10    found;
 ENTER  10,0
 push doar_0
 call cputs
 add  sp, 2
 push word [bp+4]
 call pint
 add  sp, 2

;-698   prs("\n; Number of unresolved CALLs :"); printint51(k);

 push doar_1
 call prs
 add  sp, 2
 push word [bp+4]
 call printint51
 add  sp, 2

;-699   fdin=openR (archivename);

 lea  ax, [archivename]
 push ax
 call openR
 add  sp, 2
 mov word [fdin], ax

;-700   if(DOS_ERR){cputs("Archive file missing: "); cputs(archivename); exitR(3);}

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

;-701   prs("\n;use archive file: "); prs(archivename);

@@doar365:
 push doar_3
 call prs
 add  sp, 2
 lea  ax, [archivename]
 push ax
 call prs
 add  sp, 2

;-702   fdtemp=fdout; wasfunction=0; getfirstchar();

 mov ax, [fdout]
 mov word [bp-4], ax
 mov eax, 0
 mov byte [wasfunction], al
 call getfirstchar

;-703   do { fdout=0;do {found=getfunctionhead();}while (found==0); fdout=fdtemp;

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

;-704        if (found > 0) { used=0; i=0;

 mov ax, [bp-10]
 cmp ax, 0
 jle @@doar369
 mov eax, 0
 mov word [bp-8], ax
 mov eax, 0
 mov word [bp-2], ax

;-705          while (i < CTop) { pt=CName[i]; from_far(NA, pt);

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

;-706            if (eqstr(symbol, NA)) {

 lea  ax, [NA]
 push ax
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@doar372

;-707              if (CUnres[i] == 0) {CUnres[i]=1; used++; } }       i++; }

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

;-708            if (used) { prs("\n;Number of CALLs:"); printint51(used);

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

;-709               prs(" : "); prs(symbol); dofunc(); wasfunction=1; }  }

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

;-710      } while (token);

@@doar369:
 mov ax, [token]
 or  al, al
 je @@doar375
 jmp @@doar366
@@doar375:

;-711   prs("\n;End of archive file. ");

 push doar_6
 call prs
 add  sp, 2

;-712   callrecursive++; if (callrecursive < 5) checkcalls();

 inc  word [callrecursive]
 mov ax, [callrecursive]
 cmp ax, 5
 jge @@doar376
 call checkcalls

;-713     else {putch(10); cputs("***ERROR*** function(s) missing! ");

 jmp @@doar377
@@doar376:
 push 10
 call putch
 add  sp, 2
 push doar_7
 call cputs
 add  sp, 2

;-714     error1("At least 1 function is missing in archive file! "); }

 push doar_8
 call error1
 add  sp, 2

;-715 }

@@doar377:

;-716 int getfunctionhead() {
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

;-717   if (wasfunction) wasfunction=0; else token=getlex();

 mov al, [wasfunction]
 or  al, al
 je @@getfunctionhead378
 mov eax, 0
 mov byte [wasfunction], al
 jmp @@getfunctionhead379
@@getfunctionhead378:
 call getlex
 mov word [token], ax

;-718   if (token == 0) return 0xFFFF;

@@getfunctionhead379:
 mov ax, [token]
 cmp ax, 0
 jne @@getfunctionhead380
 mov eax, 65535
 jmp @@retn

;-719   if(istoken(T_INT))  { if (token != T_NAME) return 0;

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

;-720   token=getlex(); if (token == '(') return 1; }

@@getfunctionhead382:
 call getlex
 mov word [token], ax
 mov ax, [token]
 cmp ax, 40
 jne @@getfunctionhead383
 mov eax, 1
 jmp @@retn
@@getfunctionhead383:

;-721   return 0;

@@getfunctionhead381:
 mov eax, 0
 jmp @@retn

;-722 }


;-723 void doinclude() { int fdtemp;

@@retn:
 ret
; ENDP

doinclude:  ; *** PROC ***

;-724   if (token==T_STRING) {  fdtemp=fdin;

;Function : doinclude, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   723 NULL bp-2    fdtemp;
 ENTER  2,0
 mov ax, [token]
 cmp ax, 258
 jne @@doinclude384
 mov ax, [fdin]
 mov word [bp-2], ax

;-725   prs("\n;Use include file: "); prs(symbol);

 push doinclude_0
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2

;-726   fdin=openR(symbol);

 lea  ax, [symbol]
 push ax
 call openR
 add  sp, 2
 mov word [fdin], ax

;-727   if (DOS_ERR !=0) {LIST=1;

 mov ax, [DOS_ERR]
 cmp ax, 0
 je  @@doinclude385
 mov eax, 1
 mov byte [LIST], al

;-728     prs("\n;Include file missing: "); prs(symbol);

 push doinclude_1
 call prs
 add  sp, 2
 lea  ax, [symbol]
 push ax
 call prs
 add  sp, 2

;-729     cputs(" STOP!!!");

 push doinclude_2
 call cputs
 add  sp, 2

;-730     error1("\n; Stop!!");

 push doinclude_3
 call error1
 add  sp, 2

;-731     }


;-732   linenoinclude=lineno; lineno=1;

@@doinclude385:
 mov ax, [lineno]
 mov word [linenoinclude], ax
 mov eax, 1
 mov word [lineno], ax

;-733   parse(); lineno=linenoinclude;

 call parse
 mov ax, [linenoinclude]
 mov word [lineno], ax

;-734   fdin=fdtemp; prs("\n;Back to main program: "); prs(namein);

 mov ax, [bp-2]
 mov word [fdin], ax
 push doinclude_4
 call prs
 add  sp, 2
 lea  ax, [namein]
 push ax
 call prs
 add  sp, 2

;-735   getfirstchar(); token=getlex(); }

 call getfirstchar
 call getlex
 mov word [token], ax

;-736 }

@@doinclude384:

;-737 int dodefine() { int i; int j; int fdtemp;
 LEAVE
 ret
; ENDP
doinclude_0 db "\n;Use include file: ",0
doinclude_1 db "\n;Include file missing: ",0
doinclude_2 db " STOP!!!",0
doinclude_3 db "\n; Stop!!",0
doinclude_4 db "\n;Back to main program: ",0

dodefine:  ; *** PROC ***

;-738   if (eqstr(symbol, "BSS"   )) {BSS =1; token=getlex(); return; }

;Function : dodefine, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   737 NULL bp-2    i
;  201 var sign word   737 NULL bp-4    j
;  202 var sign word   737 NULL bp-6    fdtemp;
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

;-739   if (eqstr(symbol, "LIST"  )) {LIST=1; token=getlex(); return; }

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

;-740   if (eqstr(symbol, "NOLIST")) {LIST=0; token=getlex(); return; }

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

;-741   if (eqstr(symbol, "ORGDATA")) {token=getlex();

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

;-742     if (token==T_CONST)  { ORGDATAORIG=lexvalL; orgData=lexvalL; }

 mov ax, [token]
 cmp ax, 257
 jne @@dodefine390
 mov eax, [lexvalL]
 mov dword [ORGDATAORIG], eax
 mov eax, [lexvalL]
 mov dword [orgData], eax

;-743     else  error1("start address missing"); token=getlex(); return; }

 jmp @@dodefine391
@@dodefine390:
 push dodefine_4
 call error1
 add  sp, 2
@@dodefine391:
 call getlex
 mov word [token], ax
 jmp @@retn

;-744   if (eqstr(symbol, "ARCHIVE")) {token=getlex();

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

;-745     if (token==T_STRING) { prs("\n;Use archive file: ");

 mov ax, [token]
 cmp ax, 258
 jne @@dodefine393
 push dodefine_6
 call prs
 add  sp, 2

;-746     strcpy(archivename, symbol); prs(archivename);

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

;-747     } else error1("Name of archive file missing"); token=getlex(); return;}

 jmp @@dodefine394
@@dodefine393:
 push dodefine_7
 call error1
 add  sp, 2
@@dodefine394:
 call getlex
 mov word [token], ax
 jmp @@retn

;-748    expect(T_NAME);

@@dodefine392:
 push 256
 call expect
 add  sp, 2

;-749   if (token==T_CONST) { 

 mov ax, [token]
 cmp ax, 257
 jne @@dodefine395

;-750     if (GTop >= LSTART) error1("global table (define) full");

 mov ax, [GTop]
 cmp ax, 200 ;unsigned : 1
 jl  @@dodefine396
 push dodefine_8
 call error1
 add  sp, 2

;-751     checknamelen();

@@dodefine396:
 call checknamelen

;-752     GSign [GTop]='U'; GWidth[GTop]=1; GType [GTop]='#';

 mov eax, 85
 mov bx, [GTop]
 mov [GSign+bx], al
 mov eax, 1
 mov bx, [GTop]
 mov [GWidth+bx], al
 mov eax, 35
 mov bx, [GTop]
 mov [GType+bx], al

;-753     GLino [GTop]=lineno-1; GUsed [GTop]=0;

 mov ax, [lineno]
 sub ax, 1
 mov bx, [GTop]
 shl bx, 1
 mov [GLino+bx], ax
 mov eax, 0
 mov bx, [GTop]
 shl bx, 1
 mov [GUsed+bx], ax

;-754     GAdr  [GTop]=LONG0;

 mov eax, [LONG0]
 mov bx, [GTop]
 shl bx, 2
 mov [GAdr+bx], eax

;-755     GName [GTop] = CNameTop; storeName();

 mov ax, [CNameTop]
 mov bx, [GTop]
 shl bx, 1
 mov [GName+bx], ax
 call storeName

;-756     GData[GTop]=lexvalL;

 mov eax, [lexvalL]
 mov bx, [GTop]
 shl bx, 2
 mov [GData+bx], eax

;-757     expect(T_CONST); GTop++;  } 

 push 257
 call expect
 add  sp, 2
 inc  word [GTop]

;-758 }

@@dodefine395:

;-759 int stmt() { int c; char cha;

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

;-760        if(istoken('{'))     {while(istoken('}')==0) stmt();}

;Function : stmt, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   759 NULL bp-2    c
;  201 var sign byte   759 NULL bp-4    cha;
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

;-761   else if(istoken(T_IF))    doif();

 jmp @@stmt400
@@stmt397:
 push 513
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt401
 call doif

;-762   else if(istoken(T_DO))    dodo();

 jmp @@stmt402
@@stmt401:
 push 516
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt403
 call dodo

;-763   else if(istoken(T_WHILE)) dowhile();

 jmp @@stmt404
@@stmt403:
 push 515
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt405
 call dowhile

;-764   else if(istoken(T_GOTO))  {prs("\n jmp @@");name1();prs(symbol);expect(';');}

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

;-765   else if(token==T_ASM)     {prs("\n"); c=next();

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

;-766     while(c != '\n') { prc(c);	c=next(); }; token=getlex(); }

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

;-767   else if(istoken(T_ASMBLOCK)) { if (token== '{' )  { prs("\n"); cha=next();  

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

;-768     while(_ cha!= '}') { prc(cha); cha=next(); }

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

;-769     token=getlex(); }

 jmp @@stmt415
@@stmt416:
 call getlex
 mov word [token], ax

;-770     else error1("Curly open expected"); }

 jmp @@stmt417
@@stmt414:
 push stmt_3
 call error1
 add  sp, 2
@@stmt417:

;-771   else if(istoken(T_INTH))  {prs("\n int  "); expect(T_CONST);

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

;-772     prL(lexvalL); expect(';');    }

 push dword [lexvalL]
 call prL
 add  sp, 4
 push 59
 call expect
 add  sp, 2

;-773   else if(istoken(T_IFCARRY))doifcarry();

 jmp @@stmt420
@@stmt419:
 push 601
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt421
 call doifcarry

;-774   else if(istoken(T_IFZERO))doifzero();

 jmp @@stmt422
@@stmt421:
 push 602
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt423
 call doifzero

;-775   else if(istoken(T_EMIT))   doemit();

 jmp @@stmt424
@@stmt423:
 push 520
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt425
 call doemit

;-776   else if(istoken(';'))      { }

 jmp @@stmt426
@@stmt425:
 push 59
 call istoken
 add  sp, 2
 or  al, al
 je @@stmt427

;-777   else if(istoken(T_RETURN)) {if (token!=';')  exprstart();

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

;-778     prs("\n jmp @@retn"); nreturn++; expect(';');}

@@stmt430:
 push stmt_5
 call prs
 add  sp, 2
 inc  word [nreturn]
 push 59
 call expect
 add  sp, 2

;-779   else if(_ thechar==':')      {prs("\n@@"); // Label

 jmp @@stmt431
@@stmt429:
cmp byte [thechar], 58
 jne @@stmt432
 push stmt_6
 call prs
 add  sp, 2

;-780      prs(symbol); prc(':');  expect(T_NAME); expect(':'); }

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

;-781   else                       {exprstart(); expect(';'); } }

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

;-782 


;-783 int doemit() {prs("\n db ");
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

;-784   L1: token=getlex(); prL(lexvalL); token=getlex();

@@L1:
 call getlex
 mov word [token], ax
 push dword [lexvalL]
 call prL
 add  sp, 4
 call getlex
 mov word [token], ax

;-785     if (token== ',') {prc(','); goto L1;} expect(')'); }

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

;-786 


;-787 int cmpneg(int ids) {

 ret
; ENDP
doemit_0 db "\n db ",0

cmpneg:  ; *** PROC ***

;-788        if(iscmp==T_EQ) prs("\n jne @@");         //ZF=0

;Function : cmpneg, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   787 NULL bp+4    ids;
 ENTER  0,0
 mov ax, [iscmp]
 cmp ax, 806
 jne @@cmpneg435
 push cmpneg_0
 call prs
 add  sp, 2

;-789   else if(iscmp==T_NE) prs("\n je  @@");         //ZF=1

 jmp @@cmpneg436
@@cmpneg435:
 mov ax, [iscmp]
 cmp ax, 807
 jne @@cmpneg437
 push cmpneg_1
 call prs
 add  sp, 2

;-790   else if(iscmp==T_LE) if (ids) prs("\n jg  @@");//ZF=0      SF =OF

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

;-791                            else prs("\n ja  @@");//ZF=0 CF=0

 jmp @@cmpneg441
@@cmpneg440:
 push cmpneg_3
 call prs
 add  sp, 2

;-792   else if(iscmp==T_GE) if (ids){prs(" ;unsigned : "); prunsign1(ids);

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

;-793                                prs("\n jl  @@");}//          SF!=OF

 push cmpneg_5
 call prs
 add  sp, 2

;-794                            else{prs(" ;unsigned : "); prunsign1(ids);

 jmp @@cmpneg445
@@cmpneg444:
 push cmpneg_6
 call prs
 add  sp, 2
 push word [bp+4]
 call prunsign1
 add  sp, 2

;-795                                prs("\n jb  @@");}//jb=jc=CF=1

 push cmpneg_7
 call prs
 add  sp, 2

;-796   else if(iscmp=='<' ) prs("\n jge @@");         //          SF =OF

@@cmpneg445:
 jmp @@cmpneg446
@@cmpneg443:
 mov ax, [iscmp]
 cmp ax, 60
 jne @@cmpneg447
 push cmpneg_8
 call prs
 add  sp, 2

;-797   else if(iscmp=='>' ) prs("\n jle @@");         //ZF=1 oder SF!=OF

 jmp @@cmpneg448
@@cmpneg447:
 mov ax, [iscmp]
 cmp ax, 62
 jne @@cmpneg449
 push cmpneg_9
 call prs
 add  sp, 2

;-798   else error1("compare unknown in CMPNEG()");  }

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

;-799 


;-800 int prlabel(int n) {prs("\n@@"); prs(fname); pint1(n); prc(':'); }
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
;  200 var sign word   800 NULL bp+4    n;
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

;-801 int prjump (int n) {prs("\n jmp @@"); prs(fname); pint1(n); }
 LEAVE
 ret
; ENDP
prlabel_0 db "\n@@",0

prjump:  ; *** PROC ***
;Function : prjump, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   801 NULL bp+4    n;
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

;-802 int doif() {int jdest; int tst; pexpr(); nlabel++; jdest=nlabel;
 LEAVE
 ret
; ENDP
prjump_0 db "\n jmp @@",0

doif:  ; *** PROC ***
;Function : doif, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   802 NULL bp-2    jdest
;  201 var sign word   802 NULL bp-4    tst;
 ENTER  4,0
 call pexpr
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-2], ax

;-803   pint1(jdest); stmt();

 push word [bp-2]
 call pint1
 add  sp, 2
 call stmt

;-804   if (istoken(T_ELSE)) { nlabel++; tst=nlabel;

 push 514
 call istoken
 add  sp, 2
 or  al, al
 je @@doif451
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-4], ax

;-805     prjump(tst); prlabel(jdest); stmt(); prlabel(tst); }

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

;-806   else prlabel(jdest); }

 jmp @@doif452
@@doif451:
 push word [bp-2]
 call prlabel
 add  sp, 2
@@doif452:

;-807 int doifcarry() {int jdest;  nlabel++; jdest=nlabel;
 LEAVE
 ret
; ENDP

doifcarry:  ; *** PROC ***
;Function : doifcarry, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   807 NULL bp-2    jdest;
 ENTER  2,0
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-2], ax

;-808   prs("\n jae short @@");/*jnc*/ prs(fname);  pint1(jdest);

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

;-809   stmt(); prlabel(jdest); }

 call stmt
 push word [bp-2]
 call prlabel
 add  sp, 2

;-810 int doifzero() {int jdest;  nlabel++; jdest=nlabel;
 LEAVE
 ret
; ENDP
doifcarry_0 db "\n jae short @@",0

doifzero:  ; *** PROC ***
;Function : doifzero, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   810 NULL bp-2    jdest;
 ENTER  2,0
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-2], ax

;-811   prs("\n jne short @@");        prs(fname);  pint1(jdest);

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

;-812   stmt(); prlabel(jdest); }

 call stmt
 push word [bp-2]
 call prlabel
 add  sp, 2

;-813 int dodo() {int jdest; int jtemp;
 LEAVE
 ret
; ENDP
doifzero_0 db "\n jne short @@",0

dodo:  ; *** PROC ***

;-814   nlabel++; jdest=nlabel; prlabel(jdest); stmt();

;Function : dodo, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   813 NULL bp-2    jdest
;  201 var sign word   813 NULL bp-4    jtemp;
 ENTER  4,0
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-2], ax
 push word [bp-2]
 call prlabel
 add  sp, 2
 call stmt

;-815   expect(T_WHILE); pexpr(); nlabel++; jtemp=nlabel; pint1(jtemp);

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

;-816   prjump(jdest); prlabel(jtemp); }

 push word [bp-2]
 call prjump
 add  sp, 2
 push word [bp-4]
 call prlabel
 add  sp, 2

;-817 int dowhile() {int jdest; int tst; nlabel++; jdest=nlabel;
 LEAVE
 ret
; ENDP

dowhile:  ; *** PROC ***
;Function : dowhile, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   817 NULL bp-2    jdest
;  201 var sign word   817 NULL bp-4    tst;
 ENTER  4,0
 inc  word [nlabel]
 mov ax, [nlabel]
 mov word [bp-2], ax

;-818   prlabel(jdest); pexpr(); nlabel++; tst=nlabel; pint1(tst);

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

;-819   stmt(); prjump(jdest); prlabel(tst); }

 call stmt
 push word [bp-2]
 call prjump
 add  sp, 2
 push word [bp-4]
 call prlabel
 add  sp, 2

;-820 int isrelational() {
 LEAVE
 ret
; ENDP

isrelational:  ; *** PROC ***

;-821   if (token==T_EQ) goto w; if (token==T_NE) goto w;

 mov ax, [token]
 cmp ax, 806
 jne @@isrelational453
 jmp @@w
@@isrelational453:
 mov ax, [token]
 cmp ax, 807
 jne @@isrelational454
 jmp @@w

;-822   if (token==T_LE) goto w; if (token==T_GE) goto w;

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

;-823   if (token=='<' ) goto w; if (token=='>' ) goto w;

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

;-824   return 0;  w: iscmp=token; token=getlex(); return 1;}

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

;-825 


;-826 char symboltemp[80];    

@@retn:
 ret
; ENDP
section .bss
absolute 46920
symboltemp resb 80
section .text

;-827 int getlex() { char c; char *p; 


getlex:  ; *** PROC ***

;-828 g1: c=next(); if (c == 0) return 0; if (c <= ' ') goto g1;

;Function : getlex, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign byte   827 NULL bp-2    c
;  201 ptr sign byte   827 NULL bp-4    p;
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

;-829   if (c=='=') {if(thechar=='=') {next(); return T_EQ; }}

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

;-830   if (c=='!') {if(thechar=='=') {next(); return T_NE; }}

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

;-831   if (c=='<') {if(thechar=='=') {next(); return T_LE; }}

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

;-832   if (c=='>') {if(thechar=='=') {next(); return T_GE; }}

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

;-833   if (c=='<') {if(thechar=='<') {next(); return T_LESSLESS;  }}

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

;-834   if (c=='>') {if(thechar=='>') {next(); return T_GREATGREAT;}}

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

;-835   if (c=='+') {if(thechar=='+') {next(); return T_PLUSPLUS;  }}

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

;-836   if (c=='-') {if(thechar=='-') {next(); return T_MINUSMINUS;}}

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

;-837   if (c=='+') {if(thechar=='=') {next(); return T_PLUSASS;   }}

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

;-838   if (c=='-') {if(thechar=='=') {next(); return T_MINUSASS;  }}

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

;-839   if (c=='&') {if(thechar=='=') {next(); return T_ANDASS;    }}

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

;-840   if (c=='|') {if(thechar=='=') {next(); return T_ORASS;     }}    

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

;-841   if (c=='*') {if(thechar=='=') {next(); return T_MULASS;    }}

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

;-842   if (c=='/') {if(thechar=='=') {next(); return T_DIVASS;    }}        

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

;-843   if (instr1("()[]{},;*:%-><=+!&|#?", c)) return c ;

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

;-844   if (c == '/') { if (thechar == '/') {

@@getlex489:
 mov al, [bp-2]
 cmp al, 47
 jne @@getlex490
 mov al, [thechar]
 cmp al, 47
 jne @@getlex491

;-845       do c=next(); while(c != 13); /* c=next(); */ return getlex(); } }

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

;-846   if (c == '/') { if (thechar == '*') {

@@getlex490:
 mov al, [bp-2]
 cmp al, 47
 jne @@getlex494
 mov al, [thechar]
 cmp al, 42
 jne @@getlex495

;-847       g2: c=next(); if (c != '*') goto g2; if (thechar != '/') goto g2;

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

;-848       c=next(); return getlex(); } else  return '/'; }

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

;-849   if (c == '"') {getstring(c); return T_STRING;}

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

;-850   if (digit(c)) { getdigit(c); return T_CONST; }

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

;-851   if (c==39) { lexvalL=next();

@@getlex500:
 mov al, [bp-2]
 cmp al, 39
 jne @@getlex501
 call next
 mov dword [lexvalL], eax

;-852     if (lexvalL==92) {lexvalL=next();

 mov eax, [lexvalL]
 cmp eax, 92
 jne @@getlex502
 call next
 mov dword [lexvalL], eax

;-853       if (lexvalL=='n') lexvalL=10; if (lexvalL=='t') lexvalL= 9;

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

;-854       if (lexvalL=='0') lexvalL= 0; } next(); return T_CONST; }

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

;-855   if (letter(c)) { 

@@getlex501:
 mov al, byte [bp-2]
 mov ah, 0
 push ax
 call letter
 add  sp, 2
 or  al, al
 je @@getlex506

;-856     strcpy(symboltemp, symbol); p=&symbol;  *p=c;  p++;

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

;-857     while(letter(thechar)) {c=next(); *p=c;  p++; } 

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

;-858       *p=0;

 jmp @@getlex507
@@getlex508:
 mov eax, 0
 mov  bx, [bp-4]
 mov  [bx], al

;-859     if (eqstr(symbol,"signed"  )) return T_SIGNED;

 push getlex_1
 lea  ax, [symbol]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@getlex509
 mov eax, 531
 jmp @@retn

;-860     if (eqstr(symbol,"unsigned")) return T_UNSIGNED;

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

;-861     if (eqstr(symbol,"void"    )) return T_VOID;

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

;-862     if (eqstr(symbol,"int"     )) return T_INT;

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

;-863     if (eqstr(symbol,"short"   )) return T_SHORT;

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

;-864     if (eqstr(symbol,"long"    )) return T_LONG;

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

;-865     if (eqstr(symbol,"uint32"  )) return T_UINT32;

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

;-866     if (eqstr(symbol,"inth"    )) return T_INTH;

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

;-867     if (eqstr(symbol,"char"    )) return T_CHAR;

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

;-868     if (eqstr(symbol,"asm"     )) return T_ASM;

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

;-869     if (eqstr(symbol,"__asm"   )) return T_ASMBLOCK;

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

;-870     if (eqstr(symbol,"__emit__")) return T_EMIT;

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

;-871     if (eqstr(symbol,"return"  )) return T_RETURN;

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

;-872     if (eqstr(symbol,"if"      )) return T_IF;

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

;-873     if (eqstr(symbol,"ifcarry" )) return T_IFCARRY;

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

;-874     if (eqstr(symbol,"ifzero"  )) return T_IFZERO;

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

;-875     if (eqstr(symbol,"else"    )) return T_ELSE;

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

;-876     if (eqstr(symbol,"while"   )) return T_WHILE;

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

;-877     if (eqstr(symbol,"do"      )) return T_DO;

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

;-878     if (eqstr(symbol,"goto"    )) return T_GOTO;

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

;-879     if (eqstr(symbol,"define"  )) return T_DEFINE;   

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

;-880     if (eqstr(symbol,"include" )) return T_INCLUDE;   

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

;-881     if (convertdefine() ) {strcpy(symbol, symboltemp); return T_CONST;}

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

;-882     return T_NAME; } error1("Input item not recognized"); }

@@getlex531:
 mov eax, 256
 jmp @@retn
@@getlex506:
 push getlex_23
 call error1
 add  sp, 2

;-883 


;-884 int convertdefine() { int i; int j;   i=0;

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
;  200 var sign word   884 NULL bp-2    i
;  201 var sign word   884 NULL bp-4    j;
 ENTER  4,0
 mov eax, 0
 mov word [bp-2], ax

;-885   while (i < GTop) {  j=GName[i]; from_far(NA, j);

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

;-886    if (eqstr(symbol, NA)) { if (GType[i]=='#') { lexvalL=GData[i];

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

;-887      eax=lexvalL; _ lexvalL=eax;   return T_CONST; } }      i++; }

 mov  eax, [lexvalL]
mov [lexvalL], eax
 mov eax, 257
 jmp @@retn
@@convertdefine535:
@@convertdefine534:
 inc  word [bp-2]

;-888    return 0;

 jmp @@convertdefine532
@@convertdefine533:
 mov eax, 0
 jmp @@retn

;-889 }


;-890 long getdigit(unsigned char c) { unsigned long L;

@@retn: LEAVE
 ret
; ENDP

getdigit:  ; *** PROC ***

;-891     _ lexvalL=0;    c-='0';

;Function : getdigit, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg byte   890 NULL bp+4    c
;  201 var unsg dwrd   890 NULL bp-4    L;
 ENTER  4,0
mov dword [lexvalL], 0
 sub  byte [bp+4], 48

;-892     eax=c;/* cast B2L */  _ lexvalL=eax;

 movzx  eax, byte [bp+4]
mov [lexvalL], eax

;-893     if (thechar=='x') thechar='X';

 mov al, [thechar]
 cmp al, 120
 jne @@getdigit536
 mov eax, 88
 mov byte [thechar], al

;-894     if (thechar=='X') { next();

@@getdigit536:
 mov al, [thechar]
 cmp al, 88
 jne @@getdigit537
 call next

;-895       while(letter(thechar)) { c=next(); if(_ c>96) c-=39;

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

;-896 	      if (_ c>64) c-=7; c-=48; lexvalL=lexvalL << 4; // * 16

@@getdigit540:
cmp byte [bp+4], 64
 jle @@getdigit541
 sub  byte [bp+4], 7
@@getdigit541:
 sub  byte [bp+4], 48
 mov eax, [lexvalL]
 shl eax, 4
 mov dword [lexvalL], eax

;-897     eax=c;/* cast B2L */  _ L=eax;  lexvalL=lexvalL+L; } }

 movzx  eax, byte [bp+4]
mov [bp-4], eax
 mov eax, [lexvalL]
 add eax, [bp-4]
 mov dword [lexvalL], eax
 jmp @@getdigit538
@@getdigit539:

;-898     else


;-899     { while(digit(thechar )) { c=next(); c-='0'; lexvalL=lexvalL*10;

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

;-900     eax=c;/* cast B2L */  _ L=eax;  lexvalL=lexvalL+L; } }

 movzx  eax, byte [bp+4]
mov [bp-4], eax
 mov eax, [lexvalL]
 add eax, [bp-4]
 mov dword [lexvalL], eax
 jmp @@getdigit543
@@getdigit544:

;-901     _ islong=0; if (_ lexvalL > 0xFFFF) islong++;

@@getdigit542:
mov byte [islong], 0
cmp dword [lexvalL], 65535
 jle @@getdigit545
 inc  byte [islong]

;-902 }

@@getdigit545:

;-903 int getstring(int delim) {int c; char *p;  p=&symbol; c=next();
 LEAVE
 ret
; ENDP

getstring:  ; *** PROC ***
;Function : getstring, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   903 NULL bp+4    delim
;  201 var sign word   903 NULL bp-2    c
;  202 ptr sign byte   903 NULL bp-4    p;
 ENTER  4,0
 mov ax, symbol
 mov word [bp-4], ax
 call next
 mov word [bp-2], ax

;-904   while (c != delim) {*p=c; p++; c=next(); } *p=0; }

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

;-905 


;-906 int next() {char r; r = thechar; globC=r; thechar = fgets1(); return r; }
 LEAVE
 ret
; ENDP

next:  ; *** PROC ***
;Function : next, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign byte   906 NULL bp-2    r;
 ENTER  2,0
 mov al, [thechar]
 mov byte [bp-2], al
 mov al, [bp-2]
 mov byte [globC], al
 call fgets1
 mov byte [thechar], al
 mov al, [bp-2]
 jmp @@retn

;-907 int istoken(int t) {if (token == t) { token=getlex(); return 1; } return 0;}

@@retn: LEAVE
 ret
; ENDP

istoken:  ; *** PROC ***
;Function : istoken, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   907 NULL bp+4    t;
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

;-908 int expect(int t) {if (istoken(t)==0) { *cloc=0; prs(co); listproc();

@@retn: LEAVE
 ret
; ENDP

expect:  ; *** PROC ***
;Function : expect, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   908 NULL bp+4    t;
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

;-909   prs("\nExpected ASCII(dez): "); pint1(t); error1(" not found"); } }

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

;-910 


;-911 int eprc(char c)  {*cloc=c; cloc++; }
 LEAVE
 ret
; ENDP
expect_0 db "\nExpected ASCII(dez): ",0
expect_1 db " not found",0

eprc:  ; *** PROC ***
;Function : eprc, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign byte   911 NULL bp+4    c;
 ENTER  0,0
 mov al, [bp+4]
 mov  bx, [cloc]
 mov  [bx], al
 inc  word [cloc]

;-912 int eprs(char *s) {char c;  while(*s) { c=*s; eprc(c); s++; } }
 LEAVE
 ret
; ENDP

eprs:  ; *** PROC ***
;Function : eprs, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte   912 NULL bp+4    s
;  201 var sign byte   912 NULL bp-2    c;
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

;-913 int prc(unsigned char c) { if (LIST) { if (_ c==10) {ax=13; writetty(); }
 LEAVE
 ret
; ENDP

prc:  ; *** PROC ***
;Function : prc, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg byte   913 NULL bp+4    c;
 ENTER  0,0
 mov al, [LIST]
 or  al, al
 je @@prc552
cmp byte [bp+4], 10
 jne @@prc553
 mov  ax, 13
 call writetty

;-914    al=c; writetty(); } fputcR(c, fdout); }

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

;-915 int prscomment(unsigned char *s) {unsigned char c;
 LEAVE
 ret
; ENDP

prscomment:  ; *** PROC ***

;-916   while(*s){c=*s;prc(c);s++;} }

;Function : prscomment, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr unsg byte   915 NULL bp+4    s
;  201 var unsg byte   915 NULL bp-2    c;
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

;-917 int prnl() { prs("\n ");}
 LEAVE
 ret
; ENDP

prnl:  ; *** PROC ***
 push prnl_0
 call prs
 add  sp, 2

;-918 


;-919 int prs(unsigned char *s) {unsigned char c; int com; com=0;

 ret
; ENDP
prnl_0 db "\n ",0

prs:  ; *** PROC ***
;Function : prs, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 ptr unsg byte   919 NULL bp+4    s
;  201 var unsg byte   919 NULL bp-2    c
;  202 var sign word   919 NULL bp-4    com;
 ENTER  4,0
 mov eax, 0
 mov word [bp-4], ax

;-920   while(*s) { c=*s; if (c==34) if (com) com=0; else com=1;

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

;-921     if (c==92) { if (com==0) { s++; c=*s;

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

;-922           if (c=='n') c=10; if (c=='t') c= 9; } } prc(c); s++;  } }

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

;-923 int eprnum(int n){int e; if(n<0) { eprc('-'); n=mkneg(n); }
 LEAVE
 ret
; ENDP

eprnum:  ; *** PROC ***
;Function : eprnum, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   923 NULL bp+4    n
;  201 var sign word   923 NULL bp-2    e;
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

;-924   if (n >= 10) {e=n/10; eprnum(e);}  n=n%10; n=n+'0'; eprc(n); }

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

;-925 int pint1 (int n){int e; if(n<0) {  prc('-');  n=mkneg(n); }
 LEAVE
 ret
; ENDP

pint1:  ; *** PROC ***
;Function : pint1, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   925 NULL bp+4    n
;  201 var sign word   925 NULL bp-2    e;
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

;-926   if (n >= 10) {e=n/10;  pint1(e);}  n=n%10; n=n+'0'; prc(n); }

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

;-927 int prunsign1(unsigned int n) { unsigned int e;
 LEAVE
 ret
; ENDP

prunsign1:  ; *** PROC ***

;-928   if ( _ n >= 10) {  e=n/10; /*DIV*/ prunsign1(e); }

;Function : prunsign1, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg word   927 NULL bp+4    n
;  201 var unsg word   927 NULL bp-2    e;
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

;-929     n = n % 10; /*unsigned mod*/   n += '0'; prc(n); }

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

;-930 int printint51(unsigned int j)  {
 LEAVE
 ret
; ENDP

printint51:  ; *** PROC ***

;-931   if (j<10000) prc(32); if (j<1000) prc(32);  if (j<100) prc(32);

;Function : printint51, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word   930 NULL bp+4    j;
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

;-932    if (j<10) prc(32);  prunsign1(j); }

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

;-933 


;-934 int fgets1() { char c; c=*fgetsp;
 LEAVE
 ret
; ENDP

fgets1:  ; *** PROC ***
;Function : fgets1, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign byte   934 NULL bp-2    c;
 ENTER  2,0
 mov bx, [fgetsp]
 mov al, [bx]
 mov ah, 0
 mov byte [bp-2], al

;-935   if (c==0) { printinputline(); if (DOS_NoBytes == 0) return 0;

 mov al, [bp-2]
 cmp al, 0
 jne @@fgets1574
 call printinputline
 mov ax, [DOS_NoBytes]
 cmp ax, 0
 jne @@fgets1575
 mov eax, 0
 jmp @@retn

;-936     fgetsp=&fgetsdest; c=*fgetsp; spalte=0; }

@@fgets1575:
 mov ax, fgetsdest
 mov word [fgetsp], ax
 mov bx, [fgetsp]
 mov al, [bx]
 mov ah, 0
 mov byte [bp-2], al
 mov eax, 0
 mov word [spalte], ax

;-937   fgetsp++; spalte++;  return c; }

@@fgets1574:
 inc  word [fgetsp]
 inc  word [spalte]
 mov al, [bp-2]
 jmp @@retn

;-938 int printinputline() { fgetsp=&fgetsdest;

@@retn: LEAVE
 ret
; ENDP

printinputline:  ; *** PROC ***
 mov ax, fgetsdest
 mov word [fgetsp], ax

;-939   do {DOS_NoBytes=readR(&DOS_ByteRead, fdin);

@@printinputline576:
 push word [fdin]
 lea  ax, [DOS_ByteRead]
 push ax
 call readR
 add  sp, 4
 mov word [DOS_NoBytes], ax

;-940   if (DOS_NoBytes == 0) return; 

 mov ax, [DOS_NoBytes]
 cmp ax, 0
 jne @@printinputline577
 jmp @@retn

;-941     *fgetsp=DOS_ByteRead; fgetsp++;} 

@@printinputline577:
 mov al, [DOS_ByteRead]
 mov  bx, [fgetsp]
 mov  [bx], al
 inc  word [fgetsp]

;-942   while (DOS_ByteRead != 10); *fgetsp=0;

 mov al, [DOS_ByteRead]
 cmp al, 10
 je  @@printinputline578
 jmp @@printinputline576
@@printinputline578:
 mov eax, 0
 mov  bx, [fgetsp]
 mov  [bx], al

;-943     if (fdout) { prs("\n\n;-"); prunsign1(lineno); prc(' '); lineno++;

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

;-944       prscomment(&fgetsdest);}

 lea  ax, [fgetsdest]
 push ax
 call prscomment
 add  sp, 2

;-945 }

@@printinputline579:

;-946 int ifEOL(char c) {

@@retn:
 ret
; ENDP
printinputline_0 db "\n\n;-",0

ifEOL:  ; *** PROC ***

;-947   if (c == 10) return 1;

;Function : ifEOL, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign byte   946 NULL bp+4    c;
 ENTER  0,0
 mov al, [bp+4]
 cmp al, 10
 jne @@ifEOL580
 mov eax, 1
 jmp @@retn

;-948   if (c == 13) { 

@@ifEOL580:
 mov al, [bp+4]
 cmp al, 13
 jne @@ifEOL581

;-949     DOS_NoBytes=readR(&DOS_ByteRead, fdin); 

 push word [fdin]
 lea  ax, [DOS_ByteRead]
 push ax
 call readR
 add  sp, 4
 mov word [DOS_NoBytes], ax

;-950     return 1;}

 mov eax, 1
 jmp @@retn

;-951   return 0;

@@ifEOL581:
 mov eax, 0
 jmp @@retn

;-952 }


;-953  


;-954 int end1(int n) {fcloseR(fdin); fcloseR(fdout); exitR(n); }

@@retn: LEAVE
 ret
; ENDP

end1:  ; *** PROC ***
;Function : end1, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   954 NULL bp+4    n;
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

;-955 int error1(char *s) { LIST=1;
 LEAVE
 ret
; ENDP

error1:  ; *** PROC ***
;Function : error1, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte   955 NULL bp+4    s;
 ENTER  0,0
 mov eax, 1
 mov byte [LIST], al

;-956   lineno--;

 dec  word [lineno]

;-957   prnl(); prscomment(&fgetsdest);

 call prnl
 lea  ax, [fgetsdest]
 push ax
 call prscomment
 add  sp, 2

;-958   prs(";Line: "); prunsign1(lineno);

 push error1_0
 call prs
 add  sp, 2
 push word [lineno]
 call prunsign1
 add  sp, 2

;-959   prs(" ************** ERROR: "); prs(s);

 push error1_1
 call prs
 add  sp, 2
 push word [bp+4]
 call prs
 add  sp, 2

;-960   prs("  in column: "); pint1(spalte);

 push error1_2
 call prs
 add  sp, 2
 push word [spalte]
 call pint1
 add  sp, 2

;-961   prs("\nToken: "); prunsign1(token); prs(", globC: "); prc(globC);

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

;-962   prs(", thechar: "); pint1(thechar); prs(", symbol: "); prs(symbol);

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

;-963   end1(1); }

 push 1
 call end1
 add  sp, 2

;-964 int listproc() {int i; 
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

;-965   if (LTop > LSTART) {

;Function : listproc, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word   964 NULL bp-2    i;
 ENTER  2,0
 mov ax, [LTop]
 cmp ax, 200
 jle @@listproc582

;-966   prs("\n;Function : "); prs(fname);

 push listproc_0
 call prs
 add  sp, 2
 lea  ax, [fname]
 push ax
 call prs
 add  sp, 2

;-967   prs(", Number of local variables: "); i=LTop - LSTART; prunsign1(i);

 push listproc_1
 call prs
 add  sp, 2
 mov ax, [LTop]
 sub ax, 200
 mov word [bp-2], ax
 push word [bp-2]
 call prunsign1
 add  sp, 2

;-968   prs("\n;   # type sign width line used address name   list of local variables");

 push listproc_2
 call prs
 add  sp, 2

;-969     i=LSTART; 

 mov eax, 200
 mov word [bp-2], ax

;-970     while (i < LTop) { listvar(i); i++; } } 

@@listproc583:
 mov ax, [bp-2]
 cmp ax, [LTop]
 jge @@listproc584
 push word [bp-2]
 call listvar
 add  sp, 2
 inc  word [bp-2]
 jmp @@listproc583
@@listproc584:

;-971 }

@@listproc582:

;-972 int listvar(unsigned int i) {unsigned int j; char c;  long L;
 LEAVE
 ret
; ENDP
listproc_0 db "\n;Function : ",0
listproc_1 db ", Number of local variables: ",0
listproc_2 db "\n;   # type sign width line used address name   list of local variables",0

listvar:  ; *** PROC ***

;-973   prs("\n;"); printint51(i); prc(32);

;Function : listvar, Number of local variables: 4
;   # type sign width line used address name   list of local variables
;  200 var unsg word   972 NULL bp+4    i
;  201 var unsg word   972 NULL bp-2    j
;  202 var sign byte   972 NULL bp-4    c
;  203 var sign dwrd   972 NULL bp-8    L;
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

;-974   c=GType [i]; if(c=='V')prs("var ");   if(c=='*')prs("ptr ");

 mov bx, [bp+4]
 mov al, [GType + bx]
 mov byte [bp-4], al
 mov al, [bp-4]
 cmp al, 86
 jne @@listvar585
 push listvar_1
 call prs
 add  sp, 2
@@listvar585:
 mov al, [bp-4]
 cmp al, 42
 jne @@listvar586
 push listvar_2
 call prs
 add  sp, 2

;-975                if(c=='&')prs("arr ");   if(c=='#')prs("def ");

@@listvar586:
 mov al, [bp-4]
 cmp al, 38
 jne @@listvar587
 push listvar_3
 call prs
 add  sp, 2
@@listvar587:
 mov al, [bp-4]
 cmp al, 35
 jne @@listvar588
 push listvar_4
 call prs
 add  sp, 2

;-976   c=GSign [i]; if(c=='S')prs("sign ");  if(c=='U')prs("unsg ");

@@listvar588:
 mov bx, [bp+4]
 mov al, [GSign + bx]
 mov byte [bp-4], al
 mov al, [bp-4]
 cmp al, 83
 jne @@listvar589
 push listvar_5
 call prs
 add  sp, 2
@@listvar589:
 mov al, [bp-4]
 cmp al, 85
 jne @@listvar590
 push listvar_6
 call prs
 add  sp, 2

;-977   c=GWidth[i]; if(c==  1)prs("byte " ); if(c==  2)prs("word " );

@@listvar590:
 mov bx, [bp+4]
 mov al, [GWidth + bx]
 mov byte [bp-4], al
 mov al, [bp-4]
 cmp al, 1
 jne @@listvar591
 push listvar_7
 call prs
 add  sp, 2
@@listvar591:
 mov al, [bp-4]
 cmp al, 2
 jne @@listvar592
 push listvar_8
 call prs
 add  sp, 2

;-978                if(c==  4)prs("dwrd " );

@@listvar592:
 mov al, [bp-4]
 cmp al, 4
 jne @@listvar593
 push listvar_9
 call prs
 add  sp, 2

;-979   j=GLino[i]; printint51(j);

@@listvar593:
 mov bx, [bp+4]
 shl bx, 1
 mov ax, [GLino + bx]
 mov word [bp-2], ax
 push word [bp-2]
 call printint51
 add  sp, 2

;-980   j=GUsed[i]; if (j) printint51(j);

 mov bx, [bp+4]
 shl bx, 1
 mov ax, [GUsed + bx]
 mov word [bp-2], ax
 mov ax, [bp-2]
 or  al, al
 je @@listvar594
 push word [bp-2]
 call printint51
 add  sp, 2

;-981   else {if(GType[i]=='#') prs("    -"); else prs(" NULL");}

 jmp @@listvar595
@@listvar594:
 mov bx, [bp+4]
 mov al, [GType + bx]
 cmp al, 35
 jne @@listvar596
 push listvar_10
 call prs
 add  sp, 2
 jmp @@listvar597
@@listvar596:
 push listvar_11
 call prs
 add  sp, 2
@@listvar597:

;-982   prc(32);  L=GAdr[i];

@@listvar595:
 push 32
 call prc
 add  sp, 2
 mov bx, [bp+4]
 shl bx, 2
 mov eax, [GAdr + bx]
 mov dword [bp-8], eax

;-983   if (i < LSTART) { /*if (L == 0) prs("       0"); else */ prf(L, 8); }

 mov ax, [bp+4]
 cmp ax, 200
 jge @@listvar598
 push 8
 push dword [bp-8]
 call prf
 add  sp, 6

;-984   else  { prs("bp"); j=GData[i];

 jmp @@listvar599
@@listvar598:
 push listvar_12
 call prs
 add  sp, 2
 mov bx, [bp+4]
 shl bx, 2
 mov eax, [GData + bx]
 mov word [bp-2], ax

;-985     if (j > 0) prc('+'); pint1(j); prs("   "); }

 mov ax, [bp-2]
 cmp ax, 0
 jle @@listvar600
 push 43
 call prc
 add  sp, 2
@@listvar600:
 push word [bp-2]
 call pint1
 add  sp, 2
 push listvar_13
 call prs
 add  sp, 2

;-986   prc(32);  j=GName[i]; from_far(NA, j); prs(NA);

@@listvar599:
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

;-987   if(GType[i]=='#') { prc('='); L=GData[i]; prL(L); }

 mov bx, [bp+4]
 mov al, [GType + bx]
 cmp al, 35
 jne @@listvar601
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

;-988   if(GType[i]=='&') { prc('['); L=GData[i]; prL(L); prc(']');}

@@listvar601:
 mov bx, [bp+4]
 mov al, [GType + bx]
 cmp al, 38
 jne @@listvar602
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

;-989 }

@@listvar602:

;-990 int listcall() { int i;  prs("\n\n;    #  addr name   list of CALLs\n");
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
;  200 var sign word   990 NULL bp-2    i;
 ENTER  2,0
 push listcall_0
 call prs
 add  sp, 2

;-991   i=0;  while (i< CTop) { calllisting(i); i++; } }

 mov eax, 0
 mov word [bp-2], ax
@@listcall603:
 mov ax, [bp-2]
 cmp ax, [CTop]
 jge @@listcall604
 push word [bp-2]
 call calllisting
 add  sp, 2
 inc  word [bp-2]
 jmp @@listcall603
@@listcall604:

;-992 int calllisting(int i) {char c; int j;
 LEAVE
 ret
; ENDP
listcall_0 db "\n\n;    #  addr name   list of CALLs\n",0

calllisting:  ; *** PROC ***

;-993   prs("\n;"); printint51(i); prc(32);

;Function : calllisting, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word   992 NULL bp+4    i
;  201 var sign byte   992 NULL bp-2    c
;  202 var sign word   992 NULL bp-4    j;
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

;-994   c=CUnres [i]; if(c==0)prs("unresolved ");

 mov bx, [bp+4]
 mov al, [CUnres + bx]
 mov byte [bp-2], al
 mov al, [bp-2]
 cmp al, 0
 jne @@calllisting605
 push calllisting_1
 call prs
 add  sp, 2

;-995   j=CName[i];            printint51(j); prc(32);

@@calllisting605:
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

;-996   from_far(NA, j);   prs(NA);

 push word [bp-4]
 lea  ax, [NA]
 push ax
 call from_far
 add  sp, 4
 lea  ax, [NA]
 push ax
 call prs
 add  sp, 2

;-997 }


;-998 int countcalls(int f) { unsigned int i;
 LEAVE
 ret
; ENDP
calllisting_0 db "\n;",0
calllisting_1 db "unresolved ",0

countcalls:  ; *** PROC ***

;-999   pt=FName[f]; from_far(NA, pt);

;Function : countcalls, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign word   998 NULL bp+4    f
;  201 var unsg word   998 NULL bp-2    i;
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

;-1000   i=0;  while (i < CTop) {  p1=CName[i]; from_far(NB, p1);

 mov eax, 0
 mov word [bp-2], ax
@@countcalls606:
 mov ax, [bp-2]
 cmp ax, [CTop]
 jge @@countcalls607
 mov bx, [bp-2]
 shl bx, 1
 mov ax, [CName + bx]
 mov word [p1], ax
 push word [p1]
 lea  ax, [NB]
 push ax
 call from_far
 add  sp, 4

;-1001     if (eqstr(NA, NB))  FCalls[f] = FCalls[f] + 1;         i++; }

 lea  ax, [NB]
 push ax
 lea  ax, [NA]
 push ax
 call eqstr
 add  sp, 4
 or  al, al
 je @@countcalls608
 mov bx, [bp+4]
 shl bx, 1
 mov ax, [FCalls + bx]
 add ax, 1
 mov bx, [bp+4]
 shl bx, 1
 mov [FCalls+bx], ax
@@countcalls608:
 inc  word [bp-2]

;-1002 }

 jmp @@countcalls606
@@countcalls607:

;-1003 int listfunc() { int i;
 LEAVE
 ret
; ENDP

listfunc:  ; *** PROC ***

;-1004   prs("\n\n\n;   # Calls Line Width  Name   list of functions\n");

;Function : listfunc, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var sign word  1003 NULL bp-2    i;
 ENTER  2,0
 push listfunc_0
 call prs
 add  sp, 2

;-1005   i=0;  while (i < FTop) { countcalls (i); i++; } 

 mov eax, 0
 mov word [bp-2], ax
@@listfunc609:
 mov ax, [bp-2]
 cmp ax, [FTop]
 jge @@listfunc610
 push word [bp-2]
 call countcalls
 add  sp, 2
 inc  word [bp-2]

;-1006   i=0;  while (i < FTop) { funclisting(i); i++; } }

 jmp @@listfunc609
@@listfunc610:
 mov eax, 0
 mov word [bp-2], ax
@@listfunc611:
 mov ax, [bp-2]
 cmp ax, [FTop]
 jge @@listfunc612
 push word [bp-2]
 call funclisting
 add  sp, 2
 inc  word [bp-2]
 jmp @@listfunc611
@@listfunc612:

;-1007 int funclisting(int i) {int j;  char c;
 LEAVE
 ret
; ENDP
listfunc_0 db "\n\n\n;   # Calls Line Width  Name   list of functions\n",0

funclisting:  ; *** PROC ***

;-1008   prs("\n;");    printint51(i);

;Function : funclisting, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var sign word  1007 NULL bp+4    i
;  201 var sign word  1007 NULL bp-2    j
;  202 var sign byte  1007 NULL bp-4    c;
 ENTER  4,0
 push funclisting_0
 call prs
 add  sp, 2
 push word [bp+4]
 call printint51
 add  sp, 2

;-1009   j = FCalls[i]; if (j) printint51(j); else prs(" NULL");

 mov bx, [bp+4]
 shl bx, 1
 mov ax, [FCalls + bx]
 mov word [bp-2], ax
 mov ax, [bp-2]
 or  al, al
 je @@funclisting613
 push word [bp-2]
 call printint51
 add  sp, 2
 jmp @@funclisting614
@@funclisting613:
 push funclisting_1
 call prs
 add  sp, 2

;-1010   j = FLino[i];   printint51(j); prc(32);

@@funclisting614:
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

;-1011   c=FWidth[i];

 mov bx, [bp+4]
 mov al, [FWidth + bx]
 mov byte [bp-4], al

;-1012   if(_ c==0)prs("void " );    if(_ c==1)prs("byte " );

cmp byte [bp-4], 0
 jne @@funclisting615
 push funclisting_2
 call prs
 add  sp, 2
@@funclisting615:
cmp byte [bp-4], 1
 jne @@funclisting616
 push funclisting_3
 call prs
 add  sp, 2

;-1013   if(_ c==2)prs("word " );    if(_ c==4)prs("dwrd " );

@@funclisting616:
cmp byte [bp-4], 2
 jne @@funclisting617
 push funclisting_4
 call prs
 add  sp, 2
@@funclisting617:
cmp byte [bp-4], 4
 jne @@funclisting618
 push funclisting_5
 call prs
 add  sp, 2

;-1014   prc(32); prc(32);

@@funclisting618:
 push 32
 call prc
 add  sp, 2
 push 32
 call prc
 add  sp, 2

;-1015   j=FName[i]; from_far(NA, j); prs(NA);

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

;-1016 }


;-1017 unsigned int MAXUI=65535;
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

;-1018 int epilog() {unsigned int i; 


epilog:  ; *** PROC ***

;-1019   strcpy(symbol, "LastFunctionByt");  storefunc();

;Function : epilog, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word  1018 NULL bp-2    i;
 ENTER  2,0
 push epilog_0
 lea  ax, [symbol]
 push ax
 call strcpy
 add  sp, 4
 call storefunc

;-1020   prs("\nLastFunctionByt:db 0E8h, 0, 0\npop ax\nret");

 push epilog_1
 call prs
 add  sp, 2

;-1021   prs("\n \n;   # type sign width line used  address name   list of global variables\n");

 push epilog_2
 call prs
 add  sp, 2

;-1022   i=1;      while (i< GTop) { listvar(i); i++; }

 mov eax, 1
 mov word [bp-2], ax
@@epilog619:
 mov ax, [bp-2]
 cmp ax, [GTop]
 jge @@epilog620
 push word [bp-2]
 call listvar
 add  sp, 2
 inc  word [bp-2]

;-1023   listfunc();   listcall();   LIST=1;

 jmp @@epilog619
@@epilog620:
 call listfunc
 call listcall
 mov eax, 1
 mov byte [LIST], al

;-1024   prs("\n;Input: "); prs(&namein);

 push epilog_3
 call prs
 add  sp, 2
 lea  ax, [namein]
 push ax
 call prs
 add  sp, 2

;-1025   prs(", List: ");   prs(&namelst);

 push epilog_4
 call prs
 add  sp, 2
 lea  ax, [namelst]
 push ax
 call prs
 add  sp, 2

;-1026   prs(",  Lines:"); printint51(lineno);

 push epilog_5
 call prs
 add  sp, 2
 push word [lineno]
 call printint51
 add  sp, 2

;-1027   prs("\n;Glob. variables:"); GTop--; printint51(GTop);

 push epilog_6
 call prs
 add  sp, 2
 dec  word [GTop]
 push word [GTop]
 call printint51
 add  sp, 2

;-1028   prs(" max.:"); printint51(LSTART);

 push epilog_7
 call prs
 add  sp, 2
 push 200
 call printint51
 add  sp, 2

;-1029   prs("\n;Local variables:"); i=maxloc-LSTART; printint51(i);

 push epilog_8
 call prs
 add  sp, 2
 mov ax, [maxloc]
 sub ax, 200
 mov word [bp-2], ax
 push word [bp-2]
 call printint51
 add  sp, 2

;-1030   prs(" max.:"); _ i=VARMAX; i-=LSTART; printint51(i);

 push epilog_9
 call prs
 add  sp, 2
mov word [bp-2], 300; i
 sub  word [bp-2], 200
 push word [bp-2]
 call printint51
 add  sp, 2

;-1031   prs(", in '"); prs(locname); prs("'");

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

;-1032   prs("\n;Functions      :"); printint51(FTop);

 push epilog_12
 call prs
 add  sp, 2
 push word [FTop]
 call printint51
 add  sp, 2

;-1033   prs(" max.:"); printint51(FUNCMAX);

 push epilog_13
 call prs
 add  sp, 2
 push 300
 call printint51
 add  sp, 2

;-1034   prs("\n;Calls          :"); printint51(CTop);

 push epilog_14
 call prs
 add  sp, 2
 push word [CTop]
 call printint51
 add  sp, 2

;-1035   prs(" max.:"); printint51(CALLMAX);

 push epilog_15
 call prs
 add  sp, 2
 push 2000
 call printint51
 add  sp, 2

;-1036   prs(", NameField:"); printint51(CNameTop);

 push epilog_16
 call prs
 add  sp, 2
 push word [CNameTop]
 call printint51
 add  sp, 2

;-1037   prs(" max.:"); printint51(MAXUI);

 push epilog_17
 call prs
 add  sp, 2
 push word [MAXUI]
 call printint51
 add  sp, 2

;-1038   __asm{call LastFunctionByt}  _ i=ax;

call LastFunctionByt
mov [bp-2], ax

;-1039   prs("\n;Code until     :"); printint51(i);

 push epilog_18
 call prs
 add  sp, 2
 push word [bp-2]
 call printint51
 add  sp, 2

;-1040   prs(" max.: "); printint51(ORGDATAORIG); i=ORGDATAORIG-i; prs(", free:");

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

;-1041   printint51(i); if (i <= 1000) {prs(" *** Warning *** Code area too small");

 push word [bp-2]
 call printint51
 add  sp, 2
 mov ax, [bp-2]
 cmp ax, 1000
 ja  @@epilog621
 push epilog_21
 call prs
 add  sp, 2

;-1042   prs("\nuse #define ORGDATA > "); printint51(ORGDATAORIG); }

 push epilog_22
 call prs
 add  sp, 2
 push dword [ORGDATAORIG]
 call printint51
 add  sp, 4

;-1043   prs("\n;Data (HeapEnd) :"); prunsign1(orgData); i=MAXUI-orgData;

@@epilog621:
 push epilog_23
 call prs
 add  sp, 2
 push dword [orgData]
 call prunsign1
 add  sp, 4
 mov ax, [MAXUI]
 sub eax, [orgData]
 mov word [bp-2], ax

;-1044   prs(", resting stacksize: ");printint51(i);

 push epilog_24
 call prs
 add  sp, 2
 push word [bp-2]
 call printint51
 add  sp, 2

;-1045   if (i <= 5000) prs(" *** Warning *** Stack too small");

 mov ax, [bp-2]
 cmp ax, 5000
 ja  @@epilog622
 push epilog_25
 call prs
 add  sp, 2

;-1046   prs("\n;Max. Const in '"); prs(coname); prs("' :"); printint51(maxco);

@@epilog622:
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

;-1047   prs(" max."); printint51(COMAX); i=COMAX; i=i-maxco; prs(", free:");

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

;-1048   printint51(i);if (i <= 1000)prs(" *** Warning *** constant area too small");

 push word [bp-2]
 call printint51
 add  sp, 2
 mov ax, [bp-2]
 cmp ax, 1000
 ja  @@epilog623
 push epilog_30
 call prs
 add  sp, 2

;-1049   if(NASM==0)prs("\nEND");end1(0);}

@@epilog623:
 mov al, [NASM]
 cmp al, 0
 jne @@epilog624
 push epilog_31
 call prs
 add  sp, 2
@@epilog624:
 push 0
 call end1
 add  sp, 2

;-1050 


;-1051 int memresize(unsigned int i) {
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

;-1052   _ DOS_ERR=0; bx=i; _ ax=cs; es=ax; ax=0x4A00; DosInt(); }

;Function : memresize, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg word  1051 NULL bp+4    i;
 ENTER  0,0
mov word [DOS_ERR], 0
 mov  bx, [bp+4]
 mov  ax, cs
 mov  es, ax
 mov  ax, 18944
 call DosInt

;-1053 int memalloc(unsigned int i) { unsigned int vAX; unsigned int vBX;
 LEAVE
 ret
; ENDP

memalloc:  ; *** PROC ***

;-1054   _ DOS_ERR=0; bx=i;  ax=0x4800; DosInt(); _ vAX=ax; _ vBX=bx;

;Function : memalloc, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var unsg word  1053 NULL bp+4    i
;  201 var unsg word  1053 NULL bp-2    vAX
;  202 var unsg word  1053 NULL bp-4    vBX;
 ENTER  4,0
mov word [DOS_ERR], 0
 mov  bx, [bp+4]
 mov  ax, 18432
 call DosInt
mov [bp-2], ax
mov [bp-4], bx

;-1055   if(DOS_ERR) return vBX;   return vAX;  }

 mov ax, [DOS_ERR]
 or  al, al
 je @@memalloc625
 mov ax, [bp-4]
 jmp @@retn
@@memalloc625:
 mov ax, [bp-2]
 jmp @@retn

;-1056 int copyF(char *dest, char *src, unsigned int sz) {

@@retn: LEAVE
 ret
; ENDP

copyF:  ; *** PROC ***

;-1057   segE;  _ es=ax;  _ si=src;  _ di=dest; _ cx=sz;  // ds:si   es:di

;Function : copyF, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1056 NULL bp+4    dest
;  201 ptr sign byte  1056 NULL bp+6    src
;  202 var unsg word  1056 NULL bp+8    sz;
 ENTER  0,0
 mov ax, [segE]
 mov  es, ax
 mov  si, [bp+6]
 mov  di, [bp+4]
 mov  cx, [bp+8]

;-1058   __asm{cld} __asm{rep movsb} __asm{mov byte [es:di], 0}   }

cld
rep movsb
mov byte [es:di], 0

;-1059 int loadName(char *dest, int i) {
 LEAVE
 ret
; ENDP

loadName:  ; *** PROC ***

;-1060   segE;  _ es=ax; _ di=dest;  GName[i]; _ si=ax;

;Function : loadName, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1059 NULL bp+4    dest
;  201 var sign word  1059 NULL bp+6    i;
 ENTER  0,0
 mov ax, [segE]
 mov  es, ax
 mov  di, [bp+4]
 mov bx, [bp+6]
 shl bx, 1
 mov ax, [GName + bx]
 mov  si, ax

;-1061   do{ __asm{mov al, [es:si]} si++; *di=al;  di++; } while (al != 0); }

@@loadName626:
mov al, [es:si]
 inc  si
 mov  [di], al
 inc  di
 cmp  al, 0
 je  @@loadName627
 jmp @@loadName626
@@loadName627:

;-1062 int to_far(char *dest, char *src) {
 LEAVE
 ret
; ENDP

to_far:  ; *** PROC ***

;-1063   segE;  _ es=ax;  _ si=src;  _ di=dest;  // ds:si   es:di

;Function : to_far, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1062 NULL bp+4    dest
;  201 ptr sign byte  1062 NULL bp+6    src;
 ENTER  0,0
 mov ax, [segE]
 mov  es, ax
 mov  si, [bp+6]
 mov  di, [bp+4]

;-1064   do{ al= *si; si++; __asm{mov [es:di], al} di++; } while (al != 0); }

@@to_far628:
 mov  al, [si]
 inc  si
mov [es:di], al
 inc  di
 cmp  al, 0
 je  @@to_far629
 jmp @@to_far628
@@to_far629:

;-1065 int from_far(char *dest, char *src) {
 LEAVE
 ret
; ENDP

from_far:  ; *** PROC ***

;-1066   segE;  _ es=ax;  _ si=src;  _ di=dest;  // ds:si   es:di

;Function : from_far, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1065 NULL bp+4    dest
;  201 ptr sign byte  1065 NULL bp+6    src;
 ENTER  0,0
 mov ax, [segE]
 mov  es, ax
 mov  si, [bp+6]
 mov  di, [bp+4]

;-1067   do{ __asm{mov al, [es:si]} si++; *di=al;  di++; } while (al != 0); }

@@from_far630:
mov al, [es:si]
 inc  si
 mov  [di], al
 inc  di
 cmp  al, 0
 je  @@from_far631
 jmp @@from_far630
@@from_far631:

;-1068 


;-1069 unsigned char GDT1[]={15,0,0,0,0,0,0,0, 0xFF,0xFF,0x00,0x00,0x00,0x92,0xCF,0};
 LEAVE
 ret
; ENDP
GDT1 db 15,0,0,0,0,0,0,0,255,255,0,0,0,146,207,0

;-1070 int isvirtual86() { eax=cr0;  ax &= 1; }


isvirtual86:  ; *** PROC ***
 mov  eax, cr0
 and  ax, 1

;-1071 int is32bit() { ecx=0xFFFF; __asm{jmp $ + 2;} ecx++; ifzero return 0; return 1;}

 ret
; ENDP

is32bit:  ; *** PROC ***
 mov  ecx, 65535
jmp $ + 2;
 inc  ecx
 jne short @@is32bit632
 mov eax, 0
 jmp @@retn
@@is32bit632:
 mov eax, 1
 jmp @@retn

;-1072 int INITCPU32() { eax=0;	ax=ds; eax << 4;

@@retn:
 ret
; ENDP

INITCPU32:  ; *** PROC ***
 mov  eax, 0
 mov  ax, ds
 shl  eax, 4

;-1073 	asm add eax, GDT1       ;//Offset GDT

 add eax, GDT1       ;//Offset GDT

;-1074 	asm mov [GDT1+2], eax

 mov [GDT1+2], eax

;-1075 	asm lgdt [GDT1]

 lgdt [GDT1]

;-1076 	bx=8;

 mov  bx, 8

;-1077 	asm push ds

 push ds

;-1078 	asm cli

 cli

;-1079 	eax=cr0; al++; cr0=eax;

 mov  eax, cr0
 inc  al
 mov  cr0, eax

;-1080 	asm use32

 use32

;-1081 	__asm{jmp dword PROT_EN}   __asm{PROT_EN:}

jmp dword PROT_EN
PROT_EN:

;-1082 	fs=bx;	al--;	cr0=eax;

 mov  fs, bx
 dec  al
 mov  cr0, eax

;-1083 	asm use16

 use16

;-1084 	__asm{jmp word PROT_DI} __asm{PROT_DI:}

jmp word PROT_DI
PROT_DI:

;-1085 	asm sti

 sti

;-1086 	asm pop ds

 pop ds

;-1087 }


;-1088 


;-1089 void to32  (long L,  char *src) { }

 ret
; ENDP

to32:  ; *** PROC ***
;Function : to32, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var sign dwrd  1089 NULL bp+4    L
;  201 ptr sign byte  1089 NULL bp+8    src;
 ENTER  0,0

;-1090 void from32(char *dest, long L) { }
 LEAVE
 ret
; ENDP

from32:  ; *** PROC ***
;Function : from32, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 ptr sign byte  1090 NULL bp+4    dest
;  201 var sign dwrd  1090 NULL bp+6    L;
 ENTER  0,0

;-1091 void prLr(unsigned long L) {           ultoar(L, Ls); prs(Ls); }//right
 LEAVE
 ret
; ENDP

prLr:  ; *** PROC ***
;Function : prLr, Number of local variables: 1
;   # type sign width line used address name   list of local variables
;  200 var unsg dwrd  1091 NULL bp+4    L;
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

;-1092 void prL (unsigned long L) {char *p; p=ultoaL(L, Ls); prs(p ); }//left
 LEAVE
 ret
; ENDP

prL:  ; *** PROC ***
;Function : prL, Number of local variables: 2
;   # type sign width line used address name   list of local variables
;  200 var unsg dwrd  1092 NULL bp+4    L
;  201 ptr sign byte  1092 NULL bp-2    p;
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

;-1093 void prf(unsigned long L, int w) {char len; char *p;            //format width
 LEAVE
 ret
; ENDP

prf:  ; *** PROC ***

;-1094   p=ultoaL(L, Ls); len=strlen(p); if (w > len) do {prc(32); w--;} while (w>len);

;Function : prf, Number of local variables: 4
;   # type sign width line used address name   list of local variables
;  200 var unsg dwrd  1093 NULL bp+4    L
;  201 var sign word  1093 NULL bp+8    w
;  202 var sign byte  1093 NULL bp-2    len
;  203 ptr sign byte  1093 NULL bp-4    p;
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
 jle @@prf633
@@prf634:
 push 32
 call prc
 add  sp, 2
 dec  word [bp+8]
 mov ax, [bp+8]
 cmp al, [bp-2]
 jle @@prf635
 jmp @@prf634
@@prf635:
@@prf633:

;-1095   prs(p); }

 push word [bp-4]
 call prs
 add  sp, 2

;-1096 void ultoar(unsigned long L, char *s) { int i;//edx:eax DIV ebx = eax Modulo edx
 LEAVE
 ret
; ENDP

ultoar:  ; *** PROC ***

;-1097   i=0;  while(i<10) { *s = '0'; s++; i++; }   *s = 0;   s--;  eax=L;

;Function : ultoar, Number of local variables: 3
;   # type sign width line used address name   list of local variables
;  200 var unsg dwrd  1096 NULL bp+4    L
;  201 ptr sign byte  1096 NULL bp+8    s
;  202 var sign word  1096 NULL bp-2    i;
 ENTER  2,0
 mov eax, 0
 mov word [bp-2], ax
@@ultoar636:
 mov ax, [bp-2]
 cmp ax, 10
 jge @@ultoar637
 mov eax, 48
 mov  bx, [bp+8]
 mov  [bx], al
 inc  word [bp+8]
 inc  word [bp-2]
 jmp @@ultoar636
@@ultoar637:
 mov eax, 0
 mov  bx, [bp+8]
 mov  [bx], al
 dec  word [bp+8]
 mov  eax, [bp+4]

;-1098   do { edx=0;  ebx=10; ebx /= ;

@@ultoar638:
 mov  edx, 0
 mov  ebx, 10
 div  ebx

;-1099        dl+=48; bx=s;   *bx=dl;  s--; } while (eax != 0);  }

 add  dl, 48