     1                                  
     2                                  ; A.COM CComp V0.6, Arglen: 4, Argv: A.C, Source: A.C, Output asm: A.S
     3                                  ;PROTECTED: 0 V86 OFF.  32bit: ON. 
     4                                  org  256 ; NASM ON
     5 00000000 E9BD2F                  jmp main
     6                                  
     7                                  ;-1 //A.C  The MIT License (c) 2015 Helmut Guenther
     8                                  
     9                                  
    10                                  ;-2 char Version1[]="A.COM CComp V0.6";
    11                                  
    12 00000003 412E434F4D2043436F-     Version1 db "A.COM CComp V0.6",0
    13 0000000C 6D702056302E3600   
    14                                  
    15                                  ;-3 #define BSS
    16                                  
    17                                  
    18                                  ;-4 #define ORGDATA     30000
    19                                  
    20                                  
    21                                  ;-5 char BSS=0;  char NASM=0;  char PROTECTED=0;     char LIST=0;
    22                                  
    23 00000014 00                      BSS db 0
    24 00000015 00                      NASM db 0
    25 00000016 00                      PROTECTED db 0
    26 00000017 00                      LIST db 0
    27                                  
    28                                  ;-6 #define LSTART        200
    29                                  
    30                                  
    31                                  ;-7 #define VARMAX        300
    32                                  
    33                                  
    34                                  ;-8 #define FUNCMAX       300
    35                                  
    36                                  
    37                                  ;-9 #define CALLMAX      2000
    38                                  
    39                                  
    40                                  ;-10 #define IDLENMAX       16
    41                                  
    42                                  
    43                                  ;-11 #define _  // constant compare
    44                                  
    45                                  
    46                                  ;-12 #define T_NAME        256
    47                                  
    48                                  
    49                                  ;-13 #define T_CONST       257 
    50                                  
    51                                  
    52                                  ;-14 #define T_STRING      258     
    53                                  
    54                                  
    55                                  ;-15 #define T_INCLUDE     510     
    56                                  
    57                                  
    58                                  ;-16 #define T_DEFINE      511  
    59                                  
    60                                  
    61                                  ;-17 #define T_RETURN      512
    62                                  
    63                                  
    64                                  ;-18 #define T_IF          513      
    65                                  
    66                                  
    67                                  ;-19 #define T_ELSE        514  
    68                                  
    69                                  
    70                                  ;-20 #define T_WHILE       515      
    71                                  
    72                                  
    73                                  ;-21 #define T_DO          516
    74                                  
    75                                  
    76                                  ;-22 #define T_INT         517     
    77                                  
    78                                  
    79                                  ;-23 #define T_ASM         518   
    80                                  
    81                                  
    82                                  ;-24 #define T_ASMBLOCK    519   
    83                                  
    84                                  
    85                                  ;-25 #define T_EMIT        520
    86                                  
    87                                  
    88                                  ;-26 #define T_GOTO        521    
    89                                  
    90                                  
    91                                  ;-27 #define T_VOID        529  
    92                                  
    93                                  
    94                                  ;-28 #define T_CHAR        530       
    95                                  
    96                                  
    97                                  ;-29 #define T_SIGNED      531
    98                                  
    99                                  
   100                                  ;-30 #define T_UNSIGNED    532
   101                                  
   102                                  
   103                                  ;-31 #define T_LONG        533
   104                                  
   105                                  
   106                                  ;-32 #define T_SHORT       534
   107                                  
   108                                  
   109                                  ;-33 #define T_UINT32      545
   110                                  
   111                                  
   112                                  ;-34 #define T_INTH        600
   113                                  
   114                                  
   115                                  ;-35 #define T_IFCARRY     601
   116                                  
   117                                  
   118                                  ;-36 #define T_IFZERO      602
   119                                  
   120                                  
   121                                  ;-37 #define T_EQ          806
   122                                  
   123                                  
   124                                  ;-38 #define T_NE          807
   125                                  
   126                                  
   127                                  ;-39 #define T_GE          811
   128                                  
   129                                  
   130                                  ;-40 #define T_LE          824
   131                                  
   132                                  
   133                                  ;-41 #define T_PLUSPLUS   1219
   134                                  
   135                                  
   136                                  ;-42 #define T_MINUSMINUS 1225
   137                                  
   138                                  
   139                                  ;-43 #define T_PLUSASS    1230
   140                                  
   141                                  
   142                                  ;-44 #define T_MINUSASS   1231
   143                                  
   144                                  
   145                                  ;-45 #define T_MULASS     1232
   146                                  
   147                                  
   148                                  ;-46 #define T_DIVASS     1233
   149                                  
   150                                  
   151                                  ;-47 #define T_ANDASS     1234
   152                                  
   153                                  
   154                                  ;-48 #define T_ORASS      1235
   155                                  
   156                                  
   157                                  ;-49 #define T_LESSLESS   1240
   158                                  
   159                                  
   160                                  ;-50 #define T_GREATGREAT 1241
   161                                  
   162                                  
   163                                  ;-51 #define COMAX        3000
   164                                  
   165                                  
   166                                  ;-52 #define CMDLENMAX      67
   167                                  
   168                                  
   169                                  ;-53 unsigned long LDATAORIG=2000000;     unsigned long ldata=2000000; long LONG0=0;
   170                                  
   171 00000018 80841E00                LDATAORIG dd 2000000
   172 0000001C 80841E00                ldata dd 2000000
   173 00000020 00000000                LONG0 dd 0
   174                                  
   175                                  ;-54 unsigned long ORGDATAORIG=30000;     unsigned long orgData=30000;
   176                                  
   177 00000024 30750000                ORGDATAORIG dd 30000
   178 00000028 30750000                orgData dd 30000
   179                                  
   180                                  ;-55 char co[COMAX];    int maxco=0;      int maxco1=0;
   181                                  
   182                                  section .bss
   183                                  absolute 30000
   184 00007530 <res 00000BB8>          co resb 3000
   185                                  section .text
   186 0000002C 0000                    maxco dw 0
   187 0000002E 0000                    maxco1 dw 0
   188                                  
   189                                  ;-56 char coname[CMDLENMAX];              char *cloc=0;
   190                                  
   191                                  section .bss
   192                                  absolute 33000
   193 000080E8 <res 00000043>          coname resb 67
   194                                  section .text
   195 00000030 0000                    cloc dw 0
   196                                  
   197                                  ;-57 char locname[CMDLENMAX]; int maxloc=0;
   198                                  
   199                                  section .bss
   200                                  absolute 33067
   201 0000812B <res 00000043>          locname resb 67
   202                                  section .text
   203 00000032 0000                    maxloc dw 0
   204                                  
   205                                  ;-58 int fdin=0;        int fdout=0;      char symbol[128];
   206                                  
   207 00000034 0000                    fdin dw 0
   208 00000036 0000                    fdout dw 0
   209                                  section .bss
   210                                  absolute 33134
   211 0000816E <res 00000080>          symbol resb 128
   212                                  section .text
   213                                  
   214                                  ;-59 char fname[CMDLENMAX];               char namein[CMDLENMAX];
   215                                  
   216                                  section .bss
   217                                  absolute 33262
   218 000081EE <res 00000043>          fname resb 67
   219                                  section .text
   220                                  section .bss
   221                                  absolute 33329
   222 00008231 <res 00000043>          namein resb 67
   223                                  section .text
   224                                  
   225                                  ;-60 char namelst[CMDLENMAX];             char archivename[]="AR.C";
   226                                  
   227                                  section .bss
   228                                  absolute 33396
   229 00008274 <res 00000043>          namelst resb 67
   230                                  section .text
   231 00000038 41522E4300              archivename db "AR.C",0
   232                                  
   233                                  ;-61 int token=0;       char globC=0;     int spalte=0;
   234                                  
   235 0000003D 0000                    token dw 0
   236 0000003F 00                      globC db 0
   237 00000040 0000                    spalte dw 0
   238                                  
   239                                  ;-62 char thechar=0;    int iscmp=0;      int nconst=0;
   240                                  
   241 00000042 00                      thechar db 0
   242 00000043 0000                    iscmp dw 0
   243 00000045 0000                    nconst dw 0
   244                                  
   245                                  ;-63 int nreturn=0;     int nlabel=0;     int callrecursive=0;
   246                                  
   247 00000047 0000                    nreturn dw 0
   248 00000049 0000                    nlabel dw 0
   249 0000004B 0000                    callrecursive dw 0
   250                                  
   251                                  ;-64 unsigned long lexvalL;  char islong; char isldata=0;
   252                                  
   253 0000004D 00000000                lexvalL dd 0
   254 00000051 00                      islong db 0
   255 00000052 00                      isldata db 0
   256                                  
   257                                  ;-65 int typei;        char istype;  char GType [VARMAX]; // 0=V, 1=*, 2=&,#
   258                                  
   259 00000053 0000                    typei dw 0
   260 00000055 00                      istype db 0
   261                                  section .bss
   262                                  absolute 33463
   263 000082B7 <res 0000012C>          GType resb 300
   264                                  section .text
   265                                  
   266                                  ;-66 int signi;        char issign;  char GSign [VARMAX]; // 0=U, 1=S
   267                                  
   268 00000056 0000                    signi dw 0
   269 00000058 00                      issign db 0
   270                                  section .bss
   271                                  absolute 33763
   272 000083E3 <res 0000012C>          GSign resb 300
   273                                  section .text
   274                                  
   275                                  ;-67 int widthi;int wi;char iswidth; char GWidth[VARMAX]; // 0, 1, 2, 4
   276                                  
   277 00000059 0000                    widthi dw 0
   278 0000005B 0000                    wi dw 0
   279 0000005D 00                      iswidth db 0
   280                                  section .bss
   281                                  absolute 34063
   282 0000850F <res 0000012C>          GWidth resb 300
   283                                  section .text
   284                                  
   285                                  ;-68 int  GTop=1;        int LTop=150;
   286                                  
   287 0000005E 0100                    GTop dw 1
   288 00000060 9600                    LTop dw 150
   289                                  
   290                                  ;-69 int  GLino   [VARMAX];     // lineno
   291                                  
   292                                  section .bss
   293                                  absolute 34363
   294 0000863B <res 00000258>          GLino resw 300
   295                                  section .text
   296                                  
   297                                  ;-70 int  GUsed   [VARMAX];     // how manytimes is var used
   298                                  
   299                                  section .bss
   300                                  absolute 34963
   301 00008893 <res 00000258>          GUsed resw 300
   302                                  section .text
   303                                  
   304                                  ;-71 long GData   [VARMAX];     // init data or local addr or array len or define no
   305                                  
   306                                  section .bss
   307                                  absolute 35563
   308 00008AEB <res 000004B0>          GData resd 300
   309                                  section .text
   310                                  
   311                                  ;-72 long GAdr    [VARMAX];     // Address 32 bit
   312                                  
   313                                  section .bss
   314                                  absolute 36763
   315 00008F9B <res 000004B0>          GAdr resd 300
   316                                  section .text
   317                                  
   318                                  ;-73 int  GName   [VARMAX];     // start of var name in list
   319                                  
   320                                  section .bss
   321                                  absolute 37963
   322 0000944B <res 00000258>          GName resw 300
   323                                  section .text
   324                                  
   325                                  ;-74 int  FTop=0;               // top of function list
   326                                  
   327 00000062 0000                    FTop dw 0
   328                                  
   329                                  ;-75 char FWidth  [FUNCMAX];    // iswidth
   330                                  
   331                                  section .bss
   332                                  absolute 38563
   333 000096A3 <res 0000012C>          FWidth resb 300
   334                                  section .text
   335                                  
   336                                  ;-76 int  FLino   [FUNCMAX];    // lineno
   337                                  
   338                                  section .bss
   339                                  absolute 38863
   340 000097CF <res 00000258>          FLino resw 300
   341                                  section .text
   342                                  
   343                                  ;-77 int  FCalls  [FUNCMAX];    // no of calls for this function
   344                                  
   345                                  section .bss
   346                                  absolute 39463
   347 00009A27 <res 00000258>          FCalls resw 300
   348                                  section .text
   349                                  
   350                                  ;-78 int  FName   [FUNCMAX];    // start of function name in list
   351                                  
   352                                  section .bss
   353                                  absolute 40063
   354 00009C7F <res 00000258>          FName resw 300
   355                                  section .text
   356                                  
   357                                  ;-79 int  CTop=0;               // top of call list
   358                                  
   359 00000064 0000                    CTop dw 0
   360                                  
   361                                  ;-80 int  CName   [CALLMAX];    // CNameTop
   362                                  
   363                                  section .bss
   364                                  absolute 40663
   365 00009ED7 <res 00000FA0>          CName resw 2000
   366                                  section .text
   367                                  
   368                                  ;-81 char CUnres  [CALLMAX];    // 0 = unresolved call
   369                                  
   370                                  section .bss
   371                                  absolute 44663
   372 0000AE77 <res 000007D0>          CUnres resb 2000
   373                                  section .text
   374                                  
   375                                  ;-82 char Ls[]="12345678901";                      //must be in low memory
   376                                  
   377 00000066 313233343536373839-     Ls db "12345678901",0
   378 0000006F 303100             
   379                                  
   380                                  ;-83 char NA[]="12345678901234567890123456789012"; //must be in low memory
   381                                  
   382 00000072 313233343536373839-     NA db "12345678901234567890123456789012",0
   383 0000007B 303132333435363738-
   384 00000084 393031323334353637-
   385 0000008D 383930313200       
   386                                  
   387                                  ;-84 char NB[]="12345678901234567890123456789012"; //must be in low memory
   388                                  
   389 00000093 313233343536373839-     NB db "12345678901234567890123456789012",0
   390 0000009C 303132333435363738-
   391 000000A5 393031323334353637-
   392 000000AE 383930313200       
   393                                  
   394                                  ;-85 char fgetsdest[128];         unsigned char *CNameTop=0;
   395                                  
   396                                  section .bss
   397                                  absolute 46663
   398 0000B647 <res 00000080>          fgetsdest resb 128
   399                                  section .text
   400 000000B4 0000                    CNameTop dw 0
   401                                  
   402                                  ;-86 unsigned char *fgetsp=0;     unsigned int segE;
   403                                  
   404 000000B6 0000                    fgetsp dw 0
   405 000000B8 0000                    segE dw 0
   406                                  
   407                                  ;-87 unsigned int lineno=1;       unsigned int linenoinclude=1;
   408                                  
   409 000000BA 0100                    lineno dw 1
   410 000000BC 0100                    linenoinclude dw 1
   411                                  
   412                                  ;-88 unsigned char *pt=0;         unsigned char *p1=0;
   413                                  
   414 000000BE 0000                    pt dw 0
   415 000000C0 0000                    p1 dw 0
   416                                  
   417                                  ;-89 int DOS_ERR=0; int DOS_NoBytes=0; char DOS_ByteRead=0;
   418                                  
   419 000000C2 0000                    DOS_ERR dw 0
   420 000000C4 0000                    DOS_NoBytes dw 0
   421 000000C6 00                      DOS_ByteRead db 0
   422                                  
   423                                  ;-90 
   424                                  
   425                                  
   426                                  ;-91 long varL1!; int vari1!; unsigned int vari2![3];
   427                                  
   428                                  ;p32  adr: 2000000, varL1 [4]
   429                                  ;p32  adr: 2000004, vari1 [2]
   430                                  ;p32  adr: 2000006, vari2 [6]
   431                                  
   432                                  ;-92 char varc1!; long varL2!;
   433                                  
   434                                  ;p32  adr: 2000012, varc1 [1]
   435                                  ;p32  adr: 2000013, varL2 [4]
   436                                  
   437                                  ;-93 long arrL1![3]; long varL4!; char chc2!;
   438                                  
   439                                  ;p32  adr: 2000017, arrL1 [12]
   440                                  ;p32  adr: 2000029, varL4 [4]
   441                                  ;p32  adr: 2000033, chc2 [1]
   442                                  
   443                                  ;-94 void ttt(long par1, char *s)
   444                                  
   445                                  
   446                                  ttt:  ; *** PROC ***
   447                                  
   448                                  ;-95   {   }
   449                                  
   450                                  ;Function : ttt, Number of local variables: 2
   451                                  ;   # type sign width line used address name   list of local variables
   452                                  ;  200 var sign dwrd    94 NULL bp+4    par1
   453                                  ;  201 ptr sign byte    94 NULL bp+8    s;
   454 000000C7 C8000000                 ENTER  0,0
   455                                  
   456                                  ;-96 void a(unsigned int i) { if(NASM == 0) prs("offset "); printName(i);}//address
   457 000000CB C9                       LEAVE
   458 000000CC C3                       ret
   459                                  ; ENDP
   460                                  
   461                                  a:  ; *** PROC ***
   462                                  ;Function : a, Number of local variables: 1
   463                                  ;   # type sign width line used address name   list of local variables
   464                                  ;  200 var unsg word    96 NULL bp+4    i;
   465 000000CD C8000000                 ENTER  0,0
   466 000000D1 A0[1500]                 mov al, [NASM]
   467 000000D4 3C00                     cmp al, 0
   468 000000D6 0F850900                 jne @@a1
   469 000000DA 68[EE00]                 push a_0
   470 000000DD E8CE4D                   call prs
   471 000000E0 83C402                   add  sp, 2
   472                                  @@a1:
   473 000000E3 FF7604                   push word [bp+4]
   474 000000E6 E82309                   call printName
   475 000000E9 83C402                   add  sp, 2
   476                                  
   477                                  ;-97 void v(unsigned int i) { if(NASM) { if (i < LSTART) prc('['); }
   478 000000EC C9                       LEAVE
   479 000000ED C3                       ret
   480                                  ; ENDP
   481 000000EE 6F66667365742000        a_0 db "offset ",0
   482                                  
   483                                  v:  ; *** PROC ***
   484                                  ;Function : v, Number of local variables: 1
   485                                  ;   # type sign width line used address name   list of local variables
   486                                  ;  200 var unsg word    97 NULL bp+4    i;
   487 000000F6 C8000000                 ENTER  0,0
   488 000000FA A0[1500]                 mov al, [NASM]
   489 000000FD 08C0                     or  al, al
   490 000000FF 0F841200                 je @@v2
   491 00000103 8B4604                   mov ax, [bp+4]
   492 00000106 3DC800                   cmp ax, 200
   493 00000109 0F8D0800                 jge @@v3
   494 0000010D 6A5B                     push 91
   495 0000010F E82D4D                   call prc
   496 00000112 83C402                   add  sp, 2
   497                                  @@v3:
   498                                  
   499                                  ;-98   printName(i); if(NASM) { if (i < LSTART) prc(']'); }   }//value
   500                                  
   501                                  @@v2:
   502 00000115 FF7604                   push word [bp+4]
   503 00000118 E8F108                   call printName
   504 0000011B 83C402                   add  sp, 2
   505 0000011E A0[1500]                 mov al, [NASM]
   506 00000121 08C0                     or  al, al
   507 00000123 0F841200                 je @@v4
   508 00000127 8B4604                   mov ax, [bp+4]
   509 0000012A 3DC800                   cmp ax, 200
   510 0000012D 0F8D0800                 jge @@v5
   511 00000131 6A5D                     push 93
   512 00000133 E8094D                   call prc
   513 00000136 83C402                   add  sp, 2
   514                                  @@v5:
   515                                  @@v4:
   516                                  
   517                                  ;-99 void checknamelen() { int i;    i=strlen(symbol);
   518 00000139 C9                       LEAVE
   519 0000013A C3                       ret
   520                                  ; ENDP
   521                                  
   522                                  checknamelen:  ; *** PROC ***
   523                                  ;Function : checknamelen, Number of local variables: 1
   524                                  ;   # type sign width line used address name   list of local variables
   525                                  ;  200 var sign word    99 NULL bp-2    i;
   526 0000013B C8020000                 ENTER  2,0
   527 0000013F 8D066E81                 lea  ax, [symbol]
   528 00000143 50                       push ax
   529 00000144 E83660                   call strlen
   530 00000147 83C402                   add  sp, 2
   531 0000014A 8946FE                   mov word [bp-2], ax
   532                                  
   533                                  ;-100   if (i >= IDLENMAX) error1("Item name is too long in characters)"); }
   534                                  
   535 0000014D 8B46FE                   mov ax, [bp-2]
   536 00000150 83F810                   cmp ax, 16 ;unsigned : 1
   537 00000153 0F8C0900                 jl  @@checknamelen6
   538 00000157 68[6201]                 push checknamelen_0
   539 0000015A E85250                   call error1
   540 0000015D 83C402                   add  sp, 2
   541                                  @@checknamelen6:
   542                                  
   543                                  ;-101 void pwi(int i) {  // print width
   544 00000160 C9                       LEAVE
   545 00000161 C3                       ret
   546                                  ; ENDP
   547 00000162 4974656D206E616D65-     checknamelen_0 db "Item name is too long in characters)",0
   548 0000016B 20697320746F6F206C-
   549 00000174 6F6E6720696E206368-
   550 0000017D 617261637465727329-
   551 00000186 00                 
   552                                  
   553                                  pwi:  ; *** PROC ***
   554                                  
   555                                  ;-102   if (i == 1) prs("byte ");    if (i == 2) prs("word ");
   556                                  
   557                                  ;Function : pwi, Number of local variables: 1
   558                                  ;   # type sign width line used address name   list of local variables
   559                                  ;  200 var sign word   101 NULL bp+4    i;
   560 00000187 C8000000                 ENTER  0,0
   561 0000018B 8B4604                   mov ax, [bp+4]
   562 0000018E 83F801                   cmp ax, 1
   563 00000191 0F850900                 jne @@pwi7
   564 00000195 68[D801]                 push pwi_0
   565 00000198 E8134D                   call prs
   566 0000019B 83C402                   add  sp, 2
   567                                  @@pwi7:
   568 0000019E 8B4604                   mov ax, [bp+4]
   569 000001A1 83F802                   cmp ax, 2
   570 000001A4 0F850900                 jne @@pwi8
   571 000001A8 68[DE01]                 push pwi_1
   572 000001AB E8004D                   call prs
   573 000001AE 83C402                   add  sp, 2
   574                                  
   575                                  ;-103   if (i == 4) prs("dword ");   if (NASM == 0) prs("ptr ");
   576                                  
   577                                  @@pwi8:
   578 000001B1 8B4604                   mov ax, [bp+4]
   579 000001B4 83F804                   cmp ax, 4
   580 000001B7 0F850900                 jne @@pwi9
   581 000001BB 68[E401]                 push pwi_2
   582 000001BE E8ED4C                   call prs
   583 000001C1 83C402                   add  sp, 2
   584                                  @@pwi9:
   585 000001C4 A0[1500]                 mov al, [NASM]
   586 000001C7 3C00                     cmp al, 0
   587 000001C9 0F850900                 jne @@pwi10
   588 000001CD 68[EB01]                 push pwi_3
   589 000001D0 E8DB4C                   call prs
   590 000001D3 83C402                   add  sp, 2
   591                                  
   592                                  ;-104 }
   593                                  
   594                                  @@pwi10:
   595                                  
   596                                  ;-105 void storeName() {int i;
   597 000001D6 C9                       LEAVE
   598 000001D7 C3                       ret
   599                                  ; ENDP
   600 000001D8 627974652000            pwi_0 db "byte ",0
   601 000001DE 776F72642000            pwi_1 db "word ",0
   602 000001E4 64776F72642000          pwi_2 db "dword ",0
   603 000001EB 7074722000              pwi_3 db "ptr ",0
   604                                  
   605                                  storeName:  ; *** PROC ***
   606                                  
   607                                  ;-106   i=strlen(symbol); to_far(CNameTop, symbol); CNameTop=CNameTop+i; CNameTop++;
   608                                  
   609                                  ;Function : storeName, Number of local variables: 1
   610                                  ;   # type sign width line used address name   list of local variables
   611                                  ;  200 var sign word   105 NULL bp-2    i;
   612 000001F0 C8020000                 ENTER  2,0
   613 000001F4 8D066E81                 lea  ax, [symbol]
   614 000001F8 50                       push ax
   615 000001F9 E8815F                   call strlen
   616 000001FC 83C402                   add  sp, 2
   617 000001FF 8946FE                   mov word [bp-2], ax
   618 00000202 8D066E81                 lea  ax, [symbol]
   619 00000206 50                       push ax
   620 00000207 FF36[B400]               push word [CNameTop]
   621 0000020B E8775C                   call to_far
   622 0000020E 83C404                   add  sp, 4
   623 00000211 A1[B400]                 mov ax, [CNameTop]
   624 00000214 0346FE                   add ax, [bp-2]
   625 00000217 A3[B400]                 mov word [CNameTop], ax
   626 0000021A FF06[B400]               inc  word [CNameTop]
   627                                  
   628                                  ;-107 }
   629                                  
   630                                  
   631                                  ;-108 char doglobName[IDLENMAX];
   632 0000021E C9                       LEAVE
   633 0000021F C3                       ret
   634                                  ; ENDP
   635                                  section .bss
   636                                  absolute 46791
   637 0000B6C7 <res 00000010>          doglobName resb 16
   638                                  section .text
   639                                  
   640                                  ;-109 void doLdata() {
   641                                  
   642                                  
   643                                  doLdata:  ; *** PROC ***
   644                                  
   645                                  ;-110   if (GTop >= LSTART) error1("Global table full");
   646                                  
   647 00000220 A1[5E00]                 mov ax, [GTop]
   648 00000223 3DC800                   cmp ax, 200 ;unsigned : 1
   649 00000226 0F8C0900                 jl  @@doLdata11
   650 0000022A 68[8703]                 push doLdata_0
   651 0000022D E87F4F                   call error1
   652 00000230 83C402                   add  sp, 2
   653                                  
   654                                  ;-111   if (iswidth == 0) error1("no VOID as var type");
   655                                  
   656                                  @@doLdata11:
   657 00000233 A0[5D00]                 mov al, [iswidth]
   658 00000236 3C00                     cmp al, 0
   659 00000238 0F850900                 jne @@doLdata12
   660 0000023C 68[9903]                 push doLdata_1
   661 0000023F E86D4F                   call error1
   662 00000242 83C402                   add  sp, 2
   663                                  
   664                                  ;-112   checknamelen();
   665                                  
   666                                  @@doLdata12:
   667 00000245 E8F3FE                   call checknamelen
   668                                  
   669                                  ;-113   if (checkName() != 0) error1("Global variable already defined");
   670                                  
   671 00000248 E87608                   call checkName
   672 0000024B 3C00                     cmp al, 0
   673 0000024D 0F840900                 je  @@doLdata13
   674 00000251 68[AD03]                 push doLdata_2
   675 00000254 E8584F                   call error1
   676 00000257 83C402                   add  sp, 2
   677                                  
   678                                  ;-114   GAdr[GTop]=ldata;
   679                                  
   680                                  @@doLdata13:
   681 0000025A 66A1[1C00]               mov eax, [ldata]
   682 0000025E 8B1E[5E00]               mov bx, [GTop]
   683 00000262 C1E302                   shl bx, 2
   684 00000265 6689879B8F               mov [GAdr+bx], eax
   685                                  
   686                                  ;-115   eax=0;  lexvalL=iswidth; // Cast B2L
   687                                  
   688 0000026A 66B800000000             mov  eax, 0
   689 00000270 A0[5D00]                 mov al, [iswidth]
   690 00000273 66A3[4D00]               mov dword [lexvalL], eax
   691                                  
   692                                  ;-116   if (istoken('[')) { istype='&';
   693                                  
   694 00000277 6A5B                     push 91
   695 00000279 E8EC4A                   call istoken
   696 0000027C 83C402                   add  sp, 2
   697 0000027F 08C0                     or  al, al
   698 00000281 0F844300                 je @@doLdata14
   699 00000285 66B826000000             mov eax, 38
   700 0000028B A2[5500]                 mov byte [istype], al
   701                                  
   702                                  ;-117     expect(T_CONST);
   703                                  
   704 0000028E 680101                   push 257
   705 00000291 E8FC4A                   call expect
   706 00000294 83C402                   add  sp, 2
   707                                  
   708                                  ;-118     if (iswidth==2) lexvalL=lexvalL << 1;
   709                                  
   710 00000297 A0[5D00]                 mov al, [iswidth]
   711 0000029A 3C02                     cmp al, 2
   712 0000029C 0F850B00                 jne @@doLdata15
   713 000002A0 66A1[4D00]               mov eax, [lexvalL]
   714 000002A4 66D1E0                   shl eax, 1
   715 000002A7 66A3[4D00]               mov dword [lexvalL], eax
   716                                  
   717                                  ;-119     if (iswidth==4) lexvalL=lexvalL << 2;
   718                                  
   719                                  @@doLdata15:
   720 000002AB A0[5D00]                 mov al, [iswidth]
   721 000002AE 3C04                     cmp al, 4
   722 000002B0 0F850C00                 jne @@doLdata16
   723 000002B4 66A1[4D00]               mov eax, [lexvalL]
   724 000002B8 66C1E002                 shl eax, 2
   725 000002BC 66A3[4D00]               mov dword [lexvalL], eax
   726                                  
   727                                  ;-120     expect(']');
   728                                  
   729                                  @@doLdata16:
   730 000002C0 6A5D                     push 93
   731 000002C2 E8CB4A                   call expect
   732 000002C5 83C402                   add  sp, 2
   733                                  
   734                                  ;-121   }
   735                                  
   736                                  
   737                                  ;-122   prs("\n;p32  adr: "); prL(ldata); prs(", "); prs(symbol);
   738                                  
   739                                  @@doLdata14:
   740 000002C8 68[CD03]                 push doLdata_3
   741 000002CB E8E04B                   call prs
   742 000002CE 83C402                   add  sp, 2
   743 000002D1 66FF36[1C00]             push dword [ldata]
   744 000002D6 E8885C                   call prL
   745 000002D9 83C404                   add  sp, 4
   746 000002DC 68[DB03]                 push doLdata_4
   747 000002DF E8CC4B                   call prs
   748 000002E2 83C402                   add  sp, 2
   749 000002E5 8D066E81                 lea  ax, [symbol]
   750 000002E9 50                       push ax
   751 000002EA E8C14B                   call prs
   752 000002ED 83C402                   add  sp, 2
   753                                  
   754                                  ;-123   prs(" ["); prL(lexvalL); prc(']');
   755                                  
   756 000002F0 68[DE03]                 push doLdata_5
   757 000002F3 E8B84B                   call prs
   758 000002F6 83C402                   add  sp, 2
   759 000002F9 66FF36[4D00]             push dword [lexvalL]
   760 000002FE E8605C                   call prL
   761 00000301 83C404                   add  sp, 4
   762 00000304 6A5D                     push 93
   763 00000306 E8364B                   call prc
   764 00000309 83C402                   add  sp, 2
   765                                  
   766                                  ;-124   ldata=ldata+lexvalL; GData[GTop]=lexvalL;
   767                                  
   768 0000030C 66A1[1C00]               mov eax, [ldata]
   769 00000310 660306[4D00]             add eax, [lexvalL]
   770 00000315 66A3[1C00]               mov dword [ldata], eax
   771 00000319 66A1[4D00]               mov eax, [lexvalL]
   772 0000031D 8B1E[5E00]               mov bx, [GTop]
   773 00000321 C1E302                   shl bx, 2
   774 00000324 668987EB8A               mov [GData+bx], eax
   775                                  
   776                                  ;-125   GSign[GTop]=issign;  GWidth[GTop]=iswidth; GType[GTop]=istype;
   777                                  
   778 00000329 A0[5800]                 mov al, [issign]
   779 0000032C 8B1E[5E00]               mov bx, [GTop]
   780 00000330 8887E383                 mov [GSign+bx], al
   781 00000334 A0[5D00]                 mov al, [iswidth]
   782 00000337 8B1E[5E00]               mov bx, [GTop]
   783 0000033B 88870F85                 mov [GWidth+bx], al
   784 0000033F A0[5500]                 mov al, [istype]
   785 00000342 8B1E[5E00]               mov bx, [GTop]
   786 00000346 8887B782                 mov [GType+bx], al
   787                                  
   788                                  ;-126   GLino [GTop]=lineno-1; GUsed [GTop]=0;
   789                                  
   790 0000034A A1[BA00]                 mov ax, [lineno]
   791 0000034D 83E801                   sub ax, 1
   792 00000350 8B1E[5E00]               mov bx, [GTop]
   793 00000354 D1E3                     shl bx, 1
   794 00000356 89873B86                 mov [GLino+bx], ax
   795 0000035A 66B800000000             mov eax, 0
   796 00000360 8B1E[5E00]               mov bx, [GTop]
   797 00000364 D1E3                     shl bx, 1
   798 00000366 89879388                 mov [GUsed+bx], ax
   799                                  
   800                                  ;-127 //  if (isstrarr) strcpy(symbol, doglobName);
   801                                  
   802                                  
   803                                  ;-128   GName[GTop] = CNameTop;
   804                                  
   805 0000036A A1[B400]                 mov ax, [CNameTop]
   806 0000036D 8B1E[5E00]               mov bx, [GTop]
   807 00000371 D1E3                     shl bx, 1
   808 00000373 89874B94                 mov [GName+bx], ax
   809                                  
   810                                  ;-129   storeName();
   811                                  
   812 00000377 E876FE                   call storeName
   813                                  
   814                                  ;-130   GTop++; expect(';');
   815                                  
   816 0000037A FF06[5E00]               inc  word [GTop]
   817 0000037E 6A3B                     push 59
   818 00000380 E80D4A                   call expect
   819 00000383 83C402                   add  sp, 2
   820                                  
   821                                  ;-131 }
   822                                  
   823                                  
   824                                  ;-132 void doglob() { int i; int j; int isstrarr; isstrarr=0;
   825                                  
   826 00000386 C3                       ret
   827                                  ; ENDP
   828 00000387 476C6F62616C207461-     doLdata_0 db "Global table full",0
   829 00000390 626C652066756C6C00 
   830 00000399 6E6F20564F49442061-     doLdata_1 db "no VOID as var type",0
   831 000003A2 732076617220747970-
   832 000003AB 6500               
   833 000003AD 476C6F62616C207661-     doLdata_2 db "Global variable already defined",0
   834 000003B6 726961626C6520616C-
   835 000003BF 726561647920646566-
   836 000003C8 696E656400         
   837 000003CD 5C6E3B703332202061-     doLdata_3 db "\n;p32  adr: ",0
   838 000003D6 64723A2000         
   839 000003DB 2C2000                  doLdata_4 db ", ",0
   840 000003DE 205B00                  doLdata_5 db " [",0
   841                                  
   842                                  doglob:  ; *** PROC ***
   843                                  ;Function : doglob, Number of local variables: 3
   844                                  ;   # type sign width line used address name   list of local variables
   845                                  ;  200 var sign word   132 NULL bp-2    i
   846                                  ;  201 var sign word   132 NULL bp-4    j
   847                                  ;  202 var sign word   132 NULL bp-6    isstrarr;
   848 000003E1 C8060000                 ENTER  6,0
   849 000003E5 66B800000000             mov eax, 0
   850 000003EB 8946FA                   mov word [bp-6], ax
   851                                  
   852                                  ;-133   if (GTop >= LSTART) error1("Global table full");
   853                                  
   854 000003EE A1[5E00]                 mov ax, [GTop]
   855 000003F1 3DC800                   cmp ax, 200 ;unsigned : 1
   856 000003F4 0F8C0900                 jl  @@doglob17
   857 000003F8 68[1408]                 push doglob_0
   858 000003FB E8B14D                   call error1
   859 000003FE 83C402                   add  sp, 2
   860                                  
   861                                  ;-134   if (iswidth == 0) error1("no VOID as var type");
   862                                  
   863                                  @@doglob17:
   864 00000401 A0[5D00]                 mov al, [iswidth]
   865 00000404 3C00                     cmp al, 0
   866 00000406 0F850900                 jne @@doglob18
   867 0000040A 68[2608]                 push doglob_1
   868 0000040D E89F4D                   call error1
   869 00000410 83C402                   add  sp, 2
   870                                  
   871                                  ;-135   checknamelen();
   872                                  
   873                                  @@doglob18:
   874 00000413 E825FD                   call checknamelen
   875                                  
   876                                  ;-136   if (checkName() != 0) error1("Global variable already defined");
   877                                  
   878 00000416 E8A806                   call checkName
   879 00000419 3C00                     cmp al, 0
   880 0000041B 0F840900                 je  @@doglob19
   881 0000041F 68[3A08]                 push doglob_2
   882 00000422 E88A4D                   call error1
   883 00000425 83C402                   add  sp, 2
   884                                  
   885                                  ;-137   GAdr[GTop]=LONG0;
   886                                  
   887                                  @@doglob19:
   888 00000428 66A1[2000]               mov eax, [LONG0]
   889 0000042C 8B1E[5E00]               mov bx, [GTop]
   890 00000430 C1E302                   shl bx, 2
   891 00000433 6689879B8F               mov [GAdr+bx], eax
   892                                  
   893                                  ;-138   if (istoken('[')) { istype='&';
   894                                  
   895 00000438 6A5B                     push 91
   896 0000043A E82B49                   call istoken
   897 0000043D 83C402                   add  sp, 2
   898 00000440 08C0                     or  al, al
   899 00000442 0F84B402                 je @@doglob20
   900 00000446 66B826000000             mov eax, 38
   901 0000044C A2[5500]                 mov byte [istype], al
   902                                  
   903                                  ;-139       if (istoken(T_CONST)) {
   904                                  
   905 0000044F 680101                   push 257
   906 00000452 E81349                   call istoken
   907 00000455 83C402                   add  sp, 2
   908 00000458 08C0                     or  al, al
   909 0000045A 0F847C01                 je @@doglob21
   910                                  
   911                                  ;-140       if (BSS) { if (NASM) {prs("\nsection .bss\nabsolute ");
   912                                  
   913 0000045E A0[1400]                 mov al, [BSS]
   914 00000461 08C0                     or  al, al
   915 00000463 0F844400                 je @@doglob22
   916 00000467 A0[1500]                 mov al, [NASM]
   917 0000046A 08C0                     or  al, al
   918 0000046C 0F842700                 je @@doglob23
   919 00000470 68[5A08]                 push doglob_3
   920 00000473 E8384A                   call prs
   921 00000476 83C402                   add  sp, 2
   922                                  
   923                                  ;-141         GAdr[GTop]=orgData;
   924                                  
   925 00000479 66A1[2800]               mov eax, [orgData]
   926 0000047D 8B1E[5E00]               mov bx, [GTop]
   927 00000481 C1E302                   shl bx, 2
   928 00000484 6689879B8F               mov [GAdr+bx], eax
   929                                  
   930                                  ;-142         prunsign1(orgData); }
   931                                  
   932 00000489 66FF36[2800]             push dword [orgData]
   933 0000048E E8864B                   call prunsign1
   934 00000491 83C404                   add  sp, 4
   935                                  
   936                                  ;-143         else {prs("\nAData = $\norg "); prunsign1(orgData);} }
   937                                  
   938 00000494 E91400                   jmp @@doglob24
   939                                  @@doglob23:
   940 00000497 68[7408]                 push doglob_4
   941 0000049A E8114A                   call prs
   942 0000049D 83C402                   add  sp, 2
   943 000004A0 66FF36[2800]             push dword [orgData]
   944 000004A5 E86F4B                   call prunsign1
   945 000004A8 83C404                   add  sp, 4
   946                                  @@doglob24:
   947                                  
   948                                  ;-144       prs("\n"); prs(symbol); 
   949                                  
   950                                  @@doglob22:
   951 000004AB 68[8608]                 push doglob_5
   952 000004AE E8FD49                   call prs
   953 000004B1 83C402                   add  sp, 2
   954 000004B4 8D066E81                 lea  ax, [symbol]
   955 000004B8 50                       push ax
   956 000004B9 E8F249                   call prs
   957 000004BC 83C402                   add  sp, 2
   958                                  
   959                                  ;-145       if (iswidth==1) {if (NASM) prs(" resb "); else prs(" db ");}
   960                                  
   961 000004BF A0[5D00]                 mov al, [iswidth]
   962 000004C2 3C01                     cmp al, 1
   963 000004C4 0F851E00                 jne @@doglob25
   964 000004C8 A0[1500]                 mov al, [NASM]
   965 000004CB 08C0                     or  al, al
   966 000004CD 0F840C00                 je @@doglob26
   967 000004D1 68[8908]                 push doglob_6
   968 000004D4 E8D749                   call prs
   969 000004D7 83C402                   add  sp, 2
   970 000004DA E90900                   jmp @@doglob27
   971                                  @@doglob26:
   972 000004DD 68[9008]                 push doglob_7
   973 000004E0 E8CB49                   call prs
   974 000004E3 83C402                   add  sp, 2
   975                                  @@doglob27:
   976                                  
   977                                  ;-146       if (iswidth==2) {if (NASM) prs(" resw "); else prs(" dw ");}
   978                                  
   979                                  @@doglob25:
   980 000004E6 A0[5D00]                 mov al, [iswidth]
   981 000004E9 3C02                     cmp al, 2
   982 000004EB 0F851E00                 jne @@doglob28
   983 000004EF A0[1500]                 mov al, [NASM]
   984 000004F2 08C0                     or  al, al
   985 000004F4 0F840C00                 je @@doglob29
   986 000004F8 68[9508]                 push doglob_8
   987 000004FB E8B049                   call prs
   988 000004FE 83C402                   add  sp, 2
   989 00000501 E90900                   jmp @@doglob30
   990                                  @@doglob29:
   991 00000504 68[9C08]                 push doglob_9
   992 00000507 E8A449                   call prs
   993 0000050A 83C402                   add  sp, 2
   994                                  @@doglob30:
   995                                  
   996                                  ;-147       if (iswidth==4) {if (NASM) prs(" resd "); else prs(" dd ");}
   997                                  
   998                                  @@doglob28:
   999 0000050D A0[5D00]                 mov al, [iswidth]
  1000 00000510 3C04                     cmp al, 4
  1001 00000512 0F851E00                 jne @@doglob31
  1002 00000516 A0[1500]                 mov al, [NASM]
  1003 00000519 08C0                     or  al, al
  1004 0000051B 0F840C00                 je @@doglob32
  1005 0000051F 68[A108]                 push doglob_10
  1006 00000522 E88949                   call prs
  1007 00000525 83C402                   add  sp, 2
  1008 00000528 E90900                   jmp @@doglob33
  1009                                  @@doglob32:
  1010 0000052B 68[A808]                 push doglob_11
  1011 0000052E E87D49                   call prs
  1012 00000531 83C402                   add  sp, 2
  1013                                  @@doglob33:
  1014                                  
  1015                                  ;-148       prL(lexvalL); if (NASM==0)prs(" dup (?)");
  1016                                  
  1017                                  @@doglob31:
  1018 00000534 66FF36[4D00]             push dword [lexvalL]
  1019 00000539 E8255A                   call prL
  1020 0000053C 83C404                   add  sp, 4
  1021 0000053F A0[1500]                 mov al, [NASM]
  1022 00000542 3C00                     cmp al, 0
  1023 00000544 0F850900                 jne @@doglob34
  1024 00000548 68[AD08]                 push doglob_12
  1025 0000054B E86049                   call prs
  1026 0000054E 83C402                   add  sp, 2
  1027                                  
  1028                                  ;-149       if (BSS) {if(NASM) prs("\nsection .text");
  1029                                  
  1030                                  @@doglob34:
  1031 00000551 A0[1400]                 mov al, [BSS]
  1032 00000554 08C0                     or  al, al
  1033 00000556 0F841E00                 je @@doglob35
  1034 0000055A A0[1500]                 mov al, [NASM]
  1035 0000055D 08C0                     or  al, al
  1036 0000055F 0F840C00                 je @@doglob36
  1037 00000563 68[B608]                 push doglob_13
  1038 00000566 E84549                   call prs
  1039 00000569 83C402                   add  sp, 2
  1040                                  
  1041                                  ;-150         else prs("\norg AData"); }
  1042                                  
  1043 0000056C E90900                   jmp @@doglob37
  1044                                  @@doglob36:
  1045 0000056F 68[C608]                 push doglob_14
  1046 00000572 E83949                   call prs
  1047 00000575 83C402                   add  sp, 2
  1048                                  @@doglob37:
  1049                                  
  1050                                  ;-151       orgData=orgData+lexvalL;
  1051                                  
  1052                                  @@doglob35:
  1053 00000578 66A1[2800]               mov eax, [orgData]
  1054 0000057C 660306[4D00]             add eax, [lexvalL]
  1055 00000581 66A3[2800]               mov dword [orgData], eax
  1056                                  
  1057                                  ;-152       if (iswidth==2) orgData=orgData+lexvalL;
  1058                                  
  1059 00000585 A0[5D00]                 mov al, [iswidth]
  1060 00000588 3C02                     cmp al, 2
  1061 0000058A 0F850D00                 jne @@doglob38
  1062 0000058E 66A1[2800]               mov eax, [orgData]
  1063 00000592 660306[4D00]             add eax, [lexvalL]
  1064 00000597 66A3[2800]               mov dword [orgData], eax
  1065                                  
  1066                                  ;-153       if (iswidth==4) {i= lexvalL * 3; orgData=orgData + i;}
  1067                                  
  1068                                  @@doglob38:
  1069 0000059B A0[5D00]                 mov al, [iswidth]
  1070 0000059E 3C04                     cmp al, 4
  1071 000005A0 0F851B00                 jne @@doglob39
  1072 000005A4 66A1[4D00]               mov eax, [lexvalL]
  1073 000005A8 66BB03000000             mov ebx, 3
  1074 000005AE 66F7E3                   mul ebx
  1075 000005B1 8946FE                   mov word [bp-2], ax
  1076 000005B4 66A1[2800]               mov eax, [orgData]
  1077 000005B8 0346FE                   add ax, [bp-2]
  1078 000005BB 66A3[2800]               mov dword [orgData], eax
  1079                                  
  1080                                  ;-154       GData[GTop]=lexvalL; expect(']');
  1081                                  
  1082                                  @@doglob39:
  1083 000005BF 66A1[4D00]               mov eax, [lexvalL]
  1084 000005C3 8B1E[5E00]               mov bx, [GTop]
  1085 000005C7 C1E302                   shl bx, 2
  1086 000005CA 668987EB8A               mov [GData+bx], eax
  1087 000005CF 6A5D                     push 93
  1088 000005D1 E8BC47                   call expect
  1089 000005D4 83C402                   add  sp, 2
  1090                                  
  1091                                  ;-155     }else { expect(']');
  1092                                  
  1093 000005D7 E91D01                   jmp @@doglob40
  1094                                  @@doglob21:
  1095 000005DA 6A5D                     push 93
  1096 000005DC E8B147                   call expect
  1097 000005DF 83C402                   add  sp, 2
  1098                                  
  1099                                  ;-156       if (iswidth != 1) error1("Only ByteArray allowed");
  1100                                  
  1101 000005E2 A0[5D00]                 mov al, [iswidth]
  1102 000005E5 3C01                     cmp al, 1
  1103 000005E7 0F840900                 je  @@doglob41
  1104 000005EB 68[D208]                 push doglob_15
  1105 000005EE E8BE4B                   call error1
  1106 000005F1 83C402                   add  sp, 2
  1107                                  
  1108                                  ;-157       prs("\n"); prs(symbol); prs(" db "); 
  1109                                  
  1110                                  @@doglob41:
  1111 000005F4 68[E908]                 push doglob_16
  1112 000005F7 E8B448                   call prs
  1113 000005FA 83C402                   add  sp, 2
  1114 000005FD 8D066E81                 lea  ax, [symbol]
  1115 00000601 50                       push ax
  1116 00000602 E8A948                   call prs
  1117 00000605 83C402                   add  sp, 2
  1118 00000608 68[EC08]                 push doglob_17
  1119 0000060B E8A048                   call prs
  1120 0000060E 83C402                   add  sp, 2
  1121                                  
  1122                                  ;-158       isstrarr=1; strcpy(doglobName, symbol);
  1123                                  
  1124 00000611 66B801000000             mov eax, 1
  1125 00000617 8946FA                   mov word [bp-6], ax
  1126 0000061A 8D066E81                 lea  ax, [symbol]
  1127 0000061E 50                       push ax
  1128 0000061F 8D06C7B6                 lea  ax, [doglobName]
  1129 00000623 50                       push ax
  1130 00000624 E8815B                   call strcpy
  1131 00000627 83C404                   add  sp, 4
  1132                                  
  1133                                  ;-159       expect('='); 
  1134                                  
  1135 0000062A 6A3D                     push 61
  1136 0000062C E86147                   call expect
  1137 0000062F 83C402                   add  sp, 2
  1138                                  
  1139                                  ;-160       if (istoken(T_STRING)) { 
  1140                                  
  1141 00000632 680201                   push 258
  1142 00000635 E83047                   call istoken
  1143 00000638 83C402                   add  sp, 2
  1144 0000063B 08C0                     or  al, al
  1145 0000063D 0F844400                 je @@doglob42
  1146                                  
  1147                                  ;-161         prc(34); prscomment(symbol); prc(34); prs(",0"); 
  1148                                  
  1149 00000641 6A22                     push 34
  1150 00000643 E8F947                   call prc
  1151 00000646 83C402                   add  sp, 2
  1152 00000649 8D066E81                 lea  ax, [symbol]
  1153 0000064D 50                       push ax
  1154 0000064E E82148                   call prscomment
  1155 00000651 83C402                   add  sp, 2
  1156 00000654 6A22                     push 34
  1157 00000656 E8E647                   call prc
  1158 00000659 83C402                   add  sp, 2
  1159 0000065C 68[F108]                 push doglob_18
  1160 0000065F E84C48                   call prs
  1161 00000662 83C402                   add  sp, 2
  1162                                  
  1163                                  ;-162         i=strlen(symbol); GData[GTop]=i; }
  1164                                  
  1165 00000665 8D066E81                 lea  ax, [symbol]
  1166 00000669 50                       push ax
  1167 0000066A E8105B                   call strlen
  1168 0000066D 83C402                   add  sp, 2
  1169 00000670 8946FE                   mov word [bp-2], ax
  1170 00000673 8B46FE                   mov ax, [bp-2]
  1171 00000676 8B1E[5E00]               mov bx, [GTop]
  1172 0000067A C1E302                   shl bx, 2
  1173 0000067D 668987EB8A               mov [GData+bx], eax
  1174                                  
  1175                                  ;-163       else if (istoken('{' )) { i=0;
  1176                                  
  1177 00000682 E97200                   jmp @@doglob43
  1178                                  @@doglob42:
  1179 00000685 6A7B                     push 123
  1180 00000687 E8DE46                   call istoken
  1181 0000068A 83C402                   add  sp, 2
  1182 0000068D 08C0                     or  al, al
  1183 0000068F 0F845B00                 je @@doglob44
  1184 00000693 66B800000000             mov eax, 0
  1185 00000699 8946FE                   mov word [bp-2], ax
  1186                                  
  1187                                  ;-164         do { if(i) prc(','); 
  1188                                  
  1189                                  @@doglob45:
  1190 0000069C 8B46FE                   mov ax, [bp-2]
  1191 0000069F 08C0                     or  al, al
  1192 000006A1 0F840800                 je @@doglob46
  1193 000006A5 6A2C                     push 44
  1194 000006A7 E89547                   call prc
  1195 000006AA 83C402                   add  sp, 2
  1196                                  
  1197                                  ;-165           expect(T_CONST); prL(lexvalL); i++; }
  1198                                  
  1199                                  @@doglob46:
  1200 000006AD 680101                   push 257
  1201 000006B0 E8DD46                   call expect
  1202 000006B3 83C402                   add  sp, 2
  1203 000006B6 66FF36[4D00]             push dword [lexvalL]
  1204 000006BB E8A358                   call prL
  1205 000006BE 83C404                   add  sp, 4
  1206 000006C1 FF46FE                   inc  word [bp-2]
  1207                                  
  1208                                  ;-166         while (istoken(',')); expect('}'); GData[GTop]=i; }
  1209                                  
  1210 000006C4 6A2C                     push 44
  1211 000006C6 E89F46                   call istoken
  1212 000006C9 83C402                   add  sp, 2
  1213 000006CC 08C0                     or  al, al
  1214 000006CE 0F840200                 je @@doglob47
  1215 000006D2 EBC8                     jmp @@doglob45
  1216                                  @@doglob47:
  1217 000006D4 6A7D                     push 125
  1218 000006D6 E8B746                   call expect
  1219 000006D9 83C402                   add  sp, 2
  1220 000006DC 8B46FE                   mov ax, [bp-2]
  1221 000006DF 8B1E[5E00]               mov bx, [GTop]
  1222 000006E3 C1E302                   shl bx, 2
  1223 000006E6 668987EB8A               mov [GData+bx], eax
  1224                                  
  1225                                  ;-167       else error1("String or number array expected");
  1226                                  
  1227 000006EB E90900                   jmp @@doglob48
  1228                                  @@doglob44:
  1229 000006EE 68[F408]                 push doglob_19
  1230 000006F1 E8BB4A                   call error1
  1231 000006F4 83C402                   add  sp, 2
  1232                                  
  1233                                  ;-168       }; 
  1234                                  
  1235                                  @@doglob48:
  1236                                  @@doglob43:
  1237                                  @@doglob40:
  1238                                  
  1239                                  ;-169     } else { //expect('=');
  1240                                  
  1241 000006F7 E9A200                   jmp @@doglob49
  1242                                  @@doglob20:
  1243                                  
  1244                                  ;-170     prs("\n"); prs(symbol); if (istype=='*') prs(" dw ");
  1245                                  
  1246 000006FA 68[1409]                 push doglob_20
  1247 000006FD E8AE47                   call prs
  1248 00000700 83C402                   add  sp, 2
  1249 00000703 8D066E81                 lea  ax, [symbol]
  1250 00000707 50                       push ax
  1251 00000708 E8A347                   call prs
  1252 0000070B 83C402                   add  sp, 2
  1253 0000070E A0[5500]                 mov al, [istype]
  1254 00000711 3C2A                     cmp al, 42
  1255 00000713 0F850C00                 jne @@doglob50
  1256 00000717 68[1709]                 push doglob_21
  1257 0000071A E89147                   call prs
  1258 0000071D 83C402                   add  sp, 2
  1259                                  
  1260                                  ;-171     else {if (iswidth==1) prs(" db ");
  1261                                  
  1262 00000720 E93600                   jmp @@doglob51
  1263                                  @@doglob50:
  1264 00000723 A0[5D00]                 mov al, [iswidth]
  1265 00000726 3C01                     cmp al, 1
  1266 00000728 0F850900                 jne @@doglob52
  1267 0000072C 68[1C09]                 push doglob_22
  1268 0000072F E87C47                   call prs
  1269 00000732 83C402                   add  sp, 2
  1270                                  
  1271                                  ;-172           if (iswidth==2) prs(" dw ");
  1272                                  
  1273                                  @@doglob52:
  1274 00000735 A0[5D00]                 mov al, [iswidth]
  1275 00000738 3C02                     cmp al, 2
  1276 0000073A 0F850900                 jne @@doglob53
  1277 0000073E 68[2109]                 push doglob_23
  1278 00000741 E86A47                   call prs
  1279 00000744 83C402                   add  sp, 2
  1280                                  
  1281                                  ;-173           if (iswidth==4) prs(" dd ");  }
  1282                                  
  1283                                  @@doglob53:
  1284 00000747 A0[5D00]                 mov al, [iswidth]
  1285 0000074A 3C04                     cmp al, 4
  1286 0000074C 0F850900                 jne @@doglob54
  1287 00000750 68[2609]                 push doglob_24
  1288 00000753 E85847                   call prs
  1289 00000756 83C402                   add  sp, 2
  1290                                  @@doglob54:
  1291                                  
  1292                                  ;-174     if(istoken('-')) prc('-');
  1293                                  
  1294                                  @@doglob51:
  1295 00000759 6A2D                     push 45
  1296 0000075B E80A46                   call istoken
  1297 0000075E 83C402                   add  sp, 2
  1298 00000761 08C0                     or  al, al
  1299 00000763 0F840800                 je @@doglob55
  1300 00000767 6A2D                     push 45
  1301 00000769 E8D346                   call prc
  1302 0000076C 83C402                   add  sp, 2
  1303                                  
  1304                                  ;-175     if (istoken('=')) {expect(T_CONST); prL(lexvalL); }
  1305                                  
  1306                                  @@doglob55:
  1307 0000076F 6A3D                     push 61
  1308 00000771 E8F445                   call istoken
  1309 00000774 83C402                   add  sp, 2
  1310 00000777 08C0                     or  al, al
  1311 00000779 0F841700                 je @@doglob56
  1312 0000077D 680101                   push 257
  1313 00000780 E80D46                   call expect
  1314 00000783 83C402                   add  sp, 2
  1315 00000786 66FF36[4D00]             push dword [lexvalL]
  1316 0000078B E8D357                   call prL
  1317 0000078E 83C404                   add  sp, 4
  1318                                  
  1319                                  ;-176     else prunsign1(0); }
  1320                                  
  1321 00000791 E90800                   jmp @@doglob57
  1322                                  @@doglob56:
  1323 00000794 6A00                     push 0
  1324 00000796 E87E48                   call prunsign1
  1325 00000799 83C402                   add  sp, 2
  1326                                  @@doglob57:
  1327                                  
  1328                                  ;-177   GSign[GTop]=issign; GWidth[GTop]=iswidth; GType[GTop]=istype;
  1329                                  
  1330                                  @@doglob49:
  1331 0000079C A0[5800]                 mov al, [issign]
  1332 0000079F 8B1E[5E00]               mov bx, [GTop]
  1333 000007A3 8887E383                 mov [GSign+bx], al
  1334 000007A7 A0[5D00]                 mov al, [iswidth]
  1335 000007AA 8B1E[5E00]               mov bx, [GTop]
  1336 000007AE 88870F85                 mov [GWidth+bx], al
  1337 000007B2 A0[5500]                 mov al, [istype]
  1338 000007B5 8B1E[5E00]               mov bx, [GTop]
  1339 000007B9 8887B782                 mov [GType+bx], al
  1340                                  
  1341                                  ;-178   GLino [GTop]=lineno-1; GUsed [GTop]=0;
  1342                                  
  1343 000007BD A1[BA00]                 mov ax, [lineno]
  1344 000007C0 83E801                   sub ax, 1
  1345 000007C3 8B1E[5E00]               mov bx, [GTop]
  1346 000007C7 D1E3                     shl bx, 1
  1347 000007C9 89873B86                 mov [GLino+bx], ax
  1348 000007CD 66B800000000             mov eax, 0
  1349 000007D3 8B1E[5E00]               mov bx, [GTop]
  1350 000007D7 D1E3                     shl bx, 1
  1351 000007D9 89879388                 mov [GUsed+bx], ax
  1352                                  
  1353                                  ;-179   if (isstrarr) strcpy(symbol, doglobName);
  1354                                  
  1355 000007DD 8B46FA                   mov ax, [bp-6]
  1356 000007E0 08C0                     or  al, al
  1357 000007E2 0F841000                 je @@doglob58
  1358 000007E6 8D06C7B6                 lea  ax, [doglobName]
  1359 000007EA 50                       push ax
  1360 000007EB 8D066E81                 lea  ax, [symbol]
  1361 000007EF 50                       push ax
  1362 000007F0 E8B559                   call strcpy
  1363 000007F3 83C404                   add  sp, 4
  1364                                  
  1365                                  ;-180   GName[GTop] = CNameTop;
  1366                                  
  1367                                  @@doglob58:
  1368 000007F6 A1[B400]                 mov ax, [CNameTop]
  1369 000007F9 8B1E[5E00]               mov bx, [GTop]
  1370 000007FD D1E3                     shl bx, 1
  1371 000007FF 89874B94                 mov [GName+bx], ax
  1372                                  
  1373                                  ;-181   storeName();
  1374                                  
  1375 00000803 E8EAF9                   call storeName
  1376                                  
  1377                                  ;-182   GTop++; expect(';');
  1378                                  
  1379 00000806 FF06[5E00]               inc  word [GTop]
  1380 0000080A 6A3B                     push 59
  1381 0000080C E88145                   call expect
  1382 0000080F 83C402                   add  sp, 2
  1383                                  
  1384                                  ;-183 }
  1385                                  
  1386                                  
  1387                                  ;-184 int gettypes(int i) {int j; char c;
  1388 00000812 C9                       LEAVE
  1389 00000813 C3                       ret
  1390                                  ; ENDP
  1391 00000814 476C6F62616C207461-     doglob_0 db "Global table full",0
  1392 0000081D 626C652066756C6C00 
  1393 00000826 6E6F20564F49442061-     doglob_1 db "no VOID as var type",0
  1394 0000082F 732076617220747970-
  1395 00000838 6500               
  1396 0000083A 476C6F62616C207661-     doglob_2 db "Global variable already defined",0
  1397 00000843 726961626C6520616C-
  1398 0000084C 726561647920646566-
  1399 00000855 696E656400         
  1400 0000085A 5C6E73656374696F6E-     doglob_3 db "\nsection .bss\nabsolute ",0
  1401 00000863 202E6273735C6E6162-
  1402 0000086C 736F6C7574652000   
  1403 00000874 5C6E4144617461203D-     doglob_4 db "\nAData = $\norg ",0
  1404 0000087D 20245C6E6F72672000 
  1405 00000886 5C6E00                  doglob_5 db "\n",0
  1406 00000889 20726573622000          doglob_6 db " resb ",0
  1407 00000890 2064622000              doglob_7 db " db ",0
  1408 00000895 20726573772000          doglob_8 db " resw ",0
  1409 0000089C 2064772000              doglob_9 db " dw ",0
  1410 000008A1 20726573642000          doglob_10 db " resd ",0
  1411 000008A8 2064642000              doglob_11 db " dd ",0
  1412 000008AD 2064757020283F2900      doglob_12 db " dup (?)",0
  1413 000008B6 5C6E73656374696F6E-     doglob_13 db "\nsection .text",0
  1414 000008BF 202E7465787400     
  1415 000008C6 5C6E6F726720414461-     doglob_14 db "\norg AData",0
  1416 000008CF 746100             
  1417 000008D2 4F6E6C792042797465-     doglob_15 db "Only ByteArray allowed",0
  1418 000008DB 417272617920616C6C-
  1419 000008E4 6F77656400         
  1420 000008E9 5C6E00                  doglob_16 db "\n",0
  1421 000008EC 2064622000              doglob_17 db " db ",0
  1422 000008F1 2C3000                  doglob_18 db ",0",0
  1423 000008F4 537472696E67206F72-     doglob_19 db "String or number array expected",0
  1424 000008FD 206E756D6265722061-
  1425 00000906 727261792065787065-
  1426 0000090F 6374656400         
  1427 00000914 5C6E00                  doglob_20 db "\n",0
  1428 00000917 2064772000              doglob_21 db " dw ",0
  1429 0000091C 2064622000              doglob_22 db " db ",0
  1430 00000921 2064772000              doglob_23 db " dw ",0
  1431 00000926 2064642000              doglob_24 db " dd ",0
  1432                                  
  1433                                  gettypes:  ; *** PROC ***
  1434                                  
  1435                                  ;-185   c=GSign [i]; if (c=='S') signi =1;    else signi =0;
  1436                                  
  1437                                  ;Function : gettypes, Number of local variables: 3
  1438                                  ;   # type sign width line used address name   list of local variables
  1439                                  ;  200 var sign word   184 NULL bp+4    i
  1440                                  ;  201 var sign word   184 NULL bp-2    j
  1441                                  ;  202 var sign byte   184 NULL bp-4    c;
  1442 0000092B C8040000                 ENTER  4,0
  1443 0000092F 8B5E04                   mov bx, [bp+4]
  1444 00000932 8A87E383                 mov al, [GSign + bx]
  1445 00000936 8846FC                   mov byte [bp-4], al
  1446 00000939 8A46FC                   mov al, [bp-4]
  1447 0000093C 3C53                     cmp al, 83
  1448 0000093E 0F850C00                 jne @@gettypes59
  1449 00000942 66B801000000             mov eax, 1
  1450 00000948 A3[5600]                 mov word [signi], ax
  1451 0000094B E90900                   jmp @@gettypes60
  1452                                  @@gettypes59:
  1453 0000094E 66B800000000             mov eax, 0
  1454 00000954 A3[5600]                 mov word [signi], ax
  1455                                  
  1456                                  ;-186   c=GWidth[i]; widthi=0;wi=0;
  1457                                  
  1458                                  @@gettypes60:
  1459 00000957 8B5E04                   mov bx, [bp+4]
  1460 0000095A 8A870F85                 mov al, [GWidth + bx]
  1461 0000095E 8846FC                   mov byte [bp-4], al
  1462 00000961 66B800000000             mov eax, 0
  1463 00000967 A3[5900]                 mov word [widthi], ax
  1464 0000096A 66B800000000             mov eax, 0
  1465 00000970 A3[5B00]                 mov word [wi], ax
  1466                                  
  1467                                  ;-187   if (c==1) {widthi=1;wi=1;}
  1468                                  
  1469 00000973 8A46FC                   mov al, [bp-4]
  1470 00000976 3C01                     cmp al, 1
  1471 00000978 0F851200                 jne @@gettypes61
  1472 0000097C 66B801000000             mov eax, 1
  1473 00000982 A3[5900]                 mov word [widthi], ax
  1474 00000985 66B801000000             mov eax, 1
  1475 0000098B A3[5B00]                 mov word [wi], ax
  1476                                  
  1477                                  ;-188   if (c==2) {widthi=2;wi=2;}
  1478                                  
  1479                                  @@gettypes61:
  1480 0000098E 8A46FC                   mov al, [bp-4]
  1481 00000991 3C02                     cmp al, 2
  1482 00000993 0F851200                 jne @@gettypes62
  1483 00000997 66B802000000             mov eax, 2
  1484 0000099D A3[5900]                 mov word [widthi], ax
  1485 000009A0 66B802000000             mov eax, 2
  1486 000009A6 A3[5B00]                 mov word [wi], ax
  1487                                  
  1488                                  ;-189   if (c==4) {widthi=4;wi=4;}
  1489                                  
  1490                                  @@gettypes62:
  1491 000009A9 8A46FC                   mov al, [bp-4]
  1492 000009AC 3C04                     cmp al, 4
  1493 000009AE 0F851200                 jne @@gettypes63
  1494 000009B2 66B804000000             mov eax, 4
  1495 000009B8 A3[5900]                 mov word [widthi], ax
  1496 000009BB 66B804000000             mov eax, 4
  1497 000009C1 A3[5B00]                 mov word [wi], ax
  1498                                  
  1499                                  ;-190   c=GType [i]; typei=0; if (c=='*') {typei=1;wi=2;}
  1500                                  
  1501                                  @@gettypes63:
  1502 000009C4 8B5E04                   mov bx, [bp+4]
  1503 000009C7 8A87B782                 mov al, [GType + bx]
  1504 000009CB 8846FC                   mov byte [bp-4], al
  1505 000009CE 66B800000000             mov eax, 0
  1506 000009D4 A3[5300]                 mov word [typei], ax
  1507 000009D7 8A46FC                   mov al, [bp-4]
  1508 000009DA 3C2A                     cmp al, 42
  1509 000009DC 0F851200                 jne @@gettypes64
  1510 000009E0 66B801000000             mov eax, 1
  1511 000009E6 A3[5300]                 mov word [typei], ax
  1512 000009E9 66B802000000             mov eax, 2
  1513 000009EF A3[5B00]                 mov word [wi], ax
  1514                                  
  1515                                  ;-191   if (c=='&')  typei=2;  
  1516                                  
  1517                                  @@gettypes64:
  1518 000009F2 8A46FC                   mov al, [bp-4]
  1519 000009F5 3C26                     cmp al, 38
  1520 000009F7 0F850900                 jne @@gettypes65
  1521 000009FB 66B802000000             mov eax, 2
  1522 00000A01 A3[5300]                 mov word [typei], ax
  1523                                  
  1524                                  ;-192   return i; }  
  1525                                  
  1526                                  @@gettypes65:
  1527 00000A04 8B4604                   mov ax, [bp+4]
  1528 00000A07 E90000                   jmp @@retn
  1529                                  
  1530                                  ;-193 
  1531                                  
  1532                                  
  1533                                  ;-194 void printName(unsigned int i) {int j;
  1534                                  
  1535 00000A0A C9                      @@retn: LEAVE
  1536 00000A0B C3                       ret
  1537                                  ; ENDP
  1538                                  
  1539                                  printName:  ; *** PROC ***
  1540                                  
  1541                                  ;-195   if (i < LSTART) { loadName(NA, i); prs(NA); }
  1542                                  
  1543                                  ;Function : printName, Number of local variables: 2
  1544                                  ;   # type sign width line used address name   list of local variables
  1545                                  ;  200 var unsg word   194 NULL bp+4    i
  1546                                  ;  201 var sign word   194 NULL bp-2    j;
  1547 00000A0C C8020000                 ENTER  2,0
  1548 00000A10 8B4604                   mov ax, [bp+4]
  1549 00000A13 3DC800                   cmp ax, 200
  1550 00000A16 0F8D1C00                 jge @@printName66
  1551 00000A1A FF7604                   push word [bp+4]
  1552 00000A1D 8D06[7200]               lea  ax, [NA]
  1553 00000A21 50                       push ax
  1554 00000A22 E83854                   call loadName
  1555 00000A25 83C404                   add  sp, 4
  1556 00000A28 8D06[7200]               lea  ax, [NA]
  1557 00000A2C 50                       push ax
  1558 00000A2D E87E44                   call prs
  1559 00000A30 83C402                   add  sp, 2
  1560                                  
  1561                                  ;-196   else { prs("[bp"); j = GData[i]; if (j>0) prc('+'); pint1(j); prc(']'); }
  1562                                  
  1563 00000A33 E93A00                   jmp @@printName67
  1564                                  @@printName66:
  1565 00000A36 68[720A]                 push printName_0
  1566 00000A39 E87244                   call prs
  1567 00000A3C 83C402                   add  sp, 2
  1568 00000A3F 8B5E04                   mov bx, [bp+4]
  1569 00000A42 C1E302                   shl bx, 2
  1570 00000A45 668B87EB8A               mov eax, [GData + bx]
  1571 00000A4A 8946FE                   mov word [bp-2], ax
  1572 00000A4D 8B46FE                   mov ax, [bp-2]
  1573 00000A50 83F800                   cmp ax, 0
  1574 00000A53 0F8E0800                 jle @@printName68
  1575 00000A57 6A2B                     push 43
  1576 00000A59 E8E343                   call prc
  1577 00000A5C 83C402                   add  sp, 2
  1578                                  @@printName68:
  1579 00000A5F FF76FE                   push word [bp-2]
  1580 00000A62 E84F45                   call pint1
  1581 00000A65 83C402                   add  sp, 2
  1582 00000A68 6A5D                     push 93
  1583 00000A6A E8D243                   call prc
  1584 00000A6D 83C402                   add  sp, 2
  1585                                  
  1586                                  ;-197 }
  1587                                  
  1588                                  @@printName67:
  1589                                  
  1590                                  ;-198 int searchname() { unsigned int i;
  1591 00000A70 C9                       LEAVE
  1592 00000A71 C3                       ret
  1593                                  ; ENDP
  1594 00000A72 5B627000                printName_0 db "[bp",0
  1595                                  
  1596                                  searchname:  ; *** PROC ***
  1597                                  
  1598                                  ;-199   i=checkName(); if (i == 0) error1("Variable unknown");
  1599                                  
  1600                                  ;Function : searchname, Number of local variables: 1
  1601                                  ;   # type sign width line used address name   list of local variables
  1602                                  ;  200 var unsg word   198 NULL bp-2    i;
  1603 00000A76 C8020000                 ENTER  2,0
  1604 00000A7A E84400                   call checkName
  1605 00000A7D 8946FE                   mov word [bp-2], ax
  1606 00000A80 8B46FE                   mov ax, [bp-2]
  1607 00000A83 83F800                   cmp ax, 0
  1608 00000A86 0F850900                 jne @@searchname69
  1609 00000A8A 68[B00A]                 push searchname_0
  1610 00000A8D E81F47                   call error1
  1611 00000A90 83C402                   add  sp, 2
  1612                                  
  1613                                  ;-200   GUsed[i]=GUsed[i] + 1; return i;
  1614                                  
  1615                                  @@searchname69:
  1616 00000A93 8B5EFE                   mov bx, [bp-2]
  1617 00000A96 D1E3                     shl bx, 1
  1618 00000A98 8B879388                 mov ax, [GUsed + bx]
  1619 00000A9C 83C001                   add ax, 1
  1620 00000A9F 8B5EFE                   mov bx, [bp-2]
  1621 00000AA2 D1E3                     shl bx, 1
  1622 00000AA4 89879388                 mov [GUsed+bx], ax
  1623 00000AA8 8B46FE                   mov ax, [bp-2]
  1624 00000AAB E90000                   jmp @@retn
  1625                                  
  1626                                  ;-201 }
  1627                                  
  1628                                  
  1629                                  ;-202 int checkName() { unsigned int i; unsigned int j;
  1630                                  
  1631 00000AAE C9                      @@retn: LEAVE
  1632 00000AAF C3                       ret
  1633                                  ; ENDP
  1634 00000AB0 5661726961626C6520-     searchname_0 db "Variable unknown",0
  1635 00000AB9 756E6B6E6F776E00   
  1636                                  
  1637                                  checkName:  ; *** PROC ***
  1638                                  
  1639                                  ;-203   i=LSTART;while(i<LTop){loadName(NA,i);if(eqstr(symbol,NA))return i;i++;}
  1640                                  
  1641                                  ;Function : checkName, Number of local variables: 2
  1642                                  ;   # type sign width line used address name   list of local variables
  1643                                  ;  200 var unsg word   202 NULL bp-2    i
  1644                                  ;  201 var unsg word   202 NULL bp-4    j;
  1645 00000AC1 C8040000                 ENTER  4,0
  1646 00000AC5 66B8C8000000             mov eax, 200
  1647 00000ACB 8946FE                   mov word [bp-2], ax
  1648                                  @@checkName70:
  1649 00000ACE 8B46FE                   mov ax, [bp-2]
  1650 00000AD1 3B06[6000]               cmp ax, [LTop]
  1651 00000AD5 0F8D2F00                 jge @@checkName71
  1652 00000AD9 FF76FE                   push word [bp-2]
  1653 00000ADC 8D06[7200]               lea  ax, [NA]
  1654 00000AE0 50                       push ax
  1655 00000AE1 E87953                   call loadName
  1656 00000AE4 83C404                   add  sp, 4
  1657 00000AE7 8D06[7200]               lea  ax, [NA]
  1658 00000AEB 50                       push ax
  1659 00000AEC 8D066E81                 lea  ax, [symbol]
  1660 00000AF0 50                       push ax
  1661 00000AF1 E80858                   call eqstr
  1662 00000AF4 83C404                   add  sp, 4
  1663 00000AF7 08C0                     or  al, al
  1664 00000AF9 0F840600                 je @@checkName72
  1665 00000AFD 8B46FE                   mov ax, [bp-2]
  1666 00000B00 E95100                   jmp @@retn
  1667                                  @@checkName72:
  1668 00000B03 FF46FE                   inc  word [bp-2]
  1669                                  
  1670                                  ;-204   i=1;     while(i<GTop){loadName(NA,i);if(eqstr(symbol,NA))return i;i++;}
  1671                                  
  1672 00000B06 EBC6                     jmp @@checkName70
  1673                                  @@checkName71:
  1674 00000B08 66B801000000             mov eax, 1
  1675 00000B0E 8946FE                   mov word [bp-2], ax
  1676                                  @@checkName73:
  1677 00000B11 8B46FE                   mov ax, [bp-2]
  1678 00000B14 3B06[5E00]               cmp ax, [GTop]
  1679 00000B18 0F8D2F00                 jge @@checkName74
  1680 00000B1C FF76FE                   push word [bp-2]
  1681 00000B1F 8D06[7200]               lea  ax, [NA]
  1682 00000B23 50                       push ax
  1683 00000B24 E83653                   call loadName
  1684 00000B27 83C404                   add  sp, 4
  1685 00000B2A 8D06[7200]               lea  ax, [NA]
  1686 00000B2E 50                       push ax
  1687 00000B2F 8D066E81                 lea  ax, [symbol]
  1688 00000B33 50                       push ax
  1689 00000B34 E8C557                   call eqstr
  1690 00000B37 83C404                   add  sp, 4
  1691 00000B3A 08C0                     or  al, al
  1692 00000B3C 0F840600                 je @@checkName75
  1693 00000B40 8B46FE                   mov ax, [bp-2]
  1694 00000B43 E90E00                   jmp @@retn
  1695                                  @@checkName75:
  1696 00000B46 FF46FE                   inc  word [bp-2]
  1697                                  
  1698                                  ;-205   return 0;
  1699                                  
  1700 00000B49 EBC6                     jmp @@checkName73
  1701                                  @@checkName74:
  1702 00000B4B 66B800000000             mov eax, 0
  1703 00000B51 E90000                   jmp @@retn
  1704                                  
  1705                                  ;-206 }    
  1706                                  
  1707                                  
  1708                                  ;-207 int typeName() { int m; //0=V,1=*,2=&
  1709                                  
  1710 00000B54 C9                      @@retn: LEAVE
  1711 00000B55 C3                       ret
  1712                                  ; ENDP
  1713                                  
  1714                                  typeName:  ; *** PROC ***
  1715                                  
  1716                                  ;-208   issign='S';
  1717                                  
  1718                                  ;Function : typeName, Number of local variables: 1
  1719                                  ;   # type sign width line used address name   list of local variables
  1720                                  ;  200 var sign word   207 NULL bp-2    m;
  1721 00000B56 C8020000                 ENTER  2,0
  1722 00000B5A 66B853000000             mov eax, 83
  1723 00000B60 A2[5800]                 mov byte [issign], al
  1724                                  
  1725                                  ;-209   if(istoken(T_SIGNED))   issign='S';  if(istoken(T_UNSIGNED)) issign='U';
  1726                                  
  1727 00000B63 681302                   push 531
  1728 00000B66 E8FF41                   call istoken
  1729 00000B69 83C402                   add  sp, 2
  1730 00000B6C 08C0                     or  al, al
  1731 00000B6E 0F840900                 je @@typeName76
  1732 00000B72 66B853000000             mov eax, 83
  1733 00000B78 A2[5800]                 mov byte [issign], al
  1734                                  @@typeName76:
  1735 00000B7B 681402                   push 532
  1736 00000B7E E8E741                   call istoken
  1737 00000B81 83C402                   add  sp, 2
  1738 00000B84 08C0                     or  al, al
  1739 00000B86 0F840900                 je @@typeName77
  1740 00000B8A 66B855000000             mov eax, 85
  1741 00000B90 A2[5800]                 mov byte [issign], al
  1742                                  
  1743                                  ;-210   iswidth=2;                           if(istoken(T_VOID))     iswidth=0;
  1744                                  
  1745                                  @@typeName77:
  1746 00000B93 66B802000000             mov eax, 2
  1747 00000B99 A2[5D00]                 mov byte [iswidth], al
  1748 00000B9C 681102                   push 529
  1749 00000B9F E8C641                   call istoken
  1750 00000BA2 83C402                   add  sp, 2
  1751 00000BA5 08C0                     or  al, al
  1752 00000BA7 0F840900                 je @@typeName78
  1753 00000BAB 66B800000000             mov eax, 0
  1754 00000BB1 A2[5D00]                 mov byte [iswidth], al
  1755                                  
  1756                                  ;-211   if(istoken(T_CHAR))     iswidth=1;   if(istoken(T_INT))      iswidth=2;
  1757                                  
  1758                                  @@typeName78:
  1759 00000BB4 681202                   push 530
  1760 00000BB7 E8AE41                   call istoken
  1761 00000BBA 83C402                   add  sp, 2
  1762 00000BBD 08C0                     or  al, al
  1763 00000BBF 0F840900                 je @@typeName79
  1764 00000BC3 66B801000000             mov eax, 1
  1765 00000BC9 A2[5D00]                 mov byte [iswidth], al
  1766                                  @@typeName79:
  1767 00000BCC 680502                   push 517
  1768 00000BCF E89641                   call istoken
  1769 00000BD2 83C402                   add  sp, 2
  1770 00000BD5 08C0                     or  al, al
  1771 00000BD7 0F840900                 je @@typeName80
  1772 00000BDB 66B802000000             mov eax, 2
  1773 00000BE1 A2[5D00]                 mov byte [iswidth], al
  1774                                  
  1775                                  ;-212   if(istoken(T_SHORT))    iswidth=2;   if(istoken(T_LONG))     iswidth=4;
  1776                                  
  1777                                  @@typeName80:
  1778 00000BE4 681602                   push 534
  1779 00000BE7 E87E41                   call istoken
  1780 00000BEA 83C402                   add  sp, 2
  1781 00000BED 08C0                     or  al, al
  1782 00000BEF 0F840900                 je @@typeName81
  1783 00000BF3 66B802000000             mov eax, 2
  1784 00000BF9 A2[5D00]                 mov byte [iswidth], al
  1785                                  @@typeName81:
  1786 00000BFC 681502                   push 533
  1787 00000BFF E86641                   call istoken
  1788 00000C02 83C402                   add  sp, 2
  1789 00000C05 08C0                     or  al, al
  1790 00000C07 0F840900                 je @@typeName82
  1791 00000C0B 66B804000000             mov eax, 4
  1792 00000C11 A2[5D00]                 mov byte [iswidth], al
  1793                                  
  1794                                  ;-213   if(istoken(T_UINT32)) { iswidth=4; issign='U'; }
  1795                                  
  1796                                  @@typeName82:
  1797 00000C14 682102                   push 545
  1798 00000C17 E84E41                   call istoken
  1799 00000C1A 83C402                   add  sp, 2
  1800 00000C1D 08C0                     or  al, al
  1801 00000C1F 0F841200                 je @@typeName83
  1802 00000C23 66B804000000             mov eax, 4
  1803 00000C29 A2[5D00]                 mov byte [iswidth], al
  1804 00000C2C 66B855000000             mov eax, 85
  1805 00000C32 A2[5800]                 mov byte [issign], al
  1806                                  
  1807                                  ;-214   istype='V'; m=0;
  1808                                  
  1809                                  @@typeName83:
  1810 00000C35 66B856000000             mov eax, 86
  1811 00000C3B A2[5500]                 mov byte [istype], al
  1812 00000C3E 66B800000000             mov eax, 0
  1813 00000C44 8946FE                   mov word [bp-2], ax
  1814                                  
  1815                                  ;-215   if(istoken('*'))  { istype='*'; m=1; } if(istoken('&'))  {istype='&'; m=2;}
  1816                                  
  1817 00000C47 6A2A                     push 42
  1818 00000C49 E81C41                   call istoken
  1819 00000C4C 83C402                   add  sp, 2
  1820 00000C4F 08C0                     or  al, al
  1821 00000C51 0F841200                 je @@typeName84
  1822 00000C55 66B82A000000             mov eax, 42
  1823 00000C5B A2[5500]                 mov byte [istype], al
  1824 00000C5E 66B801000000             mov eax, 1
  1825 00000C64 8946FE                   mov word [bp-2], ax
  1826                                  @@typeName84:
  1827 00000C67 6A26                     push 38
  1828 00000C69 E8FC40                   call istoken
  1829 00000C6C 83C402                   add  sp, 2
  1830 00000C6F 08C0                     or  al, al
  1831 00000C71 0F841200                 je @@typeName85
  1832 00000C75 66B826000000             mov eax, 38
  1833 00000C7B A2[5500]                 mov byte [istype], al
  1834 00000C7E 66B802000000             mov eax, 2
  1835 00000C84 8946FE                   mov word [bp-2], ax
  1836                                  
  1837                                  ;-216   name1(); return m; }
  1838                                  
  1839                                  @@typeName85:
  1840 00000C87 E80800                   call name1
  1841 00000C8A 8B46FE                   mov ax, [bp-2]
  1842 00000C8D E90000                   jmp @@retn
  1843                                  
  1844                                  ;-217 void name1() {if (token!=T_NAME) error1("Name expected"); token=getlex(); }
  1845                                  
  1846 00000C90 C9                      @@retn: LEAVE
  1847 00000C91 C3                       ret
  1848                                  ; ENDP
  1849                                  
  1850                                  name1:  ; *** PROC ***
  1851 00000C92 A1[3D00]                 mov ax, [token]
  1852 00000C95 3D0001                   cmp ax, 256
  1853 00000C98 0F840900                 je  @@name186
  1854 00000C9C 68[AC0C]                 push name1_0
  1855 00000C9F E80D45                   call error1
  1856 00000CA2 83C402                   add  sp, 2
  1857                                  @@name186:
  1858 00000CA5 E82038                   call getlex
  1859 00000CA8 A3[3D00]                 mov word [token], ax
  1860                                  
  1861                                  ;-218 
  1862                                  
  1863                                  
  1864                                  ;-219 void storecall() { int i;
  1865                                  
  1866 00000CAB C3                       ret
  1867                                  ; ENDP
  1868 00000CAC 4E616D652065787065-     name1_0 db "Name expected",0
  1869 00000CB5 6374656400         
  1870                                  
  1871                                  storecall:  ; *** PROC ***
  1872                                  
  1873                                  ;-220   if (CTop >= CALLMAX) error1("Call table full");
  1874                                  
  1875                                  ;Function : storecall, Number of local variables: 1
  1876                                  ;   # type sign width line used address name   list of local variables
  1877                                  ;  200 var sign word   219 NULL bp-2    i;
  1878 00000CBA C8020000                 ENTER  2,0
  1879 00000CBE A1[6400]                 mov ax, [CTop]
  1880 00000CC1 3DD007                   cmp ax, 2000 ;unsigned : 1
  1881 00000CC4 0F8C0900                 jl  @@storecall87
  1882 00000CC8 68[080D]                 push storecall_0
  1883 00000CCB E8E144                   call error1
  1884 00000CCE 83C402                   add  sp, 2
  1885                                  
  1886                                  ;-221   if (CNameTop >= 65468) error1("Call name table fuill");
  1887                                  
  1888                                  @@storecall87:
  1889 00000CD1 A1[B400]                 mov ax, [CNameTop]
  1890 00000CD4 3DBCFF                   cmp ax, 65468 ;unsigned : 0
  1891 00000CD7 0F820900                 jb  @@storecall88
  1892 00000CDB 68[180D]                 push storecall_1
  1893 00000CDE E8CE44                   call error1
  1894 00000CE1 83C402                   add  sp, 2
  1895                                  
  1896                                  ;-222   CUnres[CTop]=0;  CName [CTop]=CNameTop;
  1897                                  
  1898                                  @@storecall88:
  1899 00000CE4 66B800000000             mov eax, 0
  1900 00000CEA 8B1E[6400]               mov bx, [CTop]
  1901 00000CEE 888777AE                 mov [CUnres+bx], al
  1902 00000CF2 A1[B400]                 mov ax, [CNameTop]
  1903 00000CF5 8B1E[6400]               mov bx, [CTop]
  1904 00000CF9 D1E3                     shl bx, 1
  1905 00000CFB 8987D79E                 mov [CName+bx], ax
  1906                                  
  1907                                  ;-223   storeName();
  1908                                  
  1909 00000CFF E8EEF4                   call storeName
  1910                                  
  1911                                  ;-224   CTop++;
  1912                                  
  1913 00000D02 FF06[6400]               inc  word [CTop]
  1914                                  
  1915                                  ;-225 }
  1916                                  
  1917                                  
  1918                                  ;-226 void storefunc() { int i;
  1919 00000D06 C9                       LEAVE
  1920 00000D07 C3                       ret
  1921                                  ; ENDP
  1922 00000D08 43616C6C207461626C-     storecall_0 db "Call table full",0
  1923 00000D11 652066756C6C00     
  1924 00000D18 43616C6C206E616D65-     storecall_1 db "Call name table fuill",0
  1925 00000D21 207461626C65206675-
  1926 00000D2A 696C6C00           
  1927                                  
  1928                                  storefunc:  ; *** PROC ***
  1929                                  
  1930                                  ;-227   if (FTop >= FUNCMAX) error1("Function table full");
  1931                                  
  1932                                  ;Function : storefunc, Number of local variables: 1
  1933                                  ;   # type sign width line used address name   list of local variables
  1934                                  ;  200 var sign word   226 NULL bp-2    i;
  1935 00000D2E C8020000                 ENTER  2,0
  1936 00000D32 A1[6200]                 mov ax, [FTop]
  1937 00000D35 3D2C01                   cmp ax, 300 ;unsigned : 1
  1938 00000D38 0F8C0900                 jl  @@storefunc89
  1939 00000D3C 68[860D]                 push storefunc_0
  1940 00000D3F E86D44                   call error1
  1941 00000D42 83C402                   add  sp, 2
  1942                                  
  1943                                  ;-228   FLino[FTop]=lineno - 1;  FCalls[FTop]=0;   FWidth[FTop]=iswidth;
  1944                                  
  1945                                  @@storefunc89:
  1946 00000D45 A1[BA00]                 mov ax, [lineno]
  1947 00000D48 83E801                   sub ax, 1
  1948 00000D4B 8B1E[6200]               mov bx, [FTop]
  1949 00000D4F D1E3                     shl bx, 1
  1950 00000D51 8987CF97                 mov [FLino+bx], ax
  1951 00000D55 66B800000000             mov eax, 0
  1952 00000D5B 8B1E[6200]               mov bx, [FTop]
  1953 00000D5F D1E3                     shl bx, 1
  1954 00000D61 8987279A                 mov [FCalls+bx], ax
  1955 00000D65 A0[5D00]                 mov al, [iswidth]
  1956 00000D68 8B1E[6200]               mov bx, [FTop]
  1957 00000D6C 8887A396                 mov [FWidth+bx], al
  1958                                  
  1959                                  ;-229   FName[FTop]=CNameTop;
  1960                                  
  1961 00000D70 A1[B400]                 mov ax, [CNameTop]
  1962 00000D73 8B1E[6200]               mov bx, [FTop]
  1963 00000D77 D1E3                     shl bx, 1
  1964 00000D79 89877F9C                 mov [FName+bx], ax
  1965                                  
  1966                                  ;-230   storeName();
  1967                                  
  1968 00000D7D E870F4                   call storeName
  1969                                  
  1970                                  ;-231   FTop++;
  1971                                  
  1972 00000D80 FF06[6200]               inc  word [FTop]
  1973                                  
  1974                                  ;-232 }
  1975                                  
  1976                                  
  1977                                  ;-233 void addlocal() { if(LTop >= VARMAX) error1("Local variable table full");
  1978 00000D84 C9                       LEAVE
  1979 00000D85 C3                       ret
  1980                                  ; ENDP
  1981 00000D86 46756E6374696F6E20-     storefunc_0 db "Function table full",0
  1982 00000D8F 7461626C652066756C-
  1983 00000D98 6C00               
  1984                                  
  1985                                  addlocal:  ; *** PROC ***
  1986 00000D9A A1[6000]                 mov ax, [LTop]
  1987 00000D9D 3D2C01                   cmp ax, 300 ;unsigned : 1
  1988 00000DA0 0F8C0900                 jl  @@addlocal90
  1989 00000DA4 68[120E]                 push addlocal_0
  1990 00000DA7 E80544                   call error1
  1991 00000DAA 83C402                   add  sp, 2
  1992                                  
  1993                                  ;-234   if (checkName() != 0) error1("Local variable already defined");
  1994                                  
  1995                                  @@addlocal90:
  1996 00000DAD E811FD                   call checkName
  1997 00000DB0 83F800                   cmp ax, 0
  1998 00000DB3 0F840900                 je  @@addlocal91
  1999 00000DB7 68[2C0E]                 push addlocal_1
  2000 00000DBA E8F243                   call error1
  2001 00000DBD 83C402                   add  sp, 2
  2002                                  
  2003                                  ;-235   GSign[LTop]=issign; GWidth[LTop]=iswidth; GType[LTop]=istype;
  2004                                  
  2005                                  @@addlocal91:
  2006 00000DC0 A0[5800]                 mov al, [issign]
  2007 00000DC3 8B1E[6000]               mov bx, [LTop]
  2008 00000DC7 8887E383                 mov [GSign+bx], al
  2009 00000DCB A0[5D00]                 mov al, [iswidth]
  2010 00000DCE 8B1E[6000]               mov bx, [LTop]
  2011 00000DD2 88870F85                 mov [GWidth+bx], al
  2012 00000DD6 A0[5500]                 mov al, [istype]
  2013 00000DD9 8B1E[6000]               mov bx, [LTop]
  2014 00000DDD 8887B782                 mov [GType+bx], al
  2015                                  
  2016                                  ;-236   GLino [LTop]=lineno-1; GUsed[LTop]=0;
  2017                                  
  2018 00000DE1 A1[BA00]                 mov ax, [lineno]
  2019 00000DE4 83E801                   sub ax, 1
  2020 00000DE7 8B1E[6000]               mov bx, [LTop]
  2021 00000DEB D1E3                     shl bx, 1
  2022 00000DED 89873B86                 mov [GLino+bx], ax
  2023 00000DF1 66B800000000             mov eax, 0
  2024 00000DF7 8B1E[6000]               mov bx, [LTop]
  2025 00000DFB D1E3                     shl bx, 1
  2026 00000DFD 89879388                 mov [GUsed+bx], ax
  2027                                  
  2028                                  ;-237   GName[LTop]=CNameTop;
  2029                                  
  2030 00000E01 A1[B400]                 mov ax, [CNameTop]
  2031 00000E04 8B1E[6000]               mov bx, [LTop]
  2032 00000E08 D1E3                     shl bx, 1
  2033 00000E0A 89874B94                 mov [GName+bx], ax
  2034                                  
  2035                                  ;-238   storeName();
  2036                                  
  2037 00000E0E E8DFF3                   call storeName
  2038                                  
  2039                                  ;-239 }
  2040                                  
  2041                                  
  2042                                  ;-240 int checkFunction() { unsigned int i; unsigned int j; i=0;
  2043                                  
  2044 00000E11 C3                       ret
  2045                                  ; ENDP
  2046 00000E12 4C6F63616C20766172-     addlocal_0 db "Local variable table full",0
  2047 00000E1B 6961626C6520746162-
  2048 00000E24 6C652066756C6C00   
  2049 00000E2C 4C6F63616C20766172-     addlocal_1 db "Local variable already defined",0
  2050 00000E35 6961626C6520616C72-
  2051 00000E3E 656164792064656669-
  2052 00000E47 6E656400           
  2053                                  
  2054                                  checkFunction:  ; *** PROC ***
  2055                                  ;Function : checkFunction, Number of local variables: 2
  2056                                  ;   # type sign width line used address name   list of local variables
  2057                                  ;  200 var unsg word   240 NULL bp-2    i
  2058                                  ;  201 var unsg word   240 NULL bp-4    j;
  2059 00000E4B C8040000                 ENTER  4,0
  2060 00000E4F 66B800000000             mov eax, 0
  2061 00000E55 8946FE                   mov word [bp-2], ax
  2062                                  
  2063                                  ;-241   while (i < FTop) {
  2064                                  
  2065                                  @@checkFunction92:
  2066 00000E58 8B46FE                   mov ax, [bp-2]
  2067 00000E5B 3B06[6200]               cmp ax, [FTop]
  2068 00000E5F 0F8D3B00                 jge @@checkFunction93
  2069                                  
  2070                                  ;-242     j=FName[i]; from_far(NA, j);
  2071                                  
  2072 00000E63 8B5EFE                   mov bx, [bp-2]
  2073 00000E66 D1E3                     shl bx, 1
  2074 00000E68 8B877F9C                 mov ax, [FName + bx]
  2075 00000E6C 8946FC                   mov word [bp-4], ax
  2076 00000E6F FF76FC                   push word [bp-4]
  2077 00000E72 8D06[7200]               lea  ax, [NA]
  2078 00000E76 50                       push ax
  2079 00000E77 E82B50                   call from_far
  2080 00000E7A 83C404                   add  sp, 4
  2081                                  
  2082                                  ;-243     if(eqstr(symbol, NA))return i; i++;}
  2083                                  
  2084 00000E7D 8D06[7200]               lea  ax, [NA]
  2085 00000E81 50                       push ax
  2086 00000E82 8D066E81                 lea  ax, [symbol]
  2087 00000E86 50                       push ax
  2088 00000E87 E87254                   call eqstr
  2089 00000E8A 83C404                   add  sp, 4
  2090 00000E8D 08C0                     or  al, al
  2091 00000E8F 0F840600                 je @@checkFunction94
  2092 00000E93 8B46FE                   mov ax, [bp-2]
  2093 00000E96 E90E00                   jmp @@retn
  2094                                  @@checkFunction94:
  2095 00000E99 FF46FE                   inc  word [bp-2]
  2096                                  
  2097                                  ;-244   return 0;
  2098                                  
  2099 00000E9C EBBA                     jmp @@checkFunction92
  2100                                  @@checkFunction93:
  2101 00000E9E 66B800000000             mov eax, 0
  2102 00000EA4 E90000                   jmp @@retn
  2103                                  
  2104                                  ;-245 }
  2105                                  
  2106                                  
  2107                                  ;-246 void dofunc() { int nloc; int narg; int i;
  2108                                  
  2109 00000EA7 C9                      @@retn: LEAVE
  2110 00000EA8 C3                       ret
  2111                                  ; ENDP
  2112                                  
  2113                                  dofunc:  ; *** PROC ***
  2114                                  
  2115                                  ;-247   cloc=&co; 
  2116                                  
  2117                                  ;Function : dofunc, Number of local variables: 3
  2118                                  ;   # type sign width line used address name   list of local variables
  2119                                  ;  200 var sign word   246 NULL bp-2    nloc
  2120                                  ;  201 var sign word   246 NULL bp-4    narg
  2121                                  ;  202 var sign word   246 NULL bp-6    i;
  2122 00000EA9 C8060000                 ENTER  6,0
  2123 00000EAD B83075                   mov ax, co
  2124 00000EB0 A3[3000]                 mov word [cloc], ax
  2125                                  
  2126                                  ;-248   checknamelen();
  2127                                  
  2128 00000EB3 E885F2                   call checknamelen
  2129                                  
  2130                                  ;-249   strcpy(fname, symbol);
  2131                                  
  2132 00000EB6 8D066E81                 lea  ax, [symbol]
  2133 00000EBA 50                       push ax
  2134 00000EBB 8D06EE81                 lea  ax, [fname]
  2135 00000EBF 50                       push ax
  2136 00000EC0 E8E552                   call strcpy
  2137 00000EC3 83C404                   add  sp, 4
  2138                                  
  2139                                  ;-250   if (checkFunction() ) error1("Function already defined");
  2140                                  
  2141 00000EC6 E882FF                   call checkFunction
  2142 00000EC9 08C0                     or  al, al
  2143 00000ECB 0F840900                 je @@dofunc95
  2144 00000ECF 68[1411]                 push dofunc_0
  2145 00000ED2 E8DA42                   call error1
  2146 00000ED5 83C402                   add  sp, 2
  2147                                  
  2148                                  ;-251   storefunc();
  2149                                  
  2150                                  @@dofunc95:
  2151 00000ED8 E853FE                   call storefunc
  2152                                  
  2153                                  ;-252   prs("\n\n"); prs(symbol); prs(":  ; *** PROC ***");
  2154                                  
  2155 00000EDB 68[2D11]                 push dofunc_1
  2156 00000EDE E8CD3F                   call prs
  2157 00000EE1 83C402                   add  sp, 2
  2158 00000EE4 8D066E81                 lea  ax, [symbol]
  2159 00000EE8 50                       push ax
  2160 00000EE9 E8C23F                   call prs
  2161 00000EEC 83C402                   add  sp, 2
  2162 00000EEF 68[3211]                 push dofunc_2
  2163 00000EF2 E8B93F                   call prs
  2164 00000EF5 83C402                   add  sp, 2
  2165                                  
  2166                                  ;-253   expect('(');  LTop=LSTART;
  2167                                  
  2168 00000EF8 6A28                     push 40
  2169 00000EFA E8933E                   call expect
  2170 00000EFD 83C402                   add  sp, 2
  2171 00000F00 66B8C8000000             mov eax, 200
  2172 00000F06 A3[6000]                 mov word [LTop], ax
  2173                                  
  2174                                  ;-254   if (istoken(')')==0) { narg=4; // return address and old bp value
  2175                                  
  2176 00000F09 6A29                     push 41
  2177 00000F0B E85A3E                   call istoken
  2178 00000F0E 83C402                   add  sp, 2
  2179 00000F11 83F800                   cmp ax, 0
  2180 00000F14 0F855400                 jne @@dofunc96
  2181 00000F18 66B804000000             mov eax, 4
  2182 00000F1E 8946FC                   mov word [bp-4], ax
  2183                                  
  2184                                  ;-255     do { typeName();  addlocal();
  2185                                  
  2186                                  @@dofunc97:
  2187 00000F21 E832FC                   call typeName
  2188 00000F24 E873FE                   call addlocal
  2189                                  
  2190                                  ;-256          GData[LTop]=narg;
  2191                                  
  2192 00000F27 8B46FC                   mov ax, [bp-4]
  2193 00000F2A 8B1E[6000]               mov bx, [LTop]
  2194 00000F2E C1E302                   shl bx, 2
  2195 00000F31 668987EB8A               mov [GData+bx], eax
  2196                                  
  2197                                  ;-257          if (iswidth < 2) narg+=2; else narg=narg+iswidth;
  2198                                  
  2199 00000F36 A0[5D00]                 mov al, [iswidth]
  2200 00000F39 3C02                     cmp al, 2
  2201 00000F3B 0F8D0700                 jge @@dofunc98
  2202 00000F3F 8346FC02                 add  word [bp-4], 2
  2203 00000F43 E90A00                   jmp @@dofunc99
  2204                                  @@dofunc98:
  2205 00000F46 8B46FC                   mov ax, [bp-4]
  2206 00000F49 0206[5D00]               add al, [iswidth]
  2207 00000F4D 8946FC                   mov word [bp-4], ax
  2208                                  
  2209                                  ;-258          LTop++; }
  2210                                  
  2211                                  @@dofunc99:
  2212 00000F50 FF06[6000]               inc  word [LTop]
  2213                                  
  2214                                  ;-259     while (istoken(','));  expect(')'); }
  2215                                  
  2216 00000F54 6A2C                     push 44
  2217 00000F56 E80F3E                   call istoken
  2218 00000F59 83C402                   add  sp, 2
  2219 00000F5C 08C0                     or  al, al
  2220 00000F5E 0F840200                 je @@dofunc100
  2221 00000F62 EBBD                     jmp @@dofunc97
  2222                                  @@dofunc100:
  2223 00000F64 6A29                     push 41
  2224 00000F66 E8273E                   call expect
  2225 00000F69 83C402                   add  sp, 2
  2226                                  
  2227                                  ;-260     
  2228                                  
  2229                                  
  2230                                  ;-261   expect('{'); /*body*/
  2231                                  
  2232                                  @@dofunc96:
  2233 00000F6C 6A7B                     push 123
  2234 00000F6E E81F3E                   call expect
  2235 00000F71 83C402                   add  sp, 2
  2236                                  
  2237                                  ;-262   nloc=0; nreturn=0; nconst=0;
  2238                                  
  2239 00000F74 66B800000000             mov eax, 0
  2240 00000F7A 8946FE                   mov word [bp-2], ax
  2241 00000F7D 66B800000000             mov eax, 0
  2242 00000F83 A3[4700]                 mov word [nreturn], ax
  2243 00000F86 66B800000000             mov eax, 0
  2244 00000F8C A3[4500]                 mov word [nconst], ax
  2245                                  
  2246                                  ;-263   while(isvariable()) {
  2247                                  
  2248                                  @@dofunc101:
  2249 00000F8F E8E201                   call isvariable
  2250 00000F92 08C0                     or  al, al
  2251 00000F94 0F849400                 je @@dofunc102
  2252                                  
  2253                                  ;-264     do {typeName(); checknamelen(); addlocal();
  2254                                  
  2255                                  @@dofunc103:
  2256 00000F98 E8BBFB                   call typeName
  2257 00000F9B E89DF1                   call checknamelen
  2258 00000F9E E8F9FD                   call addlocal
  2259                                  
  2260                                  ;-265         _ i= 2; if(_ iswidth > 2)  { ax=iswidth; /*cast b2w*/ _ i=ax; }
  2261                                  
  2262 00000FA1 C746FA0200              mov word [bp-6], 2; i
  2263 00000FA6 803E[5D00]02            cmp byte [iswidth], 2
  2264 00000FAB 0F8E0800                 jle @@dofunc104
  2265 00000FAF 0FBE06[5D00]             movsx  ax, byte [iswidth]
  2266 00000FB4 8946FA                  mov [bp-6], ax
  2267                                  
  2268                                  ;-266         if (istoken('[')){istype='&';GType[LTop]='&';expect(T_CONST);
  2269                                  
  2270                                  @@dofunc104:
  2271 00000FB7 6A5B                     push 91
  2272 00000FB9 E8AC3D                   call istoken
  2273 00000FBC 83C402                   add  sp, 2
  2274 00000FBF 08C0                     or  al, al
  2275 00000FC1 0F842F00                 je @@dofunc105
  2276 00000FC5 66B826000000             mov eax, 38
  2277 00000FCB A2[5500]                 mov byte [istype], al
  2278 00000FCE 66B826000000             mov eax, 38
  2279 00000FD4 8B1E[6000]               mov bx, [LTop]
  2280 00000FD8 8887B782                 mov [GType+bx], al
  2281 00000FDC 680101                   push 257
  2282 00000FDF E8AE3D                   call expect
  2283 00000FE2 83C402                   add  sp, 2
  2284                                  
  2285                                  ;-267             expect(']'); i=lexvalL; }
  2286                                  
  2287 00000FE5 6A5D                     push 93
  2288 00000FE7 E8A63D                   call expect
  2289 00000FEA 83C402                   add  sp, 2
  2290 00000FED 66A1[4D00]               mov eax, [lexvalL]
  2291 00000FF1 8946FA                   mov word [bp-6], ax
  2292                                  
  2293                                  ;-268         nloc=nloc - i;  GData[LTop]=nloc;
  2294                                  
  2295                                  @@dofunc105:
  2296 00000FF4 8B46FE                   mov ax, [bp-2]
  2297 00000FF7 2B46FA                   sub ax, [bp-6]
  2298 00000FFA 8946FE                   mov word [bp-2], ax
  2299 00000FFD 8B46FE                   mov ax, [bp-2]
  2300 00001000 8B1E[6000]               mov bx, [LTop]
  2301 00001004 C1E302                   shl bx, 2
  2302 00001007 668987EB8A               mov [GData+bx], eax
  2303                                  
  2304                                  ;-269         LTop++;
  2305                                  
  2306 0000100C FF06[6000]               inc  word [LTop]
  2307                                  
  2308                                  ;-270       } while (istoken(',')); expect(';'); }
  2309                                  
  2310 00001010 6A2C                     push 44
  2311 00001012 E8533D                   call istoken
  2312 00001015 83C402                   add  sp, 2
  2313 00001018 08C0                     or  al, al
  2314 0000101A 0F840300                 je @@dofunc106
  2315 0000101E E977FF                   jmp @@dofunc103
  2316                                  @@dofunc106:
  2317 00001021 6A3B                     push 59
  2318 00001023 E86A3D                   call expect
  2319 00001026 83C402                   add  sp, 2
  2320                                  
  2321                                  ;-271   listproc(); 
  2322                                  
  2323 00001029 E963FF                   jmp @@dofunc101
  2324                                  @@dofunc102:
  2325 0000102C E88B42                   call listproc
  2326                                  
  2327                                  ;-272   if (LTop>LSTART){prs(";\n ENTER  "); 
  2328                                  
  2329 0000102F A1[6000]                 mov ax, [LTop]
  2330 00001032 3DC800                   cmp ax, 200
  2331 00001035 0F8E2700                 jle @@dofunc107
  2332 00001039 68[4411]                 push dofunc_3
  2333 0000103C E86F3E                   call prs
  2334 0000103F 83C402                   add  sp, 2
  2335                                  
  2336                                  ;-273     nloc=mkneg(nloc); pint1 (nloc); prs(",0"); }
  2337                                  
  2338 00001042 FF76FE                   push word [bp-2]
  2339 00001045 E88450                   call mkneg
  2340 00001048 83C402                   add  sp, 2
  2341 0000104B 8946FE                   mov word [bp-2], ax
  2342 0000104E FF76FE                   push word [bp-2]
  2343 00001051 E8603F                   call pint1
  2344 00001054 83C402                   add  sp, 2
  2345 00001057 68[5011]                 push dofunc_4
  2346 0000105A E8513E                   call prs
  2347 0000105D 83C402                   add  sp, 2
  2348                                  
  2349                                  ;-274   while(istoken('}')==0)   stmt();
  2350                                  
  2351                                  @@dofunc107:
  2352                                  @@dofunc108:
  2353 00001060 6A7D                     push 125
  2354 00001062 E8033D                   call istoken
  2355 00001065 83C402                   add  sp, 2
  2356 00001068 83F800                   cmp ax, 0
  2357 0000106B 0F850500                 jne @@dofunc109
  2358 0000106F E8EA2D                   call stmt
  2359                                  
  2360                                  ;-275   if (nreturn) { prs("\n@@retn:");}
  2361                                  
  2362 00001072 EBEC                     jmp @@dofunc108
  2363                                  @@dofunc109:
  2364 00001074 A1[4700]                 mov ax, [nreturn]
  2365 00001077 08C0                     or  al, al
  2366 00001079 0F840900                 je @@dofunc110
  2367 0000107D 68[5311]                 push dofunc_5
  2368 00001080 E82B3E                   call prs
  2369 00001083 83C402                   add  sp, 2
  2370                                  
  2371                                  ;-276   if (LTop > LSTART) prs(" LEAVE");
  2372                                  
  2373                                  @@dofunc110:
  2374 00001086 A1[6000]                 mov ax, [LTop]
  2375 00001089 3DC800                   cmp ax, 200
  2376 0000108C 0F8E0900                 jle @@dofunc111
  2377 00001090 68[5D11]                 push dofunc_6
  2378 00001093 E8183E                   call prs
  2379 00001096 83C402                   add  sp, 2
  2380                                  
  2381                                  ;-277   prs("\n ret"); prs("\n; ENDP"); 
  2382                                  
  2383                                  @@dofunc111:
  2384 00001099 68[6411]                 push dofunc_7
  2385 0000109C E80F3E                   call prs
  2386 0000109F 83C402                   add  sp, 2
  2387 000010A2 68[6B11]                 push dofunc_8
  2388 000010A5 E8063E                   call prs
  2389 000010A8 83C402                   add  sp, 2
  2390                                  
  2391                                  ;-278   *cloc=0; prs(co); maxco1=strlen(co);
  2392                                  
  2393 000010AB 66B800000000             mov eax, 0
  2394 000010B1 8B1E[3000]               mov  bx, [cloc]
  2395 000010B5 8807                     mov  [bx], al
  2396 000010B7 8D063075                 lea  ax, [co]
  2397 000010BB 50                       push ax
  2398 000010BC E8EF3D                   call prs
  2399 000010BF 83C402                   add  sp, 2
  2400 000010C2 8D063075                 lea  ax, [co]
  2401 000010C6 50                       push ax
  2402 000010C7 E8B350                   call strlen
  2403 000010CA 83C402                   add  sp, 2
  2404 000010CD A3[2E00]                 mov word [maxco1], ax
  2405                                  
  2406                                  ;-279   if (maxco1 > maxco) {maxco=maxco1; strcpy(coname, fname); }
  2407                                  
  2408 000010D0 A1[2E00]                 mov ax, [maxco1]
  2409 000010D3 3B06[2C00]               cmp ax, [maxco]
  2410 000010D7 0F8E1600                 jle @@dofunc112
  2411 000010DB A1[2E00]                 mov ax, [maxco1]
  2412 000010DE A3[2C00]                 mov word [maxco], ax
  2413 000010E1 8D06EE81                 lea  ax, [fname]
  2414 000010E5 50                       push ax
  2415 000010E6 8D06E880                 lea  ax, [coname]
  2416 000010EA 50                       push ax
  2417 000010EB E8BA50                   call strcpy
  2418 000010EE 83C404                   add  sp, 4
  2419                                  
  2420                                  ;-280   if (LTop  > maxloc) {maxloc=LTop; strcpy(locname, fname); }
  2421                                  
  2422                                  @@dofunc112:
  2423 000010F1 A1[6000]                 mov ax, [LTop]
  2424 000010F4 3B06[3200]               cmp ax, [maxloc]
  2425 000010F8 0F8E1600                 jle @@dofunc113
  2426 000010FC A1[6000]                 mov ax, [LTop]
  2427 000010FF A3[3200]                 mov word [maxloc], ax
  2428 00001102 8D06EE81                 lea  ax, [fname]
  2429 00001106 50                       push ax
  2430 00001107 8D062B81                 lea  ax, [locname]
  2431 0000110B 50                       push ax
  2432 0000110C E89950                   call strcpy
  2433 0000110F 83C404                   add  sp, 4
  2434                                  
  2435                                  ;-281 }
  2436                                  
  2437                                  @@dofunc113:
  2438                                  
  2439                                  ;-282 int isvariable() {
  2440 00001112 C9                       LEAVE
  2441 00001113 C3                       ret
  2442                                  ; ENDP
  2443 00001114 46756E6374696F6E20-     dofunc_0 db "Function already defined",0
  2444 0000111D 616C72656164792064-
  2445 00001126 6566696E656400     
  2446 0000112D 5C6E5C6E00              dofunc_1 db "\n\n",0
  2447 00001132 3A20203B202A2A2A20-     dofunc_2 db ":  ; *** PROC ***",0
  2448 0000113B 50524F43202A2A2A00 
  2449 00001144 3B5C6E20454E544552-     dofunc_3 db ";\n ENTER  ",0
  2450 0000114D 202000             
  2451 00001150 2C3000                  dofunc_4 db ",0",0
  2452 00001153 5C6E40407265746E3A-     dofunc_5 db "\n@@retn:",0
  2453 0000115C 00                 
  2454 0000115D 204C4541564500          dofunc_6 db " LEAVE",0
  2455 00001164 5C6E2072657400          dofunc_7 db "\n ret",0
  2456 0000116B 5C6E3B20454E445000      dofunc_8 db "\n; ENDP",0
  2457                                  
  2458                                  isvariable:  ; *** PROC ***
  2459                                  
  2460                                  ;-283   if(token==T_SIGNED) goto v1;   if(token==T_UNSIGNED) goto v1;
  2461                                  
  2462 00001174 A1[3D00]                 mov ax, [token]
  2463 00001177 3D1302                   cmp ax, 531
  2464 0000117A 0F850300                 jne @@isvariable114
  2465 0000117E E95700                   jmp @@v1
  2466                                  @@isvariable114:
  2467 00001181 A1[3D00]                 mov ax, [token]
  2468 00001184 3D1402                   cmp ax, 532
  2469 00001187 0F850300                 jne @@isvariable115
  2470 0000118B E94A00                   jmp @@v1
  2471                                  
  2472                                  ;-284   if(token==T_CHAR)   goto v1;   if(token==T_INT)      goto v1;
  2473                                  
  2474                                  @@isvariable115:
  2475 0000118E A1[3D00]                 mov ax, [token]
  2476 00001191 3D1202                   cmp ax, 530
  2477 00001194 0F850300                 jne @@isvariable116
  2478 00001198 E93D00                   jmp @@v1
  2479                                  @@isvariable116:
  2480 0000119B A1[3D00]                 mov ax, [token]
  2481 0000119E 3D0502                   cmp ax, 517
  2482 000011A1 0F850300                 jne @@isvariable117
  2483 000011A5 E93000                   jmp @@v1
  2484                                  
  2485                                  ;-285   if(token==T_SHORT)  goto v1;   if(token==T_LONG)     goto v1;
  2486                                  
  2487                                  @@isvariable117:
  2488 000011A8 A1[3D00]                 mov ax, [token]
  2489 000011AB 3D1602                   cmp ax, 534
  2490 000011AE 0F850300                 jne @@isvariable118
  2491 000011B2 E92300                   jmp @@v1
  2492                                  @@isvariable118:
  2493 000011B5 A1[3D00]                 mov ax, [token]
  2494 000011B8 3D1502                   cmp ax, 533
  2495 000011BB 0F850300                 jne @@isvariable119
  2496 000011BF E91600                   jmp @@v1
  2497                                  
  2498                                  ;-286   if(token==T_UINT32) goto v1;   return 0;  v1: return 1;
  2499                                  
  2500                                  @@isvariable119:
  2501 000011C2 A1[3D00]                 mov ax, [token]
  2502 000011C5 3D2102                   cmp ax, 545
  2503 000011C8 0F850300                 jne @@isvariable120
  2504 000011CC E90900                   jmp @@v1
  2505                                  @@isvariable120:
  2506 000011CF 66B800000000             mov eax, 0
  2507 000011D5 E90900                   jmp @@retn
  2508                                  @@v1:
  2509 000011D8 66B801000000             mov eax, 1
  2510 000011DE E90000                   jmp @@retn
  2511                                  
  2512                                  ;-287 }
  2513                                  
  2514                                  
  2515                                  ;-288 int sd; //side: 0=left, 1=middle, 2=rigth
  2516                                  
  2517                                  @@retn:
  2518 000011E1 C3                       ret
  2519                                  ; ENDP
  2520 000011E2 0000                    sd dw 0
  2521                                  
  2522                                  ;-289 char un; //1=unary, 2=binary, 3=assign, 4=mul, 5=mod, 6=div
  2523                                  
  2524 000011E4 00                      un db 0
  2525                                  
  2526                                  ;-290 char ty; // 1const, 2call, 3reg, 4var, 5arr
  2527                                  
  2528 000011E5 00                      ty db 0
  2529                                  
  2530                                  ;-291 char md[3];  int mod1; int mod2; //typename       issign,iswidth  0=m, 1=*,2=&
  2531                                  
  2532                                  section .bss
  2533                                  absolute 46807
  2534 0000B6D7 <res 00000003>          md resb 3
  2535                                  section .text
  2536 000011E6 0000                    mod1 dw 0
  2537 000011E8 0000                    mod2 dw 0
  2538                                  
  2539                                  ;-292 int  ir[3];  int irg1; int irg2; //checkreg       0=noreg, reg-nr
  2540                                  
  2541                                  section .bss
  2542                                  absolute 46810
  2543 0000B6DA <res 00000006>          ir resw 3
  2544                                  section .text
  2545 000011EA 0000                    irg1 dw 0
  2546 000011EC 0000                    irg2 dw 0
  2547                                  
  2548                                  ;-293 int  ix[3];  int idx1; int idx2; //searchname     var-nr
  2549                                  
  2550                                  section .bss
  2551                                  absolute 46816
  2552 0000B6E0 <res 00000006>          ix resw 3
  2553                                  section .text
  2554 000011EE 0000                    idx1 dw 0
  2555 000011F0 0000                    idx2 dw 0
  2556                                  
  2557                                  ;-294 char is[3];  int ids1; int ids2; //gettypes(idx1) signi: 0=U, 1=S
  2558                                  
  2559                                  section .bss
  2560                                  absolute 46822
  2561 0000B6E6 <res 00000003>          is resb 3
  2562                                  section .text
  2563 000011F2 0000                    ids1 dw 0
  2564 000011F4 0000                    ids2 dw 0
  2565                                  
  2566                                  ;-295 char iw[3];  int idw1; int idw2; //gettypes(idx1) wi   : 1,2,4
  2567                                  
  2568                                  section .bss
  2569                                  absolute 46825
  2570 0000B6E9 <res 00000003>          iw resb 3
  2571                                  section .text
  2572 000011F6 0000                    idw1 dw 0
  2573 000011F8 0000                    idw2 dw 0
  2574                                  
  2575                                  ;-296 char it[3];  int idt1; int idt2; //gettypes(idx1) typei: 0=mem, 1=*, 2=&
  2576                                  
  2577                                  section .bss
  2578                                  absolute 46828
  2579 0000B6EC <res 00000003>          it resb 3
  2580                                  section .text
  2581 000011FA 0000                    idt1 dw 0
  2582 000011FC 0000                    idt2 dw 0
  2583                                  
  2584                                  ;-297 long ia[3];  int ida1; int ida2; //array const or varnr
  2585                                  
  2586                                  section .bss
  2587                                  absolute 46831
  2588 0000B6EF <res 0000000C>          ia resd 3
  2589                                  section .text
  2590 000011FE 0000                    ida1 dw 0
  2591 00001200 0000                    ida2 dw 0
  2592                                  
  2593                                  ;-298 char ic[3];  int idac1;int idac2;//array is const
  2594                                  
  2595                                  section .bss
  2596                                  absolute 46843
  2597 0000B6FB <res 00000003>          ic resb 3
  2598                                  section .text
  2599 00001202 0000                    idac1 dw 0
  2600 00001204 0000                    idac2 dw 0
  2601                                  
  2602                                  ;-299 long iv[3];  long val1;long val2;// = lexvalL
  2603                                  
  2604                                  section .bss
  2605                                  absolute 46846
  2606 0000B6FE <res 0000000C>          iv resd 3
  2607                                  section .text
  2608 00001206 00000000                val1 dd 0
  2609 0000120A 00000000                val2 dd 0
  2610                                  
  2611                                  ;-300 
  2612                                  
  2613                                  
  2614                                  ;-301 
  2615                                  
  2616                                  
  2617                                  ;-302 int pexpr() {expect('('); iscmp=0; 
  2618                                  
  2619                                  
  2620                                  pexpr:  ; *** PROC ***
  2621 0000120E 6A28                     push 40
  2622 00001210 E87D3B                   call expect
  2623 00001213 83C402                   add  sp, 2
  2624 00001216 66B800000000             mov eax, 0
  2625 0000121C A3[4300]                 mov word [iscmp], ax
  2626                                  
  2627                                  ;-303   if (token==T_NAME) {if (eqstr(symbol, "_")) {constantexpr(); return;}
  2628                                  
  2629 0000121F A1[3D00]                 mov ax, [token]
  2630 00001222 3D0001                   cmp ax, 256
  2631 00001225 0F853400                 jne @@pexpr121
  2632 00001229 68[8712]                 push pexpr_0
  2633 0000122C 8D066E81                 lea  ax, [symbol]
  2634 00001230 50                       push ax
  2635 00001231 E8C850                   call eqstr
  2636 00001234 83C404                   add  sp, 4
  2637 00001237 08C0                     or  al, al
  2638 00001239 0F840600                 je @@pexpr122
  2639 0000123D E85F00                   call constantexpr
  2640 00001240 E94300                   jmp @@retn
  2641                                  
  2642                                  ;-304     irg1=checkreg();
  2643                                  
  2644                                  @@pexpr122:
  2645 00001243 E88B08                   call checkreg
  2646 00001246 A3[EA11]                 mov word [irg1], ax
  2647                                  
  2648                                  ;-305     if (irg1) { doreg1(1); return; }  }
  2649                                  
  2650 00001249 A1[EA11]                 mov ax, [irg1]
  2651 0000124C 08C0                     or  al, al
  2652 0000124E 0F840B00                 je @@pexpr123
  2653 00001252 6A01                     push 1
  2654 00001254 E8A506                   call doreg1
  2655 00001257 83C402                   add  sp, 2
  2656 0000125A E92900                   jmp @@retn
  2657                                  @@pexpr123:
  2658                                  
  2659                                  ;-306   exprstart(); if (iscmp==0) prs("\n or  al, al\n je @@");  prs(fname);
  2660                                  
  2661                                  @@pexpr121:
  2662 0000125D E80001                   call exprstart
  2663 00001260 A1[4300]                 mov ax, [iscmp]
  2664 00001263 83F800                   cmp ax, 0
  2665 00001266 0F850900                 jne @@pexpr124
  2666 0000126A 68[8912]                 push pexpr_1
  2667 0000126D E83E3C                   call prs
  2668 00001270 83C402                   add  sp, 2
  2669                                  @@pexpr124:
  2670 00001273 8D06EE81                 lea  ax, [fname]
  2671 00001277 50                       push ax
  2672 00001278 E8333C                   call prs
  2673 0000127B 83C402                   add  sp, 2
  2674                                  
  2675                                  ;-307   expect(')'); }
  2676                                  
  2677 0000127E 6A29                     push 41
  2678 00001280 E80D3B                   call expect
  2679 00001283 83C402                   add  sp, 2
  2680                                  
  2681                                  ;-308 
  2682                                  
  2683                                  
  2684                                  ;-309 void constantexpr() { int mode; int id1;int ids;
  2685                                  
  2686                                  @@retn:
  2687 00001286 C3                       ret
  2688                                  ; ENDP
  2689 00001287 5F00                    pexpr_0 db "_",0
  2690 00001289 5C6E206F722020616C-     pexpr_1 db "\n or  al, al\n je @@",0
  2691 00001292 2C20616C5C6E206A65-
  2692 0000129B 20404000           
  2693                                  
  2694                                  constantexpr:  ; *** PROC ***
  2695                                  
  2696                                  ;-310   token=getlex();   mode=typeName();  
  2697                                  
  2698                                  ;Function : constantexpr, Number of local variables: 3
  2699                                  ;   # type sign width line used address name   list of local variables
  2700                                  ;  200 var sign word   309 NULL bp-2    mode
  2701                                  ;  201 var sign word   309 NULL bp-4    id1
  2702                                  ;  202 var sign word   309 NULL bp-6    ids;
  2703 0000129F C8060000                 ENTER  6,0
  2704 000012A3 E82232                   call getlex
  2705 000012A6 A3[3D00]                 mov word [token], ax
  2706 000012A9 E8AAF8                   call typeName
  2707 000012AC 8946FE                   mov word [bp-2], ax
  2708                                  
  2709                                  ;-311   id1=searchname(); gettypes(id1); ids=signi;
  2710                                  
  2711 000012AF E8C4F7                   call searchname
  2712 000012B2 8946FC                   mov word [bp-4], ax
  2713 000012B5 FF76FC                   push word [bp-4]
  2714 000012B8 E870F6                   call gettypes
  2715 000012BB 83C402                   add  sp, 2
  2716 000012BE A1[5600]                 mov ax, [signi]
  2717 000012C1 8946FA                   mov word [bp-6], ax
  2718                                  
  2719                                  ;-312   if (isrelational() ==0) error1("Relational expression expected");
  2720                                  
  2721 000012C4 E89431                   call isrelational
  2722 000012C7 83F800                   cmp ax, 0
  2723 000012CA 0F850900                 jne @@constantexpr125
  2724 000012CE 68[3713]                 push constantexpr_0
  2725 000012D1 E8DB3E                   call error1
  2726 000012D4 83C402                   add  sp, 2
  2727                                  
  2728                                  ;-313   expect(T_CONST);
  2729                                  
  2730                                  @@constantexpr125:
  2731 000012D7 680101                   push 257
  2732 000012DA E8B33A                   call expect
  2733 000012DD 83C402                   add  sp, 2
  2734                                  
  2735                                  ;-314   prs("\ncmp "); 
  2736                                  
  2737 000012E0 68[5613]                 push constantexpr_1
  2738 000012E3 E8C83B                   call prs
  2739 000012E6 83C402                   add  sp, 2
  2740                                  
  2741                                  ;-315   gettypes(id1);  pwi(wi);  v(id1);
  2742                                  
  2743 000012E9 FF76FC                   push word [bp-4]
  2744 000012EC E83CF6                   call gettypes
  2745 000012EF 83C402                   add  sp, 2
  2746 000012F2 FF36[5B00]               push word [wi]
  2747 000012F6 E88EEE                   call pwi
  2748 000012F9 83C402                   add  sp, 2
  2749 000012FC FF76FC                   push word [bp-4]
  2750 000012FF E8F4ED                   call v
  2751 00001302 83C402                   add  sp, 2
  2752                                  
  2753                                  ;-316   prs(", "); prL(lexvalL); cmpneg(ids);   prs(fname);
  2754                                  
  2755 00001305 68[5D13]                 push constantexpr_2
  2756 00001308 E8A33B                   call prs
  2757 0000130B 83C402                   add  sp, 2
  2758 0000130E 66FF36[4D00]             push dword [lexvalL]
  2759 00001313 E84B4C                   call prL
  2760 00001316 83C404                   add  sp, 4
  2761 00001319 FF76FA                   push word [bp-6]
  2762 0000131C E8F12D                   call cmpneg
  2763 0000131F 83C402                   add  sp, 2
  2764 00001322 8D06EE81                 lea  ax, [fname]
  2765 00001326 50                       push ax
  2766 00001327 E8843B                   call prs
  2767 0000132A 83C402                   add  sp, 2
  2768                                  
  2769                                  ;-317   expect(')');
  2770                                  
  2771 0000132D 6A29                     push 41
  2772 0000132F E85E3A                   call expect
  2773 00001332 83C402                   add  sp, 2
  2774                                  
  2775                                  ;-318 }  
  2776                                  
  2777                                  
  2778                                  ;-319 void exprstart() { if (eqstr(symbol, "_")) simplexpr(); else expr(); }
  2779 00001335 C9                       LEAVE
  2780 00001336 C3                       ret
  2781                                  ; ENDP
  2782 00001337 52656C6174696F6E61-     constantexpr_0 db "Relational expression expected",0
  2783 00001340 6C2065787072657373-
  2784 00001349 696F6E206578706563-
  2785 00001352 74656400           
  2786 00001356 5C6E636D702000          constantexpr_1 db "\ncmp ",0
  2787 0000135D 2C2000                  constantexpr_2 db ", ",0
  2788                                  
  2789                                  exprstart:  ; *** PROC ***
  2790 00001360 68[7E13]                 push exprstart_0
  2791 00001363 8D066E81                 lea  ax, [symbol]
  2792 00001367 50                       push ax
  2793 00001368 E8914F                   call eqstr
  2794 0000136B 83C404                   add  sp, 4
  2795 0000136E 08C0                     or  al, al
  2796 00001370 0F840600                 je @@exprstart126
  2797 00001374 E80900                   call simplexpr
  2798 00001377 E90300                   jmp @@exprstart127
  2799                                  @@exprstart126:
  2800 0000137A E8970C                   call expr
  2801                                  @@exprstart127:
  2802                                  
  2803                                  ;-320 // 1const, 2call, 3reg, 4var, 5arr
  2804                                  
  2805                                  
  2806                                  ;-321 int simplexpr() {  int i;
  2807                                  
  2808 0000137D C3                       ret
  2809                                  ; ENDP
  2810 0000137E 5F00                    exprstart_0 db "_",0
  2811                                  
  2812                                  simplexpr:  ; *** PROC ***
  2813                                  
  2814                                  ;-322   sd=0;
  2815                                  
  2816                                  ;Function : simplexpr, Number of local variables: 1
  2817                                  ;   # type sign width line used address name   list of local variables
  2818                                  ;  200 var sign word   321 NULL bp-2    i;
  2819 00001380 C8020000                 ENTER  2,0
  2820 00001384 66B800000000             mov eax, 0
  2821 0000138A A3[E211]                 mov word [sd], ax
  2822                                  
  2823                                  ;-323   token=getlex();
  2824                                  
  2825 0000138D E83831                   call getlex
  2826 00001390 A3[3D00]                 mov word [token], ax
  2827                                  
  2828                                  ;-324   if (istoken(T_CONST)) { prs("\n mov eax, "); prL(lexvalL); return; }//1const
  2829                                  
  2830 00001393 680101                   push 257
  2831 00001396 E8CF39                   call istoken
  2832 00001399 83C402                   add  sp, 2
  2833 0000139C 08C0                     or  al, al
  2834 0000139E 0F841700                 je @@simplexpr128
  2835 000013A2 68[2916]                 push simplexpr_0
  2836 000013A5 E8063B                   call prs
  2837 000013A8 83C402                   add  sp, 2
  2838 000013AB 66FF36[4D00]             push dword [lexvalL]
  2839 000013B0 E8AE4B                   call prL
  2840 000013B3 83C404                   add  sp, 4
  2841 000013B6 E96E02                   jmp @@retn
  2842                                  
  2843                                  ;-325   mod1=typeName();
  2844                                  
  2845                                  @@simplexpr128:
  2846 000013B9 E89AF7                   call typeName
  2847 000013BC A3[E611]                 mov word [mod1], ax
  2848                                  
  2849                                  ;-326   if (token=='(')  {ids1=issign; idw1=iswidth; docall1(); return; }   //2call
  2850                                  
  2851 000013BF A1[3D00]                 mov ax, [token]
  2852 000013C2 83F828                   cmp ax, 40
  2853 000013C5 0F851200                 jne @@simplexpr129
  2854 000013C9 A0[5800]                 mov al, [issign]
  2855 000013CC A3[F211]                 mov word [ids1], ax
  2856 000013CF A0[5D00]                 mov al, [iswidth]
  2857 000013D2 A3[F611]                 mov word [idw1], ax
  2858 000013D5 E88717                   call docall1
  2859 000013D8 E94C02                   jmp @@retn
  2860                                  
  2861                                  ;-327   if (mod1 == 2) error1(" & is not allowed in left side");
  2862                                  
  2863                                  @@simplexpr129:
  2864 000013DB A1[E611]                 mov ax, [mod1]
  2865 000013DE 83F802                   cmp ax, 2
  2866 000013E1 0F850900                 jne @@simplexpr130
  2867 000013E5 68[3616]                 push simplexpr_1
  2868 000013E8 E8C43D                   call error1
  2869 000013EB 83C402                   add  sp, 2
  2870                                  
  2871                                  ;-328   irg1=checkreg();
  2872                                  
  2873                                  @@simplexpr130:
  2874 000013EE E8E006                   call checkreg
  2875 000013F1 A3[EA11]                 mov word [irg1], ax
  2876                                  
  2877                                  ;-329   if (irg1)       {doreg1(0); return; }                               //3reg
  2878                                  
  2879 000013F4 A1[EA11]                 mov ax, [irg1]
  2880 000013F7 08C0                     or  al, al
  2881 000013F9 0F840B00                 je @@simplexpr131
  2882 000013FD 6A00                     push 0
  2883 000013FF E8FA04                   call doreg1
  2884 00001402 83C402                   add  sp, 2
  2885 00001405 E91F02                   jmp @@retn
  2886                                  
  2887                                  ;-330   if (irg1 == 0) { idx1=searchname();
  2888                                  
  2889                                  @@simplexpr131:
  2890 00001408 A1[EA11]                 mov ax, [irg1]
  2891 0000140B 83F800                   cmp ax, 0
  2892 0000140E 0F853500                 jne @@simplexpr132
  2893 00001412 E861F6                   call searchname
  2894 00001415 A3[EE11]                 mov word [idx1], ax
  2895                                  
  2896                                  ;-331     gettypes(idx1); ids1=signi; idw1=wi; idt1=typei;                  //4var
  2897                                  
  2898 00001418 FF36[EE11]               push word [idx1]
  2899 0000141C E80CF5                   call gettypes
  2900 0000141F 83C402                   add  sp, 2
  2901 00001422 A1[5600]                 mov ax, [signi]
  2902 00001425 A3[F211]                 mov word [ids1], ax
  2903 00001428 A1[5B00]                 mov ax, [wi]
  2904 0000142B A3[F611]                 mov word [idw1], ax
  2905 0000142E A1[5300]                 mov ax, [typei]
  2906 00001431 A3[FA11]                 mov word [idt1], ax
  2907                                  
  2908                                  ;-332     if (idt1==2)  error1("Array not allowed left side"); }//todo     //5arr
  2909                                  
  2910 00001434 A1[FA11]                 mov ax, [idt1]
  2911 00001437 83F802                   cmp ax, 2
  2912 0000143A 0F850900                 jne @@simplexpr133
  2913 0000143E 68[5516]                 push simplexpr_2
  2914 00001441 E86B3D                   call error1
  2915 00001444 83C402                   add  sp, 2
  2916                                  @@simplexpr133:
  2917                                  
  2918                                  ;-333 
  2919                                  
  2920                                  
  2921                                  ;-334   if (isrelational()) { error1("Relational not implemented yet"); //todo
  2922                                  
  2923                                  @@simplexpr132:
  2924 00001447 E81130                   call isrelational
  2925 0000144A 08C0                     or  al, al
  2926 0000144C 0F840900                 je @@simplexpr134
  2927 00001450 68[7116]                 push simplexpr_3
  2928 00001453 E8593D                   call error1
  2929 00001456 83C402                   add  sp, 2
  2930                                  
  2931                                  ;-335   }
  2932                                  
  2933                                  
  2934                                  ;-336   if (istoken('=') == 0) error1("Assign expected");
  2935                                  
  2936                                  @@simplexpr134:
  2937 00001459 6A3D                     push 61
  2938 0000145B E80A39                   call istoken
  2939 0000145E 83C402                   add  sp, 2
  2940 00001461 83F800                   cmp ax, 0
  2941 00001464 0F850900                 jne @@simplexpr135
  2942 00001468 68[9016]                 push simplexpr_4
  2943 0000146B E8413D                   call error1
  2944 0000146E 83C402                   add  sp, 2
  2945                                  
  2946                                  ;-337   if (istoken(T_CONST) ) { val2=lexvalL;
  2947                                  
  2948                                  @@simplexpr135:
  2949 00001471 680101                   push 257
  2950 00001474 E8F138                   call istoken
  2951 00001477 83C402                   add  sp, 2
  2952 0000147A 08C0                     or  al, al
  2953 0000147C 0F846900                 je @@simplexpr136
  2954 00001480 66A1[4D00]               mov eax, [lexvalL]
  2955 00001484 66A3[0A12]               mov dword [val2], eax
  2956                                  
  2957                                  ;-338     prs("\nmov ");
  2958                                  
  2959 00001488 68[A016]                 push simplexpr_5
  2960 0000148B E8203A                   call prs
  2961 0000148E 83C402                   add  sp, 2
  2962                                  
  2963                                  ;-339     pwi(idw1);   v(idx1);
  2964                                  
  2965 00001491 FF36[F611]               push word [idw1]
  2966 00001495 E8EFEC                   call pwi
  2967 00001498 83C402                   add  sp, 2
  2968 0000149B FF36[EE11]               push word [idx1]
  2969 0000149F E854EC                   call v
  2970 000014A2 83C402                   add  sp, 2
  2971                                  
  2972                                  ;-340     prs(", "); prL(val2);
  2973                                  
  2974 000014A5 68[A716]                 push simplexpr_6
  2975 000014A8 E8033A                   call prs
  2976 000014AB 83C402                   add  sp, 2
  2977 000014AE 66FF36[0A12]             push dword [val2]
  2978 000014B3 E8AB4A                   call prL
  2979 000014B6 83C404                   add  sp, 4
  2980                                  
  2981                                  ;-341     if (idx1 >= LSTART) { prs("; ");
  2982                                  
  2983 000014B9 A1[EE11]                 mov ax, [idx1]
  2984 000014BC 3DC800                   cmp ax, 200 ;unsigned : 1
  2985 000014BF 0F8C2300                 jl  @@simplexpr137
  2986 000014C3 68[AA16]                 push simplexpr_7
  2987 000014C6 E8E539                   call prs
  2988 000014C9 83C402                   add  sp, 2
  2989                                  
  2990                                  ;-342       loadName(NA, idx1); prs(NA); } return; }
  2991                                  
  2992 000014CC FF36[EE11]               push word [idx1]
  2993 000014D0 8D06[7200]               lea  ax, [NA]
  2994 000014D4 50                       push ax
  2995 000014D5 E88549                   call loadName
  2996 000014D8 83C404                   add  sp, 4
  2997 000014DB 8D06[7200]               lea  ax, [NA]
  2998 000014DF 50                       push ax
  2999 000014E0 E8CB39                   call prs
  3000 000014E3 83C402                   add  sp, 2
  3001                                  @@simplexpr137:
  3002 000014E6 E93E01                   jmp @@retn
  3003                                  
  3004                                  ;-343   
  3005                                  
  3006                                  
  3007                                  ;-344   mod2=typeName(); irg2=checkreg();
  3008                                  
  3009                                  @@simplexpr136:
  3010 000014E9 E86AF6                   call typeName
  3011 000014EC A3[E811]                 mov word [mod2], ax
  3012 000014EF E8DF05                   call checkreg
  3013 000014F2 A3[EC11]                 mov word [irg2], ax
  3014                                  
  3015                                  ;-345   if (irg2) { prs("\nmov ");
  3016                                  
  3017 000014F5 A1[EC11]                 mov ax, [irg2]
  3018 000014F8 08C0                     or  al, al
  3019 000014FA 0F845400                 je @@simplexpr138
  3020 000014FE 68[AD16]                 push simplexpr_8
  3021 00001501 E8AA39                   call prs
  3022 00001504 83C402                   add  sp, 2
  3023                                  
  3024                                  ;-346     if (irg1) printreg(irg1, mod1);
  3025                                  
  3026 00001507 A1[EA11]                 mov ax, [irg1]
  3027 0000150A 08C0                     or  al, al
  3028 0000150C 0F841100                 je @@simplexpr139
  3029 00001510 FF36[E611]               push word [mod1]
  3030 00001514 FF36[EA11]               push word [irg1]
  3031 00001518 E82A0A                   call printreg
  3032 0000151B 83C404                   add  sp, 4
  3033                                  
  3034                                  ;-347     else { pwi(idx1); v(idx1); }
  3035                                  
  3036 0000151E E91400                   jmp @@simplexpr140
  3037                                  @@simplexpr139:
  3038 00001521 FF36[EE11]               push word [idx1]
  3039 00001525 E85FEC                   call pwi
  3040 00001528 83C402                   add  sp, 2
  3041 0000152B FF36[EE11]               push word [idx1]
  3042 0000152F E8C4EB                   call v
  3043 00001532 83C402                   add  sp, 2
  3044                                  
  3045                                  ;-348     prs(", "); printreg(irg2, mod2);return;}
  3046                                  
  3047                                  @@simplexpr140:
  3048 00001535 68[B416]                 push simplexpr_9
  3049 00001538 E87339                   call prs
  3050 0000153B 83C402                   add  sp, 2
  3051 0000153E FF36[E811]               push word [mod2]
  3052 00001542 FF36[EC11]               push word [irg2]
  3053 00001546 E8FC09                   call printreg
  3054 00001549 83C404                   add  sp, 4
  3055 0000154C E9D800                   jmp @@retn
  3056                                  
  3057                                  ;-349   else {
  3058                                  
  3059 0000154F E9D500                   jmp @@simplexpr141
  3060                                  @@simplexpr138:
  3061                                  
  3062                                  ;-350     if (mod2 == 2) error1("& not allowed");
  3063                                  
  3064 00001552 A1[E811]                 mov ax, [mod2]
  3065 00001555 83F802                   cmp ax, 2
  3066 00001558 0F850900                 jne @@simplexpr142
  3067 0000155C 68[B716]                 push simplexpr_10
  3068 0000155F E84D3C                   call error1
  3069 00001562 83C402                   add  sp, 2
  3070                                  
  3071                                  ;-351     
  3072                                  
  3073                                  
  3074                                  ;-352     idx2=searchname();
  3075                                  
  3076                                  @@simplexpr142:
  3077 00001565 E80EF5                   call searchname
  3078 00001568 A3[F011]                 mov word [idx2], ax
  3079                                  
  3080                                  ;-353     gettypes(idx2); ids2=signi; idw2=wi; idt2=typei;
  3081                                  
  3082 0000156B FF36[F011]               push word [idx2]
  3083 0000156F E8B9F3                   call gettypes
  3084 00001572 83C402                   add  sp, 2
  3085 00001575 A1[5600]                 mov ax, [signi]
  3086 00001578 A3[F411]                 mov word [ids2], ax
  3087 0000157B A1[5B00]                 mov ax, [wi]
  3088 0000157E A3[F811]                 mov word [idw2], ax
  3089 00001581 A1[5300]                 mov ax, [typei]
  3090 00001584 A3[FC11]                 mov word [idt2], ax
  3091                                  
  3092                                  ;-354     if (idt2 == 1)  error1("Array right side not implemented"); //todo
  3093                                  
  3094 00001587 A1[FC11]                 mov ax, [idt2]
  3095 0000158A 83F801                   cmp ax, 1
  3096 0000158D 0F850900                 jne @@simplexpr143
  3097 00001591 68[C516]                 push simplexpr_11
  3098 00001594 E8183C                   call error1
  3099 00001597 83C402                   add  sp, 2
  3100                                  
  3101                                  ;-355     prs("\nmov ");
  3102                                  
  3103                                  @@simplexpr143:
  3104 0000159A 68[E616]                 push simplexpr_12
  3105 0000159D E80E39                   call prs
  3106 000015A0 83C402                   add  sp, 2
  3107                                  
  3108                                  ;-356     if (irg1) printreg(irg1, mod1);
  3109                                  
  3110 000015A3 A1[EA11]                 mov ax, [irg1]
  3111 000015A6 08C0                     or  al, al
  3112 000015A8 0F841100                 je @@simplexpr144
  3113 000015AC FF36[E611]               push word [mod1]
  3114 000015B0 FF36[EA11]               push word [irg1]
  3115 000015B4 E88E09                   call printreg
  3116 000015B7 83C404                   add  sp, 4
  3117                                  
  3118                                  ;-357     else error1("Mem to Mem not allowed by x86-CPU");
  3119                                  
  3120 000015BA E90900                   jmp @@simplexpr145
  3121                                  @@simplexpr144:
  3122 000015BD 68[ED16]                 push simplexpr_13
  3123 000015C0 E8EC3B                   call error1
  3124 000015C3 83C402                   add  sp, 2
  3125                                  
  3126                                  ;-358     prs(", ");
  3127                                  
  3128                                  @@simplexpr145:
  3129 000015C6 68[0F17]                 push simplexpr_14
  3130 000015C9 E8E238                   call prs
  3131 000015CC 83C402                   add  sp, 2
  3132                                  
  3133                                  ;-359     if (mod2 == 2) a(idx2);
  3134                                  
  3135 000015CF A1[E811]                 mov ax, [mod2]
  3136 000015D2 83F802                   cmp ax, 2
  3137 000015D5 0F850D00                 jne @@simplexpr146
  3138 000015D9 FF36[F011]               push word [idx2]
  3139 000015DD E8EDEA                   call a
  3140 000015E0 83C402                   add  sp, 2
  3141                                  
  3142                                  ;-360     else {
  3143                                  
  3144 000015E3 E94100                   jmp @@simplexpr147
  3145                                  @@simplexpr146:
  3146                                  
  3147                                  ;-361       pwi(idw2);  v(idx2);
  3148                                  
  3149 000015E6 FF36[F811]               push word [idw2]
  3150 000015EA E89AEB                   call pwi
  3151 000015ED 83C402                   add  sp, 2
  3152 000015F0 FF36[F011]               push word [idx2]
  3153 000015F4 E8FFEA                   call v
  3154 000015F7 83C402                   add  sp, 2
  3155                                  
  3156                                  ;-362       if (idx2 >= LSTART) { prs("; ");
  3157                                  
  3158 000015FA A1[F011]                 mov ax, [idx2]
  3159 000015FD 3DC800                   cmp ax, 200 ;unsigned : 1
  3160 00001600 0F8C2300                 jl  @@simplexpr148
  3161 00001604 68[1217]                 push simplexpr_15
  3162 00001607 E8A438                   call prs
  3163 0000160A 83C402                   add  sp, 2
  3164                                  
  3165                                  ;-363        loadName(NA, idx2); prs(NA); }  }
  3166                                  
  3167 0000160D FF36[F011]               push word [idx2]
  3168 00001611 8D06[7200]               lea  ax, [NA]
  3169 00001615 50                       push ax
  3170 00001616 E84448                   call loadName
  3171 00001619 83C404                   add  sp, 4
  3172 0000161C 8D06[7200]               lea  ax, [NA]
  3173 00001620 50                       push ax
  3174 00001621 E88A38                   call prs
  3175 00001624 83C402                   add  sp, 2
  3176                                  @@simplexpr148:
  3177                                  
  3178                                  ;-364   }
  3179                                  
  3180                                  @@simplexpr147:
  3181                                  
  3182                                  ;-365 }
  3183                                  
  3184                                  @@simplexpr141:
  3185                                  
  3186                                  ;-366 char ops[6];
  3187                                  
  3188 00001627 C9                      @@retn: LEAVE
  3189 00001628 C3                       ret
  3190                                  ; ENDP
  3191 00001629 5C6E206D6F76206561-     simplexpr_0 db "\n mov eax, ",0
  3192 00001632 782C2000           
  3193 00001636 2026206973206E6F74-     simplexpr_1 db " & is not allowed in left side",0
  3194 0000163F 20616C6C6F77656420-
  3195 00001648 696E206C6566742073-
  3196 00001651 69646500           
  3197 00001655 4172726179206E6F74-     simplexpr_2 db "Array not allowed left side",0
  3198 0000165E 20616C6C6F77656420-
  3199 00001667 6C6566742073696465-
  3200 00001670 00                 
  3201 00001671 52656C6174696F6E61-     simplexpr_3 db "Relational not implemented yet",0
  3202 0000167A 6C206E6F7420696D70-
  3203 00001683 6C656D656E74656420-
  3204 0000168C 79657400           
  3205 00001690 41737369676E206578-     simplexpr_4 db "Assign expected",0
  3206 00001699 70656374656400     
  3207 000016A0 5C6E6D6F762000          simplexpr_5 db "\nmov ",0
  3208 000016A7 2C2000                  simplexpr_6 db ", ",0
  3209 000016AA 3B2000                  simplexpr_7 db "; ",0
  3210 000016AD 5C6E6D6F762000          simplexpr_8 db "\nmov ",0
  3211 000016B4 2C2000                  simplexpr_9 db ", ",0
  3212 000016B7 26206E6F7420616C6C-     simplexpr_10 db "& not allowed",0
  3213 000016C0 6F77656400         
  3214 000016C5 417272617920726967-     simplexpr_11 db "Array right side not implemented",0
  3215 000016CE 68742073696465206E-
  3216 000016D7 6F7420696D706C656D-
  3217 000016E0 656E74656400       
  3218 000016E6 5C6E6D6F762000          simplexpr_12 db "\nmov ",0
  3219 000016ED 4D656D20746F204D65-     simplexpr_13 db "Mem to Mem not allowed by x86-CPU",0
  3220 000016F6 6D206E6F7420616C6C-
  3221 000016FF 6F7765642062792078-
  3222 00001708 38362D43505500     
  3223 0000170F 2C2000                  simplexpr_14 db ", ",0
  3224 00001712 3B2000                  simplexpr_15 db "; ",0
  3225                                  section .bss
  3226                                  absolute 46858
  3227 0000B70A <res 00000006>          ops resb 6
  3228                                  section .text
  3229                                  
  3230                                  ;-367 int getop() { int i;              *ops=0;       _ un=0;
  3231                                  
  3232                                  
  3233                                  getop:  ; *** PROC ***
  3234                                  ;Function : getop, Number of local variables: 1
  3235                                  ;   # type sign width line used address name   list of local variables
  3236                                  ;  200 var sign word   367 NULL bp-2    i;
  3237 00001715 C8020000                 ENTER  2,0
  3238 00001719 66B800000000             mov eax, 0
  3239 0000171F 8B1E0AB7                 mov  bx, [ops]
  3240 00001723 8807                     mov  [bx], al
  3241 00001725 C606[E411]00            mov byte [un], 0
  3242                                  
  3243                                  ;-368   if (istoken('='))         {strcpy(ops, "mov");_ un=2;}
  3244                                  
  3245 0000172A 6A3D                     push 61
  3246 0000172C E83936                   call istoken
  3247 0000172F 83C402                   add  sp, 2
  3248 00001732 08C0                     or  al, al
  3249 00001734 0F841300                 je @@getop149
  3250 00001738 68[A118]                 push getop_0
  3251 0000173B 8D060AB7                 lea  ax, [ops]
  3252 0000173F 50                       push ax
  3253 00001740 E8654A                   call strcpy
  3254 00001743 83C404                   add  sp, 4
  3255 00001746 C606[E411]02            mov byte [un], 2
  3256                                  
  3257                                  ;-369   if (istoken(T_PLUSASS))   {strcpy(ops, "add");_ un=2;}
  3258                                  
  3259                                  @@getop149:
  3260 0000174B 68CE04                   push 1230
  3261 0000174E E81736                   call istoken
  3262 00001751 83C402                   add  sp, 2
  3263 00001754 08C0                     or  al, al
  3264 00001756 0F841300                 je @@getop150
  3265 0000175A 68[A518]                 push getop_1
  3266 0000175D 8D060AB7                 lea  ax, [ops]
  3267 00001761 50                       push ax
  3268 00001762 E8434A                   call strcpy
  3269 00001765 83C404                   add  sp, 4
  3270 00001768 C606[E411]02            mov byte [un], 2
  3271                                  
  3272                                  ;-370   if (istoken(T_MINUSASS))  {strcpy(ops, "sub");_ un=2;}
  3273                                  
  3274                                  @@getop150:
  3275 0000176D 68CF04                   push 1231
  3276 00001770 E8F535                   call istoken
  3277 00001773 83C402                   add  sp, 2
  3278 00001776 08C0                     or  al, al
  3279 00001778 0F841300                 je @@getop151
  3280 0000177C 68[A918]                 push getop_2
  3281 0000177F 8D060AB7                 lea  ax, [ops]
  3282 00001783 50                       push ax
  3283 00001784 E8214A                   call strcpy
  3284 00001787 83C404                   add  sp, 4
  3285 0000178A C606[E411]02            mov byte [un], 2
  3286                                  
  3287                                  ;-371   if (istoken(T_ANDASS))    {strcpy(ops, "and");_ un=2;}
  3288                                  
  3289                                  @@getop151:
  3290 0000178F 68D204                   push 1234
  3291 00001792 E8D335                   call istoken
  3292 00001795 83C402                   add  sp, 2
  3293 00001798 08C0                     or  al, al
  3294 0000179A 0F841300                 je @@getop152
  3295 0000179E 68[AD18]                 push getop_3
  3296 000017A1 8D060AB7                 lea  ax, [ops]
  3297 000017A5 50                       push ax
  3298 000017A6 E8FF49                   call strcpy
  3299 000017A9 83C404                   add  sp, 4
  3300 000017AC C606[E411]02            mov byte [un], 2
  3301                                  
  3302                                  ;-372   if (istoken(T_ORASS))     {strcpy(ops, "or" );_ un=2;}
  3303                                  
  3304                                  @@getop152:
  3305 000017B1 68D304                   push 1235
  3306 000017B4 E8B135                   call istoken
  3307 000017B7 83C402                   add  sp, 2
  3308 000017BA 08C0                     or  al, al
  3309 000017BC 0F841300                 je @@getop153
  3310 000017C0 68[B118]                 push getop_4
  3311 000017C3 8D060AB7                 lea  ax, [ops]
  3312 000017C7 50                       push ax
  3313 000017C8 E8DD49                   call strcpy
  3314 000017CB 83C404                   add  sp, 4
  3315 000017CE C606[E411]02            mov byte [un], 2
  3316                                  
  3317                                  ;-373   if (istoken(T_LESSLESS))  {strcpy(ops, "shl");_ un=2;}
  3318                                  
  3319                                  @@getop153:
  3320 000017D3 68D804                   push 1240
  3321 000017D6 E88F35                   call istoken
  3322 000017D9 83C402                   add  sp, 2
  3323 000017DC 08C0                     or  al, al
  3324 000017DE 0F841300                 je @@getop154
  3325 000017E2 68[B418]                 push getop_5
  3326 000017E5 8D060AB7                 lea  ax, [ops]
  3327 000017E9 50                       push ax
  3328 000017EA E8BB49                   call strcpy
  3329 000017ED 83C404                   add  sp, 4
  3330 000017F0 C606[E411]02            mov byte [un], 2
  3331                                  
  3332                                  ;-374   if (istoken(T_GREATGREAT)){strcpy(ops, "shr");_ un=2;}
  3333                                  
  3334                                  @@getop154:
  3335 000017F5 68D904                   push 1241
  3336 000017F8 E86D35                   call istoken
  3337 000017FB 83C402                   add  sp, 2
  3338 000017FE 08C0                     or  al, al
  3339 00001800 0F841300                 je @@getop155
  3340 00001804 68[B818]                 push getop_6
  3341 00001807 8D060AB7                 lea  ax, [ops]
  3342 0000180B 50                       push ax
  3343 0000180C E89949                   call strcpy
  3344 0000180F 83C404                   add  sp, 4
  3345 00001812 C606[E411]02            mov byte [un], 2
  3346                                  
  3347                                  ;-375   if (istoken(T_PLUSPLUS))  {strcpy(ops, "inc");_ un=1;}
  3348                                  
  3349                                  @@getop155:
  3350 00001817 68C304                   push 1219
  3351 0000181A E84B35                   call istoken
  3352 0000181D 83C402                   add  sp, 2
  3353 00001820 08C0                     or  al, al
  3354 00001822 0F841300                 je @@getop156
  3355 00001826 68[BC18]                 push getop_7
  3356 00001829 8D060AB7                 lea  ax, [ops]
  3357 0000182D 50                       push ax
  3358 0000182E E87749                   call strcpy
  3359 00001831 83C404                   add  sp, 4
  3360 00001834 C606[E411]01            mov byte [un], 1
  3361                                  
  3362                                  ;-376   if (istoken(T_MINUSMINUS)){strcpy(ops, "dec");_ un=1;}
  3363                                  
  3364                                  @@getop156:
  3365 00001839 68C904                   push 1225
  3366 0000183C E82935                   call istoken
  3367 0000183F 83C402                   add  sp, 2
  3368 00001842 08C0                     or  al, al
  3369 00001844 0F841300                 je @@getop157
  3370 00001848 68[C018]                 push getop_8
  3371 0000184B 8D060AB7                 lea  ax, [ops]
  3372 0000184F 50                       push ax
  3373 00001850 E85549                   call strcpy
  3374 00001853 83C404                   add  sp, 4
  3375 00001856 C606[E411]01            mov byte [un], 1
  3376                                  
  3377                                  ;-377   if (istoken(T_MULASS))    {strcpy(ops, "mul");_ un=1;}//reg only
  3378                                  
  3379                                  @@getop157:
  3380 0000185B 68D004                   push 1232
  3381 0000185E E80735                   call istoken
  3382 00001861 83C402                   add  sp, 2
  3383 00001864 08C0                     or  al, al
  3384 00001866 0F841300                 je @@getop158
  3385 0000186A 68[C418]                 push getop_9
  3386 0000186D 8D060AB7                 lea  ax, [ops]
  3387 00001871 50                       push ax
  3388 00001872 E83349                   call strcpy
  3389 00001875 83C404                   add  sp, 4
  3390 00001878 C606[E411]01            mov byte [un], 1
  3391                                  
  3392                                  ;-378   if (istoken(T_DIVASS))    {strcpy(ops, "div");_ un=1;}//reg only
  3393                                  
  3394                                  @@getop158:
  3395 0000187D 68D104                   push 1233
  3396 00001880 E8E534                   call istoken
  3397 00001883 83C402                   add  sp, 2
  3398 00001886 08C0                     or  al, al
  3399 00001888 0F841300                 je @@getop159
  3400 0000188C 68[C818]                 push getop_10
  3401 0000188F 8D060AB7                 lea  ax, [ops]
  3402 00001893 50                       push ax
  3403 00001894 E81149                   call strcpy
  3404 00001897 83C404                   add  sp, 4
  3405 0000189A C606[E411]01            mov byte [un], 1
  3406                                  
  3407                                  ;-379 /*  if (istoken('+'))         {strcpy(ops, "add");_ un=3;}
  3408                                  
  3409                                  
  3410                                  ;-380   if (istoken('-'))         {strcpy(ops, "sub");_ un=3;}
  3411                                  
  3412                                  
  3413                                  ;-381   if (istoken('&'))         {strcpy(ops, "and");_ un=3;}
  3414                                  
  3415                                  
  3416                                  ;-382   if (istoken('|'))         {strcpy(ops, "or" );_ un=3;}
  3417                                  
  3418                                  
  3419                                  ;-383   if (istoken('*'))                             _ un=4;
  3420                                  
  3421                                  
  3422                                  ;-384   if (istoken('%'))                             _ un=5;
  3423                                  
  3424                                  
  3425                                  ;-385   if (istoken('/'))                             _ un=6;     */
  3426                                  
  3427                                  
  3428                                  ;-386 }
  3429                                  
  3430                                  @@getop159:
  3431                                  
  3432                                  ;-387 int prleftreg() { prnl(); prs(ops); prs("  "); printreg(irg1, mod1); }
  3433 0000189F C9                       LEAVE
  3434 000018A0 C3                       ret
  3435                                  ; ENDP
  3436 000018A1 6D6F7600                getop_0 db "mov",0
  3437 000018A5 61646400                getop_1 db "add",0
  3438 000018A9 73756200                getop_2 db "sub",0
  3439 000018AD 616E6400                getop_3 db "and",0
  3440 000018B1 6F7200                  getop_4 db "or",0
  3441 000018B4 73686C00                getop_5 db "shl",0
  3442 000018B8 73687200                getop_6 db "shr",0
  3443 000018BC 696E6300                getop_7 db "inc",0
  3444 000018C0 64656300                getop_8 db "dec",0
  3445 000018C4 6D756C00                getop_9 db "mul",0
  3446 000018C8 64697600                getop_10 db "div",0
  3447                                  
  3448                                  prleftreg:  ; *** PROC ***
  3449 000018CC E8D135                   call prnl
  3450 000018CF 8D060AB7                 lea  ax, [ops]
  3451 000018D3 50                       push ax
  3452 000018D4 E8D735                   call prs
  3453 000018D7 83C402                   add  sp, 2
  3454 000018DA 68[F218]                 push prleftreg_0
  3455 000018DD E8CE35                   call prs
  3456 000018E0 83C402                   add  sp, 2
  3457 000018E3 FF36[E611]               push word [mod1]
  3458 000018E7 FF36[EA11]               push word [irg1]
  3459 000018EB E85706                   call printreg
  3460 000018EE 83C404                   add  sp, 4
  3461                                  
  3462                                  ;-388 int prleftvar() { }
  3463                                  
  3464 000018F1 C3                       ret
  3465                                  ; ENDP
  3466 000018F2 202000                  prleftreg_0 db "  ",0
  3467                                  
  3468                                  prleftvar:  ; *** PROC ***
  3469                                  
  3470                                  ;-389 
  3471                                  
  3472                                  
  3473                                  ;-390 int printvar(int i, int mode) {  }
  3474                                  
  3475 000018F5 C3                       ret
  3476                                  ; ENDP
  3477                                  
  3478                                  printvar:  ; *** PROC ***
  3479                                  ;Function : printvar, Number of local variables: 2
  3480                                  ;   # type sign width line used address name   list of local variables
  3481                                  ;  200 var sign word   390 NULL bp+4    i
  3482                                  ;  201 var sign word   390 NULL bp+6    mode;
  3483 000018F6 C8000000                 ENTER  0,0
  3484                                  
  3485                                  ;-391 
  3486                                  
  3487                                  
  3488                                  ;-392 int doreg1(int iscmp1) { int i; char sz;
  3489 000018FA C9                       LEAVE
  3490 000018FB C3                       ret
  3491                                  ; ENDP
  3492                                  
  3493                                  doreg1:  ; *** PROC ***
  3494                                  
  3495                                  ;-393   getop();
  3496                                  
  3497                                  ;Function : doreg1, Number of local variables: 3
  3498                                  ;   # type sign width line used address name   list of local variables
  3499                                  ;  200 var sign word   392 NULL bp+4    iscmp1
  3500                                  ;  201 var sign word   392 NULL bp-2    i
  3501                                  ;  202 var sign byte   392 NULL bp-4    sz;
  3502 000018FC C8040000                 ENTER  4,0
  3503 00001900 E812FE                   call getop
  3504                                  
  3505                                  ;-394   if (iscmp1 == 1) {
  3506                                  
  3507 00001903 8B4604                   mov ax, [bp+4]
  3508 00001906 83F801                   cmp ax, 1
  3509 00001909 0F852700                 jne @@doreg1160
  3510                                  
  3511                                  ;-395       token=getlex();
  3512                                  
  3513 0000190D E8B82B                   call getlex
  3514 00001910 A3[3D00]                 mov word [token], ax
  3515                                  
  3516                                  ;-396       if (isrelational() ==0) error1("relational expected");
  3517                                  
  3518 00001913 E8452B                   call isrelational
  3519 00001916 83F800                   cmp ax, 0
  3520 00001919 0F850900                 jne @@doreg1161
  3521 0000191D 68[A01A]                 push doreg1_0
  3522 00001920 E88C38                   call error1
  3523 00001923 83C402                   add  sp, 2
  3524                                  
  3525                                  ;-397       strcpy(ops, "cmp");
  3526                                  
  3527                                  @@doreg1161:
  3528 00001926 68[B41A]                 push doreg1_1
  3529 00001929 8D060AB7                 lea  ax, [ops]
  3530 0000192D 50                       push ax
  3531 0000192E E87748                   call strcpy
  3532 00001931 83C404                   add  sp, 4
  3533                                  
  3534                                  ;-398       }
  3535                                  
  3536                                  
  3537                                  ;-399   if (un==1) { prleftreg(); return; }
  3538                                  
  3539                                  @@doreg1160:
  3540 00001934 A0[E411]                 mov al, [un]
  3541 00001937 3C01                     cmp al, 1
  3542 00001939 0F850600                 jne @@doreg1162
  3543 0000193D E88CFF                   call prleftreg
  3544 00001940 E95B01                   jmp @@retn
  3545                                  
  3546                                  ;-400 
  3547                                  
  3548                                  
  3549                                  ;-401   if (istoken(T_CONST)) {prleftreg(); prs(", "); prL(lexvalL); goto reg1;}
  3550                                  
  3551                                  @@doreg1162:
  3552 00001943 680101                   push 257
  3553 00001946 E81F34                   call istoken
  3554 00001949 83C402                   add  sp, 2
  3555 0000194C 08C0                     or  al, al
  3556 0000194E 0F841A00                 je @@doreg1163
  3557 00001952 E877FF                   call prleftreg
  3558 00001955 68[B81A]                 push doreg1_2
  3559 00001958 E85335                   call prs
  3560 0000195B 83C402                   add  sp, 2
  3561 0000195E 66FF36[4D00]             push dword [lexvalL]
  3562 00001963 E8FB45                   call prL
  3563 00001966 83C404                   add  sp, 4
  3564 00001969 E90D01                   jmp @@reg1
  3565                                  
  3566                                  ;-402   
  3567                                  
  3568                                  
  3569                                  ;-403   mod2=typeName(); irg2=checkreg();
  3570                                  
  3571                                  @@doreg1163:
  3572 0000196C E8E7F1                   call typeName
  3573 0000196F A3[E811]                 mov word [mod2], ax
  3574 00001972 E85C01                   call checkreg
  3575 00001975 A3[EC11]                 mov word [irg2], ax
  3576                                  
  3577                                  ;-404   if (irg2) {prleftreg(); prs(", "); printreg(irg2, mod2); goto reg1;}
  3578                                  
  3579 00001978 A1[EC11]                 mov ax, [irg2]
  3580 0000197B 08C0                     or  al, al
  3581 0000197D 0F841D00                 je @@doreg1164
  3582 00001981 E848FF                   call prleftreg
  3583 00001984 68[BB1A]                 push doreg1_3
  3584 00001987 E82435                   call prs
  3585 0000198A 83C402                   add  sp, 2
  3586 0000198D FF36[E811]               push word [mod2]
  3587 00001991 FF36[EC11]               push word [irg2]
  3588 00001995 E8AD05                   call printreg
  3589 00001998 83C404                   add  sp, 4
  3590 0000199B E9DB00                   jmp @@reg1
  3591                                  
  3592                                  ;-405 
  3593                                  
  3594                                  
  3595                                  ;-406   i=searchname();
  3596                                  
  3597                                  @@doreg1164:
  3598 0000199E E8D5F0                   call searchname
  3599 000019A1 8946FE                   mov word [bp-2], ax
  3600                                  
  3601                                  ;-407   gettypes(i);
  3602                                  
  3603 000019A4 FF76FE                   push word [bp-2]
  3604 000019A7 E881EF                   call gettypes
  3605 000019AA 83C402                   add  sp, 2
  3606                                  
  3607                                  ;-408   ids2=signi; idw2=wi; idt2=typei;
  3608                                  
  3609 000019AD A1[5600]                 mov ax, [signi]
  3610 000019B0 A3[F411]                 mov word [ids2], ax
  3611 000019B3 A1[5B00]                 mov ax, [wi]
  3612 000019B6 A3[F811]                 mov word [idw2], ax
  3613 000019B9 A1[5300]                 mov ax, [typei]
  3614 000019BC A3[FC11]                 mov word [idt2], ax
  3615                                  
  3616                                  ;-409   if (eqstr(ops,"mov")) {_ sz=0;
  3617                                  
  3618 000019BF 68[BE1A]                 push doreg1_4
  3619 000019C2 8D060AB7                 lea  ax, [ops]
  3620 000019C6 50                       push ax
  3621 000019C7 E83249                   call eqstr
  3622 000019CA 83C404                   add  sp, 4
  3623 000019CD 08C0                     or  al, al
  3624 000019CF 0F842E00                 je @@doreg1165
  3625 000019D3 C646FC00                mov byte [bp-4], 0; sz
  3626                                  
  3627                                  ;-410     if (_ irg1 >= 17) if (_ idw2==1) sz++;  // cast byte to word or dword
  3628                                  
  3629 000019D7 833E[EA11]11            cmp word [irg1], 17 ;unsigned : 1
  3630 000019DC 0F8C0C00                 jl  @@doreg1166
  3631 000019E0 833E[F811]01            cmp word [idw2], 1
  3632 000019E5 0F850300                 jne @@doreg1167
  3633 000019E9 FE46FC                   inc  byte [bp-4]
  3634                                  
  3635                                  ;-411     if (_ irg1 >= 47) if (_ idw2==2) sz++; }// cast word to dword
  3636                                  
  3637                                  @@doreg1167:
  3638                                  @@doreg1166:
  3639 000019EC 833E[EA11]2F            cmp word [irg1], 47 ;unsigned : 1
  3640 000019F1 0F8C0C00                 jl  @@doreg1168
  3641 000019F5 833E[F811]02            cmp word [idw2], 2
  3642 000019FA 0F850300                 jne @@doreg1169
  3643 000019FE FE46FC                   inc  byte [bp-4]
  3644                                  @@doreg1169:
  3645                                  @@doreg1168:
  3646                                  
  3647                                  ;-412   if (sz) { if (ids2) strcpy(ops,"movsx"); else strcpy(ops,"movzx"); }
  3648                                  
  3649                                  @@doreg1165:
  3650 00001A01 8A46FC                   mov al, [bp-4]
  3651 00001A04 08C0                     or  al, al
  3652 00001A06 0F842800                 je @@doreg1170
  3653 00001A0A A1[F411]                 mov ax, [ids2]
  3654 00001A0D 08C0                     or  al, al
  3655 00001A0F 0F841100                 je @@doreg1171
  3656 00001A13 68[C21A]                 push doreg1_5
  3657 00001A16 8D060AB7                 lea  ax, [ops]
  3658 00001A1A 50                       push ax
  3659 00001A1B E88A47                   call strcpy
  3660 00001A1E 83C404                   add  sp, 4
  3661 00001A21 E90E00                   jmp @@doreg1172
  3662                                  @@doreg1171:
  3663 00001A24 68[C81A]                 push doreg1_6
  3664 00001A27 8D060AB7                 lea  ax, [ops]
  3665 00001A2B 50                       push ax
  3666 00001A2C E87947                   call strcpy
  3667 00001A2F 83C404                   add  sp, 4
  3668                                  @@doreg1172:
  3669                                  
  3670                                  ;-413 
  3671                                  
  3672                                  
  3673                                  ;-414   prleftreg(); prs(", ");
  3674                                  
  3675                                  @@doreg1170:
  3676 00001A32 E897FE                   call prleftreg
  3677 00001A35 68[CE1A]                 push doreg1_7
  3678 00001A38 E87334                   call prs
  3679 00001A3B 83C402                   add  sp, 2
  3680                                  
  3681                                  ;-415   
  3682                                  
  3683                                  
  3684                                  ;-416 //  if (sz) { if (_ idw2==1) prs("byte "); else prs("word "); }
  3685                                  
  3686                                  
  3687                                  ;-417   if (sz) pwi(idw2);
  3688                                  
  3689 00001A3E 8A46FC                   mov al, [bp-4]
  3690 00001A41 08C0                     or  al, al
  3691 00001A43 0F840A00                 je @@doreg1173
  3692 00001A47 FF36[F811]               push word [idw2]
  3693 00001A4B E839E7                   call pwi
  3694 00001A4E 83C402                   add  sp, 2
  3695                                  
  3696                                  ;-418   
  3697                                  
  3698                                  
  3699                                  ;-419   if (mod2 == 2) a(i);
  3700                                  
  3701                                  @@doreg1173:
  3702 00001A51 A1[E811]                 mov ax, [mod2]
  3703 00001A54 83F802                   cmp ax, 2
  3704 00001A57 0F850C00                 jne @@doreg1174
  3705 00001A5B FF76FE                   push word [bp-2]
  3706 00001A5E E86CE6                   call a
  3707 00001A61 83C402                   add  sp, 2
  3708                                  
  3709                                  ;-420   else  {pwi(i); v(i); }
  3710                                  
  3711 00001A64 E91200                   jmp @@doreg1175
  3712                                  @@doreg1174:
  3713 00001A67 FF76FE                   push word [bp-2]
  3714 00001A6A E81AE7                   call pwi
  3715 00001A6D 83C402                   add  sp, 2
  3716 00001A70 FF76FE                   push word [bp-2]
  3717 00001A73 E880E6                   call v
  3718 00001A76 83C402                   add  sp, 2
  3719                                  
  3720                                  ;-421   reg1: if (iscmp1 == 1) {cmpneg(0); prs(fname); expect(')'); }
  3721                                  
  3722                                  @@doreg1175:
  3723                                  @@reg1:
  3724 00001A79 8B4604                   mov ax, [bp+4]
  3725 00001A7C 83F801                   cmp ax, 1
  3726 00001A7F 0F851B00                 jne @@doreg1176
  3727 00001A83 6A00                     push 0
  3728 00001A85 E88826                   call cmpneg
  3729 00001A88 83C402                   add  sp, 2
  3730 00001A8B 8D06EE81                 lea  ax, [fname]
  3731 00001A8F 50                       push ax
  3732 00001A90 E81B34                   call prs
  3733 00001A93 83C402                   add  sp, 2
  3734 00001A96 6A29                     push 41
  3735 00001A98 E8F532                   call expect
  3736 00001A9B 83C402                   add  sp, 2
  3737                                  
  3738                                  ;-422 }
  3739                                  
  3740                                  @@doreg1176:
  3741                                  
  3742                                  ;-423 int checkreg() { // >=17 = 16bit, >=47 = 32bit
  3743                                  
  3744 00001A9E C9                      @@retn: LEAVE
  3745 00001A9F C3                       ret
  3746                                  ; ENDP
  3747 00001AA0 72656C6174696F6E61-     doreg1_0 db "relational expected",0
  3748 00001AA9 6C2065787065637465-
  3749 00001AB2 6400               
  3750 00001AB4 636D7000                doreg1_1 db "cmp",0
  3751 00001AB8 2C2000                  doreg1_2 db ", ",0
  3752 00001ABB 2C2000                  doreg1_3 db ", ",0
  3753 00001ABE 6D6F7600                doreg1_4 db "mov",0
  3754 00001AC2 6D6F76737800            doreg1_5 db "movsx",0
  3755 00001AC8 6D6F767A7800            doreg1_6 db "movzx",0
  3756 00001ACE 2C2000                  doreg1_7 db ", ",0
  3757                                  
  3758                                  checkreg:  ; *** PROC ***
  3759                                  
  3760                                  ;-424   if (strlen(symbol) <  2) return 0;
  3761                                  
  3762 00001AD1 8D066E81                 lea  ax, [symbol]
  3763 00001AD5 50                       push ax
  3764 00001AD6 E8A446                   call strlen
  3765 00001AD9 83C402                   add  sp, 2
  3766 00001ADC 83F802                   cmp ax, 2
  3767 00001ADF 0F8D0900                 jge @@checkreg177
  3768 00001AE3 66B800000000             mov eax, 0
  3769 00001AE9 E9A703                   jmp @@retn
  3770                                  
  3771                                  ;-425   if (eqstr(symbol,"al")) return 1;   if (eqstr(symbol,"cl")) return 3;
  3772                                  
  3773                                  @@checkreg177:
  3774 00001AEC 68[941E]                 push checkreg_0
  3775 00001AEF 8D066E81                 lea  ax, [symbol]
  3776 00001AF3 50                       push ax
  3777 00001AF4 E80548                   call eqstr
  3778 00001AF7 83C404                   add  sp, 4
  3779 00001AFA 08C0                     or  al, al
  3780 00001AFC 0F840900                 je @@checkreg178
  3781 00001B00 66B801000000             mov eax, 1
  3782 00001B06 E98A03                   jmp @@retn
  3783                                  @@checkreg178:
  3784 00001B09 68[971E]                 push checkreg_1
  3785 00001B0C 8D066E81                 lea  ax, [symbol]
  3786 00001B10 50                       push ax
  3787 00001B11 E8E847                   call eqstr
  3788 00001B14 83C404                   add  sp, 4
  3789 00001B17 08C0                     or  al, al
  3790 00001B19 0F840900                 je @@checkreg179
  3791 00001B1D 66B803000000             mov eax, 3
  3792 00001B23 E96D03                   jmp @@retn
  3793                                  
  3794                                  ;-426   if (eqstr(symbol,"dl")) return 5;   if (eqstr(symbol,"bl")) return 7;
  3795                                  
  3796                                  @@checkreg179:
  3797 00001B26 68[9A1E]                 push checkreg_2
  3798 00001B29 8D066E81                 lea  ax, [symbol]
  3799 00001B2D 50                       push ax
  3800 00001B2E E8CB47                   call eqstr
  3801 00001B31 83C404                   add  sp, 4
  3802 00001B34 08C0                     or  al, al
  3803 00001B36 0F840900                 je @@checkreg180
  3804 00001B3A 66B805000000             mov eax, 5
  3805 00001B40 E95003                   jmp @@retn
  3806                                  @@checkreg180:
  3807 00001B43 68[9D1E]                 push checkreg_3
  3808 00001B46 8D066E81                 lea  ax, [symbol]
  3809 00001B4A 50                       push ax
  3810 00001B4B E8AE47                   call eqstr
  3811 00001B4E 83C404                   add  sp, 4
  3812 00001B51 08C0                     or  al, al
  3813 00001B53 0F840900                 je @@checkreg181
  3814 00001B57 66B807000000             mov eax, 7
  3815 00001B5D E93303                   jmp @@retn
  3816                                  
  3817                                  ;-427   if (eqstr(symbol,"ah")) return 9;   if (eqstr(symbol,"ch")) return 11;
  3818                                  
  3819                                  @@checkreg181:
  3820 00001B60 68[A01E]                 push checkreg_4
  3821 00001B63 8D066E81                 lea  ax, [symbol]
  3822 00001B67 50                       push ax
  3823 00001B68 E89147                   call eqstr
  3824 00001B6B 83C404                   add  sp, 4
  3825 00001B6E 08C0                     or  al, al
  3826 00001B70 0F840900                 je @@checkreg182
  3827 00001B74 66B809000000             mov eax, 9
  3828 00001B7A E91603                   jmp @@retn
  3829                                  @@checkreg182:
  3830 00001B7D 68[A31E]                 push checkreg_5
  3831 00001B80 8D066E81                 lea  ax, [symbol]
  3832 00001B84 50                       push ax
  3833 00001B85 E87447                   call eqstr
  3834 00001B88 83C404                   add  sp, 4
  3835 00001B8B 08C0                     or  al, al
  3836 00001B8D 0F840900                 je @@checkreg183
  3837 00001B91 66B80B000000             mov eax, 11
  3838 00001B97 E9F902                   jmp @@retn
  3839                                  
  3840                                  ;-428   if (eqstr(symbol,"dh")) return 13;  if (eqstr(symbol,"bh")) return 15;
  3841                                  
  3842                                  @@checkreg183:
  3843 00001B9A 68[A61E]                 push checkreg_6
  3844 00001B9D 8D066E81                 lea  ax, [symbol]
  3845 00001BA1 50                       push ax
  3846 00001BA2 E85747                   call eqstr
  3847 00001BA5 83C404                   add  sp, 4
  3848 00001BA8 08C0                     or  al, al
  3849 00001BAA 0F840900                 je @@checkreg184
  3850 00001BAE 66B80D000000             mov eax, 13
  3851 00001BB4 E9DC02                   jmp @@retn
  3852                                  @@checkreg184:
  3853 00001BB7 68[A91E]                 push checkreg_7
  3854 00001BBA 8D066E81                 lea  ax, [symbol]
  3855 00001BBE 50                       push ax
  3856 00001BBF E83A47                   call eqstr
  3857 00001BC2 83C404                   add  sp, 4
  3858 00001BC5 08C0                     or  al, al
  3859 00001BC7 0F840900                 je @@checkreg185
  3860 00001BCB 66B80F000000             mov eax, 15
  3861 00001BD1 E9BF02                   jmp @@retn
  3862                                  
  3863                                  ;-429   if (eqstr(symbol,"ax")) return 17;  if (eqstr(symbol,"cx")) return 19;
  3864                                  
  3865                                  @@checkreg185:
  3866 00001BD4 68[AC1E]                 push checkreg_8
  3867 00001BD7 8D066E81                 lea  ax, [symbol]
  3868 00001BDB 50                       push ax
  3869 00001BDC E81D47                   call eqstr
  3870 00001BDF 83C404                   add  sp, 4
  3871 00001BE2 08C0                     or  al, al
  3872 00001BE4 0F840900                 je @@checkreg186
  3873 00001BE8 66B811000000             mov eax, 17
  3874 00001BEE E9A202                   jmp @@retn
  3875                                  @@checkreg186:
  3876 00001BF1 68[AF1E]                 push checkreg_9
  3877 00001BF4 8D066E81                 lea  ax, [symbol]
  3878 00001BF8 50                       push ax
  3879 00001BF9 E80047                   call eqstr
  3880 00001BFC 83C404                   add  sp, 4
  3881 00001BFF 08C0                     or  al, al
  3882 00001C01 0F840900                 je @@checkreg187
  3883 00001C05 66B813000000             mov eax, 19
  3884 00001C0B E98502                   jmp @@retn
  3885                                  
  3886                                  ;-430   if (eqstr(symbol,"dx")) return 21;  if (eqstr(symbol,"bx")) return 23;
  3887                                  
  3888                                  @@checkreg187:
  3889 00001C0E 68[B21E]                 push checkreg_10
  3890 00001C11 8D066E81                 lea  ax, [symbol]
  3891 00001C15 50                       push ax
  3892 00001C16 E8E346                   call eqstr
  3893 00001C19 83C404                   add  sp, 4
  3894 00001C1C 08C0                     or  al, al
  3895 00001C1E 0F840900                 je @@checkreg188
  3896 00001C22 66B815000000             mov eax, 21
  3897 00001C28 E96802                   jmp @@retn
  3898                                  @@checkreg188:
  3899 00001C2B 68[B51E]                 push checkreg_11
  3900 00001C2E 8D066E81                 lea  ax, [symbol]
  3901 00001C32 50                       push ax
  3902 00001C33 E8C646                   call eqstr
  3903 00001C36 83C404                   add  sp, 4
  3904 00001C39 08C0                     or  al, al
  3905 00001C3B 0F840900                 je @@checkreg189
  3906 00001C3F 66B817000000             mov eax, 23
  3907 00001C45 E94B02                   jmp @@retn
  3908                                  
  3909                                  ;-431   if (eqstr(symbol,"sp")) return 25;  if (eqstr(symbol,"bp")) return 27;
  3910                                  
  3911                                  @@checkreg189:
  3912 00001C48 68[B81E]                 push checkreg_12
  3913 00001C4B 8D066E81                 lea  ax, [symbol]
  3914 00001C4F 50                       push ax
  3915 00001C50 E8A946                   call eqstr
  3916 00001C53 83C404                   add  sp, 4
  3917 00001C56 08C0                     or  al, al
  3918 00001C58 0F840900                 je @@checkreg190
  3919 00001C5C 66B819000000             mov eax, 25
  3920 00001C62 E92E02                   jmp @@retn
  3921                                  @@checkreg190:
  3922 00001C65 68[BB1E]                 push checkreg_13
  3923 00001C68 8D066E81                 lea  ax, [symbol]
  3924 00001C6C 50                       push ax
  3925 00001C6D E88C46                   call eqstr
  3926 00001C70 83C404                   add  sp, 4
  3927 00001C73 08C0                     or  al, al
  3928 00001C75 0F840900                 je @@checkreg191
  3929 00001C79 66B81B000000             mov eax, 27
  3930 00001C7F E91102                   jmp @@retn
  3931                                  
  3932                                  ;-432   if (eqstr(symbol,"si")) return 29;  if (eqstr(symbol,"di")) return 31;
  3933                                  
  3934                                  @@checkreg191:
  3935 00001C82 68[BE1E]                 push checkreg_14
  3936 00001C85 8D066E81                 lea  ax, [symbol]
  3937 00001C89 50                       push ax
  3938 00001C8A E86F46                   call eqstr
  3939 00001C8D 83C404                   add  sp, 4
  3940 00001C90 08C0                     or  al, al
  3941 00001C92 0F840900                 je @@checkreg192
  3942 00001C96 66B81D000000             mov eax, 29
  3943 00001C9C E9F401                   jmp @@retn
  3944                                  @@checkreg192:
  3945 00001C9F 68[C11E]                 push checkreg_15
  3946 00001CA2 8D066E81                 lea  ax, [symbol]
  3947 00001CA6 50                       push ax
  3948 00001CA7 E85246                   call eqstr
  3949 00001CAA 83C404                   add  sp, 4
  3950 00001CAD 08C0                     or  al, al
  3951 00001CAF 0F840900                 je @@checkreg193
  3952 00001CB3 66B81F000000             mov eax, 31
  3953 00001CB9 E9D701                   jmp @@retn
  3954                                  
  3955                                  ;-433   if (eqstr(symbol,"es")) return 33;  if (eqstr(symbol,"cs")) return 35;
  3956                                  
  3957                                  @@checkreg193:
  3958 00001CBC 68[C41E]                 push checkreg_16
  3959 00001CBF 8D066E81                 lea  ax, [symbol]
  3960 00001CC3 50                       push ax
  3961 00001CC4 E83546                   call eqstr
  3962 00001CC7 83C404                   add  sp, 4
  3963 00001CCA 08C0                     or  al, al
  3964 00001CCC 0F840900                 je @@checkreg194
  3965 00001CD0 66B821000000             mov eax, 33
  3966 00001CD6 E9BA01                   jmp @@retn
  3967                                  @@checkreg194:
  3968 00001CD9 68[C71E]                 push checkreg_17
  3969 00001CDC 8D066E81                 lea  ax, [symbol]
  3970 00001CE0 50                       push ax
  3971 00001CE1 E81846                   call eqstr
  3972 00001CE4 83C404                   add  sp, 4
  3973 00001CE7 08C0                     or  al, al
  3974 00001CE9 0F840900                 je @@checkreg195
  3975 00001CED 66B823000000             mov eax, 35
  3976 00001CF3 E99D01                   jmp @@retn
  3977                                  
  3978                                  ;-434   if (eqstr(symbol,"ss")) return 37;  if (eqstr(symbol,"ds")) return 39;
  3979                                  
  3980                                  @@checkreg195:
  3981 00001CF6 68[CA1E]                 push checkreg_18
  3982 00001CF9 8D066E81                 lea  ax, [symbol]
  3983 00001CFD 50                       push ax
  3984 00001CFE E8FB45                   call eqstr
  3985 00001D01 83C404                   add  sp, 4
  3986 00001D04 08C0                     or  al, al
  3987 00001D06 0F840900                 je @@checkreg196
  3988 00001D0A 66B825000000             mov eax, 37
  3989 00001D10 E98001                   jmp @@retn
  3990                                  @@checkreg196:
  3991 00001D13 68[CD1E]                 push checkreg_19
  3992 00001D16 8D066E81                 lea  ax, [symbol]
  3993 00001D1A 50                       push ax
  3994 00001D1B E8DE45                   call eqstr
  3995 00001D1E 83C404                   add  sp, 4
  3996 00001D21 08C0                     or  al, al
  3997 00001D23 0F840900                 je @@checkreg197
  3998 00001D27 66B827000000             mov eax, 39
  3999 00001D2D E96301                   jmp @@retn
  4000                                  
  4001                                  ;-435   if (eqstr(symbol,"fs")) return 41;  if (eqstr(symbol,"gs")) return 43;
  4002                                  
  4003                                  @@checkreg197:
  4004 00001D30 68[D01E]                 push checkreg_20
  4005 00001D33 8D066E81                 lea  ax, [symbol]
  4006 00001D37 50                       push ax
  4007 00001D38 E8C145                   call eqstr
  4008 00001D3B 83C404                   add  sp, 4
  4009 00001D3E 08C0                     or  al, al
  4010 00001D40 0F840900                 je @@checkreg198
  4011 00001D44 66B829000000             mov eax, 41
  4012 00001D4A E94601                   jmp @@retn
  4013                                  @@checkreg198:
  4014 00001D4D 68[D31E]                 push checkreg_21
  4015 00001D50 8D066E81                 lea  ax, [symbol]
  4016 00001D54 50                       push ax
  4017 00001D55 E8A445                   call eqstr
  4018 00001D58 83C404                   add  sp, 4
  4019 00001D5B 08C0                     or  al, al
  4020 00001D5D 0F840900                 je @@checkreg199
  4021 00001D61 66B82B000000             mov eax, 43
  4022 00001D67 E92901                   jmp @@retn
  4023                                  
  4024                                  ;-436   // (eqstr(symbol,"ip")) return 45;
  4025                                  
  4026                                  
  4027                                  ;-437   if (strlen(symbol) >   3) return 0;
  4028                                  
  4029                                  @@checkreg199:
  4030 00001D6A 8D066E81                 lea  ax, [symbol]
  4031 00001D6E 50                       push ax
  4032 00001D6F E80B44                   call strlen
  4033 00001D72 83C402                   add  sp, 2
  4034 00001D75 83F803                   cmp ax, 3
  4035 00001D78 0F8E0900                 jle @@checkreg200
  4036 00001D7C 66B800000000             mov eax, 0
  4037 00001D82 E90E01                   jmp @@retn
  4038                                  
  4039                                  ;-438   if (eqstr(symbol,"eax")) return 47; if (eqstr(symbol,"ecx")) return 50;
  4040                                  
  4041                                  @@checkreg200:
  4042 00001D85 68[D61E]                 push checkreg_22
  4043 00001D88 8D066E81                 lea  ax, [symbol]
  4044 00001D8C 50                       push ax
  4045 00001D8D E86C45                   call eqstr
  4046 00001D90 83C404                   add  sp, 4
  4047 00001D93 08C0                     or  al, al
  4048 00001D95 0F840900                 je @@checkreg201
  4049 00001D99 66B82F000000             mov eax, 47
  4050 00001D9F E9F100                   jmp @@retn
  4051                                  @@checkreg201:
  4052 00001DA2 68[DA1E]                 push checkreg_23
  4053 00001DA5 8D066E81                 lea  ax, [symbol]
  4054 00001DA9 50                       push ax
  4055 00001DAA E84F45                   call eqstr
  4056 00001DAD 83C404                   add  sp, 4
  4057 00001DB0 08C0                     or  al, al
  4058 00001DB2 0F840900                 je @@checkreg202
  4059 00001DB6 66B832000000             mov eax, 50
  4060 00001DBC E9D400                   jmp @@retn
  4061                                  
  4062                                  ;-439   if (eqstr(symbol,"edx")) return 53; if (eqstr(symbol,"ebx")) return 56;
  4063                                  
  4064                                  @@checkreg202:
  4065 00001DBF 68[DE1E]                 push checkreg_24
  4066 00001DC2 8D066E81                 lea  ax, [symbol]
  4067 00001DC6 50                       push ax
  4068 00001DC7 E83245                   call eqstr
  4069 00001DCA 83C404                   add  sp, 4
  4070 00001DCD 08C0                     or  al, al
  4071 00001DCF 0F840900                 je @@checkreg203
  4072 00001DD3 66B835000000             mov eax, 53
  4073 00001DD9 E9B700                   jmp @@retn
  4074                                  @@checkreg203:
  4075 00001DDC 68[E21E]                 push checkreg_25
  4076 00001DDF 8D066E81                 lea  ax, [symbol]
  4077 00001DE3 50                       push ax
  4078 00001DE4 E81545                   call eqstr
  4079 00001DE7 83C404                   add  sp, 4
  4080 00001DEA 08C0                     or  al, al
  4081 00001DEC 0F840900                 je @@checkreg204
  4082 00001DF0 66B838000000             mov eax, 56
  4083 00001DF6 E99A00                   jmp @@retn
  4084                                  
  4085                                  ;-440   if (eqstr(symbol,"esp")) return 59; if (eqstr(symbol,"ebp")) return 62;
  4086                                  
  4087                                  @@checkreg204:
  4088 00001DF9 68[E61E]                 push checkreg_26
  4089 00001DFC 8D066E81                 lea  ax, [symbol]
  4090 00001E00 50                       push ax
  4091 00001E01 E8F844                   call eqstr
  4092 00001E04 83C404                   add  sp, 4
  4093 00001E07 08C0                     or  al, al
  4094 00001E09 0F840900                 je @@checkreg205
  4095 00001E0D 66B83B000000             mov eax, 59
  4096 00001E13 E97D00                   jmp @@retn
  4097                                  @@checkreg205:
  4098 00001E16 68[EA1E]                 push checkreg_27
  4099 00001E19 8D066E81                 lea  ax, [symbol]
  4100 00001E1D 50                       push ax
  4101 00001E1E E8DB44                   call eqstr
  4102 00001E21 83C404                   add  sp, 4
  4103 00001E24 08C0                     or  al, al
  4104 00001E26 0F840900                 je @@checkreg206
  4105 00001E2A 66B83E000000             mov eax, 62
  4106 00001E30 E96000                   jmp @@retn
  4107                                  
  4108                                  ;-441   if (eqstr(symbol,"esi")) return 65; if (eqstr(symbol,"edi")) return 68;
  4109                                  
  4110                                  @@checkreg206:
  4111 00001E33 68[EE1E]                 push checkreg_28
  4112 00001E36 8D066E81                 lea  ax, [symbol]
  4113 00001E3A 50                       push ax
  4114 00001E3B E8BE44                   call eqstr
  4115 00001E3E 83C404                   add  sp, 4
  4116 00001E41 08C0                     or  al, al
  4117 00001E43 0F840900                 je @@checkreg207
  4118 00001E47 66B841000000             mov eax, 65
  4119 00001E4D E94300                   jmp @@retn
  4120                                  @@checkreg207:
  4121 00001E50 68[F21E]                 push checkreg_29
  4122 00001E53 8D066E81                 lea  ax, [symbol]
  4123 00001E57 50                       push ax
  4124 00001E58 E8A144                   call eqstr
  4125 00001E5B 83C404                   add  sp, 4
  4126 00001E5E 08C0                     or  al, al
  4127 00001E60 0F840900                 je @@checkreg208
  4128 00001E64 66B844000000             mov eax, 68
  4129 00001E6A E92600                   jmp @@retn
  4130                                  
  4131                                  ;-442   if (eqstr(symbol,"cr0")) return 71;
  4132                                  
  4133                                  @@checkreg208:
  4134 00001E6D 68[F61E]                 push checkreg_30
  4135 00001E70 8D066E81                 lea  ax, [symbol]
  4136 00001E74 50                       push ax
  4137 00001E75 E88444                   call eqstr
  4138 00001E78 83C404                   add  sp, 4
  4139 00001E7B 08C0                     or  al, al
  4140 00001E7D 0F840900                 je @@checkreg209
  4141 00001E81 66B847000000             mov eax, 71
  4142 00001E87 E90900                   jmp @@retn
  4143                                  
  4144                                  ;-443   return 0;   }
  4145                                  
  4146                                  @@checkreg209:
  4147 00001E8A 66B800000000             mov eax, 0
  4148 00001E90 E90000                   jmp @@retn
  4149                                  
  4150                                  ;-444 char printregstr[]
  4151                                  
  4152                                  @@retn:
  4153 00001E93 C3                       ret
  4154                                  ; ENDP
  4155 00001E94 616C00                  checkreg_0 db "al",0
  4156 00001E97 636C00                  checkreg_1 db "cl",0
  4157 00001E9A 646C00                  checkreg_2 db "dl",0
  4158 00001E9D 626C00                  checkreg_3 db "bl",0
  4159 00001EA0 616800                  checkreg_4 db "ah",0
  4160 00001EA3 636800                  checkreg_5 db "ch",0
  4161 00001EA6 646800                  checkreg_6 db "dh",0
  4162 00001EA9 626800                  checkreg_7 db "bh",0
  4163 00001EAC 617800                  checkreg_8 db "ax",0
  4164 00001EAF 637800                  checkreg_9 db "cx",0
  4165 00001EB2 647800                  checkreg_10 db "dx",0
  4166 00001EB5 627800                  checkreg_11 db "bx",0
  4167 00001EB8 737000                  checkreg_12 db "sp",0
  4168 00001EBB 627000                  checkreg_13 db "bp",0
  4169 00001EBE 736900                  checkreg_14 db "si",0
  4170 00001EC1 646900                  checkreg_15 db "di",0
  4171 00001EC4 657300                  checkreg_16 db "es",0
  4172 00001EC7 637300                  checkreg_17 db "cs",0
  4173 00001ECA 737300                  checkreg_18 db "ss",0
  4174 00001ECD 647300                  checkreg_19 db "ds",0
  4175 00001ED0 667300                  checkreg_20 db "fs",0
  4176 00001ED3 677300                  checkreg_21 db "gs",0
  4177 00001ED6 65617800                checkreg_22 db "eax",0
  4178 00001EDA 65637800                checkreg_23 db "ecx",0
  4179 00001EDE 65647800                checkreg_24 db "edx",0
  4180 00001EE2 65627800                checkreg_25 db "ebx",0
  4181 00001EE6 65737000                checkreg_26 db "esp",0
  4182 00001EEA 65627000                checkreg_27 db "ebp",0
  4183 00001EEE 65736900                checkreg_28 db "esi",0
  4184 00001EF2 65646900                checkreg_29 db "edi",0
  4185 00001EF6 63723000                checkreg_30 db "cr0",0
  4186                                  
  4187                                  ;-445 ="*alcldlblahchdhbhaxcxdxbxspbpsidiescsssdsfsgsipeaxecxedxebxespebpesiedicr0";
  4188                                  
  4189 00001EFA 2A616C636C646C626C-     printregstr db "*alcldlblahchdhbhaxcxdxbxspbpsidiescsssdsfsgsipeaxecxedxebxespebpesiedicr0",0
  4190 00001F03 616863686468626861-
  4191 00001F0C 786378647862787370-
  4192 00001F15 627073696469657363-
  4193 00001F1E 737373647366736773-
  4194 00001F27 697065617865637865-
  4195 00001F30 647865627865737065-
  4196 00001F39 627065736965646963-
  4197 00001F42 723000             
  4198                                  
  4199                                  ;-446 //          1         2         3         4         5         6         7
  4200                                  
  4201                                  
  4202                                  ;-447 // 1 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3
  4203                                  
  4204                                  
  4205                                  ;-448 void printreg(int i, int mode) {  unsigned int k; unsigned char c;
  4206                                  
  4207                                  
  4208                                  printreg:  ; *** PROC ***
  4209                                  
  4210                                  ;-449   if (_ mode == 1) prc('[');
  4211                                  
  4212                                  ;Function : printreg, Number of local variables: 4
  4213                                  ;   # type sign width line used address name   list of local variables
  4214                                  ;  200 var sign word   448 NULL bp+4    i
  4215                                  ;  201 var sign word   448 NULL bp+6    mode
  4216                                  ;  202 var unsg word   448 NULL bp-2    k
  4217                                  ;  203 var unsg byte   448 NULL bp-4    c;
  4218 00001F45 C8040000                 ENTER  4,0
  4219 00001F49 837E0601                cmp word [bp+6], 1
  4220 00001F4D 0F850800                 jne @@printreg210
  4221 00001F51 6A5B                     push 91
  4222 00001F53 E8E92E                   call prc
  4223 00001F56 83C402                   add  sp, 2
  4224                                  
  4225                                  ;-450   k = &printregstr + i; c=*k; prc(c); i++;
  4226                                  
  4227                                  @@printreg210:
  4228 00001F59 B8[FA1E]                 mov ax, printregstr
  4229 00001F5C 034604                   add ax, [bp+4]
  4230 00001F5F 8946FE                   mov word [bp-2], ax
  4231 00001F62 8B5EFE                   mov bx, [bp-2]
  4232 00001F65 8B07                     mov ax, [bx]
  4233 00001F67 8846FC                   mov byte [bp-4], al
  4234 00001F6A 8A46FC                   mov al, byte [bp-4]
  4235 00001F6D B400                     mov ah, 0
  4236 00001F6F 50                       push ax
  4237 00001F70 E8CC2E                   call prc
  4238 00001F73 83C402                   add  sp, 2
  4239 00001F76 FF4604                   inc  word [bp+4]
  4240                                  
  4241                                  ;-451   k = &printregstr + i; c=*k; prc(c);
  4242                                  
  4243 00001F79 B8[FA1E]                 mov ax, printregstr
  4244 00001F7C 034604                   add ax, [bp+4]
  4245 00001F7F 8946FE                   mov word [bp-2], ax
  4246 00001F82 8B5EFE                   mov bx, [bp-2]
  4247 00001F85 8B07                     mov ax, [bx]
  4248 00001F87 8846FC                   mov byte [bp-4], al
  4249 00001F8A 8A46FC                   mov al, byte [bp-4]
  4250 00001F8D B400                     mov ah, 0
  4251 00001F8F 50                       push ax
  4252 00001F90 E8AC2E                   call prc
  4253 00001F93 83C402                   add  sp, 2
  4254                                  
  4255                                  ;-452   if (i > 47) { i++; k = &printregstr + i; c=*k; prc(c); }
  4256                                  
  4257 00001F96 8B4604                   mov ax, [bp+4]
  4258 00001F99 83F82F                   cmp ax, 47
  4259 00001F9C 0F8E2000                 jle @@printreg211
  4260 00001FA0 FF4604                   inc  word [bp+4]
  4261 00001FA3 B8[FA1E]                 mov ax, printregstr
  4262 00001FA6 034604                   add ax, [bp+4]
  4263 00001FA9 8946FE                   mov word [bp-2], ax
  4264 00001FAC 8B5EFE                   mov bx, [bp-2]
  4265 00001FAF 8B07                     mov ax, [bx]
  4266 00001FB1 8846FC                   mov byte [bp-4], al
  4267 00001FB4 8A46FC                   mov al, byte [bp-4]
  4268 00001FB7 B400                     mov ah, 0
  4269 00001FB9 50                       push ax
  4270 00001FBA E8822E                   call prc
  4271 00001FBD 83C402                   add  sp, 2
  4272                                  
  4273                                  ;-453   if (_ mode == 1) prc(']');
  4274                                  
  4275                                  @@printreg211:
  4276 00001FC0 837E0601                cmp word [bp+6], 1
  4277 00001FC4 0F850800                 jne @@printreg212
  4278 00001FC8 6A5D                     push 93
  4279 00001FCA E8722E                   call prc
  4280 00001FCD 83C402                   add  sp, 2
  4281                                  
  4282                                  ;-454 }
  4283                                  
  4284                                  @@printreg212:
  4285                                  
  4286                                  ;-455 printpri(int w) { if (w == 1) printreg(1, 0); if (w == 2) printreg(17, 0);
  4287 00001FD0 C9                       LEAVE
  4288 00001FD1 C3                       ret
  4289                                  ; ENDP
  4290                                  
  4291                                  printpri:  ; *** PROC ***
  4292                                  ;Function : printpri, Number of local variables: 1
  4293                                  ;   # type sign width line used address name   list of local variables
  4294                                  ;  200 var sign word   455 NULL bp+4    w;
  4295 00001FD2 C8000000                 ENTER  0,0
  4296 00001FD6 8B4604                   mov ax, [bp+4]
  4297 00001FD9 83F801                   cmp ax, 1
  4298 00001FDC 0F850A00                 jne @@printpri213
  4299 00001FE0 6A00                     push 0
  4300 00001FE2 6A01                     push 1
  4301 00001FE4 E85EFF                   call printreg
  4302 00001FE7 83C404                   add  sp, 4
  4303                                  @@printpri213:
  4304 00001FEA 8B4604                   mov ax, [bp+4]
  4305 00001FED 83F802                   cmp ax, 2
  4306 00001FF0 0F850A00                 jne @@printpri214
  4307 00001FF4 6A00                     push 0
  4308 00001FF6 6A11                     push 17
  4309 00001FF8 E84AFF                   call printreg
  4310 00001FFB 83C404                   add  sp, 4
  4311                                  
  4312                                  ;-456   if (wi == 4) printreg (47, 0);
  4313                                  
  4314                                  @@printpri214:
  4315 00001FFE A1[5B00]                 mov ax, [wi]
  4316 00002001 83F804                   cmp ax, 4
  4317 00002004 0F850A00                 jne @@printpri215
  4318 00002008 6A00                     push 0
  4319 0000200A 6A2F                     push 47
  4320 0000200C E836FF                   call printreg
  4321 0000200F 83C404                   add  sp, 4
  4322                                  
  4323                                  ;-457 }
  4324                                  
  4325                                  @@printpri215:
  4326                                  
  4327                                  ;-458 
  4328                                  
  4329                                  
  4330                                  ;-459 
  4331                                  
  4332                                  
  4333                                  ;-460 
  4334                                  
  4335                                  
  4336                                  ;-461 int expr()
  4337 00002012 C9                       LEAVE
  4338 00002013 C3                       ret
  4339                                  ; ENDP
  4340                                  
  4341                                  expr:  ; *** PROC ***
  4342                                  
  4343                                  ;-462 { int mode; int id1;     int ixarr; int ixconst;
  4344                                  
  4345                                  
  4346                                  ;-463   int ids;  int isCONST; int i;     unsigned char *p;
  4347                                  
  4348                                  
  4349                                  ;-464   if (istoken(T_CONST)) { prs("\n mov eax, "); prL(lexvalL); return; }
  4350                                  
  4351                                  ;Function : expr, Number of local variables: 8
  4352                                  ;   # type sign width line used address name   list of local variables
  4353                                  ;  200 var sign word   462 NULL bp-2    mode
  4354                                  ;  201 var sign word   462 NULL bp-4    id1
  4355                                  ;  202 var sign word   462 NULL bp-6    ixarr
  4356                                  ;  203 var sign word   462 NULL bp-8    ixconst
  4357                                  ;  204 var sign word   463 NULL bp-10    ids
  4358                                  ;  205 var sign word   463 NULL bp-12    isCONST
  4359                                  ;  206 var sign word   463 NULL bp-14    i
  4360                                  ;  207 ptr unsg byte   463 NULL bp-16    p;
  4361 00002014 C8100000                 ENTER  16,0
  4362 00002018 680101                   push 257
  4363 0000201B E84A2D                   call istoken
  4364 0000201E 83C402                   add  sp, 2
  4365 00002021 08C0                     or  al, al
  4366 00002023 0F841700                 je @@expr216
  4367 00002027 68[8123]                 push expr_0
  4368 0000202A E8812E                   call prs
  4369 0000202D 83C402                   add  sp, 2
  4370 00002030 66FF36[4D00]             push dword [lexvalL]
  4371 00002035 E8293F                   call prL
  4372 00002038 83C404                   add  sp, 4
  4373 0000203B E94103                   jmp @@retn
  4374                                  
  4375                                  ;-465   mode=typeName(); /*0=V,1=*,2=&*/
  4376                                  
  4377                                  @@expr216:
  4378 0000203E E815EB                   call typeName
  4379 00002041 8946FE                   mov word [bp-2], ax
  4380                                  
  4381                                  ;-466   mod1=mode;
  4382                                  
  4383 00002044 8B46FE                   mov ax, [bp-2]
  4384 00002047 A3[E611]                 mov word [mod1], ax
  4385                                  
  4386                                  ;-467   irg1=checkreg();
  4387                                  
  4388 0000204A E884FA                   call checkreg
  4389 0000204D A3[EA11]                 mov word [irg1], ax
  4390                                  
  4391                                  ;-468   if (irg1) { doreg1(0); return; }
  4392                                  
  4393 00002050 A1[EA11]                 mov ax, [irg1]
  4394 00002053 08C0                     or  al, al
  4395 00002055 0F840B00                 je @@expr217
  4396 00002059 6A00                     push 0
  4397 0000205B E89EF8                   call doreg1
  4398 0000205E 83C402                   add  sp, 2
  4399 00002061 E91B03                   jmp @@retn
  4400                                  
  4401                                  ;-469   if (token=='(')  {docall1(); goto e1; }
  4402                                  
  4403                                  @@expr217:
  4404 00002064 A1[3D00]                 mov ax, [token]
  4405 00002067 83F828                   cmp ax, 40
  4406 0000206A 0F850600                 jne @@expr218
  4407 0000206E E8EE0A                   call docall1
  4408 00002071 E9FE01                   jmp @@e1
  4409                                  
  4410                                  ;-470 
  4411                                  
  4412                                  
  4413                                  ;-471   id1=searchname(); gettypes(id1); ids=signi;  ixarr=0;  ixconst=0;
  4414                                  
  4415                                  @@expr218:
  4416 00002074 E8FFE9                   call searchname
  4417 00002077 8946FC                   mov word [bp-4], ax
  4418 0000207A FF76FC                   push word [bp-4]
  4419 0000207D E8ABE8                   call gettypes
  4420 00002080 83C402                   add  sp, 2
  4421 00002083 A1[5600]                 mov ax, [signi]
  4422 00002086 8946F6                   mov word [bp-10], ax
  4423 00002089 66B800000000             mov eax, 0
  4424 0000208F 8946FA                   mov word [bp-6], ax
  4425 00002092 66B800000000             mov eax, 0
  4426 00002098 8946F8                   mov word [bp-8], ax
  4427                                  
  4428                                  ;-472     if (istoken('[')) { if (istoken(T_CONST)) {
  4429                                  
  4430 0000209B 6A5B                     push 91
  4431 0000209D E8C82C                   call istoken
  4432 000020A0 83C402                   add  sp, 2
  4433 000020A3 08C0                     or  al, al
  4434 000020A5 0F845D00                 je @@expr219
  4435 000020A9 680101                   push 257
  4436 000020AC E8B92C                   call istoken
  4437 000020AF 83C402                   add  sp, 2
  4438 000020B2 08C0                     or  al, al
  4439 000020B4 0F841B00                 je @@expr220
  4440                                  
  4441                                  ;-473       ixconst=1; ixarr=lexvalL; expect(']');  }
  4442                                  
  4443 000020B8 66B801000000             mov eax, 1
  4444 000020BE 8946F8                   mov word [bp-8], ax
  4445 000020C1 66A1[4D00]               mov eax, [lexvalL]
  4446 000020C5 8946FA                   mov word [bp-6], ax
  4447 000020C8 6A5D                     push 93
  4448 000020CA E8C32C                   call expect
  4449 000020CD 83C402                   add  sp, 2
  4450                                  
  4451                                  ;-474     else {ixarr=searchname(); expect(T_NAME); expect(']');
  4452                                  
  4453 000020D0 E93300                   jmp @@expr221
  4454                                  @@expr220:
  4455 000020D3 E8A0E9                   call searchname
  4456 000020D6 8946FA                   mov word [bp-6], ax
  4457 000020D9 680001                   push 256
  4458 000020DC E8B12C                   call expect
  4459 000020DF 83C402                   add  sp, 2
  4460 000020E2 6A5D                     push 93
  4461 000020E4 E8A92C                   call expect
  4462 000020E7 83C402                   add  sp, 2
  4463                                  
  4464                                  ;-475     gettypes(ixarr);
  4465                                  
  4466 000020EA FF76FA                   push word [bp-6]
  4467 000020ED E83BE8                   call gettypes
  4468 000020F0 83C402                   add  sp, 2
  4469                                  
  4470                                  ;-476     if (widthi != 2) error1("Array index must be number or int"); } }
  4471                                  
  4472 000020F3 A1[5900]                 mov ax, [widthi]
  4473 000020F6 83F802                   cmp ax, 2
  4474 000020F9 0F840900                 je  @@expr222
  4475 000020FD 68[8E23]                 push expr_1
  4476 00002100 E8AC30                   call error1
  4477 00002103 83C402                   add  sp, 2
  4478                                  @@expr222:
  4479                                  @@expr221:
  4480                                  
  4481                                  ;-477   if (istoken(T_PLUSPLUS  )) {if(mode)error1("Only var allowed");
  4482                                  
  4483                                  @@expr219:
  4484 00002106 68C304                   push 1219
  4485 00002109 E85C2C                   call istoken
  4486 0000210C 83C402                   add  sp, 2
  4487 0000210F 08C0                     or  al, al
  4488 00002111 0F843100                 je @@expr223
  4489 00002115 8B46FE                   mov ax, [bp-2]
  4490 00002118 08C0                     or  al, al
  4491 0000211A 0F840900                 je @@expr224
  4492 0000211E 68[B023]                 push expr_2
  4493 00002121 E88B30                   call error1
  4494 00002124 83C402                   add  sp, 2
  4495                                  
  4496                                  ;-478      prs("\n inc  ");  pwi(wi); v(id1); goto e1;}
  4497                                  
  4498                                  @@expr224:
  4499 00002127 68[C123]                 push expr_3
  4500 0000212A E8812D                   call prs
  4501 0000212D 83C402                   add  sp, 2
  4502 00002130 FF36[5B00]               push word [wi]
  4503 00002134 E850E0                   call pwi
  4504 00002137 83C402                   add  sp, 2
  4505 0000213A FF76FC                   push word [bp-4]
  4506 0000213D E8B6DF                   call v
  4507 00002140 83C402                   add  sp, 2
  4508 00002143 E92C01                   jmp @@e1
  4509                                  
  4510                                  ;-479   if (istoken(T_MINUSMINUS)) {if(mode)error1("Only Var allowed");
  4511                                  
  4512                                  @@expr223:
  4513 00002146 68C904                   push 1225
  4514 00002149 E81C2C                   call istoken
  4515 0000214C 83C402                   add  sp, 2
  4516 0000214F 08C0                     or  al, al
  4517 00002151 0F843100                 je @@expr225
  4518 00002155 8B46FE                   mov ax, [bp-2]
  4519 00002158 08C0                     or  al, al
  4520 0000215A 0F840900                 je @@expr226
  4521 0000215E 68[CA23]                 push expr_4
  4522 00002161 E84B30                   call error1
  4523 00002164 83C402                   add  sp, 2
  4524                                  
  4525                                  ;-480      prs("\n dec  ");  pwi(wi); v(id1); goto e1;}
  4526                                  
  4527                                  @@expr226:
  4528 00002167 68[DB23]                 push expr_5
  4529 0000216A E8412D                   call prs
  4530 0000216D 83C402                   add  sp, 2
  4531 00002170 FF36[5B00]               push word [wi]
  4532 00002174 E810E0                   call pwi
  4533 00002177 83C402                   add  sp, 2
  4534 0000217A FF76FC                   push word [bp-4]
  4535 0000217D E876DF                   call v
  4536 00002180 83C402                   add  sp, 2
  4537 00002183 E9EC00                   jmp @@e1
  4538                                  
  4539                                  ;-481        
  4540                                  
  4541                                  
  4542                                  ;-482   if (istoken(T_PLUSASS   )) {compoundass("add", mode, id1); goto e1;}
  4543                                  
  4544                                  @@expr225:
  4545 00002186 68CE04                   push 1230
  4546 00002189 E8DC2B                   call istoken
  4547 0000218C 83C402                   add  sp, 2
  4548 0000218F 08C0                     or  al, al
  4549 00002191 0F841200                 je @@expr227
  4550 00002195 FF76FC                   push word [bp-4]
  4551 00002198 FF76FE                   push word [bp-2]
  4552 0000219B 68[E423]                 push expr_6
  4553 0000219E E89102                   call compoundass
  4554 000021A1 83C406                   add  sp, 6
  4555 000021A4 E9CB00                   jmp @@e1
  4556                                  
  4557                                  ;-483   if (istoken(T_MINUSASS  )) {compoundass("sub", mode, id1); goto e1;}
  4558                                  
  4559                                  @@expr227:
  4560 000021A7 68CF04                   push 1231
  4561 000021AA E8BB2B                   call istoken
  4562 000021AD 83C402                   add  sp, 2
  4563 000021B0 08C0                     or  al, al
  4564 000021B2 0F841200                 je @@expr228
  4565 000021B6 FF76FC                   push word [bp-4]
  4566 000021B9 FF76FE                   push word [bp-2]
  4567 000021BC 68[E823]                 push expr_7
  4568 000021BF E87002                   call compoundass
  4569 000021C2 83C406                   add  sp, 6
  4570 000021C5 E9AA00                   jmp @@e1
  4571                                  
  4572                                  ;-484   if (istoken(T_ANDASS    )) {compoundass("and", mode, id1); goto e1;}
  4573                                  
  4574                                  @@expr228:
  4575 000021C8 68D204                   push 1234
  4576 000021CB E89A2B                   call istoken
  4577 000021CE 83C402                   add  sp, 2
  4578 000021D1 08C0                     or  al, al
  4579 000021D3 0F841200                 je @@expr229
  4580 000021D7 FF76FC                   push word [bp-4]
  4581 000021DA FF76FE                   push word [bp-2]
  4582 000021DD 68[EC23]                 push expr_8
  4583 000021E0 E84F02                   call compoundass
  4584 000021E3 83C406                   add  sp, 6
  4585 000021E6 E98900                   jmp @@e1
  4586                                  
  4587                                  ;-485   if (istoken(T_ORASS     )) {compoundass("or" , mode, id1); goto e1;}    
  4588                                  
  4589                                  @@expr229:
  4590 000021E9 68D304                   push 1235
  4591 000021EC E8792B                   call istoken
  4592 000021EF 83C402                   add  sp, 2
  4593 000021F2 08C0                     or  al, al
  4594 000021F4 0F841200                 je @@expr230
  4595 000021F8 FF76FC                   push word [bp-4]
  4596 000021FB FF76FE                   push word [bp-2]
  4597 000021FE 68[F023]                 push expr_9
  4598 00002201 E82E02                   call compoundass
  4599 00002204 83C406                   add  sp, 6
  4600 00002207 E96800                   jmp @@e1
  4601                                  
  4602                                  ;-486   if (istoken(T_MULASS    )) {error1("not implemented");}
  4603                                  
  4604                                  @@expr230:
  4605 0000220A 68D004                   push 1232
  4606 0000220D E8582B                   call istoken
  4607 00002210 83C402                   add  sp, 2
  4608 00002213 08C0                     or  al, al
  4609 00002215 0F840900                 je @@expr231
  4610 00002219 68[F323]                 push expr_10
  4611 0000221C E8902F                   call error1
  4612 0000221F 83C402                   add  sp, 2
  4613                                  
  4614                                  ;-487   if (istoken(T_DIVASS    )) {error1("not implemented");}
  4615                                  
  4616                                  @@expr231:
  4617 00002222 68D104                   push 1233
  4618 00002225 E8402B                   call istoken
  4619 00002228 83C402                   add  sp, 2
  4620 0000222B 08C0                     or  al, al
  4621 0000222D 0F840900                 je @@expr232
  4622 00002231 68[0324]                 push expr_11
  4623 00002234 E8782F                   call error1
  4624 00002237 83C402                   add  sp, 2
  4625                                  
  4626                                  ;-488 
  4627                                  
  4628                                  
  4629                                  ;-489   if (istoken('=')) { expr();
  4630                                  
  4631                                  @@expr232:
  4632 0000223A 6A3D                     push 61
  4633 0000223C E8292B                   call istoken
  4634 0000223F 83C402                   add  sp, 2
  4635 00002242 08C0                     or  al, al
  4636 00002244 0F841800                 je @@expr233
  4637 00002248 E8C9FD                   call expr
  4638                                  
  4639                                  ;-490   doassign(mode, id1, ixarr, ixconst); goto e1;  }
  4640                                  
  4641 0000224B FF76F8                   push word [bp-8]
  4642 0000224E FF76FA                   push word [bp-6]
  4643 00002251 FF76FC                   push word [bp-4]
  4644 00002254 FF76FE                   push word [bp-2]
  4645 00002257 E81605                   call doassign
  4646 0000225A 83C408                   add  sp, 8
  4647 0000225D E91200                   jmp @@e1
  4648                                  
  4649                                  ;-491   dovar1(mode, "mov", ixarr, id1);
  4650                                  
  4651                                  @@expr233:
  4652 00002260 FF76FC                   push word [bp-4]
  4653 00002263 FF76FA                   push word [bp-6]
  4654 00002266 68[1324]                 push expr_12
  4655 00002269 FF76FE                   push word [bp-2]
  4656 0000226C E84702                   call dovar1
  4657 0000226F 83C408                   add  sp, 8
  4658                                  
  4659                                  ;-492   
  4660                                  
  4661                                  
  4662                                  ;-493 e1:    if (istoken('+')) rterm("add");
  4663                                  
  4664                                  @@e1:
  4665 00002272 6A2B                     push 43
  4666 00002274 E8F12A                   call istoken
  4667 00002277 83C402                   add  sp, 2
  4668 0000227A 08C0                     or  al, al
  4669 0000227C 0F840C00                 je @@expr234
  4670 00002280 68[1724]                 push expr_13
  4671 00002283 E8FD03                   call rterm
  4672 00002286 83C402                   add  sp, 2
  4673                                  
  4674                                  ;-494   else if (istoken('-')) rterm("sub" );
  4675                                  
  4676 00002289 E9CF00                   jmp @@expr235
  4677                                  @@expr234:
  4678 0000228C 6A2D                     push 45
  4679 0000228E E8D72A                   call istoken
  4680 00002291 83C402                   add  sp, 2
  4681 00002294 08C0                     or  al, al
  4682 00002296 0F840C00                 je @@expr236
  4683 0000229A 68[1B24]                 push expr_14
  4684 0000229D E8E303                   call rterm
  4685 000022A0 83C402                   add  sp, 2
  4686                                  
  4687                                  ;-495   else if (istoken('&')) rterm("and" );
  4688                                  
  4689 000022A3 E9B500                   jmp @@expr237
  4690                                  @@expr236:
  4691 000022A6 6A26                     push 38
  4692 000022A8 E8BD2A                   call istoken
  4693 000022AB 83C402                   add  sp, 2
  4694 000022AE 08C0                     or  al, al
  4695 000022B0 0F840C00                 je @@expr238
  4696 000022B4 68[1F24]                 push expr_15
  4697 000022B7 E8C903                   call rterm
  4698 000022BA 83C402                   add  sp, 2
  4699                                  
  4700                                  ;-496   else if (istoken('|')) rterm("or" );  
  4701                                  
  4702 000022BD E99B00                   jmp @@expr239
  4703                                  @@expr238:
  4704 000022C0 6A7C                     push 124
  4705 000022C2 E8A32A                   call istoken
  4706 000022C5 83C402                   add  sp, 2
  4707 000022C8 08C0                     or  al, al
  4708 000022CA 0F840C00                 je @@expr240
  4709 000022CE 68[2324]                 push expr_16
  4710 000022D1 E8AF03                   call rterm
  4711 000022D4 83C402                   add  sp, 2
  4712                                  
  4713                                  ;-497   else if (istoken(T_LESSLESS)) rterm("shl");
  4714                                  
  4715 000022D7 E98100                   jmp @@expr241
  4716                                  @@expr240:
  4717 000022DA 68D804                   push 1240
  4718 000022DD E8882A                   call istoken
  4719 000022E0 83C402                   add  sp, 2
  4720 000022E3 08C0                     or  al, al
  4721 000022E5 0F840C00                 je @@expr242
  4722 000022E9 68[2624]                 push expr_17
  4723 000022EC E89403                   call rterm
  4724 000022EF 83C402                   add  sp, 2
  4725                                  
  4726                                  ;-498   else if (istoken(T_GREATGREAT)) rterm("shr");  
  4727                                  
  4728 000022F2 E96600                   jmp @@expr243
  4729                                  @@expr242:
  4730 000022F5 68D904                   push 1241
  4731 000022F8 E86D2A                   call istoken
  4732 000022FB 83C402                   add  sp, 2
  4733 000022FE 08C0                     or  al, al
  4734 00002300 0F840C00                 je @@expr244
  4735 00002304 68[2A24]                 push expr_18
  4736 00002307 E87903                   call rterm
  4737 0000230A 83C402                   add  sp, 2
  4738                                  
  4739                                  ;-499   else if (istoken('*')) domul (ids);
  4740                                  
  4741 0000230D E94B00                   jmp @@expr245
  4742                                  @@expr244:
  4743 00002310 6A2A                     push 42
  4744 00002312 E8532A                   call istoken
  4745 00002315 83C402                   add  sp, 2
  4746 00002318 08C0                     or  al, al
  4747 0000231A 0F840C00                 je @@expr246
  4748 0000231E FF76F6                   push word [bp-10]
  4749 00002321 E8CD05                   call domul
  4750 00002324 83C402                   add  sp, 2
  4751                                  
  4752                                  ;-500   else if (istoken('/')) doidiv(ids);
  4753                                  
  4754 00002327 E93100                   jmp @@expr247
  4755                                  @@expr246:
  4756 0000232A 6A2F                     push 47
  4757 0000232C E8392A                   call istoken
  4758 0000232F 83C402                   add  sp, 2
  4759 00002332 08C0                     or  al, al
  4760 00002334 0F840C00                 je @@expr248
  4761 00002338 FF76F6                   push word [bp-10]
  4762 0000233B E85706                   call doidiv
  4763 0000233E 83C402                   add  sp, 2
  4764                                  
  4765                                  ;-501   else if (istoken('%')) domod (ids);
  4766                                  
  4767 00002341 E91700                   jmp @@expr249
  4768                                  @@expr248:
  4769 00002344 6A25                     push 37
  4770 00002346 E81F2A                   call istoken
  4771 00002349 83C402                   add  sp, 2
  4772 0000234C 08C0                     or  al, al
  4773 0000234E 0F840900                 je @@expr250
  4774 00002352 FF76F6                   push word [bp-10]
  4775 00002355 E8E107                   call domod
  4776 00002358 83C402                   add  sp, 2
  4777                                  
  4778                                  ;-502   if (isrelational()) { rterm("cmp"); cmpneg(ids);}
  4779                                  
  4780                                  @@expr250:
  4781                                  @@expr249:
  4782                                  @@expr247:
  4783                                  @@expr245:
  4784                                  @@expr243:
  4785                                  @@expr241:
  4786                                  @@expr239:
  4787                                  @@expr237:
  4788                                  @@expr235:
  4789 0000235B E8FD20                   call isrelational
  4790 0000235E 08C0                     or  al, al
  4791 00002360 0F841200                 je @@expr251
  4792 00002364 68[2E24]                 push expr_19
  4793 00002367 E81903                   call rterm
  4794 0000236A 83C402                   add  sp, 2
  4795 0000236D FF76F6                   push word [bp-10]
  4796 00002370 E89D1D                   call cmpneg
  4797 00002373 83C402                   add  sp, 2
  4798                                  
  4799                                  ;-503   return 0;
  4800                                  
  4801                                  @@expr251:
  4802 00002376 66B800000000             mov eax, 0
  4803 0000237C E90000                   jmp @@retn
  4804                                  
  4805                                  ;-504 }
  4806                                  
  4807                                  
  4808                                  ;-505 
  4809                                  
  4810                                  
  4811                                  ;-506 int compoundass(char *op, int mode, int id1) {
  4812                                  
  4813 0000237F C9                      @@retn: LEAVE
  4814 00002380 C3                       ret
  4815                                  ; ENDP
  4816 00002381 5C6E206D6F76206561-     expr_0 db "\n mov eax, ",0
  4817 0000238A 782C2000           
  4818 0000238E 417272617920696E64-     expr_1 db "Array index must be number or int",0
  4819 00002397 6578206D7573742062-
  4820 000023A0 65206E756D62657220-
  4821 000023A9 6F7220696E7400     
  4822 000023B0 4F6E6C792076617220-     expr_2 db "Only var allowed",0
  4823 000023B9 616C6C6F77656400   
  4824 000023C1 5C6E20696E63202000      expr_3 db "\n inc  ",0
  4825 000023CA 4F6E6C792056617220-     expr_4 db "Only Var allowed",0
  4826 000023D3 616C6C6F77656400   
  4827 000023DB 5C6E20646563202000      expr_5 db "\n dec  ",0
  4828 000023E4 61646400                expr_6 db "add",0
  4829 000023E8 73756200                expr_7 db "sub",0
  4830 000023EC 616E6400                expr_8 db "and",0
  4831 000023F0 6F7200                  expr_9 db "or",0
  4832 000023F3 6E6F7420696D706C65-     expr_10 db "not implemented",0
  4833 000023FC 6D656E74656400     
  4834 00002403 6E6F7420696D706C65-     expr_11 db "not implemented",0
  4835 0000240C 6D656E74656400     
  4836 00002413 6D6F7600                expr_12 db "mov",0
  4837 00002417 61646400                expr_13 db "add",0
  4838 0000241B 73756200                expr_14 db "sub",0
  4839 0000241F 616E6400                expr_15 db "and",0
  4840 00002423 6F7200                  expr_16 db "or",0
  4841 00002426 73686C00                expr_17 db "shl",0
  4842 0000242A 73687200                expr_18 db "shr",0
  4843 0000242E 636D7000                expr_19 db "cmp",0
  4844                                  
  4845                                  compoundass:  ; *** PROC ***
  4846                                  
  4847                                  ;-507   if(mode) error1("only scalar Var allowed");
  4848                                  
  4849                                  ;Function : compoundass, Number of local variables: 3
  4850                                  ;   # type sign width line used address name   list of local variables
  4851                                  ;  200 ptr sign byte   506 NULL bp+4    op
  4852                                  ;  201 var sign word   506 NULL bp+6    mode
  4853                                  ;  202 var sign word   506 NULL bp+8    id1;
  4854 00002432 C8000000                 ENTER  0,0
  4855 00002436 8B4606                   mov ax, [bp+6]
  4856 00002439 08C0                     or  al, al
  4857 0000243B 0F840900                 je @@compoundass252
  4858 0000243F 68[9824]                 push compoundass_0
  4859 00002442 E86A2D                   call error1
  4860 00002445 83C402                   add  sp, 2
  4861                                  
  4862                                  ;-508   prnl(); prs(op); prs("  "); 
  4863                                  
  4864                                  @@compoundass252:
  4865 00002448 E8552A                   call prnl
  4866 0000244B FF7604                   push word [bp+4]
  4867 0000244E E85D2A                   call prs
  4868 00002451 83C402                   add  sp, 2
  4869 00002454 68[B024]                 push compoundass_1
  4870 00002457 E8542A                   call prs
  4871 0000245A 83C402                   add  sp, 2
  4872                                  
  4873                                  ;-509   gettypes(id1); pwi(wi); v(id1); prs(", ");
  4874                                  
  4875 0000245D FF7608                   push word [bp+8]
  4876 00002460 E8C8E4                   call gettypes
  4877 00002463 83C402                   add  sp, 2
  4878 00002466 FF36[5B00]               push word [wi]
  4879 0000246A E81ADD                   call pwi
  4880 0000246D 83C402                   add  sp, 2
  4881 00002470 FF7608                   push word [bp+8]
  4882 00002473 E880DC                   call v
  4883 00002476 83C402                   add  sp, 2
  4884 00002479 68[B324]                 push compoundass_2
  4885 0000247C E82F2A                   call prs
  4886 0000247F 83C402                   add  sp, 2
  4887                                  
  4888                                  ;-510   expect(T_CONST); prL(lexvalL);
  4889                                  
  4890 00002482 680101                   push 257
  4891 00002485 E80829                   call expect
  4892 00002488 83C402                   add  sp, 2
  4893 0000248B 66FF36[4D00]             push dword [lexvalL]
  4894 00002490 E8CE3A                   call prL
  4895 00002493 83C404                   add  sp, 4
  4896                                  
  4897                                  ;-511 }
  4898                                  
  4899                                  
  4900                                  ;-512 int dovar1(int mode, int op, int ixarr, int id1) { 
  4901 00002496 C9                       LEAVE
  4902 00002497 C3                       ret
  4903                                  ; ENDP
  4904 00002498 6F6E6C79207363616C-     compoundass_0 db "only scalar Var allowed",0
  4905 000024A1 61722056617220616C-
  4906 000024AA 6C6F77656400       
  4907 000024B0 202000                  compoundass_1 db "  ",0
  4908 000024B3 2C2000                  compoundass_2 db ", ",0
  4909                                  
  4910                                  dovar1:  ; *** PROC ***
  4911                                  
  4912                                  ;-513   gettypes(id1);
  4913                                  
  4914                                  ;Function : dovar1, Number of local variables: 4
  4915                                  ;   # type sign width line used address name   list of local variables
  4916                                  ;  200 var sign word   512 NULL bp+4    mode
  4917                                  ;  201 var sign word   512 NULL bp+6    op
  4918                                  ;  202 var sign word   512 NULL bp+8    ixarr
  4919                                  ;  203 var sign word   512 NULL bp+10    id1;
  4920 000024B6 C8000000                 ENTER  0,0
  4921 000024BA FF760A                   push word [bp+10]
  4922 000024BD E86BE4                   call gettypes
  4923 000024C0 83C402                   add  sp, 2
  4924                                  
  4925                                  ;-514   if (mode==1) {prs("\n mov bx, "); v(id1); prnl(); prs(op);
  4926                                  
  4927 000024C3 8B4604                   mov ax, [bp+4]
  4928 000024C6 83F801                   cmp ax, 1
  4929 000024C9 0F855A00                 jne @@dovar1253
  4930 000024CD 68[0F26]                 push dovar1_0
  4931 000024D0 E8DB29                   call prs
  4932 000024D3 83C402                   add  sp, 2
  4933 000024D6 FF760A                   push word [bp+10]
  4934 000024D9 E81ADC                   call v
  4935 000024DC 83C402                   add  sp, 2
  4936 000024DF E8BE29                   call prnl
  4937 000024E2 FF7606                   push word [bp+6]
  4938 000024E5 E8C629                   call prs
  4939 000024E8 83C402                   add  sp, 2
  4940                                  
  4941                                  ;-515     if(widthi == 1) prs(" al, [bx]\n mov ah, 0");
  4942                                  
  4943 000024EB A1[5900]                 mov ax, [widthi]
  4944 000024EE 83F801                   cmp ax, 1
  4945 000024F1 0F850900                 jne @@dovar1254
  4946 000024F5 68[1B26]                 push dovar1_1
  4947 000024F8 E8B329                   call prs
  4948 000024FB 83C402                   add  sp, 2
  4949                                  
  4950                                  ;-516     if(widthi == 2) prs(" ax, [bx]");
  4951                                  
  4952                                  @@dovar1254:
  4953 000024FE A1[5900]                 mov ax, [widthi]
  4954 00002501 83F802                   cmp ax, 2
  4955 00002504 0F850900                 jne @@dovar1255
  4956 00002508 68[3126]                 push dovar1_2
  4957 0000250B E8A029                   call prs
  4958 0000250E 83C402                   add  sp, 2
  4959                                  
  4960                                  ;-517     if(widthi == 4) prs(" eax, [bx]");
  4961                                  
  4962                                  @@dovar1255:
  4963 00002511 A1[5900]                 mov ax, [widthi]
  4964 00002514 83F804                   cmp ax, 4
  4965 00002517 0F850900                 jne @@dovar1256
  4966 0000251B 68[3B26]                 push dovar1_3
  4967 0000251E E88D29                   call prs
  4968 00002521 83C402                   add  sp, 2
  4969                                  
  4970                                  ;-518     return; }
  4971                                  
  4972                                  @@dovar1256:
  4973 00002524 E9E600                   jmp @@retn
  4974                                  
  4975                                  ;-519   if (mode==2){prnl();prs(op);prs(" ax, "); a(id1); return; }
  4976                                  
  4977                                  @@dovar1253:
  4978 00002527 8B4604                   mov ax, [bp+4]
  4979 0000252A 83F802                   cmp ax, 2
  4980 0000252D 0F852100                 jne @@dovar1257
  4981 00002531 E86C29                   call prnl
  4982 00002534 FF7606                   push word [bp+6]
  4983 00002537 E87429                   call prs
  4984 0000253A 83C402                   add  sp, 2
  4985 0000253D 68[4626]                 push dovar1_4
  4986 00002540 E86B29                   call prs
  4987 00002543 83C402                   add  sp, 2
  4988 00002546 FF760A                   push word [bp+10]
  4989 00002549 E881DB                   call a
  4990 0000254C 83C402                   add  sp, 2
  4991 0000254F E9BB00                   jmp @@retn
  4992                                  
  4993                                  ;-520   if (ixarr) {
  4994                                  
  4995                                  @@dovar1257:
  4996 00002552 8B4608                   mov ax, [bp+8]
  4997 00002555 08C0                     or  al, al
  4998 00002557 0F848200                 je @@dovar1258
  4999                                  
  5000                                  ;-521     prs("\n mov bx, "); v(ixarr);
  5001                                  
  5002 0000255B 68[4C26]                 push dovar1_5
  5003 0000255E E84D29                   call prs
  5004 00002561 83C402                   add  sp, 2
  5005 00002564 FF7608                   push word [bp+8]
  5006 00002567 E88CDB                   call v
  5007 0000256A 83C402                   add  sp, 2
  5008                                  
  5009                                  ;-522     if (wi==2) prs("\n shl bx, 1");
  5010                                  
  5011 0000256D A1[5B00]                 mov ax, [wi]
  5012 00002570 83F802                   cmp ax, 2
  5013 00002573 0F850900                 jne @@dovar1259
  5014 00002577 68[5826]                 push dovar1_6
  5015 0000257A E83129                   call prs
  5016 0000257D 83C402                   add  sp, 2
  5017                                  
  5018                                  ;-523     if (wi==4) prs("\n shl bx, 2");
  5019                                  
  5020                                  @@dovar1259:
  5021 00002580 A1[5B00]                 mov ax, [wi]
  5022 00002583 83F804                   cmp ax, 4
  5023 00002586 0F850900                 jne @@dovar1260
  5024 0000258A 68[6526]                 push dovar1_7
  5025 0000258D E81E29                   call prs
  5026 00002590 83C402                   add  sp, 2
  5027                                  
  5028                                  ;-524     prs("\n "); prs(op); prc(' '); printpri(wi); prs(", ");
  5029                                  
  5030                                  @@dovar1260:
  5031 00002593 68[7226]                 push dovar1_8
  5032 00002596 E81529                   call prs
  5033 00002599 83C402                   add  sp, 2
  5034 0000259C FF7606                   push word [bp+6]
  5035 0000259F E80C29                   call prs
  5036 000025A2 83C402                   add  sp, 2
  5037 000025A5 6A20                     push 32
  5038 000025A7 E89528                   call prc
  5039 000025AA 83C402                   add  sp, 2
  5040 000025AD FF36[5B00]               push word [wi]
  5041 000025B1 E81EFA                   call printpri
  5042 000025B4 83C402                   add  sp, 2
  5043 000025B7 68[7626]                 push dovar1_9
  5044 000025BA E8F128                   call prs
  5045 000025BD 83C402                   add  sp, 2
  5046                                  
  5047                                  ;-525 // v(id1); prs(" [bx]");
  5048                                  
  5049                                  
  5050                                  ;-526     prc('['); printName(id1); prs(" + bx]"); return; }
  5051                                  
  5052 000025C0 6A5B                     push 91
  5053 000025C2 E87A28                   call prc
  5054 000025C5 83C402                   add  sp, 2
  5055 000025C8 FF760A                   push word [bp+10]
  5056 000025CB E83EE4                   call printName
  5057 000025CE 83C402                   add  sp, 2
  5058 000025D1 68[7926]                 push dovar1_10
  5059 000025D4 E8D728                   call prs
  5060 000025D7 83C402                   add  sp, 2
  5061 000025DA E93000                   jmp @@retn
  5062                                  
  5063                                  ;-527   prnl();prs(op); prc(' '); printpri(wi); prs(", ");  v(id1);
  5064                                  
  5065                                  @@dovar1258:
  5066 000025DD E8C028                   call prnl
  5067 000025E0 FF7606                   push word [bp+6]
  5068 000025E3 E8C828                   call prs
  5069 000025E6 83C402                   add  sp, 2
  5070 000025E9 6A20                     push 32
  5071 000025EB E85128                   call prc
  5072 000025EE 83C402                   add  sp, 2
  5073 000025F1 FF36[5B00]               push word [wi]
  5074 000025F5 E8DAF9                   call printpri
  5075 000025F8 83C402                   add  sp, 2
  5076 000025FB 68[8026]                 push dovar1_11
  5077 000025FE E8AD28                   call prs
  5078 00002601 83C402                   add  sp, 2
  5079 00002604 FF760A                   push word [bp+10]
  5080 00002607 E8ECDA                   call v
  5081 0000260A 83C402                   add  sp, 2
  5082                                  
  5083                                  ;-528 }
  5084                                  
  5085                                  
  5086                                  ;-529 int rterm(char *op) {int mode; int opint; int ixarr; int id1;
  5087                                  
  5088 0000260D C9                      @@retn: LEAVE
  5089 0000260E C3                       ret
  5090                                  ; ENDP
  5091 0000260F 5C6E206D6F76206278-     dovar1_0 db "\n mov bx, ",0
  5092 00002618 2C2000             
  5093 0000261B 20616C2C205B62785D-     dovar1_1 db " al, [bx]\n mov ah, 0",0
  5094 00002624 5C6E206D6F76206168-
  5095 0000262D 2C203000           
  5096 00002631 2061782C205B62785D-     dovar1_2 db " ax, [bx]",0
  5097 0000263A 00                 
  5098 0000263B 206561782C205B6278-     dovar1_3 db " eax, [bx]",0
  5099 00002644 5D00               
  5100 00002646 2061782C2000            dovar1_4 db " ax, ",0
  5101 0000264C 5C6E206D6F76206278-     dovar1_5 db "\n mov bx, ",0
  5102 00002655 2C2000             
  5103 00002658 5C6E2073686C206278-     dovar1_6 db "\n shl bx, 1",0
  5104 00002661 2C203100           
  5105 00002665 5C6E2073686C206278-     dovar1_7 db "\n shl bx, 2",0
  5106 0000266E 2C203200           
  5107 00002672 5C6E2000                dovar1_8 db "\n ",0
  5108 00002676 2C2000                  dovar1_9 db ", ",0
  5109 00002679 202B2062785D00          dovar1_10 db " + bx]",0
  5110 00002680 2C2000                  dovar1_11 db ", ",0
  5111                                  
  5112                                  rterm:  ; *** PROC ***
  5113                                  
  5114                                  ;-530   if (istoken(T_CONST)) { prnl(); prs(op); prc(' '); printpri(wi); prs(", ");
  5115                                  
  5116                                  ;Function : rterm, Number of local variables: 5
  5117                                  ;   # type sign width line used address name   list of local variables
  5118                                  ;  200 ptr sign byte   529 NULL bp+4    op
  5119                                  ;  201 var sign word   529 NULL bp-2    mode
  5120                                  ;  202 var sign word   529 NULL bp-4    opint
  5121                                  ;  203 var sign word   529 NULL bp-6    ixarr
  5122                                  ;  204 var sign word   529 NULL bp-8    id1;
  5123 00002683 C8080000                 ENTER  8,0
  5124 00002687 680101                   push 257
  5125 0000268A E8DB26                   call istoken
  5126 0000268D 83C402                   add  sp, 2
  5127 00002690 08C0                     or  al, al
  5128 00002692 0F843500                 je @@rterm261
  5129 00002696 E80728                   call prnl
  5130 00002699 FF7604                   push word [bp+4]
  5131 0000269C E80F28                   call prs
  5132 0000269F 83C402                   add  sp, 2
  5133 000026A2 6A20                     push 32
  5134 000026A4 E89827                   call prc
  5135 000026A7 83C402                   add  sp, 2
  5136 000026AA FF36[5B00]               push word [wi]
  5137 000026AE E821F9                   call printpri
  5138 000026B1 83C402                   add  sp, 2
  5139 000026B4 68[5227]                 push rterm_0
  5140 000026B7 E8F427                   call prs
  5141 000026BA 83C402                   add  sp, 2
  5142                                  
  5143                                  ;-531     prL(lexvalL); return;}
  5144                                  
  5145 000026BD 66FF36[4D00]             push dword [lexvalL]
  5146 000026C2 E89C38                   call prL
  5147 000026C5 83C404                   add  sp, 4
  5148 000026C8 E98500                   jmp @@retn
  5149                                  
  5150                                  ;-532   mode=typeName(); id1=searchname(); ixarr=0;
  5151                                  
  5152                                  @@rterm261:
  5153 000026CB E888E4                   call typeName
  5154 000026CE 8946FE                   mov word [bp-2], ax
  5155 000026D1 E8A2E3                   call searchname
  5156 000026D4 8946F8                   mov word [bp-8], ax
  5157 000026D7 66B800000000             mov eax, 0
  5158 000026DD 8946FA                   mov word [bp-6], ax
  5159                                  
  5160                                  ;-533   if (istoken('[')) { ixarr=searchname(); expect(T_NAME); expect(']');  
  5161                                  
  5162 000026E0 6A5B                     push 91
  5163 000026E2 E88326                   call istoken
  5164 000026E5 83C402                   add  sp, 2
  5165 000026E8 08C0                     or  al, al
  5166 000026EA 0F843300                 je @@rterm262
  5167 000026EE E885E3                   call searchname
  5168 000026F1 8946FA                   mov word [bp-6], ax
  5169 000026F4 680001                   push 256
  5170 000026F7 E89626                   call expect
  5171 000026FA 83C402                   add  sp, 2
  5172 000026FD 6A5D                     push 93
  5173 000026FF E88E26                   call expect
  5174 00002702 83C402                   add  sp, 2
  5175                                  
  5176                                  ;-534     gettypes(ixarr);
  5177                                  
  5178 00002705 FF76FA                   push word [bp-6]
  5179 00002708 E820E2                   call gettypes
  5180 0000270B 83C402                   add  sp, 2
  5181                                  
  5182                                  ;-535     if (widthi != 2) error1("Array index must be int"); }
  5183                                  
  5184 0000270E A1[5900]                 mov ax, [widthi]
  5185 00002711 83F802                   cmp ax, 2
  5186 00002714 0F840900                 je  @@rterm263
  5187 00002718 68[5527]                 push rterm_1
  5188 0000271B E8912A                   call error1
  5189 0000271E 83C402                   add  sp, 2
  5190                                  @@rterm263:
  5191                                  
  5192                                  ;-536   if (eqstr(symbol,"ax")) return;
  5193                                  
  5194                                  @@rterm262:
  5195 00002721 68[6D27]                 push rterm_2
  5196 00002724 8D066E81                 lea  ax, [symbol]
  5197 00002728 50                       push ax
  5198 00002729 E8D03B                   call eqstr
  5199 0000272C 83C404                   add  sp, 4
  5200 0000272F 08C0                     or  al, al
  5201 00002731 0F840300                 je @@rterm264
  5202 00002735 E91800                   jmp @@retn
  5203                                  
  5204                                  ;-537   opint=op; dovar1(mode, opint, ixarr, id1);
  5205                                  
  5206                                  @@rterm264:
  5207 00002738 8B4604                   mov ax, [bp+4]
  5208 0000273B 8946FC                   mov word [bp-4], ax
  5209 0000273E FF76F8                   push word [bp-8]
  5210 00002741 FF76FA                   push word [bp-6]
  5211 00002744 FF76FC                   push word [bp-4]
  5212 00002747 FF76FE                   push word [bp-2]
  5213 0000274A E869FD                   call dovar1
  5214 0000274D 83C408                   add  sp, 8
  5215                                  
  5216                                  ;-538 }
  5217                                  
  5218                                  
  5219                                  ;-539 int doassign(int mode, int i, int ixarr, int ixconst) {
  5220                                  
  5221 00002750 C9                      @@retn: LEAVE
  5222 00002751 C3                       ret
  5223                                  ; ENDP
  5224 00002752 2C2000                  rterm_0 db ", ",0
  5225 00002755 417272617920696E64-     rterm_1 db "Array index must be int",0
  5226 0000275E 6578206D7573742062-
  5227 00002767 6520696E7400       
  5228 0000276D 617800                  rterm_2 db "ax",0
  5229                                  
  5230                                  doassign:  ; *** PROC ***
  5231                                  
  5232                                  ;-540   gettypes(i);
  5233                                  
  5234                                  ;Function : doassign, Number of local variables: 4
  5235                                  ;   # type sign width line used address name   list of local variables
  5236                                  ;  200 var sign word   539 NULL bp+4    mode
  5237                                  ;  201 var sign word   539 NULL bp+6    i
  5238                                  ;  202 var sign word   539 NULL bp+8    ixarr
  5239                                  ;  203 var sign word   539 NULL bp+10    ixconst;
  5240 00002770 C8000000                 ENTER  0,0
  5241 00002774 FF7606                   push word [bp+6]
  5242 00002777 E8B1E1                   call gettypes
  5243 0000277A 83C402                   add  sp, 2
  5244                                  
  5245                                  ;-541   if (mode==1) {prs("\n mov  bx, ");v(i);
  5246                                  
  5247 0000277D 8B4604                   mov ax, [bp+4]
  5248 00002780 83F801                   cmp ax, 1
  5249 00002783 0F852800                 jne @@doassign265
  5250 00002787 68[8628]                 push doassign_0
  5251 0000278A E82127                   call prs
  5252 0000278D 83C402                   add  sp, 2
  5253 00002790 FF7606                   push word [bp+6]
  5254 00002793 E860D9                   call v
  5255 00002796 83C402                   add  sp, 2
  5256                                  
  5257                                  ;-542     prs("\n mov  [bx], "); printpri(widthi); return;}
  5258                                  
  5259 00002799 68[9328]                 push doassign_1
  5260 0000279C E80F27                   call prs
  5261 0000279F 83C402                   add  sp, 2
  5262 000027A2 FF36[5900]               push word [widthi]
  5263 000027A6 E829F8                   call printpri
  5264 000027A9 83C402                   add  sp, 2
  5265 000027AC E9D500                   jmp @@retn
  5266                                  
  5267                                  ;-543   if (mode==2) {prs("\n mov  ");a(i); prs(", ax"); return;}
  5268                                  
  5269                                  @@doassign265:
  5270 000027AF 8B4604                   mov ax, [bp+4]
  5271 000027B2 83F802                   cmp ax, 2
  5272 000027B5 0F851E00                 jne @@doassign266
  5273 000027B9 68[A228]                 push doassign_2
  5274 000027BC E8EF26                   call prs
  5275 000027BF 83C402                   add  sp, 2
  5276 000027C2 FF7606                   push word [bp+6]
  5277 000027C5 E805D9                   call a
  5278 000027C8 83C402                   add  sp, 2
  5279 000027CB 68[AB28]                 push doassign_3
  5280 000027CE E8DD26                   call prs
  5281 000027D1 83C402                   add  sp, 2
  5282 000027D4 E9AD00                   jmp @@retn
  5283                                  
  5284                                  ;-544   if (ixarr) {  prs("\n mov bx, ");
  5285                                  
  5286                                  @@doassign266:
  5287 000027D7 8B4608                   mov ax, [bp+8]
  5288 000027DA 08C0                     or  al, al
  5289 000027DC 0F847500                 je @@doassign267
  5290 000027E0 68[B028]                 push doassign_4
  5291 000027E3 E8C826                   call prs
  5292 000027E6 83C402                   add  sp, 2
  5293                                  
  5294                                  ;-545     if(ixconst) prunsign1(ixarr); else v(ixarr);
  5295                                  
  5296 000027E9 8B460A                   mov ax, [bp+10]
  5297 000027EC 08C0                     or  al, al
  5298 000027EE 0F840C00                 je @@doassign268
  5299 000027F2 FF7608                   push word [bp+8]
  5300 000027F5 E81F28                   call prunsign1
  5301 000027F8 83C402                   add  sp, 2
  5302 000027FB E90900                   jmp @@doassign269
  5303                                  @@doassign268:
  5304 000027FE FF7608                   push word [bp+8]
  5305 00002801 E8F2D8                   call v
  5306 00002804 83C402                   add  sp, 2
  5307                                  
  5308                                  ;-546     if (wi==2) prs("\n shl bx, 1");
  5309                                  
  5310                                  @@doassign269:
  5311 00002807 A1[5B00]                 mov ax, [wi]
  5312 0000280A 83F802                   cmp ax, 2
  5313 0000280D 0F850900                 jne @@doassign270
  5314 00002811 68[BC28]                 push doassign_5
  5315 00002814 E89726                   call prs
  5316 00002817 83C402                   add  sp, 2
  5317                                  
  5318                                  ;-547     if (wi==4) prs("\n shl bx, 2");
  5319                                  
  5320                                  @@doassign270:
  5321 0000281A A1[5B00]                 mov ax, [wi]
  5322 0000281D 83F804                   cmp ax, 4
  5323 00002820 0F850900                 jne @@doassign271
  5324 00002824 68[C928]                 push doassign_6
  5325 00002827 E88426                   call prs
  5326 0000282A 83C402                   add  sp, 2
  5327                                  
  5328                                  ;-548     prs("\n mov ["); printName(i); prs("+bx], "); printpri(wi); return; }
  5329                                  
  5330                                  @@doassign271:
  5331 0000282D 68[D628]                 push doassign_7
  5332 00002830 E87B26                   call prs
  5333 00002833 83C402                   add  sp, 2
  5334 00002836 FF7606                   push word [bp+6]
  5335 00002839 E8D0E1                   call printName
  5336 0000283C 83C402                   add  sp, 2
  5337 0000283F 68[DF28]                 push doassign_8
  5338 00002842 E86926                   call prs
  5339 00002845 83C402                   add  sp, 2
  5340 00002848 FF36[5B00]               push word [wi]
  5341 0000284C E883F7                   call printpri
  5342 0000284F 83C402                   add  sp, 2
  5343 00002852 E92F00                   jmp @@retn
  5344                                  
  5345                                  ;-549   prs("\n mov "); pwi(wi); v(i); prs(", "); printpri(wi);
  5346                                  
  5347                                  @@doassign267:
  5348 00002855 68[E628]                 push doassign_9
  5349 00002858 E85326                   call prs
  5350 0000285B 83C402                   add  sp, 2
  5351 0000285E FF36[5B00]               push word [wi]
  5352 00002862 E822D9                   call pwi
  5353 00002865 83C402                   add  sp, 2
  5354 00002868 FF7606                   push word [bp+6]
  5355 0000286B E888D8                   call v
  5356 0000286E 83C402                   add  sp, 2
  5357 00002871 68[EE28]                 push doassign_10
  5358 00002874 E83726                   call prs
  5359 00002877 83C402                   add  sp, 2
  5360 0000287A FF36[5B00]               push word [wi]
  5361 0000287E E851F7                   call printpri
  5362 00002881 83C402                   add  sp, 2
  5363                                  
  5364                                  ;-550 }
  5365                                  
  5366                                  
  5367                                  ;-551 int domul(int ids) {
  5368                                  
  5369 00002884 C9                      @@retn: LEAVE
  5370 00002885 C3                       ret
  5371                                  ; ENDP
  5372 00002886 5C6E206D6F76202062-     doassign_0 db "\n mov  bx, ",0
  5373 0000288F 782C2000           
  5374 00002893 5C6E206D6F7620205B-     doassign_1 db "\n mov  [bx], ",0
  5375 0000289C 62785D2C2000       
  5376 000028A2 5C6E206D6F76202000      doassign_2 db "\n mov  ",0
  5377 000028AB 2C20617800              doassign_3 db ", ax",0
  5378 000028B0 5C6E206D6F76206278-     doassign_4 db "\n mov bx, ",0
  5379 000028B9 2C2000             
  5380 000028BC 5C6E2073686C206278-     doassign_5 db "\n shl bx, 1",0
  5381 000028C5 2C203100           
  5382 000028C9 5C6E2073686C206278-     doassign_6 db "\n shl bx, 2",0
  5383 000028D2 2C203200           
  5384 000028D6 5C6E206D6F76205B00      doassign_7 db "\n mov [",0
  5385 000028DF 2B62785D2C2000          doassign_8 db "+bx], ",0
  5386 000028E6 5C6E206D6F762000        doassign_9 db "\n mov ",0
  5387 000028EE 2C2000                  doassign_10 db ", ",0
  5388                                  
  5389                                  domul:  ; *** PROC ***
  5390                                  
  5391                                  ;-552   if (ids) rterm("imul"); else {
  5392                                  
  5393                                  ;Function : domul, Number of local variables: 1
  5394                                  ;   # type sign width line used address name   list of local variables
  5395                                  ;  200 var sign word   551 NULL bp+4    ids;
  5396 000028F1 C8000000                 ENTER  0,0
  5397 000028F5 8B4604                   mov ax, [bp+4]
  5398 000028F8 08C0                     or  al, al
  5399 000028FA 0F840C00                 je @@domul272
  5400 000028FE 68[4429]                 push domul_0
  5401 00002901 E87FFD                   call rterm
  5402 00002904 83C402                   add  sp, 2
  5403 00002907 E93800                   jmp @@domul273
  5404                                  @@domul272:
  5405                                  
  5406                                  ;-553   if (istoken(T_CONST)) {
  5407                                  
  5408 0000290A 680101                   push 257
  5409 0000290D E85824                   call istoken
  5410 00002910 83C402                   add  sp, 2
  5411 00002913 08C0                     or  al, al
  5412 00002915 0F842000                 je @@domul274
  5413                                  
  5414                                  ;-554       prs("\n mov ebx, "); prL(lexvalL); prs("\n mul ebx"); }
  5415                                  
  5416 00002919 68[4929]                 push domul_1
  5417 0000291C E88F25                   call prs
  5418 0000291F 83C402                   add  sp, 2
  5419 00002922 66FF36[4D00]             push dword [lexvalL]
  5420 00002927 E83736                   call prL
  5421 0000292A 83C404                   add  sp, 4
  5422 0000292D 68[5629]                 push domul_2
  5423 00002930 E87B25                   call prs
  5424 00002933 83C402                   add  sp, 2
  5425                                  
  5426                                  ;-555   else error1("with MUL only const number as multiplicator allowed"); } }
  5427                                  
  5428 00002936 E90900                   jmp @@domul275
  5429                                  @@domul274:
  5430 00002939 68[6129]                 push domul_3
  5431 0000293C E87028                   call error1
  5432 0000293F 83C402                   add  sp, 2
  5433                                  @@domul275:
  5434                                  @@domul273:
  5435                                  
  5436                                  ;-556 int doidiv(int ids) { int mode; int id1;
  5437 00002942 C9                       LEAVE
  5438 00002943 C3                       ret
  5439                                  ; ENDP
  5440 00002944 696D756C00              domul_0 db "imul",0
  5441 00002949 5C6E206D6F76206562-     domul_1 db "\n mov ebx, ",0
  5442 00002952 782C2000           
  5443 00002956 5C6E206D756C206562-     domul_2 db "\n mul ebx",0
  5444 0000295F 7800               
  5445 00002961 77697468204D554C20-     domul_3 db "with MUL only const number as multiplicator allowed",0
  5446 0000296A 6F6E6C7920636F6E73-
  5447 00002973 74206E756D62657220-
  5448 0000297C 6173206D756C746970-
  5449 00002985 6C696361746F722061-
  5450 0000298E 6C6C6F77656400     
  5451                                  
  5452                                  doidiv:  ; *** PROC ***
  5453                                  
  5454                                  ;-557   if (istoken(T_CONST)) {
  5455                                  
  5456                                  ;Function : doidiv, Number of local variables: 3
  5457                                  ;   # type sign width line used address name   list of local variables
  5458                                  ;  200 var sign word   556 NULL bp+4    ids
  5459                                  ;  201 var sign word   556 NULL bp-2    mode
  5460                                  ;  202 var sign word   556 NULL bp-4    id1;
  5461 00002995 C8040000                 ENTER  4,0
  5462 00002999 680101                   push 257
  5463 0000299C E8C923                   call istoken
  5464 0000299F 83C402                   add  sp, 2
  5465 000029A2 08C0                     or  al, al
  5466 000029A4 0F843500                 je @@doidiv276
  5467                                  
  5468                                  ;-558     prs("\n mov bx, "); prL(lexvalL);
  5469                                  
  5470 000029A8 68[5B2A]                 push doidiv_0
  5471 000029AB E80025                   call prs
  5472 000029AE 83C402                   add  sp, 2
  5473 000029B1 66FF36[4D00]             push dword [lexvalL]
  5474 000029B6 E8A835                   call prL
  5475 000029B9 83C404                   add  sp, 4
  5476                                  
  5477                                  ;-559     if (ids) prs("\n cwd\n idiv bx"); else prs("\n mov dx, 0\n div bx"); }
  5478                                  
  5479 000029BC 8B4604                   mov ax, [bp+4]
  5480 000029BF 08C0                     or  al, al
  5481 000029C1 0F840C00                 je @@doidiv277
  5482 000029C5 68[672A]                 push doidiv_1
  5483 000029C8 E8E324                   call prs
  5484 000029CB 83C402                   add  sp, 2
  5485 000029CE E90900                   jmp @@doidiv278
  5486                                  @@doidiv277:
  5487 000029D1 68[782A]                 push doidiv_2
  5488 000029D4 E8D724                   call prs
  5489 000029D7 83C402                   add  sp, 2
  5490                                  @@doidiv278:
  5491                                  
  5492                                  ;-560   else {
  5493                                  
  5494 000029DA E97C00                   jmp @@doidiv279
  5495                                  @@doidiv276:
  5496                                  
  5497                                  ;-561     mode=typeName(); id1=searchname();
  5498                                  
  5499 000029DD E876E1                   call typeName
  5500 000029E0 8946FE                   mov word [bp-2], ax
  5501 000029E3 E890E0                   call searchname
  5502 000029E6 8946FC                   mov word [bp-4], ax
  5503                                  
  5504                                  ;-562     if (mode) error1("only const number or int as divisor allowed");
  5505                                  
  5506 000029E9 8B46FE                   mov ax, [bp-2]
  5507 000029EC 08C0                     or  al, al
  5508 000029EE 0F840900                 je @@doidiv280
  5509 000029F2 68[8E2A]                 push doidiv_3
  5510 000029F5 E8B727                   call error1
  5511 000029F8 83C402                   add  sp, 2
  5512                                  
  5513                                  ;-563     gettypes(id1);
  5514                                  
  5515                                  @@doidiv280:
  5516 000029FB FF76FC                   push word [bp-4]
  5517 000029FE E82ADF                   call gettypes
  5518 00002A01 83C402                   add  sp, 2
  5519                                  
  5520                                  ;-564     if (typei) error1("only int as simple var divisor allowed");
  5521                                  
  5522 00002A04 A1[5300]                 mov ax, [typei]
  5523 00002A07 08C0                     or  al, al
  5524 00002A09 0F840900                 je @@doidiv281
  5525 00002A0D 68[BA2A]                 push doidiv_4
  5526 00002A10 E89C27                   call error1
  5527 00002A13 83C402                   add  sp, 2
  5528                                  
  5529                                  ;-565     if (wi!=2) error1("only int, no byte as divisor allowed");
  5530                                  
  5531                                  @@doidiv281:
  5532 00002A16 A1[5B00]                 mov ax, [wi]
  5533 00002A19 83F802                   cmp ax, 2
  5534 00002A1C 0F840900                 je  @@doidiv282
  5535 00002A20 68[E12A]                 push doidiv_5
  5536 00002A23 E88927                   call error1
  5537 00002A26 83C402                   add  sp, 2
  5538                                  
  5539                                  ;-566     prs("\n mov bx, "); v(id1);
  5540                                  
  5541                                  @@doidiv282:
  5542 00002A29 68[062B]                 push doidiv_6
  5543 00002A2C E87F24                   call prs
  5544 00002A2F 83C402                   add  sp, 2
  5545 00002A32 FF76FC                   push word [bp-4]
  5546 00002A35 E8BED6                   call v
  5547 00002A38 83C402                   add  sp, 2
  5548                                  
  5549                                  ;-567     if (ids) prs("\n cwd\n idiv bx"); else prs("\n mov dx, 0\n div bx"); }
  5550                                  
  5551 00002A3B 8B4604                   mov ax, [bp+4]
  5552 00002A3E 08C0                     or  al, al
  5553 00002A40 0F840C00                 je @@doidiv283
  5554 00002A44 68[122B]                 push doidiv_7
  5555 00002A47 E86424                   call prs
  5556 00002A4A 83C402                   add  sp, 2
  5557 00002A4D E90900                   jmp @@doidiv284
  5558                                  @@doidiv283:
  5559 00002A50 68[232B]                 push doidiv_8
  5560 00002A53 E85824                   call prs
  5561 00002A56 83C402                   add  sp, 2
  5562                                  @@doidiv284:
  5563                                  
  5564                                  ;-568 }
  5565                                  
  5566                                  @@doidiv279:
  5567                                  
  5568                                  ;-569 int domod(int ids) { doidiv(ids); prs("\n mov ax, dx"); }
  5569 00002A59 C9                       LEAVE
  5570 00002A5A C3                       ret
  5571                                  ; ENDP
  5572 00002A5B 5C6E206D6F76206278-     doidiv_0 db "\n mov bx, ",0
  5573 00002A64 2C2000             
  5574 00002A67 5C6E206377645C6E20-     doidiv_1 db "\n cwd\n idiv bx",0
  5575 00002A70 6964697620627800   
  5576 00002A78 5C6E206D6F76206478-     doidiv_2 db "\n mov dx, 0\n div bx",0
  5577 00002A81 2C20305C6E20646976-
  5578 00002A8A 20627800           
  5579 00002A8E 6F6E6C7920636F6E73-     doidiv_3 db "only const number or int as divisor allowed",0
  5580 00002A97 74206E756D62657220-
  5581 00002AA0 6F7220696E74206173-
  5582 00002AA9 2064697669736F7220-
  5583 00002AB2 616C6C6F77656400   
  5584 00002ABA 6F6E6C7920696E7420-     doidiv_4 db "only int as simple var divisor allowed",0
  5585 00002AC3 61732073696D706C65-
  5586 00002ACC 207661722064697669-
  5587 00002AD5 736F7220616C6C6F77-
  5588 00002ADE 656400             
  5589 00002AE1 6F6E6C7920696E742C-     doidiv_5 db "only int, no byte as divisor allowed",0
  5590 00002AEA 206E6F206279746520-
  5591 00002AF3 61732064697669736F-
  5592 00002AFC 7220616C6C6F776564-
  5593 00002B05 00                 
  5594 00002B06 5C6E206D6F76206278-     doidiv_6 db "\n mov bx, ",0
  5595 00002B0F 2C2000             
  5596 00002B12 5C6E206377645C6E20-     doidiv_7 db "\n cwd\n idiv bx",0
  5597 00002B1B 6964697620627800   
  5598 00002B23 5C6E206D6F76206478-     doidiv_8 db "\n mov dx, 0\n div bx",0
  5599 00002B2C 2C20305C6E20646976-
  5600 00002B35 20627800           
  5601                                  
  5602                                  domod:  ; *** PROC ***
  5603                                  ;Function : domod, Number of local variables: 1
  5604                                  ;   # type sign width line used address name   list of local variables
  5605                                  ;  200 var sign word   569 NULL bp+4    ids;
  5606 00002B39 C8000000                 ENTER  0,0
  5607 00002B3D FF7604                   push word [bp+4]
  5608 00002B40 E852FE                   call doidiv
  5609 00002B43 83C402                   add  sp, 2
  5610 00002B46 68[512B]                 push domod_0
  5611 00002B49 E86223                   call prs
  5612 00002B4C 83C402                   add  sp, 2
  5613                                  
  5614                                  ;-570 
  5615                                  
  5616                                  
  5617                                  ;-571 int docalltype[10]; int docallvalue[10];
  5618 00002B4F C9                       LEAVE
  5619 00002B50 C3                       ret
  5620                                  ; ENDP
  5621 00002B51 5C6E206D6F76206178-     domod_0 db "\n mov ax, dx",0
  5622 00002B5A 2C20647800         
  5623                                  section .bss
  5624                                  absolute 46864
  5625 0000B710 <res 00000014>          docalltype resw 10
  5626                                  section .text
  5627                                  section .bss
  5628                                  absolute 46884
  5629 0000B724 <res 00000014>          docallvalue resw 10
  5630                                  section .text
  5631                                  
  5632                                  ;-572 char procname[IDLENMAX]; // 1=CONST, 2=String, 3=&, 4=Name 5=register
  5633                                  
  5634                                  section .bss
  5635                                  absolute 46904
  5636 0000B738 <res 00000010>          procname resb 16
  5637                                  section .text
  5638                                  
  5639                                  ;-573 
  5640                                  
  5641                                  
  5642                                  ;-574 void docall1() {int i; int narg; int t0; int n0;  int sz32;
  5643                                  
  5644                                  
  5645                                  docall1:  ; *** PROC ***
  5646                                  
  5647                                  ;-575   narg=0;  sz32=0;
  5648                                  
  5649                                  ;Function : docall1, Number of local variables: 5
  5650                                  ;   # type sign width line used address name   list of local variables
  5651                                  ;  200 var sign word   574 NULL bp-2    i
  5652                                  ;  201 var sign word   574 NULL bp-4    narg
  5653                                  ;  202 var sign word   574 NULL bp-6    t0
  5654                                  ;  203 var sign word   574 NULL bp-8    n0
  5655                                  ;  204 var sign word   574 NULL bp-10    sz32;
  5656 00002B5F C80A0000                 ENTER  10,0
  5657 00002B63 66B800000000             mov eax, 0
  5658 00002B69 8946FC                   mov word [bp-4], ax
  5659 00002B6C 66B800000000             mov eax, 0
  5660 00002B72 8946F6                   mov word [bp-10], ax
  5661                                  
  5662                                  ;-576   checknamelen();
  5663                                  
  5664 00002B75 E8C3D5                   call checknamelen
  5665                                  
  5666                                  ;-577   strcpy(&procname, symbol);
  5667                                  
  5668 00002B78 8D066E81                 lea  ax, [symbol]
  5669 00002B7C 50                       push ax
  5670 00002B7D 8D0638B7                 lea  ax, [procname]
  5671 00002B81 50                       push ax
  5672 00002B82 E82336                   call strcpy
  5673 00002B85 83C404                   add  sp, 4
  5674                                  
  5675                                  ;-578   storecall();
  5676                                  
  5677 00002B88 E82FE1                   call storecall
  5678                                  
  5679                                  ;-579   expect('(');
  5680                                  
  5681 00002B8B 6A28                     push 40
  5682 00002B8D E80022                   call expect
  5683 00002B90 83C402                   add  sp, 2
  5684                                  
  5685                                  ;-580 	if (istoken(')') ==0 ) {
  5686                                  
  5687 00002B93 6A29                     push 41
  5688 00002B95 E8D021                   call istoken
  5689 00002B98 83C402                   add  sp, 2
  5690 00002B9B 83F800                   cmp ax, 0
  5691 00002B9E 0F85FB02                 jne @@docall1285
  5692                                  
  5693                                  ;-581 	  do { narg++;
  5694                                  
  5695                                  @@docall1286:
  5696 00002BA2 FF46FC                   inc  word [bp-4]
  5697                                  
  5698                                  ;-582 	    if (narg >9 ) error1("Max. 9 parameters");  t0=0;
  5699                                  
  5700 00002BA5 8B46FC                   mov ax, [bp-4]
  5701 00002BA8 83F809                   cmp ax, 9
  5702 00002BAB 0F8E0900                 jle @@docall1287
  5703 00002BAF 68[E12E]                 push docall1_0
  5704 00002BB2 E8FA25                   call error1
  5705 00002BB5 83C402                   add  sp, 2
  5706                                  @@docall1287:
  5707 00002BB8 66B800000000             mov eax, 0
  5708 00002BBE 8946FA                   mov word [bp-6], ax
  5709                                  
  5710                                  ;-583       if(istoken(T_CONST)) {t0=1; n0=lexvalL; }
  5711                                  
  5712 00002BC1 680101                   push 257
  5713 00002BC4 E8A121                   call istoken
  5714 00002BC7 83C402                   add  sp, 2
  5715 00002BCA 08C0                     or  al, al
  5716 00002BCC 0F841000                 je @@docall1288
  5717 00002BD0 66B801000000             mov eax, 1
  5718 00002BD6 8946FA                   mov word [bp-6], ax
  5719 00002BD9 66A1[4D00]               mov eax, [lexvalL]
  5720 00002BDD 8946F8                   mov word [bp-8], ax
  5721                                  
  5722                                  ;-584       if(istoken(T_STRING)){t0=2; n0=nconst;
  5723                                  
  5724                                  @@docall1288:
  5725 00002BE0 680201                   push 258
  5726 00002BE3 E88221                   call istoken
  5727 00002BE6 83C402                   add  sp, 2
  5728 00002BE9 08C0                     or  al, al
  5729 00002BEB 0F846600                 je @@docall1289
  5730 00002BEF 66B802000000             mov eax, 2
  5731 00002BF5 8946FA                   mov word [bp-6], ax
  5732 00002BF8 A1[4500]                 mov ax, [nconst]
  5733 00002BFB 8946F8                   mov word [bp-8], ax
  5734                                  
  5735                                  ;-585         eprs("\n"); eprs(fname); eprc(95);eprnum(nconst);eprs(" db ");
  5736                                  
  5737 00002BFE 68[F32E]                 push docall1_1
  5738 00002C01 E80D22                   call eprs
  5739 00002C04 83C402                   add  sp, 2
  5740 00002C07 8D06EE81                 lea  ax, [fname]
  5741 00002C0B 50                       push ax
  5742 00002C0C E80222                   call eprs
  5743 00002C0F 83C402                   add  sp, 2
  5744 00002C12 6A5F                     push 95
  5745 00002C14 E8E721                   call eprc
  5746 00002C17 83C402                   add  sp, 2
  5747 00002C1A FF36[4500]               push word [nconst]
  5748 00002C1E E83023                   call eprnum
  5749 00002C21 83C402                   add  sp, 2
  5750 00002C24 68[F62E]                 push docall1_2
  5751 00002C27 E8E721                   call eprs
  5752 00002C2A 83C402                   add  sp, 2
  5753                                  
  5754                                  ;-586         eprc(34);eprs(symbol);eprc(34);eprs(",0"); nconst++; }
  5755                                  
  5756 00002C2D 6A22                     push 34
  5757 00002C2F E8CC21                   call eprc
  5758 00002C32 83C402                   add  sp, 2
  5759 00002C35 8D066E81                 lea  ax, [symbol]
  5760 00002C39 50                       push ax
  5761 00002C3A E8D421                   call eprs
  5762 00002C3D 83C402                   add  sp, 2
  5763 00002C40 6A22                     push 34
  5764 00002C42 E8B921                   call eprc
  5765 00002C45 83C402                   add  sp, 2
  5766 00002C48 68[FB2E]                 push docall1_3
  5767 00002C4B E8C321                   call eprs
  5768 00002C4E 83C402                   add  sp, 2
  5769 00002C51 FF06[4500]               inc  word [nconst]
  5770                                  
  5771                                  ;-587       if(istoken('&'))     {t0=3; name1(); n0=searchname();}
  5772                                  
  5773                                  @@docall1289:
  5774 00002C55 6A26                     push 38
  5775 00002C57 E80E21                   call istoken
  5776 00002C5A 83C402                   add  sp, 2
  5777 00002C5D 08C0                     or  al, al
  5778 00002C5F 0F841200                 je @@docall1290
  5779 00002C63 66B803000000             mov eax, 3
  5780 00002C69 8946FA                   mov word [bp-6], ax
  5781 00002C6C E823E0                   call name1
  5782 00002C6F E804DE                   call searchname
  5783 00002C72 8946F8                   mov word [bp-8], ax
  5784                                  
  5785                                  ;-588       if(istoken(T_NAME))  { n0=checkreg();
  5786                                  
  5787                                  @@docall1290:
  5788 00002C75 680001                   push 256
  5789 00002C78 E8ED20                   call istoken
  5790 00002C7B 83C402                   add  sp, 2
  5791 00002C7E 08C0                     or  al, al
  5792 00002C80 0F845100                 je @@docall1291
  5793 00002C84 E84AEE                   call checkreg
  5794 00002C87 8946F8                   mov word [bp-8], ax
  5795                                  
  5796                                  ;-589         if (n0) t0=5;
  5797                                  
  5798 00002C8A 8B46F8                   mov ax, [bp-8]
  5799 00002C8D 08C0                     or  al, al
  5800 00002C8F 0F840C00                 je @@docall1292
  5801 00002C93 66B805000000             mov eax, 5
  5802 00002C99 8946FA                   mov word [bp-6], ax
  5803                                  
  5804                                  ;-590         else {t0=4; n0=searchname();
  5805                                  
  5806 00002C9C E93600                   jmp @@docall1293
  5807                                  @@docall1292:
  5808 00002C9F 66B804000000             mov eax, 4
  5809 00002CA5 8946FA                   mov word [bp-6], ax
  5810 00002CA8 E8CBDD                   call searchname
  5811 00002CAB 8946F8                   mov word [bp-8], ax
  5812                                  
  5813                                  ;-591           p1=&GType; p1=p1+n0; if (*p1=='&') t0=3; }  }
  5814                                  
  5815 00002CAE B8B782                   mov ax, GType
  5816 00002CB1 A3[C000]                 mov word [p1], ax
  5817 00002CB4 A1[C000]                 mov ax, [p1]
  5818 00002CB7 0346F8                   add ax, [bp-8]
  5819 00002CBA A3[C000]                 mov word [p1], ax
  5820 00002CBD 8B1E[C000]               mov bx, [p1]
  5821 00002CC1 8A07                     mov al, [bx]
  5822 00002CC3 B400                     mov ah, 0
  5823 00002CC5 83F826                   cmp ax, 38
  5824 00002CC8 0F850900                 jne @@docall1294
  5825 00002CCC 66B803000000             mov eax, 3
  5826 00002CD2 8946FA                   mov word [bp-6], ax
  5827                                  @@docall1294:
  5828                                  @@docall1293:
  5829                                  
  5830                                  ;-592       if (t0==0) error1("parameter not recognized (no * allowed)");
  5831                                  
  5832                                  @@docall1291:
  5833 00002CD5 8B46FA                   mov ax, [bp-6]
  5834 00002CD8 83F800                   cmp ax, 0
  5835 00002CDB 0F850900                 jne @@docall1295
  5836 00002CDF 68[FE2E]                 push docall1_4
  5837 00002CE2 E8CA24                   call error1
  5838 00002CE5 83C402                   add  sp, 2
  5839                                  
  5840                                  ;-593       docalltype [narg] = t0;
  5841                                  
  5842                                  @@docall1295:
  5843 00002CE8 8B46FA                   mov ax, [bp-6]
  5844 00002CEB 8B5EFC                   mov bx, [bp-4]
  5845 00002CEE D1E3                     shl bx, 1
  5846 00002CF0 898710B7                 mov [docalltype+bx], ax
  5847                                  
  5848                                  ;-594       docallvalue[narg] = n0;
  5849                                  
  5850 00002CF4 8B46F8                   mov ax, [bp-8]
  5851 00002CF7 8B5EFC                   mov bx, [bp-4]
  5852 00002CFA D1E3                     shl bx, 1
  5853 00002CFC 898724B7                 mov [docallvalue+bx], ax
  5854                                  
  5855                                  ;-595     } while (istoken(','));
  5856                                  
  5857 00002D00 6A2C                     push 44
  5858 00002D02 E86320                   call istoken
  5859 00002D05 83C402                   add  sp, 2
  5860 00002D08 08C0                     or  al, al
  5861 00002D0A 0F840300                 je @@docall1296
  5862 00002D0E E991FE                   jmp @@docall1286
  5863                                  @@docall1296:
  5864                                  
  5865                                  ;-596     
  5866                                  
  5867                                  
  5868                                  ;-597   	expect(')');  i=narg;
  5869                                  
  5870 00002D11 6A29                     push 41
  5871 00002D13 E87A20                   call expect
  5872 00002D16 83C402                   add  sp, 2
  5873 00002D19 8B46FC                   mov ax, [bp-4]
  5874 00002D1C 8946FE                   mov word [bp-2], ax
  5875                                  
  5876                                  ;-598     do {
  5877                                  
  5878                                  @@docall1297:
  5879                                  
  5880                                  ;-599       t0 = docalltype [i];
  5881                                  
  5882 00002D1F 8B5EFE                   mov bx, [bp-2]
  5883 00002D22 D1E3                     shl bx, 1
  5884 00002D24 8B8710B7                 mov ax, [docalltype + bx]
  5885 00002D28 8946FA                   mov word [bp-6], ax
  5886                                  
  5887                                  ;-600       n0 = docallvalue[i];     
  5888                                  
  5889 00002D2B 8B5EFE                   mov bx, [bp-2]
  5890 00002D2E D1E3                     shl bx, 1
  5891 00002D30 8B8724B7                 mov ax, [docallvalue + bx]
  5892 00002D34 8946F8                   mov word [bp-8], ax
  5893                                  
  5894                                  ;-601       if(t0==1){ prs("\n push "); pint1(n0);}
  5895                                  
  5896 00002D37 8B46FA                   mov ax, [bp-6]
  5897 00002D3A 83F801                   cmp ax, 1
  5898 00002D3D 0F851200                 jne @@docall1298
  5899 00002D41 68[262F]                 push docall1_5
  5900 00002D44 E86721                   call prs
  5901 00002D47 83C402                   add  sp, 2
  5902 00002D4A FF76F8                   push word [bp-8]
  5903 00002D4D E86422                   call pint1
  5904 00002D50 83C402                   add  sp, 2
  5905                                  
  5906                                  ;-602       if(t0==2){ prs("\n push "); if(NASM==0) prs("offset ");
  5907                                  
  5908                                  @@docall1298:
  5909 00002D53 8B46FA                   mov ax, [bp-6]
  5910 00002D56 83F802                   cmp ax, 2
  5911 00002D59 0F853700                 jne @@docall1299
  5912 00002D5D 68[2F2F]                 push docall1_6
  5913 00002D60 E84B21                   call prs
  5914 00002D63 83C402                   add  sp, 2
  5915 00002D66 A0[1500]                 mov al, [NASM]
  5916 00002D69 3C00                     cmp al, 0
  5917 00002D6B 0F850900                 jne @@docall1300
  5918 00002D6F 68[382F]                 push docall1_7
  5919 00002D72 E83921                   call prs
  5920 00002D75 83C402                   add  sp, 2
  5921                                  
  5922                                  ;-603         prs(fname);prc(95);pint1(n0);}
  5923                                  
  5924                                  @@docall1300:
  5925 00002D78 8D06EE81                 lea  ax, [fname]
  5926 00002D7C 50                       push ax
  5927 00002D7D E82E21                   call prs
  5928 00002D80 83C402                   add  sp, 2
  5929 00002D83 6A5F                     push 95
  5930 00002D85 E8B720                   call prc
  5931 00002D88 83C402                   add  sp, 2
  5932 00002D8B FF76F8                   push word [bp-8]
  5933 00002D8E E82322                   call pint1
  5934 00002D91 83C402                   add  sp, 2
  5935                                  
  5936                                  ;-604       if(t0==3){ prs("\n lea  ax, "); if(NASM==0)prs("word ptr ");  v(n0);
  5937                                  
  5938                                  @@docall1299:
  5939 00002D94 8B46FA                   mov ax, [bp-6]
  5940 00002D97 83F803                   cmp ax, 3
  5941 00002D9A 0F852D00                 jne @@docall1301
  5942 00002D9E 68[402F]                 push docall1_8
  5943 00002DA1 E80A21                   call prs
  5944 00002DA4 83C402                   add  sp, 2
  5945 00002DA7 A0[1500]                 mov al, [NASM]
  5946 00002DAA 3C00                     cmp al, 0
  5947 00002DAC 0F850900                 jne @@docall1302
  5948 00002DB0 68[4D2F]                 push docall1_9
  5949 00002DB3 E8F820                   call prs
  5950 00002DB6 83C402                   add  sp, 2
  5951                                  @@docall1302:
  5952 00002DB9 FF76F8                   push word [bp-8]
  5953 00002DBC E837D3                   call v
  5954 00002DBF 83C402                   add  sp, 2
  5955                                  
  5956                                  ;-605         prs("\n push ax");}
  5957                                  
  5958 00002DC2 68[572F]                 push docall1_10
  5959 00002DC5 E8E620                   call prs
  5960 00002DC8 83C402                   add  sp, 2
  5961                                  
  5962                                  ;-606       if(t0==4){ gettypes(n0);
  5963                                  
  5964                                  @@docall1301:
  5965 00002DCB 8B46FA                   mov ax, [bp-6]
  5966 00002DCE 83F804                   cmp ax, 4
  5967 00002DD1 0F858C00                 jne @@docall1303
  5968 00002DD5 FF76F8                   push word [bp-8]
  5969 00002DD8 E850DB                   call gettypes
  5970 00002DDB 83C402                   add  sp, 2
  5971                                  
  5972                                  ;-607         if(wi==4)      { prs("\n push "); pwi(wi); v(n0); sz32+=2; }
  5973                                  
  5974 00002DDE A1[5B00]                 mov ax, [wi]
  5975 00002DE1 83F804                   cmp ax, 4
  5976 00002DE4 0F852300                 jne @@docall1304
  5977 00002DE8 68[622F]                 push docall1_11
  5978 00002DEB E8C020                   call prs
  5979 00002DEE 83C402                   add  sp, 2
  5980 00002DF1 FF36[5B00]               push word [wi]
  5981 00002DF5 E88FD3                   call pwi
  5982 00002DF8 83C402                   add  sp, 2
  5983 00002DFB FF76F8                   push word [bp-8]
  5984 00002DFE E8F5D2                   call v
  5985 00002E01 83C402                   add  sp, 2
  5986 00002E04 8346F602                 add  word [bp-10], 2
  5987                                  
  5988                                  ;-608         else if(wi==2) { prs("\n push "); pwi(wi); v(n0);}
  5989                                  
  5990 00002E08 E95600                   jmp @@docall1305
  5991                                  @@docall1304:
  5992 00002E0B A1[5B00]                 mov ax, [wi]
  5993 00002E0E 83F802                   cmp ax, 2
  5994 00002E11 0F851F00                 jne @@docall1306
  5995 00002E15 68[6B2F]                 push docall1_12
  5996 00002E18 E89320                   call prs
  5997 00002E1B 83C402                   add  sp, 2
  5998 00002E1E FF36[5B00]               push word [wi]
  5999 00002E22 E862D3                   call pwi
  6000 00002E25 83C402                   add  sp, 2
  6001 00002E28 FF76F8                   push word [bp-8]
  6002 00002E2B E8C8D2                   call v
  6003 00002E2E 83C402                   add  sp, 2
  6004                                  
  6005                                  ;-609         else { prs("\n mov al, byte ");  if(NASM==0)prs("ptr "); v(n0);
  6006                                  
  6007 00002E31 E92D00                   jmp @@docall1307
  6008                                  @@docall1306:
  6009 00002E34 68[742F]                 push docall1_13
  6010 00002E37 E87420                   call prs
  6011 00002E3A 83C402                   add  sp, 2
  6012 00002E3D A0[1500]                 mov al, [NASM]
  6013 00002E40 3C00                     cmp al, 0
  6014 00002E42 0F850900                 jne @@docall1308
  6015 00002E46 68[852F]                 push docall1_14
  6016 00002E49 E86220                   call prs
  6017 00002E4C 83C402                   add  sp, 2
  6018                                  @@docall1308:
  6019 00002E4F FF76F8                   push word [bp-8]
  6020 00002E52 E8A1D2                   call v
  6021 00002E55 83C402                   add  sp, 2
  6022                                  
  6023                                  ;-610         prs("\n mov ah, 0\n push ax"); } }
  6024                                  
  6025 00002E58 68[8A2F]                 push docall1_15
  6026 00002E5B E85020                   call prs
  6027 00002E5E 83C402                   add  sp, 2
  6028                                  @@docall1307:
  6029                                  @@docall1305:
  6030                                  
  6031                                  ;-611       if(t0==5){ prs("\n push "); printreg(n0, 0); if (n0 >= 47) sz32+=2;  }
  6032                                  
  6033                                  @@docall1303:
  6034 00002E61 8B46FA                   mov ax, [bp-6]
  6035 00002E64 83F805                   cmp ax, 5
  6036 00002E67 0F852200                 jne @@docall1309
  6037 00002E6B 68[A12F]                 push docall1_16
  6038 00002E6E E83D20                   call prs
  6039 00002E71 83C402                   add  sp, 2
  6040 00002E74 6A00                     push 0
  6041 00002E76 FF76F8                   push word [bp-8]
  6042 00002E79 E8C9F0                   call printreg
  6043 00002E7C 83C404                   add  sp, 4
  6044 00002E7F 8B46F8                   mov ax, [bp-8]
  6045 00002E82 83F82F                   cmp ax, 47 ;unsigned : 1
  6046 00002E85 0F8C0400                 jl  @@docall1310
  6047 00002E89 8346F602                 add  word [bp-10], 2
  6048                                  @@docall1310:
  6049                                  
  6050                                  ;-612    i--; } while (i > 0);  }
  6051                                  
  6052                                  @@docall1309:
  6053 00002E8D FF4EFE                   dec  word [bp-2]
  6054 00002E90 8B46FE                   mov ax, [bp-2]
  6055 00002E93 83F800                   cmp ax, 0
  6056 00002E96 0F8E0300                 jle @@docall1311
  6057 00002E9A E982FE                   jmp @@docall1297
  6058                                  @@docall1311:
  6059                                  
  6060                                  ;-613 	 prs("\n call "); prs(&procname);
  6061                                  
  6062                                  @@docall1285:
  6063 00002E9D 68[AA2F]                 push docall1_17
  6064 00002EA0 E80B20                   call prs
  6065 00002EA3 83C402                   add  sp, 2
  6066 00002EA6 8D0638B7                 lea  ax, [procname]
  6067 00002EAA 50                       push ax
  6068 00002EAB E80020                   call prs
  6069 00002EAE 83C402                   add  sp, 2
  6070                                  
  6071                                  ;-614 	 if (narg>0) {prs("\n add  sp, ");
  6072                                  
  6073 00002EB1 8B46FC                   mov ax, [bp-4]
  6074 00002EB4 83F800                   cmp ax, 0
  6075 00002EB7 0F8E2400                 jle @@docall1312
  6076 00002EBB 68[B32F]                 push docall1_18
  6077 00002EBE E8ED1F                   call prs
  6078 00002EC1 83C402                   add  sp, 2
  6079                                  
  6080                                  ;-615      narg=narg+narg; narg=narg+sz32; pint1(narg); } }
  6081                                  
  6082 00002EC4 8B46FC                   mov ax, [bp-4]
  6083 00002EC7 0346FC                   add ax, [bp-4]
  6084 00002ECA 8946FC                   mov word [bp-4], ax
  6085 00002ECD 8B46FC                   mov ax, [bp-4]
  6086 00002ED0 0346F6                   add ax, [bp-10]
  6087 00002ED3 8946FC                   mov word [bp-4], ax
  6088 00002ED6 FF76FC                   push word [bp-4]
  6089 00002ED9 E8D820                   call pint1
  6090 00002EDC 83C402                   add  sp, 2
  6091                                  @@docall1312:
  6092                                  
  6093                                  ;-616 //********************************************************************
  6094                                  
  6095                                  
  6096                                  ;-617 int main() { getarg();
  6097 00002EDF C9                       LEAVE
  6098 00002EE0 C3                       ret
  6099                                  ; ENDP
  6100 00002EE1 4D61782E2039207061-     docall1_0 db "Max. 9 parameters",0
  6101 00002EEA 72616D657465727300 
  6102 00002EF3 5C6E00                  docall1_1 db "\n",0
  6103 00002EF6 2064622000              docall1_2 db " db ",0
  6104 00002EFB 2C3000                  docall1_3 db ",0",0
  6105 00002EFE 706172616D65746572-     docall1_4 db "parameter not recognized (no * allowed)",0
  6106 00002F07 206E6F74207265636F-
  6107 00002F10 676E697A656420286E-
  6108 00002F19 6F202A20616C6C6F77-
  6109 00002F22 65642900           
  6110 00002F26 5C6E20707573682000      docall1_5 db "\n push ",0
  6111 00002F2F 5C6E20707573682000      docall1_6 db "\n push ",0
  6112 00002F38 6F66667365742000        docall1_7 db "offset ",0
  6113 00002F40 5C6E206C6561202061-     docall1_8 db "\n lea  ax, ",0
  6114 00002F49 782C2000           
  6115 00002F4D 776F72642070747220-     docall1_9 db "word ptr ",0
  6116 00002F56 00                 
  6117 00002F57 5C6E20707573682061-     docall1_10 db "\n push ax",0
  6118 00002F60 7800               
  6119 00002F62 5C6E20707573682000      docall1_11 db "\n push ",0
  6120 00002F6B 5C6E20707573682000      docall1_12 db "\n push ",0
  6121 00002F74 5C6E206D6F7620616C-     docall1_13 db "\n mov al, byte ",0
  6122 00002F7D 2C20627974652000   
  6123 00002F85 7074722000              docall1_14 db "ptr ",0
  6124 00002F8A 5C6E206D6F76206168-     docall1_15 db "\n mov ah, 0\n push ax",0
  6125 00002F93 2C20305C6E20707573-
  6126 00002F9C 6820617800         
  6127 00002FA1 5C6E20707573682000      docall1_16 db "\n push ",0
  6128 00002FAA 5C6E2063616C6C2000      docall1_17 db "\n call ",0
  6129 00002FB3 5C6E20616464202073-     docall1_18 db "\n add  sp, ",0
  6130 00002FBC 702C2000           
  6131                                  
  6132                                  main:  ; *** PROC ***
  6133 00002FC0 E8B700                   call getarg
  6134                                  
  6135                                  ;-618   memresize(4096);       if (DOS_ERR) error1("memresize");
  6136                                  
  6137 00002FC3 680010                   push 4096
  6138 00002FC6 E8302E                   call memresize
  6139 00002FC9 83C402                   add  sp, 2
  6140 00002FCC A1[C200]                 mov ax, [DOS_ERR]
  6141 00002FCF 08C0                     or  al, al
  6142 00002FD1 0F840900                 je @@main313
  6143 00002FD5 68[2D30]                 push main_0
  6144 00002FD8 E8D421                   call error1
  6145 00002FDB 83C402                   add  sp, 2
  6146                                  
  6147                                  ;-619   segE=memalloc(4096);   if (DOS_ERR) error1("alloc memory");
  6148                                  
  6149                                  @@main313:
  6150 00002FDE 680010                   push 4096
  6151 00002FE1 E82E2E                   call memalloc
  6152 00002FE4 83C402                   add  sp, 2
  6153 00002FE7 A3[B800]                 mov word [segE], ax
  6154 00002FEA A1[C200]                 mov ax, [DOS_ERR]
  6155 00002FED 08C0                     or  al, al
  6156 00002FEF 0F840900                 je @@main314
  6157 00002FF3 68[3730]                 push main_1
  6158 00002FF6 E8B621                   call error1
  6159 00002FF9 83C402                   add  sp, 2
  6160                                  
  6161                                  ;-620   CNameTop=0;            getfirstchar();
  6162                                  
  6163                                  @@main314:
  6164 00002FFC 66B800000000             mov eax, 0
  6165 00003002 A3[B400]                 mov word [CNameTop], ax
  6166 00003005 E85500                   call getfirstchar
  6167                                  
  6168                                  ;-621   cputs("Compiling, ");   parse(); cputs("Check calls ");
  6169                                  
  6170 00003008 68[4430]                 push main_2
  6171 0000300B E89030                   call cputs
  6172 0000300E 83C402                   add  sp, 2
  6173 00003011 E81706                   call parse
  6174 00003014 68[5030]                 push main_3
  6175 00003017 E88430                   call cputs
  6176 0000301A 83C402                   add  sp, 2
  6177                                  
  6178                                  ;-622   callrecursive=0; checkcalls(); epilog();
  6179                                  
  6180 0000301D 66B800000000             mov eax, 0
  6181 00003023 A3[4B00]                 mov word [callrecursive], ax
  6182 00003026 E8B406                   call checkcalls
  6183 00003029 E8D828                   call epilog
  6184                                  
  6185                                  ;-623 }
  6186                                  
  6187                                  
  6188                                  ;-624 int getfirstchar() { fgetsp=&fgetsdest; *fgetsp=0; thechar=fgets1(); }
  6189                                  
  6190 0000302C C3                       ret
  6191                                  ; ENDP
  6192 0000302D 6D656D726573697A65-     main_0 db "memresize",0
  6193 00003036 00                 
  6194 00003037 616C6C6F63206D656D-     main_1 db "alloc memory",0
  6195 00003040 6F727900           
  6196 00003044 436F6D70696C696E67-     main_2 db "Compiling, ",0
  6197 0000304D 2C2000             
  6198 00003050 436865636B2063616C-     main_3 db "Check calls ",0
  6199 00003059 6C732000           
  6200                                  
  6201                                  getfirstchar:  ; *** PROC ***
  6202 0000305D B847B6                   mov ax, fgetsdest
  6203 00003060 A3[B600]                 mov word [fgetsp], ax
  6204 00003063 66B800000000             mov eax, 0
  6205 00003069 8B1E[B600]               mov  bx, [fgetsp]
  6206 0000306D 8807                     mov  [bx], al
  6207 0000306F E83E20                   call fgets1
  6208 00003072 A2[4200]                 mov byte [thechar], al
  6209                                  
  6210                                  ;-625 char *arglen=0x80; char *argv=0x82;
  6211                                  
  6212 00003075 C3                       ret
  6213                                  ; ENDP
  6214 00003076 8000                    arglen dw 128
  6215 00003078 8200                    argv dw 130
  6216                                  
  6217                                  ;-626 
  6218                                  
  6219                                  
  6220                                  ;-627 int getarg() { int arglen1; int i; char *c;
  6221                                  
  6222                                  
  6223                                  getarg:  ; *** PROC ***
  6224                                  
  6225                                  ;-628   arglen1=*arglen;                                     NASM=1; //default
  6226                                  
  6227                                  ;Function : getarg, Number of local variables: 3
  6228                                  ;   # type sign width line used address name   list of local variables
  6229                                  ;  200 var sign word   627 NULL bp-2    arglen1
  6230                                  ;  201 var sign word   627 NULL bp-4    i
  6231                                  ;  202 ptr sign byte   627 NULL bp-6    c;
  6232 0000307A C8060000                 ENTER  6,0
  6233 0000307E 8B1E[7630]               mov bx, [arglen]
  6234 00003082 8A07                     mov al, [bx]
  6235 00003084 B400                     mov ah, 0
  6236 00003086 8946FE                   mov word [bp-2], ax
  6237 00003089 66B801000000             mov eax, 1
  6238 0000308F A2[1500]                 mov byte [NASM], al
  6239                                  
  6240                                  ;-629   if (arglen1) { i=arglen1+129; *i=0; }
  6241                                  
  6242 00003092 8B46FE                   mov ax, [bp-2]
  6243 00003095 08C0                     or  al, al
  6244 00003097 0F841700                 je @@getarg315
  6245 0000309B 8B46FE                   mov ax, [bp-2]
  6246 0000309E 058100                   add ax, 129
  6247 000030A1 8946FC                   mov word [bp-4], ax
  6248 000030A4 66B800000000             mov eax, 0
  6249 000030AA 8B5EFC                   mov  bx, [bp-4]
  6250 000030AD 8907                     mov  [bx], ax
  6251                                  
  6252                                  ;-630   else { cputs(Version1);
  6253                                  
  6254 000030AF E93C00                   jmp @@getarg316
  6255                                  @@getarg315:
  6256 000030B2 8D06[0300]               lea  ax, [Version1]
  6257 000030B6 50                       push ax
  6258 000030B7 E8E42F                   call cputs
  6259 000030BA 83C402                   add  sp, 2
  6260                                  
  6261                                  ;-631     cputs(" Usage: A.COM [/N/P] in_file[.C] (/N=NASM, /P=ProtMode): ");
  6262                                  
  6263 000030BD 68[F733]                 push getarg_0
  6264 000030C0 E8DB2F                   call cputs
  6265 000030C3 83C402                   add  sp, 2
  6266                                  
  6267                                  ;-632     DOS_NoBytes=readRL(argv, 0, CMDLENMAX); c=DOS_NoBytes+128; *c=0; prnl(); }
  6268                                  
  6269 000030C6 6A43                     push 67
  6270 000030C8 6A00                     push 0
  6271 000030CA FF36[7830]               push word [argv]
  6272 000030CE E8E432                   call readRL
  6273 000030D1 83C406                   add  sp, 6
  6274 000030D4 A3[C400]                 mov word [DOS_NoBytes], ax
  6275 000030D7 A1[C400]                 mov ax, [DOS_NoBytes]
  6276 000030DA 058000                   add ax, 128
  6277 000030DD 8946FA                   mov word [bp-6], ax
  6278 000030E0 66B800000000             mov eax, 0
  6279 000030E6 8B5EFA                   mov  bx, [bp-6]
  6280 000030E9 8807                     mov  [bx], al
  6281 000030EB E8B21D                   call prnl
  6282                                  
  6283                                  ;-633   strcpy(namein, argv);
  6284                                  
  6285                                  @@getarg316:
  6286 000030EE FF36[7830]               push word [argv]
  6287 000030F2 8D063182                 lea  ax, [namein]
  6288 000030F6 50                       push ax
  6289 000030F7 E8AE30                   call strcpy
  6290 000030FA 83C404                   add  sp, 4
  6291                                  
  6292                                  ;-634   if (instr2(namein, '.') == 0) strcat1(namein, ".C");
  6293                                  
  6294 000030FD 6A2E                     push 46
  6295 000030FF 8D063182                 lea  ax, [namein]
  6296 00003103 50                       push ax
  6297 00003104 E81231                   call instr2
  6298 00003107 83C404                   add  sp, 4
  6299 0000310A 83F800                   cmp ax, 0
  6300 0000310D 0F850E00                 jne @@getarg317
  6301 00003111 68[3134]                 push getarg_1
  6302 00003114 8D063182                 lea  ax, [namein]
  6303 00003118 50                       push ax
  6304 00003119 E83532                   call strcat1
  6305 0000311C 83C404                   add  sp, 4
  6306                                  
  6307                                  ;-635   toupper(namein);
  6308                                  
  6309                                  @@getarg317:
  6310 0000311F 8D063182                 lea  ax, [namein]
  6311 00003123 50                       push ax
  6312 00003124 E81330                   call toupper
  6313 00003127 83C402                   add  sp, 2
  6314                                  
  6315                                  ;-636   c=instr2(namein, '/');
  6316                                  
  6317 0000312A 6A2F                     push 47
  6318 0000312C 8D063182                 lea  ax, [namein]
  6319 00003130 50                       push ax
  6320 00003131 E8E530                   call instr2
  6321 00003134 83C404                   add  sp, 4
  6322 00003137 8946FA                   mov word [bp-6], ax
  6323                                  
  6324                                  ;-637   while (c != 0)  { c++;   //todo: only one parameter possible
  6325                                  
  6326                                  @@getarg318:
  6327 0000313A 8B46FA                   mov ax, [bp-6]
  6328 0000313D 83F800                   cmp ax, 0
  6329 00003140 0F845500                 je  @@getarg319
  6330 00003144 FF46FA                   inc  word [bp-6]
  6331                                  
  6332                                  ;-638          if (*c == 'N') NASM=1;
  6333                                  
  6334 00003147 8B5EFA                   mov bx, [bp-6]
  6335 0000314A 8A07                     mov al, [bx]
  6336 0000314C B400                     mov ah, 0
  6337 0000314E 83F84E                   cmp ax, 78
  6338 00003151 0F850900                 jne @@getarg320
  6339 00003155 66B801000000             mov eax, 1
  6340 0000315B A2[1500]                 mov byte [NASM], al
  6341                                  
  6342                                  ;-639          if (*c == 'P') PROTECTED=1;
  6343                                  
  6344                                  @@getarg320:
  6345 0000315E 8B5EFA                   mov bx, [bp-6]
  6346 00003161 8A07                     mov al, [bx]
  6347 00003163 B400                     mov ah, 0
  6348 00003165 83F850                   cmp ax, 80
  6349 00003168 0F850900                 jne @@getarg321
  6350 0000316C 66B801000000             mov eax, 1
  6351 00003172 A2[1600]                 mov byte [PROTECTED], al
  6352                                  
  6353                                  ;-640 //    else {cputs("Parameter unknown "); exitR(3);  }
  6354                                  
  6355                                  
  6356                                  ;-641     c+=2; strcpy(namein, c);
  6357                                  
  6358                                  @@getarg321:
  6359 00003175 8346FA02                 add  word [bp-6], 2
  6360 00003179 FF76FA                   push word [bp-6]
  6361 0000317C 8D063182                 lea  ax, [namein]
  6362 00003180 50                       push ax
  6363 00003181 E82430                   call strcpy
  6364 00003184 83C404                   add  sp, 4
  6365                                  
  6366                                  ;-642     c=instr2(namein, '/'); }
  6367                                  
  6368 00003187 6A2F                     push 47
  6369 00003189 8D063182                 lea  ax, [namein]
  6370 0000318D 50                       push ax
  6371 0000318E E88830                   call instr2
  6372 00003191 83C404                   add  sp, 4
  6373 00003194 8946FA                   mov word [bp-6], ax
  6374                                  
  6375                                  ;-643   ltrim(namein);
  6376                                  
  6377 00003197 EBA1                     jmp @@getarg318
  6378                                  @@getarg319:
  6379 00003199 8D063182                 lea  ax, [namein]
  6380 0000319D 50                       push ax
  6381 0000319E E88404                   call ltrim
  6382 000031A1 83C402                   add  sp, 2
  6383                                  
  6384                                  ;-644   strcpy(namelst, namein); i=strlen(namelst); i--; c=&namelst+i; *c='S';
  6385                                  
  6386 000031A4 8D063182                 lea  ax, [namein]
  6387 000031A8 50                       push ax
  6388 000031A9 8D067482                 lea  ax, [namelst]
  6389 000031AD 50                       push ax
  6390 000031AE E8F72F                   call strcpy
  6391 000031B1 83C404                   add  sp, 4
  6392 000031B4 8D067482                 lea  ax, [namelst]
  6393 000031B8 50                       push ax
  6394 000031B9 E8C12F                   call strlen
  6395 000031BC 83C402                   add  sp, 2
  6396 000031BF 8946FC                   mov word [bp-4], ax
  6397 000031C2 FF4EFC                   dec  word [bp-4]
  6398 000031C5 B87482                   mov ax, namelst
  6399 000031C8 0346FC                   add ax, [bp-4]
  6400 000031CB 8946FA                   mov word [bp-6], ax
  6401 000031CE 66B853000000             mov eax, 83
  6402 000031D4 8B5EFA                   mov  bx, [bp-6]
  6403 000031D7 8807                     mov  [bx], al
  6404                                  
  6405                                  ;-645  
  6406                                  
  6407                                  
  6408                                  ;-646   fdin=openR (namein);
  6409                                  
  6410 000031D9 8D063182                 lea  ax, [namein]
  6411 000031DD 50                       push ax
  6412 000031DE E89E31                   call openR
  6413 000031E1 83C402                   add  sp, 2
  6414 000031E4 A3[3400]                 mov word [fdin], ax
  6415                                  
  6416                                  ;-647   if(DOS_ERR){cputs("Source file missing (.C): "); cputs(namein); exitR(1); }
  6417                                  
  6418 000031E7 A1[C200]                 mov ax, [DOS_ERR]
  6419 000031EA 08C0                     or  al, al
  6420 000031EC 0F841C00                 je @@getarg322
  6421 000031F0 68[3434]                 push getarg_2
  6422 000031F3 E8A82E                   call cputs
  6423 000031F6 83C402                   add  sp, 2
  6424 000031F9 8D063182                 lea  ax, [namein]
  6425 000031FD 50                       push ax
  6426 000031FE E89D2E                   call cputs
  6427 00003201 83C402                   add  sp, 2
  6428 00003204 6A01                     push 1
  6429 00003206 E8E431                   call exitR
  6430 00003209 83C402                   add  sp, 2
  6431                                  
  6432                                  ;-648   fdout=creatR(namelst);
  6433                                  
  6434                                  @@getarg322:
  6435 0000320C 8D067482                 lea  ax, [namelst]
  6436 00003210 50                       push ax
  6437 00003211 E87A31                   call creatR
  6438 00003214 83C402                   add  sp, 2
  6439 00003217 A3[3600]                 mov word [fdout], ax
  6440                                  
  6441                                  ;-649   if(DOS_ERR){cputs("list file not creatable: ");cputs(namelst);exitR(2);}
  6442                                  
  6443 0000321A A1[C200]                 mov ax, [DOS_ERR]
  6444 0000321D 08C0                     or  al, al
  6445 0000321F 0F841C00                 je @@getarg323
  6446 00003223 68[4F34]                 push getarg_3
  6447 00003226 E8752E                   call cputs
  6448 00003229 83C402                   add  sp, 2
  6449 0000322C 8D067482                 lea  ax, [namelst]
  6450 00003230 50                       push ax
  6451 00003231 E86A2E                   call cputs
  6452 00003234 83C402                   add  sp, 2
  6453 00003237 6A02                     push 2
  6454 00003239 E8B131                   call exitR
  6455 0000323C 83C402                   add  sp, 2
  6456                                  
  6457                                  ;-650   prs("\n; ");prs(Version1);
  6458                                  
  6459                                  @@getarg323:
  6460 0000323F 68[6934]                 push getarg_4
  6461 00003242 E8691C                   call prs
  6462 00003245 83C402                   add  sp, 2
  6463 00003248 8D06[0300]               lea  ax, [Version1]
  6464 0000324C 50                       push ax
  6465 0000324D E85E1C                   call prs
  6466 00003250 83C402                   add  sp, 2
  6467                                  
  6468                                  ;-651   prs(", Arglen: "); pint1(arglen1); if(arglen1){prs(", Argv: "); prs(argv);}
  6469                                  
  6470 00003253 68[6E34]                 push getarg_5
  6471 00003256 E8551C                   call prs
  6472 00003259 83C402                   add  sp, 2
  6473 0000325C FF76FE                   push word [bp-2]
  6474 0000325F E8521D                   call pint1
  6475 00003262 83C402                   add  sp, 2
  6476 00003265 8B46FE                   mov ax, [bp-2]
  6477 00003268 08C0                     or  al, al
  6478 0000326A 0F841300                 je @@getarg324
  6479 0000326E 68[7934]                 push getarg_6
  6480 00003271 E83A1C                   call prs
  6481 00003274 83C402                   add  sp, 2
  6482 00003277 FF36[7830]               push word [argv]
  6483 0000327B E8301C                   call prs
  6484 0000327E 83C402                   add  sp, 2
  6485                                  
  6486                                  ;-652   prs(", Source: "); prs(namein);  prs(", Output asm: "); prs(namelst);
  6487                                  
  6488                                  @@getarg324:
  6489 00003281 68[8234]                 push getarg_7
  6490 00003284 E8271C                   call prs
  6491 00003287 83C402                   add  sp, 2
  6492 0000328A 8D063182                 lea  ax, [namein]
  6493 0000328E 50                       push ax
  6494 0000328F E81C1C                   call prs
  6495 00003292 83C402                   add  sp, 2
  6496 00003295 68[8D34]                 push getarg_8
  6497 00003298 E8131C                   call prs
  6498 0000329B 83C402                   add  sp, 2
  6499 0000329E 8D067482                 lea  ax, [namelst]
  6500 000032A2 50                       push ax
  6501 000032A3 E8081C                   call prs
  6502 000032A6 83C402                   add  sp, 2
  6503                                  
  6504                                  ;-653   prs("\n;PROTECTED: "); pint1(PROTECTED);
  6505                                  
  6506 000032A9 68[9C34]                 push getarg_9
  6507 000032AC E8FF1B                   call prs
  6508 000032AF 83C402                   add  sp, 2
  6509 000032B2 A0[1600]                 mov al, byte [PROTECTED]
  6510 000032B5 B400                     mov ah, 0
  6511 000032B7 50                       push ax
  6512 000032B8 E8F91C                   call pint1
  6513 000032BB 83C402                   add  sp, 2
  6514                                  
  6515                                  ;-654   if (isvirtual86()) prs(" V86 ON. ");else prs(" V86 OFF. ");
  6516                                  
  6517 000032BE E8142C                   call isvirtual86
  6518 000032C1 08C0                     or  al, al
  6519 000032C3 0F840C00                 je @@getarg325
  6520 000032C7 68[AB34]                 push getarg_10
  6521 000032CA E8E11B                   call prs
  6522 000032CD 83C402                   add  sp, 2
  6523 000032D0 E90900                   jmp @@getarg326
  6524                                  @@getarg325:
  6525 000032D3 68[B534]                 push getarg_11
  6526 000032D6 E8D51B                   call prs
  6527 000032D9 83C402                   add  sp, 2
  6528                                  
  6529                                  ;-655   if (is32bit()) prs(" 32bit: ON. "); else prs("  32bit: OFF. ");
  6530                                  
  6531                                  @@getarg326:
  6532 000032DC E8FD2B                   call is32bit
  6533 000032DF 08C0                     or  al, al
  6534 000032E1 0F840C00                 je @@getarg327
  6535 000032E5 68[C034]                 push getarg_12
  6536 000032E8 E8C31B                   call prs
  6537 000032EB 83C402                   add  sp, 2
  6538 000032EE E90900                   jmp @@getarg328
  6539                                  @@getarg327:
  6540 000032F1 68[CD34]                 push getarg_13
  6541 000032F4 E8B71B                   call prs
  6542 000032F7 83C402                   add  sp, 2
  6543                                  
  6544                                  ;-656   if (NASM) prs("\norg  256 ; NASM ON\njmp main"); else
  6545                                  
  6546                                  @@getarg328:
  6547 000032FA A0[1500]                 mov al, [NASM]
  6548 000032FD 08C0                     or  al, al
  6549 000032FF 0F840C00                 je @@getarg329
  6550 00003303 68[DC34]                 push getarg_14
  6551 00003306 E8A51B                   call prs
  6552 00003309 83C402                   add  sp, 2
  6553                                  
  6554                                  ;-657   prs("\n.MODEL TINY,C\n.386P\n.CODE\nJUMPS\nLOCALS\nSTARTUPCODE\njmp main");
  6555                                  
  6556 0000330C E90900                   jmp @@getarg330
  6557                                  @@getarg329:
  6558 0000330F 68[FB34]                 push getarg_15
  6559 00003312 E8991B                   call prs
  6560 00003315 83C402                   add  sp, 2
  6561                                  
  6562                                  ;-658   if (PROTECTED) {prs("\n; Protected (unreal) mode ON. Ldata: "); prL(ldata);
  6563                                  
  6564                                  @@getarg330:
  6565 00003318 A0[1600]                 mov al, [PROTECTED]
  6566 0000331B 08C0                     or  al, al
  6567 0000331D 0F84D400                 je @@getarg331
  6568 00003321 68[3F35]                 push getarg_16
  6569 00003324 E8871B                   call prs
  6570 00003327 83C402                   add  sp, 2
  6571 0000332A 66FF36[1C00]             push dword [ldata]
  6572 0000332F E82F2C                   call prL
  6573 00003332 83C404                   add  sp, 4
  6574                                  
  6575                                  ;-659   if (isvirtual86()) cputs(" V86 ON. ");else cputs(" V86 OFF. ");
  6576                                  
  6577 00003335 E89D2B                   call isvirtual86
  6578 00003338 08C0                     or  al, al
  6579 0000333A 0F840C00                 je @@getarg332
  6580 0000333E 68[6735]                 push getarg_17
  6581 00003341 E85A2D                   call cputs
  6582 00003344 83C402                   add  sp, 2
  6583 00003347 E90900                   jmp @@getarg333
  6584                                  @@getarg332:
  6585 0000334A 68[7135]                 push getarg_18
  6586 0000334D E84E2D                   call cputs
  6587 00003350 83C402                   add  sp, 2
  6588                                  
  6589                                  ;-660   if (is32bit()) cputs(" 32bit: ON. "); else cputs("  32bit: OFF. ");
  6590                                  
  6591                                  @@getarg333:
  6592 00003353 E8862B                   call is32bit
  6593 00003356 08C0                     or  al, al
  6594 00003358 0F840C00                 je @@getarg334
  6595 0000335C 68[7C35]                 push getarg_19
  6596 0000335F E83C2D                   call cputs
  6597 00003362 83C402                   add  sp, 2
  6598 00003365 E90900                   jmp @@getarg335
  6599                                  @@getarg334:
  6600 00003368 68[8935]                 push getarg_20
  6601 0000336B E8302D                   call cputs
  6602 0000336E 83C402                   add  sp, 2
  6603                                  
  6604                                  ;-661   INITCPU32();
  6605                                  
  6606                                  @@getarg335:
  6607 00003371 E8872B                   call INITCPU32
  6608                                  
  6609                                  ;-662   prs("\n;After INITCPU32: ");
  6610                                  
  6611 00003374 68[9835]                 push getarg_21
  6612 00003377 E8341B                   call prs
  6613 0000337A 83C402                   add  sp, 2
  6614                                  
  6615                                  ;-663   if (isvirtual86()) cputs(" after INIT V86 ON. ");
  6616                                  
  6617 0000337D E8552B                   call isvirtual86
  6618 00003380 08C0                     or  al, al
  6619 00003382 0F840C00                 je @@getarg336
  6620 00003386 68[AD35]                 push getarg_22
  6621 00003389 E8122D                   call cputs
  6622 0000338C 83C402                   add  sp, 2
  6623                                  
  6624                                  ;-664     else cputs(" after INIT V86 OFF. ");
  6625                                  
  6626 0000338F E90900                   jmp @@getarg337
  6627                                  @@getarg336:
  6628 00003392 68[C235]                 push getarg_23
  6629 00003395 E8062D                   call cputs
  6630 00003398 83C402                   add  sp, 2
  6631                                  
  6632                                  ;-665   if (is32bit()) cputs(" 32bit: ON. "); else cputs("  32bit: OFF. ");
  6633                                  
  6634                                  @@getarg337:
  6635 0000339B E83E2B                   call is32bit
  6636 0000339E 08C0                     or  al, al
  6637 000033A0 0F840C00                 je @@getarg338
  6638 000033A4 68[D835]                 push getarg_24
  6639 000033A7 E8F42C                   call cputs
  6640 000033AA 83C402                   add  sp, 2
  6641 000033AD E90900                   jmp @@getarg339
  6642                                  @@getarg338:
  6643 000033B0 68[E535]                 push getarg_25
  6644 000033B3 E8E82C                   call cputs
  6645 000033B6 83C402                   add  sp, 2
  6646                                  
  6647                                  ;-666    if (isvirtual86()) prs(" V86 ON. ");else prs(" V86 OFF. ");
  6648                                  
  6649                                  @@getarg339:
  6650 000033B9 E8192B                   call isvirtual86
  6651 000033BC 08C0                     or  al, al
  6652 000033BE 0F840C00                 je @@getarg340
  6653 000033C2 68[F435]                 push getarg_26
  6654 000033C5 E8E61A                   call prs
  6655 000033C8 83C402                   add  sp, 2
  6656 000033CB E90900                   jmp @@getarg341
  6657                                  @@getarg340:
  6658 000033CE 68[FE35]                 push getarg_27
  6659 000033D1 E8DA1A                   call prs
  6660 000033D4 83C402                   add  sp, 2
  6661                                  
  6662                                  ;-667   if (is32bit()) prs(" 32bit: ON. "); else prs("  32bit: OFF. ");   }
  6663                                  
  6664                                  @@getarg341:
  6665 000033D7 E8022B                   call is32bit
  6666 000033DA 08C0                     or  al, al
  6667 000033DC 0F840C00                 je @@getarg342
  6668 000033E0 68[0936]                 push getarg_28
  6669 000033E3 E8C81A                   call prs
  6670 000033E6 83C402                   add  sp, 2
  6671 000033E9 E90900                   jmp @@getarg343
  6672                                  @@getarg342:
  6673 000033EC 68[1636]                 push getarg_29
  6674 000033EF E8BC1A                   call prs
  6675 000033F2 83C402                   add  sp, 2
  6676                                  @@getarg343:
  6677                                  
  6678                                  ;-668 }
  6679                                  
  6680                                  @@getarg331:
  6681                                  
  6682                                  ;-669 ltrim(char *s) {
  6683 000033F5 C9                       LEAVE
  6684 000033F6 C3                       ret
  6685                                  ; ENDP
  6686 000033F7 2055736167653A2041-     getarg_0 db " Usage: A.COM [/N/P] in_file[.C] (/N=NASM, /P=ProtMode): ",0
  6687 00003400 2E434F4D205B2F4E2F-
  6688 00003409 505D20696E5F66696C-
  6689 00003412 655B2E435D20282F4E-
  6690 0000341B 3D4E41534D2C202F50-
  6691 00003424 3D50726F744D6F6465-
  6692 0000342D 293A2000           
  6693 00003431 2E4300                  getarg_1 db ".C",0
  6694 00003434 536F75726365206669-     getarg_2 db "Source file missing (.C): ",0
  6695 0000343D 6C65206D697373696E-
  6696 00003446 6720282E43293A2000 
  6697 0000344F 6C6973742066696C65-     getarg_3 db "list file not creatable: ",0
  6698 00003458 206E6F742063726561-
  6699 00003461 7461626C653A2000   
  6700 00003469 5C6E3B2000              getarg_4 db "\n; ",0
  6701 0000346E 2C204172676C656E3A-     getarg_5 db ", Arglen: ",0
  6702 00003477 2000               
  6703 00003479 2C20417267763A2000      getarg_6 db ", Argv: ",0
  6704 00003482 2C20536F757263653A-     getarg_7 db ", Source: ",0
  6705 0000348B 2000               
  6706 0000348D 2C204F757470757420-     getarg_8 db ", Output asm: ",0
  6707 00003496 61736D3A2000       
  6708 0000349C 5C6E3B50524F544543-     getarg_9 db "\n;PROTECTED: ",0
  6709 000034A5 5445443A2000       
  6710 000034AB 20563836204F4E2E20-     getarg_10 db " V86 ON. ",0
  6711 000034B4 00                 
  6712 000034B5 20563836204F46462E-     getarg_11 db " V86 OFF. ",0
  6713 000034BE 2000               
  6714 000034C0 2033326269743A204F-     getarg_12 db " 32bit: ON. ",0
  6715 000034C9 4E2E2000           
  6716 000034CD 202033326269743A20-     getarg_13 db "  32bit: OFF. ",0
  6717 000034D6 4F46462E2000       
  6718 000034DC 5C6E6F726720203235-     getarg_14 db "\norg  256 ; NASM ON\njmp main",0
  6719 000034E5 36203B204E41534D20-
  6720 000034EE 4F4E5C6E6A6D70206D-
  6721 000034F7 61696E00           
  6722 000034FB 5C6E2E4D4F44454C20-     getarg_15 db "\n.MODEL TINY,C\n.386P\n.CODE\nJUMPS\nLOCALS\nSTARTUPCODE\njmp main",0
  6723 00003504 54494E592C435C6E2E-
  6724 0000350D 333836505C6E2E434F-
  6725 00003516 44455C6E4A554D5053-
  6726 0000351F 5C6E4C4F43414C535C-
  6727 00003528 6E5354415254555043-
  6728 00003531 4F44455C6E6A6D7020-
  6729 0000353A 6D61696E00         
  6730 0000353F 5C6E3B2050726F7465-     getarg_16 db "\n; Protected (unreal) mode ON. Ldata: ",0
  6731 00003548 637465642028756E72-
  6732 00003551 65616C29206D6F6465-
  6733 0000355A 204F4E2E204C646174-
  6734 00003563 613A2000           
  6735 00003567 20563836204F4E2E20-     getarg_17 db " V86 ON. ",0
  6736 00003570 00                 
  6737 00003571 20563836204F46462E-     getarg_18 db " V86 OFF. ",0
  6738 0000357A 2000               
  6739 0000357C 2033326269743A204F-     getarg_19 db " 32bit: ON. ",0
  6740 00003585 4E2E2000           
  6741 00003589 202033326269743A20-     getarg_20 db "  32bit: OFF. ",0
  6742 00003592 4F46462E2000       
  6743 00003598 5C6E3B416674657220-     getarg_21 db "\n;After INITCPU32: ",0
  6744 000035A1 494E49544350553332-
  6745 000035AA 3A2000             
  6746 000035AD 20616674657220494E-     getarg_22 db " after INIT V86 ON. ",0
  6747 000035B6 495420563836204F4E-
  6748 000035BF 2E2000             
  6749 000035C2 20616674657220494E-     getarg_23 db " after INIT V86 OFF. ",0
  6750 000035CB 495420563836204F46-
  6751 000035D4 462E2000           
  6752 000035D8 2033326269743A204F-     getarg_24 db " 32bit: ON. ",0
  6753 000035E1 4E2E2000           
  6754 000035E5 202033326269743A20-     getarg_25 db "  32bit: OFF. ",0
  6755 000035EE 4F46462E2000       
  6756 000035F4 20563836204F4E2E20-     getarg_26 db " V86 ON. ",0
  6757 000035FD 00                 
  6758 000035FE 20563836204F46462E-     getarg_27 db " V86 OFF. ",0
  6759 00003607 2000               
  6760 00003609 2033326269743A204F-     getarg_28 db " 32bit: ON. ",0
  6761 00003612 4E2E2000           
  6762 00003616 202033326269743A20-     getarg_29 db "  32bit: OFF. ",0
  6763 0000361F 4F46462E2000       
  6764                                  
  6765                                  ltrim:  ; *** PROC ***
  6766                                  
  6767                                  ;-670     }
  6768                                  
  6769                                  ;Function : ltrim, Number of local variables: 1
  6770                                  ;   # type sign width line used address name   list of local variables
  6771                                  ;  200 ptr sign byte   669 NULL bp+4    s;
  6772 00003625 C8000000                 ENTER  0,0
  6773                                  
  6774                                  ;-671 int parse() { token=getlex(); do {
  6775 00003629 C9                       LEAVE
  6776 0000362A C3                       ret
  6777                                  ; ENDP
  6778                                  
  6779                                  parse:  ; *** PROC ***
  6780 0000362B E89A0E                   call getlex
  6781 0000362E A3[3D00]                 mov word [token], ax
  6782                                  @@parse344:
  6783                                  
  6784                                  ;-672     if (token <= 0) return 1;
  6785                                  
  6786 00003631 A1[3D00]                 mov ax, [token]
  6787 00003634 83F800                   cmp ax, 0
  6788 00003637 0F8F0900                 jg  @@parse345
  6789 0000363B 66B801000000             mov eax, 1
  6790 00003641 E97D00                   jmp @@retn
  6791                                  
  6792                                  ;-673     if (istoken('#')) {
  6793                                  
  6794                                  @@parse345:
  6795 00003644 6A23                     push 35
  6796 00003646 E81F17                   call istoken
  6797 00003649 83C402                   add  sp, 2
  6798 0000364C 08C0                     or  al, al
  6799 0000364E 0F843600                 je @@parse346
  6800                                  
  6801                                  ;-674       if (istoken(T_DEFINE)) dodefine();
  6802                                  
  6803 00003652 68FF01                   push 511
  6804 00003655 E81017                   call istoken
  6805 00003658 83C402                   add  sp, 2
  6806 0000365B 08C0                     or  al, al
  6807 0000365D 0F840600                 je @@parse347
  6808 00003661 E8A605                   call dodefine
  6809                                  
  6810                                  ;-675       else if (istoken(T_INCLUDE)) doinclude();
  6811                                  
  6812 00003664 E91E00                   jmp @@parse348
  6813                                  @@parse347:
  6814 00003667 68FE01                   push 510
  6815 0000366A E8FB16                   call istoken
  6816 0000366D 83C402                   add  sp, 2
  6817 00003670 08C0                     or  al, al
  6818 00003672 0F840600                 je @@parse349
  6819 00003676 E88704                   call doinclude
  6820                                  
  6821                                  ;-676       else error1("define or include expected");  }
  6822                                  
  6823 00003679 E90900                   jmp @@parse350
  6824                                  @@parse349:
  6825 0000367C 68[C236]                 push parse_0
  6826 0000367F E82D1B                   call error1
  6827 00003682 83C402                   add  sp, 2
  6828                                  @@parse350:
  6829                                  @@parse348:
  6830                                  
  6831                                  ;-677     else{ typeName();
  6832                                  
  6833 00003685 E92A00                   jmp @@parse351
  6834                                  @@parse346:
  6835 00003688 E8CBD4                   call typeName
  6836                                  
  6837                                  ;-678     if (token=='(') dofunc(); else if (istoken('!')) doLdata();else doglob();}
  6838                                  
  6839 0000368B A1[3D00]                 mov ax, [token]
  6840 0000368E 83F828                   cmp ax, 40
  6841 00003691 0F850600                 jne @@parse352
  6842 00003695 E811D8                   call dofunc
  6843 00003698 E91700                   jmp @@parse353
  6844                                  @@parse352:
  6845 0000369B 6A21                     push 33
  6846 0000369D E8C816                   call istoken
  6847 000036A0 83C402                   add  sp, 2
  6848 000036A3 08C0                     or  al, al
  6849 000036A5 0F840600                 je @@parse354
  6850 000036A9 E874CB                   call doLdata
  6851 000036AC E90300                   jmp @@parse355
  6852                                  @@parse354:
  6853 000036AF E82FCD                   call doglob
  6854                                  @@parse355:
  6855                                  @@parse353:
  6856                                  
  6857                                  ;-679   } while(1);
  6858                                  
  6859                                  @@parse351:
  6860 000036B2 66B801000000             mov eax, 1
  6861 000036B8 08C0                     or  al, al
  6862 000036BA 0F840300                 je @@parse356
  6863 000036BE E970FF                   jmp @@parse344
  6864                                  @@parse356:
  6865                                  
  6866                                  ;-680 }
  6867                                  
  6868                                  
  6869                                  ;-681 int checkcalls() { int i; int j; int k;
  6870                                  
  6871                                  @@retn:
  6872 000036C1 C3                       ret
  6873                                  ; ENDP
  6874 000036C2 646566696E65206F72-     parse_0 db "define or include expected",0
  6875 000036CB 20696E636C75646520-
  6876 000036D4 657870656374656400 
  6877                                  
  6878                                  checkcalls:  ; *** PROC ***
  6879                                  
  6880                                  ;-682   prs("\n \n; missing functions: ");
  6881                                  
  6882                                  ;Function : checkcalls, Number of local variables: 3
  6883                                  ;   # type sign width line used address name   list of local variables
  6884                                  ;  200 var sign word   681 NULL bp-2    i
  6885                                  ;  201 var sign word   681 NULL bp-4    j
  6886                                  ;  202 var sign word   681 NULL bp-6    k;
  6887 000036DD C8060000                 ENTER  6,0
  6888 000036E1 68[D137]                 push checkcalls_0
  6889 000036E4 E8C717                   call prs
  6890 000036E7 83C402                   add  sp, 2
  6891                                  
  6892                                  ;-683   i=0;  k=0;
  6893                                  
  6894 000036EA 66B800000000             mov eax, 0
  6895 000036F0 8946FE                   mov word [bp-2], ax
  6896 000036F3 66B800000000             mov eax, 0
  6897 000036F9 8946FA                   mov word [bp-6], ax
  6898                                  
  6899                                  ;-684   while (i < CTop) {  pt=CName[i]; from_far(NA, pt);
  6900                                  
  6901                                  @@checkcalls357:
  6902 000036FC 8B46FE                   mov ax, [bp-2]
  6903 000036FF 3B06[6400]               cmp ax, [CTop]
  6904 00003703 0F8DA000                 jge @@checkcalls358
  6905 00003707 8B5EFE                   mov bx, [bp-2]
  6906 0000370A D1E3                     shl bx, 1
  6907 0000370C 8B87D79E                 mov ax, [CName + bx]
  6908 00003710 A3[BE00]                 mov word [pt], ax
  6909 00003713 FF36[BE00]               push word [pt]
  6910 00003717 8D06[7200]               lea  ax, [NA]
  6911 0000371B 50                       push ax
  6912 0000371C E88627                   call from_far
  6913 0000371F 83C404                   add  sp, 4
  6914                                  
  6915                                  ;-685     j=0;
  6916                                  
  6917 00003722 66B800000000             mov eax, 0
  6918 00003728 8946FC                   mov word [bp-4], ax
  6919                                  
  6920                                  ;-686     do {  p1=FName[j]; from_far(NB, p1);
  6921                                  
  6922                                  @@checkcalls359:
  6923 0000372B 8B5EFC                   mov bx, [bp-4]
  6924 0000372E D1E3                     shl bx, 1
  6925 00003730 8B877F9C                 mov ax, [FName + bx]
  6926 00003734 A3[C000]                 mov word [p1], ax
  6927 00003737 FF36[C000]               push word [p1]
  6928 0000373B 8D06[9300]               lea  ax, [NB]
  6929 0000373F 50                       push ax
  6930 00003740 E86227                   call from_far
  6931 00003743 83C404                   add  sp, 4
  6932                                  
  6933                                  ;-687       if (eqstr(NA, NB)){ CUnres[i]=1; j=FTop; }
  6934                                  
  6935 00003746 8D06[9300]               lea  ax, [NB]
  6936 0000374A 50                       push ax
  6937 0000374B 8D06[7200]               lea  ax, [NA]
  6938 0000374F 50                       push ax
  6939 00003750 E8A92B                   call eqstr
  6940 00003753 83C404                   add  sp, 4
  6941 00003756 08C0                     or  al, al
  6942 00003758 0F841300                 je @@checkcalls360
  6943 0000375C 66B801000000             mov eax, 1
  6944 00003762 8B5EFE                   mov bx, [bp-2]
  6945 00003765 888777AE                 mov [CUnres+bx], al
  6946 00003769 A1[6200]                 mov ax, [FTop]
  6947 0000376C 8946FC                   mov word [bp-4], ax
  6948                                  
  6949                                  ;-688       j++;
  6950                                  
  6951                                  @@checkcalls360:
  6952 0000376F FF46FC                   inc  word [bp-4]
  6953                                  
  6954                                  ;-689       } while (j < FTop);
  6955                                  
  6956 00003772 8B46FC                   mov ax, [bp-4]
  6957 00003775 3B06[6200]               cmp ax, [FTop]
  6958 00003779 0F8D0200                 jge @@checkcalls361
  6959 0000377D EBAC                     jmp @@checkcalls359
  6960                                  @@checkcalls361:
  6961                                  
  6962                                  ;-690     if (j == FTop) { k++; prs("\n; "); prs(NA); }
  6963                                  
  6964 0000377F 8B46FC                   mov ax, [bp-4]
  6965 00003782 3B06[6200]               cmp ax, [FTop]
  6966 00003786 0F851700                 jne @@checkcalls362
  6967 0000378A FF46FA                   inc  word [bp-6]
  6968 0000378D 68[EC37]                 push checkcalls_1
  6969 00003790 E81B17                   call prs
  6970 00003793 83C402                   add  sp, 2
  6971 00003796 8D06[7200]               lea  ax, [NA]
  6972 0000379A 50                       push ax
  6973 0000379B E81017                   call prs
  6974 0000379E 83C402                   add  sp, 2
  6975                                  
  6976                                  ;-691     i++; }
  6977                                  
  6978                                  @@checkcalls362:
  6979 000037A1 FF46FE                   inc  word [bp-2]
  6980                                  
  6981                                  ;-692   if (k!=0) doar(k); else {prs(" All FUNCTIONs in place");
  6982                                  
  6983 000037A4 E955FF                   jmp @@checkcalls357
  6984                                  @@checkcalls358:
  6985 000037A7 8B46FA                   mov ax, [bp-6]
  6986 000037AA 83F800                   cmp ax, 0
  6987 000037AD 0F840C00                 je  @@checkcalls363
  6988 000037B1 FF76FA                   push word [bp-6]
  6989 000037B4 E85900                   call doar
  6990 000037B7 83C402                   add  sp, 2
  6991 000037BA E91200                   jmp @@checkcalls364
  6992                                  @@checkcalls363:
  6993 000037BD 68[F137]                 push checkcalls_2
  6994 000037C0 E8EB16                   call prs
  6995 000037C3 83C402                   add  sp, 2
  6996                                  
  6997                                  ;-693     cputs(" OK! "); }
  6998                                  
  6999 000037C6 68[0938]                 push checkcalls_3
  7000 000037C9 E8D228                   call cputs
  7001 000037CC 83C402                   add  sp, 2
  7002                                  
  7003                                  ;-694 }
  7004                                  
  7005                                  @@checkcalls364:
  7006                                  
  7007                                  ;-695 char wasfunction;
  7008 000037CF C9                       LEAVE
  7009 000037D0 C3                       ret
  7010                                  ; ENDP
  7011 000037D1 5C6E205C6E3B206D69-     checkcalls_0 db "\n \n; missing functions: ",0
  7012 000037DA 7373696E672066756E-
  7013 000037E3 6374696F6E733A2000 
  7014 000037EC 5C6E3B2000              checkcalls_1 db "\n; ",0
  7015 000037F1 20416C6C2046554E43-     checkcalls_2 db " All FUNCTIONs in place",0
  7016 000037FA 54494F4E7320696E20-
  7017 00003803 706C61636500       
  7018 00003809 204F4B212000            checkcalls_3 db " OK! ",0
  7019 0000380F 00                      wasfunction db 0
  7020                                  
  7021                                  ;-696 int doar(int k) { int i; int fdtemp; int fdout1; int used; int found;
  7022                                  
  7023                                  
  7024                                  doar:  ; *** PROC ***
  7025                                  
  7026                                  ;-697   cputs("  Open CALLs :"); pint(k);
  7027                                  
  7028                                  ;Function : doar, Number of local variables: 6
  7029                                  ;   # type sign width line used address name   list of local variables
  7030                                  ;  200 var sign word   696 NULL bp+4    k
  7031                                  ;  201 var sign word   696 NULL bp-2    i
  7032                                  ;  202 var sign word   696 NULL bp-4    fdtemp
  7033                                  ;  203 var sign word   696 NULL bp-6    fdout1
  7034                                  ;  204 var sign word   696 NULL bp-8    used
  7035                                  ;  205 var sign word   696 NULL bp-10    found;
  7036 00003810 C80A0000                 ENTER  10,0
  7037 00003814 68[AC39]                 push doar_0
  7038 00003817 E88428                   call cputs
  7039 0000381A 83C402                   add  sp, 2
  7040 0000381D FF7604                   push word [bp+4]
  7041 00003820 E8B428                   call pint
  7042 00003823 83C402                   add  sp, 2
  7043                                  
  7044                                  ;-698   prs("\n; Number of unresolved CALLs :"); printint51(k);
  7045                                  
  7046 00003826 68[BB39]                 push doar_1
  7047 00003829 E88216                   call prs
  7048 0000382C 83C402                   add  sp, 2
  7049 0000382F FF7604                   push word [bp+4]
  7050 00003832 E82418                   call printint51
  7051 00003835 83C402                   add  sp, 2
  7052                                  
  7053                                  ;-699   fdin=openR (archivename);
  7054                                  
  7055 00003838 8D06[3800]               lea  ax, [archivename]
  7056 0000383C 50                       push ax
  7057 0000383D E83F2B                   call openR
  7058 00003840 83C402                   add  sp, 2
  7059 00003843 A3[3400]                 mov word [fdin], ax
  7060                                  
  7061                                  ;-700   if(DOS_ERR){cputs("Archive file missing: "); cputs(archivename); exitR(3);}
  7062                                  
  7063 00003846 A1[C200]                 mov ax, [DOS_ERR]
  7064 00003849 08C0                     or  al, al
  7065 0000384B 0F841C00                 je @@doar365
  7066 0000384F 68[DC39]                 push doar_2
  7067 00003852 E84928                   call cputs
  7068 00003855 83C402                   add  sp, 2
  7069 00003858 8D06[3800]               lea  ax, [archivename]
  7070 0000385C 50                       push ax
  7071 0000385D E83E28                   call cputs
  7072 00003860 83C402                   add  sp, 2
  7073 00003863 6A03                     push 3
  7074 00003865 E8852B                   call exitR
  7075 00003868 83C402                   add  sp, 2
  7076                                  
  7077                                  ;-701   prs("\n;use archive file: "); prs(archivename);
  7078                                  
  7079                                  @@doar365:
  7080 0000386B 68[F339]                 push doar_3
  7081 0000386E E83D16                   call prs
  7082 00003871 83C402                   add  sp, 2
  7083 00003874 8D06[3800]               lea  ax, [archivename]
  7084 00003878 50                       push ax
  7085 00003879 E83216                   call prs
  7086 0000387C 83C402                   add  sp, 2
  7087                                  
  7088                                  ;-702   fdtemp=fdout; wasfunction=0; getfirstchar();
  7089                                  
  7090 0000387F A1[3600]                 mov ax, [fdout]
  7091 00003882 8946FC                   mov word [bp-4], ax
  7092 00003885 66B800000000             mov eax, 0
  7093 0000388B A2[0F38]                 mov byte [wasfunction], al
  7094 0000388E E8CCF7                   call getfirstchar
  7095                                  
  7096                                  ;-703   do { fdout=0;do {found=getfunctionhead();}while (found==0); fdout=fdtemp;
  7097                                  
  7098                                  @@doar366:
  7099 00003891 66B800000000             mov eax, 0
  7100 00003897 A3[3600]                 mov word [fdout], ax
  7101                                  @@doar367:
  7102 0000389A E8F001                   call getfunctionhead
  7103 0000389D 8946F6                   mov word [bp-10], ax
  7104 000038A0 8B46F6                   mov ax, [bp-10]
  7105 000038A3 83F800                   cmp ax, 0
  7106 000038A6 0F850200                 jne @@doar368
  7107 000038AA EBEE                     jmp @@doar367
  7108                                  @@doar368:
  7109 000038AC 8B46FC                   mov ax, [bp-4]
  7110 000038AF A3[3600]                 mov word [fdout], ax
  7111                                  
  7112                                  ;-704        if (found > 0) { used=0; i=0;
  7113                                  
  7114 000038B2 8B46F6                   mov ax, [bp-10]
  7115 000038B5 83F800                   cmp ax, 0
  7116 000038B8 0F8EAB00                 jle @@doar369
  7117 000038BC 66B800000000             mov eax, 0
  7118 000038C2 8946F8                   mov word [bp-8], ax
  7119 000038C5 66B800000000             mov eax, 0
  7120 000038CB 8946FE                   mov word [bp-2], ax
  7121                                  
  7122                                  ;-705          while (i < CTop) { pt=CName[i]; from_far(NA, pt);
  7123                                  
  7124                                  @@doar370:
  7125 000038CE 8B46FE                   mov ax, [bp-2]
  7126 000038D1 3B06[6400]               cmp ax, [CTop]
  7127 000038D5 0F8D5300                 jge @@doar371
  7128 000038D9 8B5EFE                   mov bx, [bp-2]
  7129 000038DC D1E3                     shl bx, 1
  7130 000038DE 8B87D79E                 mov ax, [CName + bx]
  7131 000038E2 A3[BE00]                 mov word [pt], ax
  7132 000038E5 FF36[BE00]               push word [pt]
  7133 000038E9 8D06[7200]               lea  ax, [NA]
  7134 000038ED 50                       push ax
  7135 000038EE E8B425                   call from_far
  7136 000038F1 83C404                   add  sp, 4
  7137                                  
  7138                                  ;-706            if (eqstr(symbol, NA)) {
  7139                                  
  7140 000038F4 8D06[7200]               lea  ax, [NA]
  7141 000038F8 50                       push ax
  7142 000038F9 8D066E81                 lea  ax, [symbol]
  7143 000038FD 50                       push ax
  7144 000038FE E8FB29                   call eqstr
  7145 00003901 83C404                   add  sp, 4
  7146 00003904 08C0                     or  al, al
  7147 00003906 0F841D00                 je @@doar372
  7148                                  
  7149                                  ;-707              if (CUnres[i] == 0) {CUnres[i]=1; used++; } }       i++; }
  7150                                  
  7151 0000390A 8B5EFE                   mov bx, [bp-2]
  7152 0000390D 8A8777AE                 mov al, [CUnres + bx]
  7153 00003911 3C00                     cmp al, 0
  7154 00003913 0F851000                 jne @@doar373
  7155 00003917 66B801000000             mov eax, 1
  7156 0000391D 8B5EFE                   mov bx, [bp-2]
  7157 00003920 888777AE                 mov [CUnres+bx], al
  7158 00003924 FF46F8                   inc  word [bp-8]
  7159                                  @@doar373:
  7160                                  @@doar372:
  7161 00003927 FF46FE                   inc  word [bp-2]
  7162                                  
  7163                                  ;-708            if (used) { prs("\n;Number of CALLs:"); printint51(used);
  7164                                  
  7165 0000392A EBA2                     jmp @@doar370
  7166                                  @@doar371:
  7167 0000392C 8B46F8                   mov ax, [bp-8]
  7168 0000392F 08C0                     or  al, al
  7169 00003931 0F843200                 je @@doar374
  7170 00003935 68[093A]                 push doar_4
  7171 00003938 E87315                   call prs
  7172 0000393B 83C402                   add  sp, 2
  7173 0000393E FF76F8                   push word [bp-8]
  7174 00003941 E81517                   call printint51
  7175 00003944 83C402                   add  sp, 2
  7176                                  
  7177                                  ;-709               prs(" : "); prs(symbol); dofunc(); wasfunction=1; }  }
  7178                                  
  7179 00003947 68[1D3A]                 push doar_5
  7180 0000394A E86115                   call prs
  7181 0000394D 83C402                   add  sp, 2
  7182 00003950 8D066E81                 lea  ax, [symbol]
  7183 00003954 50                       push ax
  7184 00003955 E85615                   call prs
  7185 00003958 83C402                   add  sp, 2
  7186 0000395B E84BD5                   call dofunc
  7187 0000395E 66B801000000             mov eax, 1
  7188 00003964 A2[0F38]                 mov byte [wasfunction], al
  7189                                  @@doar374:
  7190                                  
  7191                                  ;-710      } while (token);
  7192                                  
  7193                                  @@doar369:
  7194 00003967 A1[3D00]                 mov ax, [token]
  7195 0000396A 08C0                     or  al, al
  7196 0000396C 0F840300                 je @@doar375
  7197 00003970 E91EFF                   jmp @@doar366
  7198                                  @@doar375:
  7199                                  
  7200                                  ;-711   prs("\n;End of archive file. ");
  7201                                  
  7202 00003973 68[213A]                 push doar_6
  7203 00003976 E83515                   call prs
  7204 00003979 83C402                   add  sp, 2
  7205                                  
  7206                                  ;-712   callrecursive++; if (callrecursive < 5) checkcalls();
  7207                                  
  7208 0000397C FF06[4B00]               inc  word [callrecursive]
  7209 00003980 A1[4B00]                 mov ax, [callrecursive]
  7210 00003983 83F805                   cmp ax, 5
  7211 00003986 0F8D0600                 jge @@doar376
  7212 0000398A E850FD                   call checkcalls
  7213                                  
  7214                                  ;-713     else {putch(10); cputs("***ERROR*** function(s) missing! ");
  7215                                  
  7216 0000398D E91A00                   jmp @@doar377
  7217                                  @@doar376:
  7218 00003990 6A0A                     push 10
  7219 00003992 E8F026                   call putch
  7220 00003995 83C402                   add  sp, 2
  7221 00003998 68[3A3A]                 push doar_7
  7222 0000399B E80027                   call cputs
  7223 0000399E 83C402                   add  sp, 2
  7224                                  
  7225                                  ;-714     error1("At least 1 function is missing in archive file! "); }
  7226                                  
  7227 000039A1 68[5C3A]                 push doar_8
  7228 000039A4 E80818                   call error1
  7229 000039A7 83C402                   add  sp, 2
  7230                                  
  7231                                  ;-715 }
  7232                                  
  7233                                  @@doar377:
  7234                                  
  7235                                  ;-716 int getfunctionhead() {
  7236 000039AA C9                       LEAVE
  7237 000039AB C3                       ret
  7238                                  ; ENDP
  7239 000039AC 20204F70656E204341-     doar_0 db "  Open CALLs :",0
  7240 000039B5 4C4C73203A00       
  7241 000039BB 5C6E3B204E756D6265-     doar_1 db "\n; Number of unresolved CALLs :",0
  7242 000039C4 72206F6620756E7265-
  7243 000039CD 736F6C766564204341-
  7244 000039D6 4C4C73203A00       
  7245 000039DC 417263686976652066-     doar_2 db "Archive file missing: ",0
  7246 000039E5 696C65206D69737369-
  7247 000039EE 6E673A2000         
  7248 000039F3 5C6E3B757365206172-     doar_3 db "\n;use archive file: ",0
  7249 000039FC 63686976652066696C-
  7250 00003A05 653A2000           
  7251 00003A09 5C6E3B4E756D626572-     doar_4 db "\n;Number of CALLs:",0
  7252 00003A12 206F662043414C4C73-
  7253 00003A1B 3A00               
  7254 00003A1D 203A2000                doar_5 db " : ",0
  7255 00003A21 5C6E3B456E64206F66-     doar_6 db "\n;End of archive file. ",0
  7256 00003A2A 206172636869766520-
  7257 00003A33 66696C652E2000     
  7258 00003A3A 2A2A2A4552524F522A-     doar_7 db "***ERROR*** function(s) missing! ",0
  7259 00003A43 2A2A2066756E637469-
  7260 00003A4C 6F6E287329206D6973-
  7261 00003A55 73696E67212000     
  7262 00003A5C 4174206C6561737420-     doar_8 db "At least 1 function is missing in archive file! ",0
  7263 00003A65 312066756E6374696F-
  7264 00003A6E 6E206973206D697373-
  7265 00003A77 696E6720696E206172-
  7266 00003A80 63686976652066696C-
  7267 00003A89 65212000           
  7268                                  
  7269                                  getfunctionhead:  ; *** PROC ***
  7270                                  
  7271                                  ;-717   if (wasfunction) wasfunction=0; else token=getlex();
  7272                                  
  7273 00003A8D A0[0F38]                 mov al, [wasfunction]
  7274 00003A90 08C0                     or  al, al
  7275 00003A92 0F840C00                 je @@getfunctionhead378
  7276 00003A96 66B800000000             mov eax, 0
  7277 00003A9C A2[0F38]                 mov byte [wasfunction], al
  7278 00003A9F E90600                   jmp @@getfunctionhead379
  7279                                  @@getfunctionhead378:
  7280 00003AA2 E8230A                   call getlex
  7281 00003AA5 A3[3D00]                 mov word [token], ax
  7282                                  
  7283                                  ;-718   if (token == 0) return 0xFFFF;
  7284                                  
  7285                                  @@getfunctionhead379:
  7286 00003AA8 A1[3D00]                 mov ax, [token]
  7287 00003AAB 83F800                   cmp ax, 0
  7288 00003AAE 0F850900                 jne @@getfunctionhead380
  7289 00003AB2 66B8FFFF0000             mov eax, 65535
  7290 00003AB8 E94400                   jmp @@retn
  7291                                  
  7292                                  ;-719   if(istoken(T_INT))  { if (token != T_NAME) return 0;
  7293                                  
  7294                                  @@getfunctionhead380:
  7295 00003ABB 680502                   push 517
  7296 00003ABE E8A712                   call istoken
  7297 00003AC1 83C402                   add  sp, 2
  7298 00003AC4 08C0                     or  al, al
  7299 00003AC6 0F842C00                 je @@getfunctionhead381
  7300 00003ACA A1[3D00]                 mov ax, [token]
  7301 00003ACD 3D0001                   cmp ax, 256
  7302 00003AD0 0F840900                 je  @@getfunctionhead382
  7303 00003AD4 66B800000000             mov eax, 0
  7304 00003ADA E92200                   jmp @@retn
  7305                                  
  7306                                  ;-720   token=getlex(); if (token == '(') return 1; }
  7307                                  
  7308                                  @@getfunctionhead382:
  7309 00003ADD E8E809                   call getlex
  7310 00003AE0 A3[3D00]                 mov word [token], ax
  7311 00003AE3 A1[3D00]                 mov ax, [token]
  7312 00003AE6 83F828                   cmp ax, 40
  7313 00003AE9 0F850900                 jne @@getfunctionhead383
  7314 00003AED 66B801000000             mov eax, 1
  7315 00003AF3 E90900                   jmp @@retn
  7316                                  @@getfunctionhead383:
  7317                                  
  7318                                  ;-721   return 0;
  7319                                  
  7320                                  @@getfunctionhead381:
  7321 00003AF6 66B800000000             mov eax, 0
  7322 00003AFC E90000                   jmp @@retn
  7323                                  
  7324                                  ;-722 }
  7325                                  
  7326                                  
  7327                                  ;-723 void doinclude() { int fdtemp;
  7328                                  
  7329                                  @@retn:
  7330 00003AFF C3                       ret
  7331                                  ; ENDP
  7332                                  
  7333                                  doinclude:  ; *** PROC ***
  7334                                  
  7335                                  ;-724   if (token==T_STRING) {  fdtemp=fdin;
  7336                                  
  7337                                  ;Function : doinclude, Number of local variables: 1
  7338                                  ;   # type sign width line used address name   list of local variables
  7339                                  ;  200 var sign word   723 NULL bp-2    fdtemp;
  7340 00003B00 C8020000                 ENTER  2,0
  7341 00003B04 A1[3D00]                 mov ax, [token]
  7342 00003B07 3D0201                   cmp ax, 258
  7343 00003B0A 0F859C00                 jne @@doinclude384
  7344 00003B0E A1[3400]                 mov ax, [fdin]
  7345 00003B11 8946FE                   mov word [bp-2], ax
  7346                                  
  7347                                  ;-725   prs("\n;Use include file: "); prs(symbol);
  7348                                  
  7349 00003B14 68[AC3B]                 push doinclude_0
  7350 00003B17 E89413                   call prs
  7351 00003B1A 83C402                   add  sp, 2
  7352 00003B1D 8D066E81                 lea  ax, [symbol]
  7353 00003B21 50                       push ax
  7354 00003B22 E88913                   call prs
  7355 00003B25 83C402                   add  sp, 2
  7356                                  
  7357                                  ;-726   fdin=openR(symbol);
  7358                                  
  7359 00003B28 8D066E81                 lea  ax, [symbol]
  7360 00003B2C 50                       push ax
  7361 00003B2D E84F28                   call openR
  7362 00003B30 83C402                   add  sp, 2
  7363 00003B33 A3[3400]                 mov word [fdin], ax
  7364                                  
  7365                                  ;-727   if (DOS_ERR !=0) {LIST=1;
  7366                                  
  7367 00003B36 A1[C200]                 mov ax, [DOS_ERR]
  7368 00003B39 83F800                   cmp ax, 0
  7369 00003B3C 0F842F00                 je  @@doinclude385
  7370 00003B40 66B801000000             mov eax, 1
  7371 00003B46 A2[1700]                 mov byte [LIST], al
  7372                                  
  7373                                  ;-728     prs("\n;Include file missing: "); prs(symbol);
  7374                                  
  7375 00003B49 68[C23B]                 push doinclude_1
  7376 00003B4C E85F13                   call prs
  7377 00003B4F 83C402                   add  sp, 2
  7378 00003B52 8D066E81                 lea  ax, [symbol]
  7379 00003B56 50                       push ax
  7380 00003B57 E85413                   call prs
  7381 00003B5A 83C402                   add  sp, 2
  7382                                  
  7383                                  ;-729     cputs(" STOP!!!");
  7384                                  
  7385 00003B5D 68[DC3B]                 push doinclude_2
  7386 00003B60 E83B25                   call cputs
  7387 00003B63 83C402                   add  sp, 2
  7388                                  
  7389                                  ;-730     error1("\n; Stop!!");
  7390                                  
  7391 00003B66 68[E53B]                 push doinclude_3
  7392 00003B69 E84316                   call error1
  7393 00003B6C 83C402                   add  sp, 2
  7394                                  
  7395                                  ;-731     }
  7396                                  
  7397                                  
  7398                                  ;-732   linenoinclude=lineno; lineno=1;
  7399                                  
  7400                                  @@doinclude385:
  7401 00003B6F A1[BA00]                 mov ax, [lineno]
  7402 00003B72 A3[BC00]                 mov word [linenoinclude], ax
  7403 00003B75 66B801000000             mov eax, 1
  7404 00003B7B A3[BA00]                 mov word [lineno], ax
  7405                                  
  7406                                  ;-733   parse(); lineno=linenoinclude;
  7407                                  
  7408 00003B7E E8AAFA                   call parse
  7409 00003B81 A1[BC00]                 mov ax, [linenoinclude]
  7410 00003B84 A3[BA00]                 mov word [lineno], ax
  7411                                  
  7412                                  ;-734   fdin=fdtemp; prs("\n;Back to main program: "); prs(namein);
  7413                                  
  7414 00003B87 8B46FE                   mov ax, [bp-2]
  7415 00003B8A A3[3400]                 mov word [fdin], ax
  7416 00003B8D 68[F03B]                 push doinclude_4
  7417 00003B90 E81B13                   call prs
  7418 00003B93 83C402                   add  sp, 2
  7419 00003B96 8D063182                 lea  ax, [namein]
  7420 00003B9A 50                       push ax
  7421 00003B9B E81013                   call prs
  7422 00003B9E 83C402                   add  sp, 2
  7423                                  
  7424                                  ;-735   getfirstchar(); token=getlex(); }
  7425                                  
  7426 00003BA1 E8B9F4                   call getfirstchar
  7427 00003BA4 E82109                   call getlex
  7428 00003BA7 A3[3D00]                 mov word [token], ax
  7429                                  
  7430                                  ;-736 }
  7431                                  
  7432                                  @@doinclude384:
  7433                                  
  7434                                  ;-737 int dodefine() { int i; int j; int fdtemp;
  7435 00003BAA C9                       LEAVE
  7436 00003BAB C3                       ret
  7437                                  ; ENDP
  7438 00003BAC 5C6E3B55736520696E-     doinclude_0 db "\n;Use include file: ",0
  7439 00003BB5 636C7564652066696C-
  7440 00003BBE 653A2000           
  7441 00003BC2 5C6E3B496E636C7564-     doinclude_1 db "\n;Include file missing: ",0
  7442 00003BCB 652066696C65206D69-
  7443 00003BD4 7373696E673A2000   
  7444 00003BDC 2053544F5021212100      doinclude_2 db " STOP!!!",0
  7445 00003BE5 5C6E3B2053746F7021-     doinclude_3 db "\n; Stop!!",0
  7446 00003BEE 2100               
  7447 00003BF0 5C6E3B4261636B2074-     doinclude_4 db "\n;Back to main program: ",0
  7448 00003BF9 6F206D61696E207072-
  7449 00003C02 6F6772616D3A2000   
  7450                                  
  7451                                  dodefine:  ; *** PROC ***
  7452                                  
  7453                                  ;-738   if (eqstr(symbol, "BSS"   )) {BSS =1; token=getlex(); return; }
  7454                                  
  7455                                  ;Function : dodefine, Number of local variables: 3
  7456                                  ;   # type sign width line used address name   list of local variables
  7457                                  ;  200 var sign word   737 NULL bp-2    i
  7458                                  ;  201 var sign word   737 NULL bp-4    j
  7459                                  ;  202 var sign word   737 NULL bp-6    fdtemp;
  7460 00003C0A C8060000                 ENTER  6,0
  7461 00003C0E 68[D83D]                 push dodefine_0
  7462 00003C11 8D066E81                 lea  ax, [symbol]
  7463 00003C15 50                       push ax
  7464 00003C16 E8E326                   call eqstr
  7465 00003C19 83C404                   add  sp, 4
  7466 00003C1C 08C0                     or  al, al
  7467 00003C1E 0F841200                 je @@dodefine386
  7468 00003C22 66B801000000             mov eax, 1
  7469 00003C28 A2[1400]                 mov byte [BSS], al
  7470 00003C2B E89A08                   call getlex
  7471 00003C2E A3[3D00]                 mov word [token], ax
  7472 00003C31 E9A201                   jmp @@retn
  7473                                  
  7474                                  ;-739   if (eqstr(symbol, "LIST"  )) {LIST=1; token=getlex(); return; }
  7475                                  
  7476                                  @@dodefine386:
  7477 00003C34 68[DC3D]                 push dodefine_1
  7478 00003C37 8D066E81                 lea  ax, [symbol]
  7479 00003C3B 50                       push ax
  7480 00003C3C E8BD26                   call eqstr
  7481 00003C3F 83C404                   add  sp, 4
  7482 00003C42 08C0                     or  al, al
  7483 00003C44 0F841200                 je @@dodefine387
  7484 00003C48 66B801000000             mov eax, 1
  7485 00003C4E A2[1700]                 mov byte [LIST], al
  7486 00003C51 E87408                   call getlex
  7487 00003C54 A3[3D00]                 mov word [token], ax
  7488 00003C57 E97C01                   jmp @@retn
  7489                                  
  7490                                  ;-740   if (eqstr(symbol, "NOLIST")) {LIST=0; token=getlex(); return; }
  7491                                  
  7492                                  @@dodefine387:
  7493 00003C5A 68[E13D]                 push dodefine_2
  7494 00003C5D 8D066E81                 lea  ax, [symbol]
  7495 00003C61 50                       push ax
  7496 00003C62 E89726                   call eqstr
  7497 00003C65 83C404                   add  sp, 4
  7498 00003C68 08C0                     or  al, al
  7499 00003C6A 0F841200                 je @@dodefine388
  7500 00003C6E 66B800000000             mov eax, 0
  7501 00003C74 A2[1700]                 mov byte [LIST], al
  7502 00003C77 E84E08                   call getlex
  7503 00003C7A A3[3D00]                 mov word [token], ax
  7504 00003C7D E95601                   jmp @@retn
  7505                                  
  7506                                  ;-741   if (eqstr(symbol, "ORGDATA")) {token=getlex();
  7507                                  
  7508                                  @@dodefine388:
  7509 00003C80 68[E83D]                 push dodefine_3
  7510 00003C83 8D066E81                 lea  ax, [symbol]
  7511 00003C87 50                       push ax
  7512 00003C88 E87126                   call eqstr
  7513 00003C8B 83C404                   add  sp, 4
  7514 00003C8E 08C0                     or  al, al
  7515 00003C90 0F843500                 je @@dodefine389
  7516 00003C94 E83108                   call getlex
  7517 00003C97 A3[3D00]                 mov word [token], ax
  7518                                  
  7519                                  ;-742     if (token==T_CONST)  { ORGDATAORIG=lexvalL; orgData=lexvalL; }
  7520                                  
  7521 00003C9A A1[3D00]                 mov ax, [token]
  7522 00003C9D 3D0101                   cmp ax, 257
  7523 00003CA0 0F851300                 jne @@dodefine390
  7524 00003CA4 66A1[4D00]               mov eax, [lexvalL]
  7525 00003CA8 66A3[2400]               mov dword [ORGDATAORIG], eax
  7526 00003CAC 66A1[4D00]               mov eax, [lexvalL]
  7527 00003CB0 66A3[2800]               mov dword [orgData], eax
  7528                                  
  7529                                  ;-743     else  error1("start address missing"); token=getlex(); return; }
  7530                                  
  7531 00003CB4 E90900                   jmp @@dodefine391
  7532                                  @@dodefine390:
  7533 00003CB7 68[F03D]                 push dodefine_4
  7534 00003CBA E8F214                   call error1
  7535 00003CBD 83C402                   add  sp, 2
  7536                                  @@dodefine391:
  7537 00003CC0 E80508                   call getlex
  7538 00003CC3 A3[3D00]                 mov word [token], ax
  7539 00003CC6 E90D01                   jmp @@retn
  7540                                  
  7541                                  ;-744   if (eqstr(symbol, "ARCHIVE")) {token=getlex();
  7542                                  
  7543                                  @@dodefine389:
  7544 00003CC9 68[063E]                 push dodefine_5
  7545 00003CCC 8D066E81                 lea  ax, [symbol]
  7546 00003CD0 50                       push ax
  7547 00003CD1 E82826                   call eqstr
  7548 00003CD4 83C404                   add  sp, 4
  7549 00003CD7 08C0                     or  al, al
  7550 00003CD9 0F844900                 je @@dodefine392
  7551 00003CDD E8E807                   call getlex
  7552 00003CE0 A3[3D00]                 mov word [token], ax
  7553                                  
  7554                                  ;-745     if (token==T_STRING) { prs("\n;Use archive file: ");
  7555                                  
  7556 00003CE3 A1[3D00]                 mov ax, [token]
  7557 00003CE6 3D0201                   cmp ax, 258
  7558 00003CE9 0F852700                 jne @@dodefine393
  7559 00003CED 68[0E3E]                 push dodefine_6
  7560 00003CF0 E8BB11                   call prs
  7561 00003CF3 83C402                   add  sp, 2
  7562                                  
  7563                                  ;-746     strcpy(archivename, symbol); prs(archivename);
  7564                                  
  7565 00003CF6 8D066E81                 lea  ax, [symbol]
  7566 00003CFA 50                       push ax
  7567 00003CFB 8D06[3800]               lea  ax, [archivename]
  7568 00003CFF 50                       push ax
  7569 00003D00 E8A524                   call strcpy
  7570 00003D03 83C404                   add  sp, 4
  7571 00003D06 8D06[3800]               lea  ax, [archivename]
  7572 00003D0A 50                       push ax
  7573 00003D0B E8A011                   call prs
  7574 00003D0E 83C402                   add  sp, 2
  7575                                  
  7576                                  ;-747     } else error1("Name of archive file missing"); token=getlex(); return;}
  7577                                  
  7578 00003D11 E90900                   jmp @@dodefine394
  7579                                  @@dodefine393:
  7580 00003D14 68[243E]                 push dodefine_7
  7581 00003D17 E89514                   call error1
  7582 00003D1A 83C402                   add  sp, 2
  7583                                  @@dodefine394:
  7584 00003D1D E8A807                   call getlex
  7585 00003D20 A3[3D00]                 mov word [token], ax
  7586 00003D23 E9B000                   jmp @@retn
  7587                                  
  7588                                  ;-748    expect(T_NAME);
  7589                                  
  7590                                  @@dodefine392:
  7591 00003D26 680001                   push 256
  7592 00003D29 E86410                   call expect
  7593 00003D2C 83C402                   add  sp, 2
  7594                                  
  7595                                  ;-749   if (token==T_CONST) { 
  7596                                  
  7597 00003D2F A1[3D00]                 mov ax, [token]
  7598 00003D32 3D0101                   cmp ax, 257
  7599 00003D35 0F859D00                 jne @@dodefine395
  7600                                  
  7601                                  ;-750     if (GTop >= LSTART) error1("global table (define) full");
  7602                                  
  7603 00003D39 A1[5E00]                 mov ax, [GTop]
  7604 00003D3C 3DC800                   cmp ax, 200 ;unsigned : 1
  7605 00003D3F 0F8C0900                 jl  @@dodefine396
  7606 00003D43 68[413E]                 push dodefine_8
  7607 00003D46 E86614                   call error1
  7608 00003D49 83C402                   add  sp, 2
  7609                                  
  7610                                  ;-751     checknamelen();
  7611                                  
  7612                                  @@dodefine396:
  7613 00003D4C E8ECC3                   call checknamelen
  7614                                  
  7615                                  ;-752     GSign [GTop]='U'; GWidth[GTop]=1; GType [GTop]='#';
  7616                                  
  7617 00003D4F 66B855000000             mov eax, 85
  7618 00003D55 8B1E[5E00]               mov bx, [GTop]
  7619 00003D59 8887E383                 mov [GSign+bx], al
  7620 00003D5D 66B801000000             mov eax, 1
  7621 00003D63 8B1E[5E00]               mov bx, [GTop]
  7622 00003D67 88870F85                 mov [GWidth+bx], al
  7623 00003D6B 66B823000000             mov eax, 35
  7624 00003D71 8B1E[5E00]               mov bx, [GTop]
  7625 00003D75 8887B782                 mov [GType+bx], al
  7626                                  
  7627                                  ;-753     GLino [GTop]=lineno-1; GUsed [GTop]=0;
  7628                                  
  7629 00003D79 A1[BA00]                 mov ax, [lineno]
  7630 00003D7C 83E801                   sub ax, 1
  7631 00003D7F 8B1E[5E00]               mov bx, [GTop]
  7632 00003D83 D1E3                     shl bx, 1
  7633 00003D85 89873B86                 mov [GLino+bx], ax
  7634 00003D89 66B800000000             mov eax, 0
  7635 00003D8F 8B1E[5E00]               mov bx, [GTop]
  7636 00003D93 D1E3                     shl bx, 1
  7637 00003D95 89879388                 mov [GUsed+bx], ax
  7638                                  
  7639                                  ;-754     GAdr  [GTop]=LONG0;
  7640                                  
  7641 00003D99 66A1[2000]               mov eax, [LONG0]
  7642 00003D9D 8B1E[5E00]               mov bx, [GTop]
  7643 00003DA1 C1E302                   shl bx, 2
  7644 00003DA4 6689879B8F               mov [GAdr+bx], eax
  7645                                  
  7646                                  ;-755     GName [GTop] = CNameTop; storeName();
  7647                                  
  7648 00003DA9 A1[B400]                 mov ax, [CNameTop]
  7649 00003DAC 8B1E[5E00]               mov bx, [GTop]
  7650 00003DB0 D1E3                     shl bx, 1
  7651 00003DB2 89874B94                 mov [GName+bx], ax
  7652 00003DB6 E837C4                   call storeName
  7653                                  
  7654                                  ;-756     GData[GTop]=lexvalL;
  7655                                  
  7656 00003DB9 66A1[4D00]               mov eax, [lexvalL]
  7657 00003DBD 8B1E[5E00]               mov bx, [GTop]
  7658 00003DC1 C1E302                   shl bx, 2
  7659 00003DC4 668987EB8A               mov [GData+bx], eax
  7660                                  
  7661                                  ;-757     expect(T_CONST); GTop++;  } 
  7662                                  
  7663 00003DC9 680101                   push 257
  7664 00003DCC E8C10F                   call expect
  7665 00003DCF 83C402                   add  sp, 2
  7666 00003DD2 FF06[5E00]               inc  word [GTop]
  7667                                  
  7668                                  ;-758 }
  7669                                  
  7670                                  @@dodefine395:
  7671                                  
  7672                                  ;-759 int stmt() { int c; char cha;
  7673                                  
  7674 00003DD6 C9                      @@retn: LEAVE
  7675 00003DD7 C3                       ret
  7676                                  ; ENDP
  7677 00003DD8 42535300                dodefine_0 db "BSS",0
  7678 00003DDC 4C49535400              dodefine_1 db "LIST",0
  7679 00003DE1 4E4F4C49535400          dodefine_2 db "NOLIST",0
  7680 00003DE8 4F52474441544100        dodefine_3 db "ORGDATA",0
  7681 00003DF0 737461727420616464-     dodefine_4 db "start address missing",0
  7682 00003DF9 72657373206D697373-
  7683 00003E02 696E6700           
  7684 00003E06 4152434849564500        dodefine_5 db "ARCHIVE",0
  7685 00003E0E 5C6E3B557365206172-     dodefine_6 db "\n;Use archive file: ",0
  7686 00003E17 63686976652066696C-
  7687 00003E20 653A2000           
  7688 00003E24 4E616D65206F662061-     dodefine_7 db "Name of archive file missing",0
  7689 00003E2D 726368697665206669-
  7690 00003E36 6C65206D697373696E-
  7691 00003E3F 6700               
  7692 00003E41 676C6F62616C207461-     dodefine_8 db "global table (define) full",0
  7693 00003E4A 626C65202864656669-
  7694 00003E53 6E65292066756C6C00 
  7695                                  
  7696                                  stmt:  ; *** PROC ***
  7697                                  
  7698                                  ;-760        if(istoken('{'))     {while(istoken('}')==0) stmt();}
  7699                                  
  7700                                  ;Function : stmt, Number of local variables: 2
  7701                                  ;   # type sign width line used address name   list of local variables
  7702                                  ;  200 var sign word   759 NULL bp-2    c
  7703                                  ;  201 var sign byte   759 NULL bp-4    cha;
  7704 00003E5C C8040000                 ENTER  4,0
  7705 00003E60 6A7B                     push 123
  7706 00003E62 E8030F                   call istoken
  7707 00003E65 83C402                   add  sp, 2
  7708 00003E68 08C0                     or  al, al
  7709 00003E6A 0F841700                 je @@stmt397
  7710                                  @@stmt398:
  7711 00003E6E 6A7D                     push 125
  7712 00003E70 E8F50E                   call istoken
  7713 00003E73 83C402                   add  sp, 2
  7714 00003E76 83F800                   cmp ax, 0
  7715 00003E79 0F850500                 jne @@stmt399
  7716 00003E7D E8DCFF                   call stmt
  7717 00003E80 EBEC                     jmp @@stmt398
  7718                                  @@stmt399:
  7719                                  
  7720                                  ;-761   else if(istoken(T_IF))    doif();
  7721                                  
  7722 00003E82 E90502                   jmp @@stmt400
  7723                                  @@stmt397:
  7724 00003E85 680102                   push 513
  7725 00003E88 E8DD0E                   call istoken
  7726 00003E8B 83C402                   add  sp, 2
  7727 00003E8E 08C0                     or  al, al
  7728 00003E90 0F840600                 je @@stmt401
  7729 00003E94 E83F04                   call doif
  7730                                  
  7731                                  ;-762   else if(istoken(T_DO))    dodo();
  7732                                  
  7733 00003E97 E9F001                   jmp @@stmt402
  7734                                  @@stmt401:
  7735 00003E9A 680402                   push 516
  7736 00003E9D E8C80E                   call istoken
  7737 00003EA0 83C402                   add  sp, 2
  7738 00003EA3 08C0                     or  al, al
  7739 00003EA5 0F840600                 je @@stmt403
  7740 00003EA9 E81E05                   call dodo
  7741                                  
  7742                                  ;-763   else if(istoken(T_WHILE)) dowhile();
  7743                                  
  7744 00003EAC E9DB01                   jmp @@stmt404
  7745                                  @@stmt403:
  7746 00003EAF 680302                   push 515
  7747 00003EB2 E8B30E                   call istoken
  7748 00003EB5 83C402                   add  sp, 2
  7749 00003EB8 08C0                     or  al, al
  7750 00003EBA 0F840600                 je @@stmt405
  7751 00003EBE E85605                   call dowhile
  7752                                  
  7753                                  ;-764   else if(istoken(T_GOTO))  {prs("\n jmp @@");name1();prs(symbol);expect(';');}
  7754                                  
  7755 00003EC1 E9C601                   jmp @@stmt406
  7756                                  @@stmt405:
  7757 00003EC4 680902                   push 521
  7758 00003EC7 E89E0E                   call istoken
  7759 00003ECA 83C402                   add  sp, 2
  7760 00003ECD 08C0                     or  al, al
  7761 00003ECF 0F842200                 je @@stmt407
  7762 00003ED3 68[8C40]                 push stmt_0
  7763 00003ED6 E8D50F                   call prs
  7764 00003ED9 83C402                   add  sp, 2
  7765 00003EDC E8B3CD                   call name1
  7766 00003EDF 8D066E81                 lea  ax, [symbol]
  7767 00003EE3 50                       push ax
  7768 00003EE4 E8C70F                   call prs
  7769 00003EE7 83C402                   add  sp, 2
  7770 00003EEA 6A3B                     push 59
  7771 00003EEC E8A10E                   call expect
  7772 00003EEF 83C402                   add  sp, 2
  7773                                  
  7774                                  ;-765   else if(token==T_ASM)     {prs("\n"); c=next();
  7775                                  
  7776 00003EF2 E99501                   jmp @@stmt408
  7777                                  @@stmt407:
  7778 00003EF5 A1[3D00]                 mov ax, [token]
  7779 00003EF8 3D0602                   cmp ax, 518
  7780 00003EFB 0F853300                 jne @@stmt409
  7781 00003EFF 68[9640]                 push stmt_1
  7782 00003F02 E8A90F                   call prs
  7783 00003F05 83C402                   add  sp, 2
  7784 00003F08 E83F0E                   call next
  7785 00003F0B 8946FE                   mov word [bp-2], ax
  7786                                  
  7787                                  ;-766     while(c != '\n') { prc(c);	c=next(); }; token=getlex(); }
  7788                                  
  7789                                  @@stmt410:
  7790 00003F0E 8B46FE                   mov ax, [bp-2]
  7791 00003F11 83F80A                   cmp ax, 10
  7792 00003F14 0F841100                 je  @@stmt411
  7793 00003F18 FF76FE                   push word [bp-2]
  7794 00003F1B E8210F                   call prc
  7795 00003F1E 83C402                   add  sp, 2
  7796 00003F21 E8260E                   call next
  7797 00003F24 8946FE                   mov word [bp-2], ax
  7798 00003F27 EBE5                     jmp @@stmt410
  7799                                  @@stmt411:
  7800 00003F29 E89C05                   call getlex
  7801 00003F2C A3[3D00]                 mov word [token], ax
  7802                                  
  7803                                  ;-767   else if(istoken(T_ASMBLOCK)) { if (token== '{' )  { prs("\n"); cha=next();  
  7804                                  
  7805 00003F2F E95801                   jmp @@stmt412
  7806                                  @@stmt409:
  7807 00003F32 680702                   push 519
  7808 00003F35 E8300E                   call istoken
  7809 00003F38 83C402                   add  sp, 2
  7810 00003F3B 08C0                     or  al, al
  7811 00003F3D 0F844A00                 je @@stmt413
  7812 00003F41 A1[3D00]                 mov ax, [token]
  7813 00003F44 83F87B                   cmp ax, 123
  7814 00003F47 0F853400                 jne @@stmt414
  7815 00003F4B 68[9940]                 push stmt_2
  7816 00003F4E E85D0F                   call prs
  7817 00003F51 83C402                   add  sp, 2
  7818 00003F54 E8F30D                   call next
  7819 00003F57 8846FC                   mov byte [bp-4], al
  7820                                  
  7821                                  ;-768     while(_ cha!= '}') { prc(cha); cha=next(); }
  7822                                  
  7823                                  @@stmt415:
  7824 00003F5A 807EFC7D                cmp byte [bp-4], 125
  7825 00003F5E 0F841400                 je  @@stmt416
  7826 00003F62 8A46FC                   mov al, byte [bp-4]
  7827 00003F65 B400                     mov ah, 0
  7828 00003F67 50                       push ax
  7829 00003F68 E8D40E                   call prc
  7830 00003F6B 83C402                   add  sp, 2
  7831 00003F6E E8D90D                   call next
  7832 00003F71 8846FC                   mov byte [bp-4], al
  7833                                  
  7834                                  ;-769     token=getlex(); }
  7835                                  
  7836 00003F74 EBE4                     jmp @@stmt415
  7837                                  @@stmt416:
  7838 00003F76 E84F05                   call getlex
  7839 00003F79 A3[3D00]                 mov word [token], ax
  7840                                  
  7841                                  ;-770     else error1("Curly open expected"); }
  7842                                  
  7843 00003F7C E90900                   jmp @@stmt417
  7844                                  @@stmt414:
  7845 00003F7F 68[9C40]                 push stmt_3
  7846 00003F82 E82A12                   call error1
  7847 00003F85 83C402                   add  sp, 2
  7848                                  @@stmt417:
  7849                                  
  7850                                  ;-771   else if(istoken(T_INTH))  {prs("\n int  "); expect(T_CONST);
  7851                                  
  7852 00003F88 E9FF00                   jmp @@stmt418
  7853                                  @@stmt413:
  7854 00003F8B 685802                   push 600
  7855 00003F8E E8D70D                   call istoken
  7856 00003F91 83C402                   add  sp, 2
  7857 00003F94 08C0                     or  al, al
  7858 00003F96 0F842800                 je @@stmt419
  7859 00003F9A 68[B040]                 push stmt_4
  7860 00003F9D E80E0F                   call prs
  7861 00003FA0 83C402                   add  sp, 2
  7862 00003FA3 680101                   push 257
  7863 00003FA6 E8E70D                   call expect
  7864 00003FA9 83C402                   add  sp, 2
  7865                                  
  7866                                  ;-772     prL(lexvalL); expect(';');    }
  7867                                  
  7868 00003FAC 66FF36[4D00]             push dword [lexvalL]
  7869 00003FB1 E8AD1F                   call prL
  7870 00003FB4 83C404                   add  sp, 4
  7871 00003FB7 6A3B                     push 59
  7872 00003FB9 E8D40D                   call expect
  7873 00003FBC 83C402                   add  sp, 2
  7874                                  
  7875                                  ;-773   else if(istoken(T_IFCARRY))doifcarry();
  7876                                  
  7877 00003FBF E9C800                   jmp @@stmt420
  7878                                  @@stmt419:
  7879 00003FC2 685902                   push 601
  7880 00003FC5 E8A00D                   call istoken
  7881 00003FC8 83C402                   add  sp, 2
  7882 00003FCB 08C0                     or  al, al
  7883 00003FCD 0F840600                 je @@stmt421
  7884 00003FD1 E86403                   call doifcarry
  7885                                  
  7886                                  ;-774   else if(istoken(T_IFZERO))doifzero();
  7887                                  
  7888 00003FD4 E9B300                   jmp @@stmt422
  7889                                  @@stmt421:
  7890 00003FD7 685A02                   push 602
  7891 00003FDA E88B0D                   call istoken
  7892 00003FDD 83C402                   add  sp, 2
  7893 00003FE0 08C0                     or  al, al
  7894 00003FE2 0F840600                 je @@stmt423
  7895 00003FE6 E89803                   call doifzero
  7896                                  
  7897                                  ;-775   else if(istoken(T_EMIT))   doemit();
  7898                                  
  7899 00003FE9 E99E00                   jmp @@stmt424
  7900                                  @@stmt423:
  7901 00003FEC 680802                   push 520
  7902 00003FEF E8760D                   call istoken
  7903 00003FF2 83C402                   add  sp, 2
  7904 00003FF5 08C0                     or  al, al
  7905 00003FF7 0F840600                 je @@stmt425
  7906 00003FFB E8CE00                   call doemit
  7907                                  
  7908                                  ;-776   else if(istoken(';'))      { }
  7909                                  
  7910 00003FFE E98900                   jmp @@stmt426
  7911                                  @@stmt425:
  7912 00004001 6A3B                     push 59
  7913 00004003 E8620D                   call istoken
  7914 00004006 83C402                   add  sp, 2
  7915 00004009 08C0                     or  al, al
  7916 0000400B 0F840300                 je @@stmt427
  7917                                  
  7918                                  ;-777   else if(istoken(T_RETURN)) {if (token!=';')  exprstart();
  7919                                  
  7920 0000400F E97800                   jmp @@stmt428
  7921                                  @@stmt427:
  7922 00004012 680002                   push 512
  7923 00004015 E8500D                   call istoken
  7924 00004018 83C402                   add  sp, 2
  7925 0000401B 08C0                     or  al, al
  7926 0000401D 0F842500                 je @@stmt429
  7927 00004021 A1[3D00]                 mov ax, [token]
  7928 00004024 83F83B                   cmp ax, 59
  7929 00004027 0F840300                 je  @@stmt430
  7930 0000402B E832D3                   call exprstart
  7931                                  
  7932                                  ;-778     prs("\n jmp @@retn"); nreturn++; expect(';');}
  7933                                  
  7934                                  @@stmt430:
  7935 0000402E 68[B940]                 push stmt_5
  7936 00004031 E87A0E                   call prs
  7937 00004034 83C402                   add  sp, 2
  7938 00004037 FF06[4700]               inc  word [nreturn]
  7939 0000403B 6A3B                     push 59
  7940 0000403D E8500D                   call expect
  7941 00004040 83C402                   add  sp, 2
  7942                                  
  7943                                  ;-779   else if(_ thechar==':')      {prs("\n@@"); // Label
  7944                                  
  7945 00004043 E94400                   jmp @@stmt431
  7946                                  @@stmt429:
  7947 00004046 803E[4200]3A            cmp byte [thechar], 58
  7948 0000404B 0F853000                 jne @@stmt432
  7949 0000404F 68[C740]                 push stmt_6
  7950 00004052 E8590E                   call prs
  7951 00004055 83C402                   add  sp, 2
  7952                                  
  7953                                  ;-780      prs(symbol); prc(':');  expect(T_NAME); expect(':'); }
  7954                                  
  7955 00004058 8D066E81                 lea  ax, [symbol]
  7956 0000405C 50                       push ax
  7957 0000405D E84E0E                   call prs
  7958 00004060 83C402                   add  sp, 2
  7959 00004063 6A3A                     push 58
  7960 00004065 E8D70D                   call prc
  7961 00004068 83C402                   add  sp, 2
  7962 0000406B 680001                   push 256
  7963 0000406E E81F0D                   call expect
  7964 00004071 83C402                   add  sp, 2
  7965 00004074 6A3A                     push 58
  7966 00004076 E8170D                   call expect
  7967 00004079 83C402                   add  sp, 2
  7968                                  
  7969                                  ;-781   else                       {exprstart(); expect(';'); } }
  7970                                  
  7971 0000407C E90B00                   jmp @@stmt433
  7972                                  @@stmt432:
  7973 0000407F E8DED2                   call exprstart
  7974 00004082 6A3B                     push 59
  7975 00004084 E8090D                   call expect
  7976 00004087 83C402                   add  sp, 2
  7977                                  @@stmt433:
  7978                                  @@stmt431:
  7979                                  @@stmt428:
  7980                                  @@stmt426:
  7981                                  @@stmt424:
  7982                                  @@stmt422:
  7983                                  @@stmt420:
  7984                                  @@stmt418:
  7985                                  @@stmt412:
  7986                                  @@stmt408:
  7987                                  @@stmt406:
  7988                                  @@stmt404:
  7989                                  @@stmt402:
  7990                                  @@stmt400:
  7991                                  
  7992                                  ;-782 
  7993                                  
  7994                                  
  7995                                  ;-783 int doemit() {prs("\n db ");
  7996 0000408A C9                       LEAVE
  7997 0000408B C3                       ret
  7998                                  ; ENDP
  7999 0000408C 5C6E206A6D70204040-     stmt_0 db "\n jmp @@",0
  8000 00004095 00                 
  8001 00004096 5C6E00                  stmt_1 db "\n",0
  8002 00004099 5C6E00                  stmt_2 db "\n",0
  8003 0000409C 4375726C79206F7065-     stmt_3 db "Curly open expected",0
  8004 000040A5 6E2065787065637465-
  8005 000040AE 6400               
  8006 000040B0 5C6E20696E74202000      stmt_4 db "\n int  ",0
  8007 000040B9 5C6E206A6D70204040-     stmt_5 db "\n jmp @@retn",0
  8008 000040C2 7265746E00         
  8009 000040C7 5C6E404000              stmt_6 db "\n@@",0
  8010                                  
  8011                                  doemit:  ; *** PROC ***
  8012 000040CC 68[0941]                 push doemit_0
  8013 000040CF E8DC0D                   call prs
  8014 000040D2 83C402                   add  sp, 2
  8015                                  
  8016                                  ;-784   L1: token=getlex(); prL(lexvalL); token=getlex();
  8017                                  
  8018                                  @@L1:
  8019 000040D5 E8F003                   call getlex
  8020 000040D8 A3[3D00]                 mov word [token], ax
  8021 000040DB 66FF36[4D00]             push dword [lexvalL]
  8022 000040E0 E87E1E                   call prL
  8023 000040E3 83C404                   add  sp, 4
  8024 000040E6 E8DF03                   call getlex
  8025 000040E9 A3[3D00]                 mov word [token], ax
  8026                                  
  8027                                  ;-785     if (token== ',') {prc(','); goto L1;} expect(')'); }
  8028                                  
  8029 000040EC A1[3D00]                 mov ax, [token]
  8030 000040EF 83F82C                   cmp ax, 44
  8031 000040F2 0F850A00                 jne @@doemit434
  8032 000040F6 6A2C                     push 44
  8033 000040F8 E8440D                   call prc
  8034 000040FB 83C402                   add  sp, 2
  8035 000040FE EBD5                     jmp @@L1
  8036                                  @@doemit434:
  8037 00004100 6A29                     push 41
  8038 00004102 E88B0C                   call expect
  8039 00004105 83C402                   add  sp, 2
  8040                                  
  8041                                  ;-786 
  8042                                  
  8043                                  
  8044                                  ;-787 int cmpneg(int ids) {
  8045                                  
  8046 00004108 C3                       ret
  8047                                  ; ENDP
  8048 00004109 5C6E2064622000          doemit_0 db "\n db ",0
  8049                                  
  8050                                  cmpneg:  ; *** PROC ***
  8051                                  
  8052                                  ;-788        if(iscmp==T_EQ) prs("\n jne @@");         //ZF=0
  8053                                  
  8054                                  ;Function : cmpneg, Number of local variables: 1
  8055                                  ;   # type sign width line used address name   list of local variables
  8056                                  ;  200 var sign word   787 NULL bp+4    ids;
  8057 00004110 C8000000                 ENTER  0,0
  8058 00004114 A1[4300]                 mov ax, [iscmp]
  8059 00004117 3D2603                   cmp ax, 806
  8060 0000411A 0F850C00                 jne @@cmpneg435
  8061 0000411E 68[F141]                 push cmpneg_0
  8062 00004121 E88A0D                   call prs
  8063 00004124 83C402                   add  sp, 2
  8064                                  
  8065                                  ;-789   else if(iscmp==T_NE) prs("\n je  @@");         //ZF=1
  8066                                  
  8067 00004127 E9C500                   jmp @@cmpneg436
  8068                                  @@cmpneg435:
  8069 0000412A A1[4300]                 mov ax, [iscmp]
  8070 0000412D 3D2703                   cmp ax, 807
  8071 00004130 0F850C00                 jne @@cmpneg437
  8072 00004134 68[FB41]                 push cmpneg_1
  8073 00004137 E8740D                   call prs
  8074 0000413A 83C402                   add  sp, 2
  8075                                  
  8076                                  ;-790   else if(iscmp==T_LE) if (ids) prs("\n jg  @@");//ZF=0      SF =OF
  8077                                  
  8078 0000413D E9AF00                   jmp @@cmpneg438
  8079                                  @@cmpneg437:
  8080 00004140 A1[4300]                 mov ax, [iscmp]
  8081 00004143 3D3803                   cmp ax, 824
  8082 00004146 0F852100                 jne @@cmpneg439
  8083 0000414A 8B4604                   mov ax, [bp+4]
  8084 0000414D 08C0                     or  al, al
  8085 0000414F 0F840C00                 je @@cmpneg440
  8086 00004153 68[0542]                 push cmpneg_2
  8087 00004156 E8550D                   call prs
  8088 00004159 83C402                   add  sp, 2
  8089                                  
  8090                                  ;-791                            else prs("\n ja  @@");//ZF=0 CF=0
  8091                                  
  8092 0000415C E90900                   jmp @@cmpneg441
  8093                                  @@cmpneg440:
  8094 0000415F 68[0F42]                 push cmpneg_3
  8095 00004162 E8490D                   call prs
  8096 00004165 83C402                   add  sp, 2
  8097                                  
  8098                                  ;-792   else if(iscmp==T_GE) if (ids){prs(" ;unsigned : "); prunsign1(ids);
  8099                                  
  8100                                  @@cmpneg441:
  8101 00004168 E98400                   jmp @@cmpneg442
  8102                                  @@cmpneg439:
  8103 0000416B A1[4300]                 mov ax, [iscmp]
  8104 0000416E 3D2B03                   cmp ax, 811
  8105 00004171 0F854500                 jne @@cmpneg443
  8106 00004175 8B4604                   mov ax, [bp+4]
  8107 00004178 08C0                     or  al, al
  8108 0000417A 0F841E00                 je @@cmpneg444
  8109 0000417E 68[1942]                 push cmpneg_4
  8110 00004181 E82A0D                   call prs
  8111 00004184 83C402                   add  sp, 2
  8112 00004187 FF7604                   push word [bp+4]
  8113 0000418A E88A0E                   call prunsign1
  8114 0000418D 83C402                   add  sp, 2
  8115                                  
  8116                                  ;-793                                prs("\n jl  @@");}//          SF!=OF
  8117                                  
  8118 00004190 68[2742]                 push cmpneg_5
  8119 00004193 E8180D                   call prs
  8120 00004196 83C402                   add  sp, 2
  8121                                  
  8122                                  ;-794                            else{prs(" ;unsigned : "); prunsign1(ids);
  8123                                  
  8124 00004199 E91B00                   jmp @@cmpneg445
  8125                                  @@cmpneg444:
  8126 0000419C 68[3142]                 push cmpneg_6
  8127 0000419F E80C0D                   call prs
  8128 000041A2 83C402                   add  sp, 2
  8129 000041A5 FF7604                   push word [bp+4]
  8130 000041A8 E86C0E                   call prunsign1
  8131 000041AB 83C402                   add  sp, 2
  8132                                  
  8133                                  ;-795                                prs("\n jb  @@");}//jb=jc=CF=1
  8134                                  
  8135 000041AE 68[3F42]                 push cmpneg_7
  8136 000041B1 E8FA0C                   call prs
  8137 000041B4 83C402                   add  sp, 2
  8138                                  
  8139                                  ;-796   else if(iscmp=='<' ) prs("\n jge @@");         //          SF =OF
  8140                                  
  8141                                  @@cmpneg445:
  8142 000041B7 E93500                   jmp @@cmpneg446
  8143                                  @@cmpneg443:
  8144 000041BA A1[4300]                 mov ax, [iscmp]
  8145 000041BD 83F83C                   cmp ax, 60
  8146 000041C0 0F850C00                 jne @@cmpneg447
  8147 000041C4 68[4942]                 push cmpneg_8
  8148 000041C7 E8E40C                   call prs
  8149 000041CA 83C402                   add  sp, 2
  8150                                  
  8151                                  ;-797   else if(iscmp=='>' ) prs("\n jle @@");         //ZF=1 oder SF!=OF
  8152                                  
  8153 000041CD E91F00                   jmp @@cmpneg448
  8154                                  @@cmpneg447:
  8155 000041D0 A1[4300]                 mov ax, [iscmp]
  8156 000041D3 83F83E                   cmp ax, 62
  8157 000041D6 0F850C00                 jne @@cmpneg449
  8158 000041DA 68[5342]                 push cmpneg_9
  8159 000041DD E8CE0C                   call prs
  8160 000041E0 83C402                   add  sp, 2
  8161                                  
  8162                                  ;-798   else error1("compare unknown in CMPNEG()");  }
  8163                                  
  8164 000041E3 E90900                   jmp @@cmpneg450
  8165                                  @@cmpneg449:
  8166 000041E6 68[5D42]                 push cmpneg_10
  8167 000041E9 E8C30F                   call error1
  8168 000041EC 83C402                   add  sp, 2
  8169                                  @@cmpneg450:
  8170                                  @@cmpneg448:
  8171                                  @@cmpneg446:
  8172                                  @@cmpneg442:
  8173                                  @@cmpneg438:
  8174                                  @@cmpneg436:
  8175                                  
  8176                                  ;-799 
  8177                                  
  8178                                  
  8179                                  ;-800 int prlabel(int n) {prs("\n@@"); prs(fname); pint1(n); prc(':'); }
  8180 000041EF C9                       LEAVE
  8181 000041F0 C3                       ret
  8182                                  ; ENDP
  8183 000041F1 5C6E206A6E65204040-     cmpneg_0 db "\n jne @@",0
  8184 000041FA 00                 
  8185 000041FB 5C6E206A6520204040-     cmpneg_1 db "\n je  @@",0
  8186 00004204 00                 
  8187 00004205 5C6E206A6720204040-     cmpneg_2 db "\n jg  @@",0
  8188 0000420E 00                 
  8189 0000420F 5C6E206A6120204040-     cmpneg_3 db "\n ja  @@",0
  8190 00004218 00                 
  8191 00004219 203B756E7369676E65-     cmpneg_4 db " ;unsigned : ",0
  8192 00004222 64203A2000         
  8193 00004227 5C6E206A6C20204040-     cmpneg_5 db "\n jl  @@",0
  8194 00004230 00                 
  8195 00004231 203B756E7369676E65-     cmpneg_6 db " ;unsigned : ",0
  8196 0000423A 64203A2000         
  8197 0000423F 5C6E206A6220204040-     cmpneg_7 db "\n jb  @@",0
  8198 00004248 00                 
  8199 00004249 5C6E206A6765204040-     cmpneg_8 db "\n jge @@",0
  8200 00004252 00                 
  8201 00004253 5C6E206A6C65204040-     cmpneg_9 db "\n jle @@",0
  8202 0000425C 00                 
  8203 0000425D 636F6D706172652075-     cmpneg_10 db "compare unknown in CMPNEG()",0
  8204 00004266 6E6B6E6F776E20696E-
  8205 0000426F 20434D504E45472829-
  8206 00004278 00                 
  8207                                  
  8208                                  prlabel:  ; *** PROC ***
  8209                                  ;Function : prlabel, Number of local variables: 1
  8210                                  ;   # type sign width line used address name   list of local variables
  8211                                  ;  200 var sign word   800 NULL bp+4    n;
  8212 00004279 C8000000                 ENTER  0,0
  8213 0000427D 68[A442]                 push prlabel_0
  8214 00004280 E82B0C                   call prs
  8215 00004283 83C402                   add  sp, 2
  8216 00004286 8D06EE81                 lea  ax, [fname]
  8217 0000428A 50                       push ax
  8218 0000428B E8200C                   call prs
  8219 0000428E 83C402                   add  sp, 2
  8220 00004291 FF7604                   push word [bp+4]
  8221 00004294 E81D0D                   call pint1
  8222 00004297 83C402                   add  sp, 2
  8223 0000429A 6A3A                     push 58
  8224 0000429C E8A00B                   call prc
  8225 0000429F 83C402                   add  sp, 2
  8226                                  
  8227                                  ;-801 int prjump (int n) {prs("\n jmp @@"); prs(fname); pint1(n); }
  8228 000042A2 C9                       LEAVE
  8229 000042A3 C3                       ret
  8230                                  ; ENDP
  8231 000042A4 5C6E404000              prlabel_0 db "\n@@",0
  8232                                  
  8233                                  prjump:  ; *** PROC ***
  8234                                  ;Function : prjump, Number of local variables: 1
  8235                                  ;   # type sign width line used address name   list of local variables
  8236                                  ;  200 var sign word   801 NULL bp+4    n;
  8237 000042A9 C8000000                 ENTER  0,0
  8238 000042AD 68[CC42]                 push prjump_0
  8239 000042B0 E8FB0B                   call prs
  8240 000042B3 83C402                   add  sp, 2
  8241 000042B6 8D06EE81                 lea  ax, [fname]
  8242 000042BA 50                       push ax
  8243 000042BB E8F00B                   call prs
  8244 000042BE 83C402                   add  sp, 2
  8245 000042C1 FF7604                   push word [bp+4]
  8246 000042C4 E8ED0C                   call pint1
  8247 000042C7 83C402                   add  sp, 2
  8248                                  
  8249                                  ;-802 int doif() {int jdest; int tst; pexpr(); nlabel++; jdest=nlabel;
  8250 000042CA C9                       LEAVE
  8251 000042CB C3                       ret
  8252                                  ; ENDP
  8253 000042CC 5C6E206A6D70204040-     prjump_0 db "\n jmp @@",0
  8254 000042D5 00                 
  8255                                  
  8256                                  doif:  ; *** PROC ***
  8257                                  ;Function : doif, Number of local variables: 2
  8258                                  ;   # type sign width line used address name   list of local variables
  8259                                  ;  200 var sign word   802 NULL bp-2    jdest
  8260                                  ;  201 var sign word   802 NULL bp-4    tst;
  8261 000042D6 C8040000                 ENTER  4,0
  8262 000042DA E831CF                   call pexpr
  8263 000042DD FF06[4900]               inc  word [nlabel]
  8264 000042E1 A1[4900]                 mov ax, [nlabel]
  8265 000042E4 8946FE                   mov word [bp-2], ax
  8266                                  
  8267                                  ;-803   pint1(jdest); stmt();
  8268                                  
  8269 000042E7 FF76FE                   push word [bp-2]
  8270 000042EA E8C70C                   call pint1
  8271 000042ED 83C402                   add  sp, 2
  8272 000042F0 E869FB                   call stmt
  8273                                  
  8274                                  ;-804   if (istoken(T_ELSE)) { nlabel++; tst=nlabel;
  8275                                  
  8276 000042F3 680202                   push 514
  8277 000042F6 E86F0A                   call istoken
  8278 000042F9 83C402                   add  sp, 2
  8279 000042FC 08C0                     or  al, al
  8280 000042FE 0F842B00                 je @@doif451
  8281 00004302 FF06[4900]               inc  word [nlabel]
  8282 00004306 A1[4900]                 mov ax, [nlabel]
  8283 00004309 8946FC                   mov word [bp-4], ax
  8284                                  
  8285                                  ;-805     prjump(tst); prlabel(jdest); stmt(); prlabel(tst); }
  8286                                  
  8287 0000430C FF76FC                   push word [bp-4]
  8288 0000430F E897FF                   call prjump
  8289 00004312 83C402                   add  sp, 2
  8290 00004315 FF76FE                   push word [bp-2]
  8291 00004318 E85EFF                   call prlabel
  8292 0000431B 83C402                   add  sp, 2
  8293 0000431E E83BFB                   call stmt
  8294 00004321 FF76FC                   push word [bp-4]
  8295 00004324 E852FF                   call prlabel
  8296 00004327 83C402                   add  sp, 2
  8297                                  
  8298                                  ;-806   else prlabel(jdest); }
  8299                                  
  8300 0000432A E90900                   jmp @@doif452
  8301                                  @@doif451:
  8302 0000432D FF76FE                   push word [bp-2]
  8303 00004330 E846FF                   call prlabel
  8304 00004333 83C402                   add  sp, 2
  8305                                  @@doif452:
  8306                                  
  8307                                  ;-807 int doifcarry() {int jdest;  nlabel++; jdest=nlabel;
  8308 00004336 C9                       LEAVE
  8309 00004337 C3                       ret
  8310                                  ; ENDP
  8311                                  
  8312                                  doifcarry:  ; *** PROC ***
  8313                                  ;Function : doifcarry, Number of local variables: 1
  8314                                  ;   # type sign width line used address name   list of local variables
  8315                                  ;  200 var sign word   807 NULL bp-2    jdest;
  8316 00004338 C8020000                 ENTER  2,0
  8317 0000433C FF06[4900]               inc  word [nlabel]
  8318 00004340 A1[4900]                 mov ax, [nlabel]
  8319 00004343 8946FE                   mov word [bp-2], ax
  8320                                  
  8321                                  ;-808   prs("\n jae short @@");/*jnc*/ prs(fname);  pint1(jdest);
  8322                                  
  8323 00004346 68[7143]                 push doifcarry_0
  8324 00004349 E8620B                   call prs
  8325 0000434C 83C402                   add  sp, 2
  8326 0000434F 8D06EE81                 lea  ax, [fname]
  8327 00004353 50                       push ax
  8328 00004354 E8570B                   call prs
  8329 00004357 83C402                   add  sp, 2
  8330 0000435A FF76FE                   push word [bp-2]
  8331 0000435D E8540C                   call pint1
  8332 00004360 83C402                   add  sp, 2
  8333                                  
  8334                                  ;-809   stmt(); prlabel(jdest); }
  8335                                  
  8336 00004363 E8F6FA                   call stmt
  8337 00004366 FF76FE                   push word [bp-2]
  8338 00004369 E80DFF                   call prlabel
  8339 0000436C 83C402                   add  sp, 2
  8340                                  
  8341                                  ;-810 int doifzero() {int jdest;  nlabel++; jdest=nlabel;
  8342 0000436F C9                       LEAVE
  8343 00004370 C3                       ret
  8344                                  ; ENDP
  8345 00004371 5C6E206A6165207368-     doifcarry_0 db "\n jae short @@",0
  8346 0000437A 6F727420404000     
  8347                                  
  8348                                  doifzero:  ; *** PROC ***
  8349                                  ;Function : doifzero, Number of local variables: 1
  8350                                  ;   # type sign width line used address name   list of local variables
  8351                                  ;  200 var sign word   810 NULL bp-2    jdest;
  8352 00004381 C8020000                 ENTER  2,0
  8353 00004385 FF06[4900]               inc  word [nlabel]
  8354 00004389 A1[4900]                 mov ax, [nlabel]
  8355 0000438C 8946FE                   mov word [bp-2], ax
  8356                                  
  8357                                  ;-811   prs("\n jne short @@");        prs(fname);  pint1(jdest);
  8358                                  
  8359 0000438F 68[BA43]                 push doifzero_0
  8360 00004392 E8190B                   call prs
  8361 00004395 83C402                   add  sp, 2
  8362 00004398 8D06EE81                 lea  ax, [fname]
  8363 0000439C 50                       push ax
  8364 0000439D E80E0B                   call prs
  8365 000043A0 83C402                   add  sp, 2
  8366 000043A3 FF76FE                   push word [bp-2]
  8367 000043A6 E80B0C                   call pint1
  8368 000043A9 83C402                   add  sp, 2
  8369                                  
  8370                                  ;-812   stmt(); prlabel(jdest); }
  8371                                  
  8372 000043AC E8ADFA                   call stmt
  8373 000043AF FF76FE                   push word [bp-2]
  8374 000043B2 E8C4FE                   call prlabel
  8375 000043B5 83C402                   add  sp, 2
  8376                                  
  8377                                  ;-813 int dodo() {int jdest; int jtemp;
  8378 000043B8 C9                       LEAVE
  8379 000043B9 C3                       ret
  8380                                  ; ENDP
  8381 000043BA 5C6E206A6E65207368-     doifzero_0 db "\n jne short @@",0
  8382 000043C3 6F727420404000     
  8383                                  
  8384                                  dodo:  ; *** PROC ***
  8385                                  
  8386                                  ;-814   nlabel++; jdest=nlabel; prlabel(jdest); stmt();
  8387                                  
  8388                                  ;Function : dodo, Number of local variables: 2
  8389                                  ;   # type sign width line used address name   list of local variables
  8390                                  ;  200 var sign word   813 NULL bp-2    jdest
  8391                                  ;  201 var sign word   813 NULL bp-4    jtemp;
  8392 000043CA C8040000                 ENTER  4,0
  8393 000043CE FF06[4900]               inc  word [nlabel]
  8394 000043D2 A1[4900]                 mov ax, [nlabel]
  8395 000043D5 8946FE                   mov word [bp-2], ax
  8396 000043D8 FF76FE                   push word [bp-2]
  8397 000043DB E89BFE                   call prlabel
  8398 000043DE 83C402                   add  sp, 2
  8399 000043E1 E878FA                   call stmt
  8400                                  
  8401                                  ;-815   expect(T_WHILE); pexpr(); nlabel++; jtemp=nlabel; pint1(jtemp);
  8402                                  
  8403 000043E4 680302                   push 515
  8404 000043E7 E8A609                   call expect
  8405 000043EA 83C402                   add  sp, 2
  8406 000043ED E81ECE                   call pexpr
  8407 000043F0 FF06[4900]               inc  word [nlabel]
  8408 000043F4 A1[4900]                 mov ax, [nlabel]
  8409 000043F7 8946FC                   mov word [bp-4], ax
  8410 000043FA FF76FC                   push word [bp-4]
  8411 000043FD E8B40B                   call pint1
  8412 00004400 83C402                   add  sp, 2
  8413                                  
  8414                                  ;-816   prjump(jdest); prlabel(jtemp); }
  8415                                  
  8416 00004403 FF76FE                   push word [bp-2]
  8417 00004406 E8A0FE                   call prjump
  8418 00004409 83C402                   add  sp, 2
  8419 0000440C FF76FC                   push word [bp-4]
  8420 0000440F E867FE                   call prlabel
  8421 00004412 83C402                   add  sp, 2
  8422                                  
  8423                                  ;-817 int dowhile() {int jdest; int tst; nlabel++; jdest=nlabel;
  8424 00004415 C9                       LEAVE
  8425 00004416 C3                       ret
  8426                                  ; ENDP
  8427                                  
  8428                                  dowhile:  ; *** PROC ***
  8429                                  ;Function : dowhile, Number of local variables: 2
  8430                                  ;   # type sign width line used address name   list of local variables
  8431                                  ;  200 var sign word   817 NULL bp-2    jdest
  8432                                  ;  201 var sign word   817 NULL bp-4    tst;
  8433 00004417 C8040000                 ENTER  4,0
  8434 0000441B FF06[4900]               inc  word [nlabel]
  8435 0000441F A1[4900]                 mov ax, [nlabel]
  8436 00004422 8946FE                   mov word [bp-2], ax
  8437                                  
  8438                                  ;-818   prlabel(jdest); pexpr(); nlabel++; tst=nlabel; pint1(tst);
  8439                                  
  8440 00004425 FF76FE                   push word [bp-2]
  8441 00004428 E84EFE                   call prlabel
  8442 0000442B 83C402                   add  sp, 2
  8443 0000442E E8DDCD                   call pexpr
  8444 00004431 FF06[4900]               inc  word [nlabel]
  8445 00004435 A1[4900]                 mov ax, [nlabel]
  8446 00004438 8946FC                   mov word [bp-4], ax
  8447 0000443B FF76FC                   push word [bp-4]
  8448 0000443E E8730B                   call pint1
  8449 00004441 83C402                   add  sp, 2
  8450                                  
  8451                                  ;-819   stmt(); prjump(jdest); prlabel(tst); }
  8452                                  
  8453 00004444 E815FA                   call stmt
  8454 00004447 FF76FE                   push word [bp-2]
  8455 0000444A E85CFE                   call prjump
  8456 0000444D 83C402                   add  sp, 2
  8457 00004450 FF76FC                   push word [bp-4]
  8458 00004453 E823FE                   call prlabel
  8459 00004456 83C402                   add  sp, 2
  8460                                  
  8461                                  ;-820 int isrelational() {
  8462 00004459 C9                       LEAVE
  8463 0000445A C3                       ret
  8464                                  ; ENDP
  8465                                  
  8466                                  isrelational:  ; *** PROC ***
  8467                                  
  8468                                  ;-821   if (token==T_EQ) goto w; if (token==T_NE) goto w;
  8469                                  
  8470 0000445B A1[3D00]                 mov ax, [token]
  8471 0000445E 3D2603                   cmp ax, 806
  8472 00004461 0F850300                 jne @@isrelational453
  8473 00004465 E94A00                   jmp @@w
  8474                                  @@isrelational453:
  8475 00004468 A1[3D00]                 mov ax, [token]
  8476 0000446B 3D2703                   cmp ax, 807
  8477 0000446E 0F850300                 jne @@isrelational454
  8478 00004472 E93D00                   jmp @@w
  8479                                  
  8480                                  ;-822   if (token==T_LE) goto w; if (token==T_GE) goto w;
  8481                                  
  8482                                  @@isrelational454:
  8483 00004475 A1[3D00]                 mov ax, [token]
  8484 00004478 3D3803                   cmp ax, 824
  8485 0000447B 0F850300                 jne @@isrelational455
  8486 0000447F E93000                   jmp @@w
  8487                                  @@isrelational455:
  8488 00004482 A1[3D00]                 mov ax, [token]
  8489 00004485 3D2B03                   cmp ax, 811
  8490 00004488 0F850300                 jne @@isrelational456
  8491 0000448C E92300                   jmp @@w
  8492                                  
  8493                                  ;-823   if (token=='<' ) goto w; if (token=='>' ) goto w;
  8494                                  
  8495                                  @@isrelational456:
  8496 0000448F A1[3D00]                 mov ax, [token]
  8497 00004492 83F83C                   cmp ax, 60
  8498 00004495 0F850300                 jne @@isrelational457
  8499 00004499 E91600                   jmp @@w
  8500                                  @@isrelational457:
  8501 0000449C A1[3D00]                 mov ax, [token]
  8502 0000449F 83F83E                   cmp ax, 62
  8503 000044A2 0F850300                 jne @@isrelational458
  8504 000044A6 E90900                   jmp @@w
  8505                                  
  8506                                  ;-824   return 0;  w: iscmp=token; token=getlex(); return 1;}
  8507                                  
  8508                                  @@isrelational458:
  8509 000044A9 66B800000000             mov eax, 0
  8510 000044AF E91500                   jmp @@retn
  8511                                  @@w:
  8512 000044B2 A1[3D00]                 mov ax, [token]
  8513 000044B5 A3[4300]                 mov word [iscmp], ax
  8514 000044B8 E80D00                   call getlex
  8515 000044BB A3[3D00]                 mov word [token], ax
  8516 000044BE 66B801000000             mov eax, 1
  8517 000044C4 E90000                   jmp @@retn
  8518                                  
  8519                                  ;-825  
  8520                                  
  8521                                  
  8522                                  ;-826 char symboltemp[80];    
  8523                                  
  8524                                  @@retn:
  8525 000044C7 C3                       ret
  8526                                  ; ENDP
  8527                                  section .bss
  8528                                  absolute 46920
  8529 0000B748 <res 00000050>          symboltemp resb 80
  8530                                  section .text
  8531                                  
  8532                                  ;-827 int getlex() { char c; char *p; 
  8533                                  
  8534                                  
  8535                                  getlex:  ; *** PROC ***
  8536                                  
  8537                                  ;-828 g1: c=next(); if (c == 0) return 0; if (c <= ' ') goto g1;
  8538                                  
  8539                                  ;Function : getlex, Number of local variables: 2
  8540                                  ;   # type sign width line used address name   list of local variables
  8541                                  ;  200 var sign byte   827 NULL bp-2    c
  8542                                  ;  201 ptr sign byte   827 NULL bp-4    p;
  8543 000044C8 C8040000                 ENTER  4,0
  8544                                  @@g1:
  8545 000044CC E87B08                   call next
  8546 000044CF 8846FE                   mov byte [bp-2], al
  8547 000044D2 8A46FE                   mov al, [bp-2]
  8548 000044D5 3C00                     cmp al, 0
  8549 000044D7 0F850900                 jne @@getlex459
  8550 000044DB 66B800000000             mov eax, 0
  8551 000044E1 E90406                   jmp @@retn
  8552                                  @@getlex459:
  8553 000044E4 8A46FE                   mov al, [bp-2]
  8554 000044E7 3C20                     cmp al, 32
  8555 000044E9 0F8F0200                 jg  @@getlex460
  8556 000044ED EBDD                     jmp @@g1
  8557                                  
  8558                                  ;-829   if (c=='=') {if(thechar=='=') {next(); return T_EQ; }}
  8559                                  
  8560                                  @@getlex460:
  8561 000044EF 8A46FE                   mov al, [bp-2]
  8562 000044F2 3C3D                     cmp al, 61
  8563 000044F4 0F851500                 jne @@getlex461
  8564 000044F8 A0[4200]                 mov al, [thechar]
  8565 000044FB 3C3D                     cmp al, 61
  8566 000044FD 0F850C00                 jne @@getlex462
  8567 00004501 E84608                   call next
  8568 00004504 66B826030000             mov eax, 806
  8569 0000450A E9DB05                   jmp @@retn
  8570                                  @@getlex462:
  8571                                  
  8572                                  ;-830   if (c=='!') {if(thechar=='=') {next(); return T_NE; }}
  8573                                  
  8574                                  @@getlex461:
  8575 0000450D 8A46FE                   mov al, [bp-2]
  8576 00004510 3C21                     cmp al, 33
  8577 00004512 0F851500                 jne @@getlex463
  8578 00004516 A0[4200]                 mov al, [thechar]
  8579 00004519 3C3D                     cmp al, 61
  8580 0000451B 0F850C00                 jne @@getlex464
  8581 0000451F E82808                   call next
  8582 00004522 66B827030000             mov eax, 807
  8583 00004528 E9BD05                   jmp @@retn
  8584                                  @@getlex464:
  8585                                  
  8586                                  ;-831   if (c=='<') {if(thechar=='=') {next(); return T_LE; }}
  8587                                  
  8588                                  @@getlex463:
  8589 0000452B 8A46FE                   mov al, [bp-2]
  8590 0000452E 3C3C                     cmp al, 60
  8591 00004530 0F851500                 jne @@getlex465
  8592 00004534 A0[4200]                 mov al, [thechar]
  8593 00004537 3C3D                     cmp al, 61
  8594 00004539 0F850C00                 jne @@getlex466
  8595 0000453D E80A08                   call next
  8596 00004540 66B838030000             mov eax, 824
  8597 00004546 E99F05                   jmp @@retn
  8598                                  @@getlex466:
  8599                                  
  8600                                  ;-832   if (c=='>') {if(thechar=='=') {next(); return T_GE; }}
  8601                                  
  8602                                  @@getlex465:
  8603 00004549 8A46FE                   mov al, [bp-2]
  8604 0000454C 3C3E                     cmp al, 62
  8605 0000454E 0F851500                 jne @@getlex467
  8606 00004552 A0[4200]                 mov al, [thechar]
  8607 00004555 3C3D                     cmp al, 61
  8608 00004557 0F850C00                 jne @@getlex468
  8609 0000455B E8EC07                   call next
  8610 0000455E 66B82B030000             mov eax, 811
  8611 00004564 E98105                   jmp @@retn
  8612                                  @@getlex468:
  8613                                  
  8614                                  ;-833   if (c=='<') {if(thechar=='<') {next(); return T_LESSLESS;  }}
  8615                                  
  8616                                  @@getlex467:
  8617 00004567 8A46FE                   mov al, [bp-2]
  8618 0000456A 3C3C                     cmp al, 60
  8619 0000456C 0F851500                 jne @@getlex469
  8620 00004570 A0[4200]                 mov al, [thechar]
  8621 00004573 3C3C                     cmp al, 60
  8622 00004575 0F850C00                 jne @@getlex470
  8623 00004579 E8CE07                   call next
  8624 0000457C 66B8D8040000             mov eax, 1240
  8625 00004582 E96305                   jmp @@retn
  8626                                  @@getlex470:
  8627                                  
  8628                                  ;-834   if (c=='>') {if(thechar=='>') {next(); return T_GREATGREAT;}}
  8629                                  
  8630                                  @@getlex469:
  8631 00004585 8A46FE                   mov al, [bp-2]
  8632 00004588 3C3E                     cmp al, 62
  8633 0000458A 0F851500                 jne @@getlex471
  8634 0000458E A0[4200]                 mov al, [thechar]
  8635 00004591 3C3E                     cmp al, 62
  8636 00004593 0F850C00                 jne @@getlex472
  8637 00004597 E8B007                   call next
  8638 0000459A 66B8D9040000             mov eax, 1241
  8639 000045A0 E94505                   jmp @@retn
  8640                                  @@getlex472:
  8641                                  
  8642                                  ;-835   if (c=='+') {if(thechar=='+') {next(); return T_PLUSPLUS;  }}
  8643                                  
  8644                                  @@getlex471:
  8645 000045A3 8A46FE                   mov al, [bp-2]
  8646 000045A6 3C2B                     cmp al, 43
  8647 000045A8 0F851500                 jne @@getlex473
  8648 000045AC A0[4200]                 mov al, [thechar]
  8649 000045AF 3C2B                     cmp al, 43
  8650 000045B1 0F850C00                 jne @@getlex474
  8651 000045B5 E89207                   call next
  8652 000045B8 66B8C3040000             mov eax, 1219
  8653 000045BE E92705                   jmp @@retn
  8654                                  @@getlex474:
  8655                                  
  8656                                  ;-836   if (c=='-') {if(thechar=='-') {next(); return T_MINUSMINUS;}}
  8657                                  
  8658                                  @@getlex473:
  8659 000045C1 8A46FE                   mov al, [bp-2]
  8660 000045C4 3C2D                     cmp al, 45
  8661 000045C6 0F851500                 jne @@getlex475
  8662 000045CA A0[4200]                 mov al, [thechar]
  8663 000045CD 3C2D                     cmp al, 45
  8664 000045CF 0F850C00                 jne @@getlex476
  8665 000045D3 E87407                   call next
  8666 000045D6 66B8C9040000             mov eax, 1225
  8667 000045DC E90905                   jmp @@retn
  8668                                  @@getlex476:
  8669                                  
  8670                                  ;-837   if (c=='+') {if(thechar=='=') {next(); return T_PLUSASS;   }}
  8671                                  
  8672                                  @@getlex475:
  8673 000045DF 8A46FE                   mov al, [bp-2]
  8674 000045E2 3C2B                     cmp al, 43
  8675 000045E4 0F851500                 jne @@getlex477
  8676 000045E8 A0[4200]                 mov al, [thechar]
  8677 000045EB 3C3D                     cmp al, 61
  8678 000045ED 0F850C00                 jne @@getlex478
  8679 000045F1 E85607                   call next
  8680 000045F4 66B8CE040000             mov eax, 1230
  8681 000045FA E9EB04                   jmp @@retn
  8682                                  @@getlex478:
  8683                                  
  8684                                  ;-838   if (c=='-') {if(thechar=='=') {next(); return T_MINUSASS;  }}
  8685                                  
  8686                                  @@getlex477:
  8687 000045FD 8A46FE                   mov al, [bp-2]
  8688 00004600 3C2D                     cmp al, 45
  8689 00004602 0F851500                 jne @@getlex479
  8690 00004606 A0[4200]                 mov al, [thechar]
  8691 00004609 3C3D                     cmp al, 61
  8692 0000460B 0F850C00                 jne @@getlex480
  8693 0000460F E83807                   call next
  8694 00004612 66B8CF040000             mov eax, 1231
  8695 00004618 E9CD04                   jmp @@retn
  8696                                  @@getlex480:
  8697                                  
  8698                                  ;-839   if (c=='&') {if(thechar=='=') {next(); return T_ANDASS;    }}
  8699                                  
  8700                                  @@getlex479:
  8701 0000461B 8A46FE                   mov al, [bp-2]
  8702 0000461E 3C26                     cmp al, 38
  8703 00004620 0F851500                 jne @@getlex481
  8704 00004624 A0[4200]                 mov al, [thechar]
  8705 00004627 3C3D                     cmp al, 61
  8706 00004629 0F850C00                 jne @@getlex482
  8707 0000462D E81A07                   call next
  8708 00004630 66B8D2040000             mov eax, 1234
  8709 00004636 E9AF04                   jmp @@retn
  8710                                  @@getlex482:
  8711                                  
  8712                                  ;-840   if (c=='|') {if(thechar=='=') {next(); return T_ORASS;     }}    
  8713                                  
  8714                                  @@getlex481:
  8715 00004639 8A46FE                   mov al, [bp-2]
  8716 0000463C 3C7C                     cmp al, 124
  8717 0000463E 0F851500                 jne @@getlex483
  8718 00004642 A0[4200]                 mov al, [thechar]
  8719 00004645 3C3D                     cmp al, 61
  8720 00004647 0F850C00                 jne @@getlex484
  8721 0000464B E8FC06                   call next
  8722 0000464E 66B8D3040000             mov eax, 1235
  8723 00004654 E99104                   jmp @@retn
  8724                                  @@getlex484:
  8725                                  
  8726                                  ;-841   if (c=='*') {if(thechar=='=') {next(); return T_MULASS;    }}
  8727                                  
  8728                                  @@getlex483:
  8729 00004657 8A46FE                   mov al, [bp-2]
  8730 0000465A 3C2A                     cmp al, 42
  8731 0000465C 0F851500                 jne @@getlex485
  8732 00004660 A0[4200]                 mov al, [thechar]
  8733 00004663 3C3D                     cmp al, 61
  8734 00004665 0F850C00                 jne @@getlex486
  8735 00004669 E8DE06                   call next
  8736 0000466C 66B8D0040000             mov eax, 1232
  8737 00004672 E97304                   jmp @@retn
  8738                                  @@getlex486:
  8739                                  
  8740                                  ;-842   if (c=='/') {if(thechar=='=') {next(); return T_DIVASS;    }}        
  8741                                  
  8742                                  @@getlex485:
  8743 00004675 8A46FE                   mov al, [bp-2]
  8744 00004678 3C2F                     cmp al, 47
  8745 0000467A 0F851500                 jne @@getlex487
  8746 0000467E A0[4200]                 mov al, [thechar]
  8747 00004681 3C3D                     cmp al, 61
  8748 00004683 0F850C00                 jne @@getlex488
  8749 00004687 E8C006                   call next
  8750 0000468A 66B8D1040000             mov eax, 1233
  8751 00004690 E95504                   jmp @@retn
  8752                                  @@getlex488:
  8753                                  
  8754                                  ;-843   if (instr1("()[]{},;*:%-><=+!&|#?", c)) return c ;
  8755                                  
  8756                                  @@getlex487:
  8757 00004693 8A46FE                   mov al, byte [bp-2]
  8758 00004696 B400                     mov ah, 0
  8759 00004698 50                       push ax
  8760 00004699 68[EA4A]                 push getlex_0
  8761 0000469C E8421B                   call instr1
  8762 0000469F 83C404                   add  sp, 4
  8763 000046A2 08C0                     or  al, al
  8764 000046A4 0F840600                 je @@getlex489
  8765 000046A8 8A46FE                   mov al, [bp-2]
  8766 000046AB E93A04                   jmp @@retn
  8767                                  
  8768                                  ;-844   if (c == '/') { if (thechar == '/') {
  8769                                  
  8770                                  @@getlex489:
  8771 000046AE 8A46FE                   mov al, [bp-2]
  8772 000046B1 3C2F                     cmp al, 47
  8773 000046B3 0F852000                 jne @@getlex490
  8774 000046B7 A0[4200]                 mov al, [thechar]
  8775 000046BA 3C2F                     cmp al, 47
  8776 000046BC 0F851700                 jne @@getlex491
  8777                                  
  8778                                  ;-845       do c=next(); while(c != 13); /* c=next(); */ return getlex(); } }
  8779                                  
  8780                                  @@getlex492:
  8781 000046C0 E88706                   call next
  8782 000046C3 8846FE                   mov byte [bp-2], al
  8783 000046C6 8A46FE                   mov al, [bp-2]
  8784 000046C9 3C0D                     cmp al, 13
  8785 000046CB 0F840200                 je  @@getlex493
  8786 000046CF EBEF                     jmp @@getlex492
  8787                                  @@getlex493:
  8788 000046D1 E8F4FD                   call getlex
  8789 000046D4 E91104                   jmp @@retn
  8790                                  @@getlex491:
  8791                                  
  8792                                  ;-846   if (c == '/') { if (thechar == '*') {
  8793                                  
  8794                                  @@getlex490:
  8795 000046D7 8A46FE                   mov al, [bp-2]
  8796 000046DA 3C2F                     cmp al, 47
  8797 000046DC 0F853D00                 jne @@getlex494
  8798 000046E0 A0[4200]                 mov al, [thechar]
  8799 000046E3 3C2A                     cmp al, 42
  8800 000046E5 0F852B00                 jne @@getlex495
  8801                                  
  8802                                  ;-847       g2: c=next(); if (c != '*') goto g2; if (thechar != '/') goto g2;
  8803                                  
  8804                                  @@g2:
  8805 000046E9 E85E06                   call next
  8806 000046EC 8846FE                   mov byte [bp-2], al
  8807 000046EF 8A46FE                   mov al, [bp-2]
  8808 000046F2 3C2A                     cmp al, 42
  8809 000046F4 0F840200                 je  @@getlex496
  8810 000046F8 EBEF                     jmp @@g2
  8811                                  @@getlex496:
  8812 000046FA A0[4200]                 mov al, [thechar]
  8813 000046FD 3C2F                     cmp al, 47
  8814 000046FF 0F840200                 je  @@getlex497
  8815 00004703 EBE4                     jmp @@g2
  8816                                  
  8817                                  ;-848       c=next(); return getlex(); } else  return '/'; }
  8818                                  
  8819                                  @@getlex497:
  8820 00004705 E84206                   call next
  8821 00004708 8846FE                   mov byte [bp-2], al
  8822 0000470B E8BAFD                   call getlex
  8823 0000470E E9D703                   jmp @@retn
  8824 00004711 E90900                   jmp @@getlex498
  8825                                  @@getlex495:
  8826 00004714 66B82F000000             mov eax, 47
  8827 0000471A E9CB03                   jmp @@retn
  8828                                  @@getlex498:
  8829                                  
  8830                                  ;-849   if (c == '"') {getstring(c); return T_STRING;}
  8831                                  
  8832                                  @@getlex494:
  8833 0000471D 8A46FE                   mov al, [bp-2]
  8834 00004720 3C22                     cmp al, 34
  8835 00004722 0F851500                 jne @@getlex499
  8836 00004726 8A46FE                   mov al, byte [bp-2]
  8837 00004729 B400                     mov ah, 0
  8838 0000472B 50                       push ax
  8839 0000472C E8E105                   call getstring
  8840 0000472F 83C402                   add  sp, 2
  8841 00004732 66B802010000             mov eax, 258
  8842 00004738 E9AD03                   jmp @@retn
  8843                                  
  8844                                  ;-850   if (digit(c)) { getdigit(c); return T_CONST; }
  8845                                  
  8846                                  @@getlex499:
  8847 0000473B 8A46FE                   mov al, byte [bp-2]
  8848 0000473E B400                     mov ah, 0
  8849 00004740 50                       push ax
  8850 00004741 E80A1B                   call digit
  8851 00004744 83C402                   add  sp, 2
  8852 00004747 08C0                     or  al, al
  8853 00004749 0F841500                 je @@getlex500
  8854 0000474D 8A46FE                   mov al, byte [bp-2]
  8855 00004750 B400                     mov ah, 0
  8856 00004752 50                       push ax
  8857 00004753 E8CC04                   call getdigit
  8858 00004756 83C402                   add  sp, 2
  8859 00004759 66B801010000             mov eax, 257
  8860 0000475F E98603                   jmp @@retn
  8861                                  
  8862                                  ;-851   if (c==39) { lexvalL=next();
  8863                                  
  8864                                  @@getlex500:
  8865 00004762 8A46FE                   mov al, [bp-2]
  8866 00004765 3C27                     cmp al, 39
  8867 00004767 0F856800                 jne @@getlex501
  8868 0000476B E8DC05                   call next
  8869 0000476E 66A3[4D00]               mov dword [lexvalL], eax
  8870                                  
  8871                                  ;-852     if (lexvalL==92) {lexvalL=next();
  8872                                  
  8873 00004772 66A1[4D00]               mov eax, [lexvalL]
  8874 00004776 6683F85C                 cmp eax, 92
  8875 0000477A 0F854900                 jne @@getlex502
  8876 0000477E E8C905                   call next
  8877 00004781 66A3[4D00]               mov dword [lexvalL], eax
  8878                                  
  8879                                  ;-853       if (lexvalL=='n') lexvalL=10; if (lexvalL=='t') lexvalL= 9;
  8880                                  
  8881 00004785 66A1[4D00]               mov eax, [lexvalL]
  8882 00004789 6683F86E                 cmp eax, 110
  8883 0000478D 0F850A00                 jne @@getlex503
  8884 00004791 66B80A000000             mov eax, 10
  8885 00004797 66A3[4D00]               mov dword [lexvalL], eax
  8886                                  @@getlex503:
  8887 0000479B 66A1[4D00]               mov eax, [lexvalL]
  8888 0000479F 6683F874                 cmp eax, 116
  8889 000047A3 0F850A00                 jne @@getlex504
  8890 000047A7 66B809000000             mov eax, 9
  8891 000047AD 66A3[4D00]               mov dword [lexvalL], eax
  8892                                  
  8893                                  ;-854       if (lexvalL=='0') lexvalL= 0; } next(); return T_CONST; }
  8894                                  
  8895                                  @@getlex504:
  8896 000047B1 66A1[4D00]               mov eax, [lexvalL]
  8897 000047B5 6683F830                 cmp eax, 48
  8898 000047B9 0F850A00                 jne @@getlex505
  8899 000047BD 66B800000000             mov eax, 0
  8900 000047C3 66A3[4D00]               mov dword [lexvalL], eax
  8901                                  @@getlex505:
  8902                                  @@getlex502:
  8903 000047C7 E88005                   call next
  8904 000047CA 66B801010000             mov eax, 257
  8905 000047D0 E91503                   jmp @@retn
  8906                                  
  8907                                  ;-855   if (letter(c)) { 
  8908                                  
  8909                                  @@getlex501:
  8910 000047D3 8A46FE                   mov al, byte [bp-2]
  8911 000047D6 B400                     mov ah, 0
  8912 000047D8 50                       push ax
  8913 000047D9 E8A51A                   call letter
  8914 000047DC 83C402                   add  sp, 2
  8915 000047DF 08C0                     or  al, al
  8916 000047E1 0F84FA02                 je @@getlex506
  8917                                  
  8918                                  ;-856     strcpy(symboltemp, symbol); p=&symbol;  *p=c;  p++;
  8919                                  
  8920 000047E5 8D066E81                 lea  ax, [symbol]
  8921 000047E9 50                       push ax
  8922 000047EA 8D0648B7                 lea  ax, [symboltemp]
  8923 000047EE 50                       push ax
  8924 000047EF E8B619                   call strcpy
  8925 000047F2 83C404                   add  sp, 4
  8926 000047F5 B86E81                   mov ax, symbol
  8927 000047F8 8946FC                   mov word [bp-4], ax
  8928 000047FB 8A46FE                   mov al, [bp-2]
  8929 000047FE 8B5EFC                   mov  bx, [bp-4]
  8930 00004801 8807                     mov  [bx], al
  8931 00004803 FF46FC                   inc  word [bp-4]
  8932                                  
  8933                                  ;-857     while(letter(thechar)) {c=next(); *p=c;  p++; } 
  8934                                  
  8935                                  @@getlex507:
  8936 00004806 A0[4200]                 mov al, byte [thechar]
  8937 00004809 B400                     mov ah, 0
  8938 0000480B 50                       push ax
  8939 0000480C E8721A                   call letter
  8940 0000480F 83C402                   add  sp, 2
  8941 00004812 08C0                     or  al, al
  8942 00004814 0F841300                 je @@getlex508
  8943 00004818 E82F05                   call next
  8944 0000481B 8846FE                   mov byte [bp-2], al
  8945 0000481E 8A46FE                   mov al, [bp-2]
  8946 00004821 8B5EFC                   mov  bx, [bp-4]
  8947 00004824 8807                     mov  [bx], al
  8948 00004826 FF46FC                   inc  word [bp-4]
  8949                                  
  8950                                  ;-858       *p=0;
  8951                                  
  8952 00004829 EBDB                     jmp @@getlex507
  8953                                  @@getlex508:
  8954 0000482B 66B800000000             mov eax, 0
  8955 00004831 8B5EFC                   mov  bx, [bp-4]
  8956 00004834 8807                     mov  [bx], al
  8957                                  
  8958                                  ;-859     if (eqstr(symbol,"signed"  )) return T_SIGNED;
  8959                                  
  8960 00004836 68[004B]                 push getlex_1
  8961 00004839 8D066E81                 lea  ax, [symbol]
  8962 0000483D 50                       push ax
  8963 0000483E E8BB1A                   call eqstr
  8964 00004841 83C404                   add  sp, 4
  8965 00004844 08C0                     or  al, al
  8966 00004846 0F840900                 je @@getlex509
  8967 0000484A 66B813020000             mov eax, 531
  8968 00004850 E99502                   jmp @@retn
  8969                                  
  8970                                  ;-860     if (eqstr(symbol,"unsigned")) return T_UNSIGNED;
  8971                                  
  8972                                  @@getlex509:
  8973 00004853 68[074B]                 push getlex_2
  8974 00004856 8D066E81                 lea  ax, [symbol]
  8975 0000485A 50                       push ax
  8976 0000485B E89E1A                   call eqstr
  8977 0000485E 83C404                   add  sp, 4
  8978 00004861 08C0                     or  al, al
  8979 00004863 0F840900                 je @@getlex510
  8980 00004867 66B814020000             mov eax, 532
  8981 0000486D E97802                   jmp @@retn
  8982                                  
  8983                                  ;-861     if (eqstr(symbol,"void"    )) return T_VOID;
  8984                                  
  8985                                  @@getlex510:
  8986 00004870 68[104B]                 push getlex_3
  8987 00004873 8D066E81                 lea  ax, [symbol]
  8988 00004877 50                       push ax
  8989 00004878 E8811A                   call eqstr
  8990 0000487B 83C404                   add  sp, 4
  8991 0000487E 08C0                     or  al, al
  8992 00004880 0F840900                 je @@getlex511
  8993 00004884 66B811020000             mov eax, 529
  8994 0000488A E95B02                   jmp @@retn
  8995                                  
  8996                                  ;-862     if (eqstr(symbol,"int"     )) return T_INT;
  8997                                  
  8998                                  @@getlex511:
  8999 0000488D 68[154B]                 push getlex_4
  9000 00004890 8D066E81                 lea  ax, [symbol]
  9001 00004894 50                       push ax
  9002 00004895 E8641A                   call eqstr
  9003 00004898 83C404                   add  sp, 4
  9004 0000489B 08C0                     or  al, al
  9005 0000489D 0F840900                 je @@getlex512
  9006 000048A1 66B805020000             mov eax, 517
  9007 000048A7 E93E02                   jmp @@retn
  9008                                  
  9009                                  ;-863     if (eqstr(symbol,"short"   )) return T_SHORT;
  9010                                  
  9011                                  @@getlex512:
  9012 000048AA 68[194B]                 push getlex_5
  9013 000048AD 8D066E81                 lea  ax, [symbol]
  9014 000048B1 50                       push ax
  9015 000048B2 E8471A                   call eqstr
  9016 000048B5 83C404                   add  sp, 4
  9017 000048B8 08C0                     or  al, al
  9018 000048BA 0F840900                 je @@getlex513
  9019 000048BE 66B816020000             mov eax, 534
  9020 000048C4 E92102                   jmp @@retn
  9021                                  
  9022                                  ;-864     if (eqstr(symbol,"long"    )) return T_LONG;
  9023                                  
  9024                                  @@getlex513:
  9025 000048C7 68[1F4B]                 push getlex_6
  9026 000048CA 8D066E81                 lea  ax, [symbol]
  9027 000048CE 50                       push ax
  9028 000048CF E82A1A                   call eqstr
  9029 000048D2 83C404                   add  sp, 4
  9030 000048D5 08C0                     or  al, al
  9031 000048D7 0F840900                 je @@getlex514
  9032 000048DB 66B815020000             mov eax, 533
  9033 000048E1 E90402                   jmp @@retn
  9034                                  
  9035                                  ;-865     if (eqstr(symbol,"uint32"  )) return T_UINT32;
  9036                                  
  9037                                  @@getlex514:
  9038 000048E4 68[244B]                 push getlex_7
  9039 000048E7 8D066E81                 lea  ax, [symbol]
  9040 000048EB 50                       push ax
  9041 000048EC E80D1A                   call eqstr
  9042 000048EF 83C404                   add  sp, 4
  9043 000048F2 08C0                     or  al, al
  9044 000048F4 0F840900                 je @@getlex515
  9045 000048F8 66B821020000             mov eax, 545
  9046 000048FE E9E701                   jmp @@retn
  9047                                  
  9048                                  ;-866     if (eqstr(symbol,"inth"    )) return T_INTH;
  9049                                  
  9050                                  @@getlex515:
  9051 00004901 68[2B4B]                 push getlex_8
  9052 00004904 8D066E81                 lea  ax, [symbol]
  9053 00004908 50                       push ax
  9054 00004909 E8F019                   call eqstr
  9055 0000490C 83C404                   add  sp, 4
  9056 0000490F 08C0                     or  al, al
  9057 00004911 0F840900                 je @@getlex516
  9058 00004915 66B858020000             mov eax, 600
  9059 0000491B E9CA01                   jmp @@retn
  9060                                  
  9061                                  ;-867     if (eqstr(symbol,"char"    )) return T_CHAR;
  9062                                  
  9063                                  @@getlex516:
  9064 0000491E 68[304B]                 push getlex_9
  9065 00004921 8D066E81                 lea  ax, [symbol]
  9066 00004925 50                       push ax
  9067 00004926 E8D319                   call eqstr
  9068 00004929 83C404                   add  sp, 4
  9069 0000492C 08C0                     or  al, al
  9070 0000492E 0F840900                 je @@getlex517
  9071 00004932 66B812020000             mov eax, 530
  9072 00004938 E9AD01                   jmp @@retn
  9073                                  
  9074                                  ;-868     if (eqstr(symbol,"asm"     )) return T_ASM;
  9075                                  
  9076                                  @@getlex517:
  9077 0000493B 68[354B]                 push getlex_10
  9078 0000493E 8D066E81                 lea  ax, [symbol]
  9079 00004942 50                       push ax
  9080 00004943 E8B619                   call eqstr
  9081 00004946 83C404                   add  sp, 4
  9082 00004949 08C0                     or  al, al
  9083 0000494B 0F840900                 je @@getlex518
  9084 0000494F 66B806020000             mov eax, 518
  9085 00004955 E99001                   jmp @@retn
  9086                                  
  9087                                  ;-869     if (eqstr(symbol,"__asm"   )) return T_ASMBLOCK;
  9088                                  
  9089                                  @@getlex518:
  9090 00004958 68[394B]                 push getlex_11
  9091 0000495B 8D066E81                 lea  ax, [symbol]
  9092 0000495F 50                       push ax
  9093 00004960 E89919                   call eqstr
  9094 00004963 83C404                   add  sp, 4
  9095 00004966 08C0                     or  al, al
  9096 00004968 0F840900                 je @@getlex519
  9097 0000496C 66B807020000             mov eax, 519
  9098 00004972 E97301                   jmp @@retn
  9099                                  
  9100                                  ;-870     if (eqstr(symbol,"__emit__")) return T_EMIT;
  9101                                  
  9102                                  @@getlex519:
  9103 00004975 68[3F4B]                 push getlex_12
  9104 00004978 8D066E81                 lea  ax, [symbol]
  9105 0000497C 50                       push ax
  9106 0000497D E87C19                   call eqstr
  9107 00004980 83C404                   add  sp, 4
  9108 00004983 08C0                     or  al, al
  9109 00004985 0F840900                 je @@getlex520
  9110 00004989 66B808020000             mov eax, 520
  9111 0000498F E95601                   jmp @@retn
  9112                                  
  9113                                  ;-871     if (eqstr(symbol,"return"  )) return T_RETURN;
  9114                                  
  9115                                  @@getlex520:
  9116 00004992 68[484B]                 push getlex_13
  9117 00004995 8D066E81                 lea  ax, [symbol]
  9118 00004999 50                       push ax
  9119 0000499A E85F19                   call eqstr
  9120 0000499D 83C404                   add  sp, 4
  9121 000049A0 08C0                     or  al, al
  9122 000049A2 0F840900                 je @@getlex521
  9123 000049A6 66B800020000             mov eax, 512
  9124 000049AC E93901                   jmp @@retn
  9125                                  
  9126                                  ;-872     if (eqstr(symbol,"if"      )) return T_IF;
  9127                                  
  9128                                  @@getlex521:
  9129 000049AF 68[4F4B]                 push getlex_14
  9130 000049B2 8D066E81                 lea  ax, [symbol]
  9131 000049B6 50                       push ax
  9132 000049B7 E84219                   call eqstr
  9133 000049BA 83C404                   add  sp, 4
  9134 000049BD 08C0                     or  al, al
  9135 000049BF 0F840900                 je @@getlex522
  9136 000049C3 66B801020000             mov eax, 513
  9137 000049C9 E91C01                   jmp @@retn
  9138                                  
  9139                                  ;-873     if (eqstr(symbol,"ifcarry" )) return T_IFCARRY;
  9140                                  
  9141                                  @@getlex522:
  9142 000049CC 68[524B]                 push getlex_15
  9143 000049CF 8D066E81                 lea  ax, [symbol]
  9144 000049D3 50                       push ax
  9145 000049D4 E82519                   call eqstr
  9146 000049D7 83C404                   add  sp, 4
  9147 000049DA 08C0                     or  al, al
  9148 000049DC 0F840900                 je @@getlex523
  9149 000049E0 66B859020000             mov eax, 601
  9150 000049E6 E9FF00                   jmp @@retn
  9151                                  
  9152                                  ;-874     if (eqstr(symbol,"ifzero"  )) return T_IFZERO;
  9153                                  
  9154                                  @@getlex523:
  9155 000049E9 68[5A4B]                 push getlex_16
  9156 000049EC 8D066E81                 lea  ax, [symbol]
  9157 000049F0 50                       push ax
  9158 000049F1 E80819                   call eqstr
  9159 000049F4 83C404                   add  sp, 4
  9160 000049F7 08C0                     or  al, al
  9161 000049F9 0F840900                 je @@getlex524
  9162 000049FD 66B85A020000             mov eax, 602
  9163 00004A03 E9E200                   jmp @@retn
  9164                                  
  9165                                  ;-875     if (eqstr(symbol,"else"    )) return T_ELSE;
  9166                                  
  9167                                  @@getlex524:
  9168 00004A06 68[614B]                 push getlex_17
  9169 00004A09 8D066E81                 lea  ax, [symbol]
  9170 00004A0D 50                       push ax
  9171 00004A0E E8EB18                   call eqstr
  9172 00004A11 83C404                   add  sp, 4
  9173 00004A14 08C0                     or  al, al
  9174 00004A16 0F840900                 je @@getlex525
  9175 00004A1A 66B802020000             mov eax, 514
  9176 00004A20 E9C500                   jmp @@retn
  9177                                  
  9178                                  ;-876     if (eqstr(symbol,"while"   )) return T_WHILE;
  9179                                  
  9180                                  @@getlex525:
  9181 00004A23 68[664B]                 push getlex_18
  9182 00004A26 8D066E81                 lea  ax, [symbol]
  9183 00004A2A 50                       push ax
  9184 00004A2B E8CE18                   call eqstr
  9185 00004A2E 83C404                   add  sp, 4
  9186 00004A31 08C0                     or  al, al
  9187 00004A33 0F840900                 je @@getlex526
  9188 00004A37 66B803020000             mov eax, 515
  9189 00004A3D E9A800                   jmp @@retn
  9190                                  
  9191                                  ;-877     if (eqstr(symbol,"do"      )) return T_DO;
  9192                                  
  9193                                  @@getlex526:
  9194 00004A40 68[6C4B]                 push getlex_19
  9195 00004A43 8D066E81                 lea  ax, [symbol]
  9196 00004A47 50                       push ax
  9197 00004A48 E8B118                   call eqstr
  9198 00004A4B 83C404                   add  sp, 4
  9199 00004A4E 08C0                     or  al, al
  9200 00004A50 0F840900                 je @@getlex527
  9201 00004A54 66B804020000             mov eax, 516
  9202 00004A5A E98B00                   jmp @@retn
  9203                                  
  9204                                  ;-878     if (eqstr(symbol,"goto"    )) return T_GOTO;
  9205                                  
  9206                                  @@getlex527:
  9207 00004A5D 68[6F4B]                 push getlex_20
  9208 00004A60 8D066E81                 lea  ax, [symbol]
  9209 00004A64 50                       push ax
  9210 00004A65 E89418                   call eqstr
  9211 00004A68 83C404                   add  sp, 4
  9212 00004A6B 08C0                     or  al, al
  9213 00004A6D 0F840900                 je @@getlex528
  9214 00004A71 66B809020000             mov eax, 521
  9215 00004A77 E96E00                   jmp @@retn
  9216                                  
  9217                                  ;-879     if (eqstr(symbol,"define"  )) return T_DEFINE;   
  9218                                  
  9219                                  @@getlex528:
  9220 00004A7A 68[744B]                 push getlex_21
  9221 00004A7D 8D066E81                 lea  ax, [symbol]
  9222 00004A81 50                       push ax
  9223 00004A82 E87718                   call eqstr
  9224 00004A85 83C404                   add  sp, 4
  9225 00004A88 08C0                     or  al, al
  9226 00004A8A 0F840900                 je @@getlex529
  9227 00004A8E 66B8FF010000             mov eax, 511
  9228 00004A94 E95100                   jmp @@retn
  9229                                  
  9230                                  ;-880     if (eqstr(symbol,"include" )) return T_INCLUDE;   
  9231                                  
  9232                                  @@getlex529:
  9233 00004A97 68[7B4B]                 push getlex_22
  9234 00004A9A 8D066E81                 lea  ax, [symbol]
  9235 00004A9E 50                       push ax
  9236 00004A9F E85A18                   call eqstr
  9237 00004AA2 83C404                   add  sp, 4
  9238 00004AA5 08C0                     or  al, al
  9239 00004AA7 0F840900                 je @@getlex530
  9240 00004AAB 66B8FE010000             mov eax, 510
  9241 00004AB1 E93400                   jmp @@retn
  9242                                  
  9243                                  ;-881     if (convertdefine() ) {strcpy(symbol, symboltemp); return T_CONST;}
  9244                                  
  9245                                  @@getlex530:
  9246 00004AB4 E8E600                   call convertdefine
  9247 00004AB7 08C0                     or  al, al
  9248 00004AB9 0F841900                 je @@getlex531
  9249 00004ABD 8D0648B7                 lea  ax, [symboltemp]
  9250 00004AC1 50                       push ax
  9251 00004AC2 8D066E81                 lea  ax, [symbol]
  9252 00004AC6 50                       push ax
  9253 00004AC7 E8DE16                   call strcpy
  9254 00004ACA 83C404                   add  sp, 4
  9255 00004ACD 66B801010000             mov eax, 257
  9256 00004AD3 E91200                   jmp @@retn
  9257                                  
  9258                                  ;-882     return T_NAME; } error1("Input item not recognized"); }
  9259                                  
  9260                                  @@getlex531:
  9261 00004AD6 66B800010000             mov eax, 256
  9262 00004ADC E90900                   jmp @@retn
  9263                                  @@getlex506:
  9264 00004ADF 68[834B]                 push getlex_23
  9265 00004AE2 E8CA06                   call error1
  9266 00004AE5 83C402                   add  sp, 2
  9267                                  
  9268                                  ;-883 
  9269                                  
  9270                                  
  9271                                  ;-884 int convertdefine() { int i; int j;   i=0;
  9272                                  
  9273 00004AE8 C9                      @@retn: LEAVE
  9274 00004AE9 C3                       ret
  9275                                  ; ENDP
  9276 00004AEA 28295B5D7B7D2C3B2A-     getlex_0 db "()[]{},;*:%-><=+!&|#?",0
  9277 00004AF3 3A252D3E3C3D2B2126-
  9278 00004AFC 7C233F00           
  9279 00004B00 7369676E656400          getlex_1 db "signed",0
  9280 00004B07 756E7369676E656400      getlex_2 db "unsigned",0
  9281 00004B10 766F696400              getlex_3 db "void",0
  9282 00004B15 696E7400                getlex_4 db "int",0
  9283 00004B19 73686F727400            getlex_5 db "short",0
  9284 00004B1F 6C6F6E6700              getlex_6 db "long",0
  9285 00004B24 75696E74333200          getlex_7 db "uint32",0
  9286 00004B2B 696E746800              getlex_8 db "inth",0
  9287 00004B30 6368617200              getlex_9 db "char",0
  9288 00004B35 61736D00                getlex_10 db "asm",0
  9289 00004B39 5F5F61736D00            getlex_11 db "__asm",0
  9290 00004B3F 5F5F656D69745F5F00      getlex_12 db "__emit__",0
  9291 00004B48 72657475726E00          getlex_13 db "return",0
  9292 00004B4F 696600                  getlex_14 db "if",0
  9293 00004B52 6966636172727900        getlex_15 db "ifcarry",0
  9294 00004B5A 69667A65726F00          getlex_16 db "ifzero",0
  9295 00004B61 656C736500              getlex_17 db "else",0
  9296 00004B66 7768696C6500            getlex_18 db "while",0
  9297 00004B6C 646F00                  getlex_19 db "do",0
  9298 00004B6F 676F746F00              getlex_20 db "goto",0
  9299 00004B74 646566696E6500          getlex_21 db "define",0
  9300 00004B7B 696E636C75646500        getlex_22 db "include",0
  9301 00004B83 496E70757420697465-     getlex_23 db "Input item not recognized",0
  9302 00004B8C 6D206E6F7420726563-
  9303 00004B95 6F676E697A656400   
  9304                                  
  9305                                  convertdefine:  ; *** PROC ***
  9306                                  ;Function : convertdefine, Number of local variables: 2
  9307                                  ;   # type sign width line used address name   list of local variables
  9308                                  ;  200 var sign word   884 NULL bp-2    i
  9309                                  ;  201 var sign word   884 NULL bp-4    j;
  9310 00004B9D C8040000                 ENTER  4,0
  9311 00004BA1 66B800000000             mov eax, 0
  9312 00004BA7 8946FE                   mov word [bp-2], ax
  9313                                  
  9314                                  ;-885   while (i < GTop) {  j=GName[i]; from_far(NA, j);
  9315                                  
  9316                                  @@convertdefine532:
  9317 00004BAA 8B46FE                   mov ax, [bp-2]
  9318 00004BAD 3B06[5E00]               cmp ax, [GTop]
  9319 00004BB1 0F8D6200                 jge @@convertdefine533
  9320 00004BB5 8B5EFE                   mov bx, [bp-2]
  9321 00004BB8 D1E3                     shl bx, 1
  9322 00004BBA 8B874B94                 mov ax, [GName + bx]
  9323 00004BBE 8946FC                   mov word [bp-4], ax
  9324 00004BC1 FF76FC                   push word [bp-4]
  9325 00004BC4 8D06[7200]               lea  ax, [NA]
  9326 00004BC8 50                       push ax
  9327 00004BC9 E8D912                   call from_far
  9328 00004BCC 83C404                   add  sp, 4
  9329                                  
  9330                                  ;-886    if (eqstr(symbol, NA)) { if (GType[i]=='#') { lexvalL=GData[i];
  9331                                  
  9332 00004BCF 8D06[7200]               lea  ax, [NA]
  9333 00004BD3 50                       push ax
  9334 00004BD4 8D066E81                 lea  ax, [symbol]
  9335 00004BD8 50                       push ax
  9336 00004BD9 E82017                   call eqstr
  9337 00004BDC 83C404                   add  sp, 4
  9338 00004BDF 08C0                     or  al, al
  9339 00004BE1 0F842D00                 je @@convertdefine534
  9340 00004BE5 8B5EFE                   mov bx, [bp-2]
  9341 00004BE8 8A87B782                 mov al, [GType + bx]
  9342 00004BEC 3C23                     cmp al, 35
  9343 00004BEE 0F852000                 jne @@convertdefine535
  9344 00004BF2 8B5EFE                   mov bx, [bp-2]
  9345 00004BF5 C1E302                   shl bx, 2
  9346 00004BF8 668B87EB8A               mov eax, [GData + bx]
  9347 00004BFD 66A3[4D00]               mov dword [lexvalL], eax
  9348                                  
  9349                                  ;-887      eax=lexvalL; _ lexvalL=eax;   return T_CONST; } }      i++; }
  9350                                  
  9351 00004C01 66A1[4D00]               mov  eax, [lexvalL]
  9352 00004C05 66A3[4D00]              mov [lexvalL], eax
  9353 00004C09 66B801010000             mov eax, 257
  9354 00004C0F E90E00                   jmp @@retn
  9355                                  @@convertdefine535:
  9356                                  @@convertdefine534:
  9357 00004C12 FF46FE                   inc  word [bp-2]
  9358                                  
  9359                                  ;-888    return 0;
  9360                                  
  9361 00004C15 EB93                     jmp @@convertdefine532
  9362                                  @@convertdefine533:
  9363 00004C17 66B800000000             mov eax, 0
  9364 00004C1D E90000                   jmp @@retn
  9365                                  
  9366                                  ;-889 }
  9367                                  
  9368                                  
  9369                                  ;-890 long getdigit(unsigned char c) { unsigned long L;
  9370                                  
  9371 00004C20 C9                      @@retn: LEAVE
  9372 00004C21 C3                       ret
  9373                                  ; ENDP
  9374                                  
  9375                                  getdigit:  ; *** PROC ***
  9376                                  
  9377                                  ;-891     _ lexvalL=0;    c-='0';
  9378                                  
  9379                                  ;Function : getdigit, Number of local variables: 2
  9380                                  ;   # type sign width line used address name   list of local variables
  9381                                  ;  200 var unsg byte   890 NULL bp+4    c
  9382                                  ;  201 var unsg dwrd   890 NULL bp-4    L;
  9383 00004C22 C8040000                 ENTER  4,0
  9384 00004C26 66C706[4D00]000000-     mov dword [lexvalL], 0
  9385 00004C2E 00                 
  9386 00004C2F 806E0430                 sub  byte [bp+4], 48
  9387                                  
  9388                                  ;-892     eax=c;/* cast B2L */  _ lexvalL=eax;
  9389                                  
  9390 00004C33 660FB64604               movzx  eax, byte [bp+4]
  9391 00004C38 66A3[4D00]              mov [lexvalL], eax
  9392                                  
  9393                                  ;-893     if (thechar=='x') thechar='X';
  9394                                  
  9395 00004C3C A0[4200]                 mov al, [thechar]
  9396 00004C3F 3C78                     cmp al, 120
  9397 00004C41 0F850900                 jne @@getdigit536
  9398 00004C45 66B858000000             mov eax, 88
  9399 00004C4B A2[4200]                 mov byte [thechar], al
  9400                                  
  9401                                  ;-894     if (thechar=='X') { next();
  9402                                  
  9403                                  @@getdigit536:
  9404 00004C4E A0[4200]                 mov al, [thechar]
  9405 00004C51 3C58                     cmp al, 88
  9406 00004C53 0F855D00                 jne @@getdigit537
  9407 00004C57 E8F000                   call next
  9408                                  
  9409                                  ;-895       while(letter(thechar)) { c=next(); if(_ c>96) c-=39;
  9410                                  
  9411                                  @@getdigit538:
  9412 00004C5A A0[4200]                 mov al, byte [thechar]
  9413 00004C5D B400                     mov ah, 0
  9414 00004C5F 50                       push ax
  9415 00004C60 E81E16                   call letter
  9416 00004C63 83C402                   add  sp, 2
  9417 00004C66 08C0                     or  al, al
  9418 00004C68 0F844500                 je @@getdigit539
  9419 00004C6C E8DB00                   call next
  9420 00004C6F 884604                   mov byte [bp+4], al
  9421 00004C72 807E0460                cmp byte [bp+4], 96
  9422 00004C76 0F8E0400                 jle @@getdigit540
  9423 00004C7A 806E0427                 sub  byte [bp+4], 39
  9424                                  
  9425                                  ;-896 	      if (_ c>64) c-=7; c-=48; lexvalL=lexvalL << 4; // * 16
  9426                                  
  9427                                  @@getdigit540:
  9428 00004C7E 807E0440                cmp byte [bp+4], 64
  9429 00004C82 0F8E0400                 jle @@getdigit541
  9430 00004C86 806E0407                 sub  byte [bp+4], 7
  9431                                  @@getdigit541:
  9432 00004C8A 806E0430                 sub  byte [bp+4], 48
  9433 00004C8E 66A1[4D00]               mov eax, [lexvalL]
  9434 00004C92 66C1E004                 shl eax, 4
  9435 00004C96 66A3[4D00]               mov dword [lexvalL], eax
  9436                                  
  9437                                  ;-897     eax=c;/* cast B2L */  _ L=eax;  lexvalL=lexvalL+L; } }
  9438                                  
  9439 00004C9A 660FB64604               movzx  eax, byte [bp+4]
  9440 00004C9F 668946FC                mov [bp-4], eax
  9441 00004CA3 66A1[4D00]               mov eax, [lexvalL]
  9442 00004CA7 660346FC                 add eax, [bp-4]
  9443 00004CAB 66A3[4D00]               mov dword [lexvalL], eax
  9444 00004CAF EBA9                     jmp @@getdigit538
  9445                                  @@getdigit539:
  9446                                  
  9447                                  ;-898     else
  9448                                  
  9449                                  
  9450                                  ;-899     { while(digit(thechar )) { c=next(); c-='0'; lexvalL=lexvalL*10;
  9451                                  
  9452 00004CB1 E94400                   jmp @@getdigit542
  9453                                  @@getdigit537:
  9454                                  @@getdigit543:
  9455 00004CB4 A0[4200]                 mov al, byte [thechar]
  9456 00004CB7 B400                     mov ah, 0
  9457 00004CB9 50                       push ax
  9458 00004CBA E89115                   call digit
  9459 00004CBD 83C402                   add  sp, 2
  9460 00004CC0 08C0                     or  al, al
  9461 00004CC2 0F843200                 je @@getdigit544
  9462 00004CC6 E88100                   call next
  9463 00004CC9 884604                   mov byte [bp+4], al
  9464 00004CCC 806E0430                 sub  byte [bp+4], 48
  9465 00004CD0 66A1[4D00]               mov eax, [lexvalL]
  9466 00004CD4 66BB0A000000             mov ebx, 10
  9467 00004CDA 66F7E3                   mul ebx
  9468 00004CDD 66A3[4D00]               mov dword [lexvalL], eax
  9469                                  
  9470                                  ;-900     eax=c;/* cast B2L */  _ L=eax;  lexvalL=lexvalL+L; } }
  9471                                  
  9472 00004CE1 660FB64604               movzx  eax, byte [bp+4]
  9473 00004CE6 668946FC                mov [bp-4], eax
  9474 00004CEA 66A1[4D00]               mov eax, [lexvalL]
  9475 00004CEE 660346FC                 add eax, [bp-4]
  9476 00004CF2 66A3[4D00]               mov dword [lexvalL], eax
  9477 00004CF6 EBBC                     jmp @@getdigit543
  9478                                  @@getdigit544:
  9479                                  
  9480                                  ;-901     _ islong=0; if (_ lexvalL > 0xFFFF) islong++;
  9481                                  
  9482                                  @@getdigit542:
  9483 00004CF8 C606[5100]00            mov byte [islong], 0
  9484 00004CFD 66813E[4D00]FFFF00-     cmp dword [lexvalL], 65535
  9485 00004D05 00                 
  9486 00004D06 0F8E0400                 jle @@getdigit545
  9487 00004D0A FE06[5100]               inc  byte [islong]
  9488                                  
  9489                                  ;-902 }
  9490                                  
  9491                                  @@getdigit545:
  9492                                  
  9493                                  ;-903 int getstring(int delim) {int c; char *p;  p=&symbol; c=next();
  9494 00004D0E C9                       LEAVE
  9495 00004D0F C3                       ret
  9496                                  ; ENDP
  9497                                  
  9498                                  getstring:  ; *** PROC ***
  9499                                  ;Function : getstring, Number of local variables: 3
  9500                                  ;   # type sign width line used address name   list of local variables
  9501                                  ;  200 var sign word   903 NULL bp+4    delim
  9502                                  ;  201 var sign word   903 NULL bp-2    c
  9503                                  ;  202 ptr sign byte   903 NULL bp-4    p;
  9504 00004D10 C8040000                 ENTER  4,0
  9505 00004D14 B86E81                   mov ax, symbol
  9506 00004D17 8946FC                   mov word [bp-4], ax
  9507 00004D1A E82D00                   call next
  9508 00004D1D 8946FE                   mov word [bp-2], ax
  9509                                  
  9510                                  ;-904   while (c != delim) {*p=c; p++; c=next(); } *p=0; }
  9511                                  
  9512                                  @@getstring546:
  9513 00004D20 8B46FE                   mov ax, [bp-2]
  9514 00004D23 3B4604                   cmp ax, [bp+4]
  9515 00004D26 0F841300                 je  @@getstring547
  9516 00004D2A 8B46FE                   mov ax, [bp-2]
  9517 00004D2D 8B5EFC                   mov  bx, [bp-4]
  9518 00004D30 8807                     mov  [bx], al
  9519 00004D32 FF46FC                   inc  word [bp-4]
  9520 00004D35 E81200                   call next
  9521 00004D38 8946FE                   mov word [bp-2], ax
  9522 00004D3B EBE3                     jmp @@getstring546
  9523                                  @@getstring547:
  9524 00004D3D 66B800000000             mov eax, 0
  9525 00004D43 8B5EFC                   mov  bx, [bp-4]
  9526 00004D46 8807                     mov  [bx], al
  9527                                  
  9528                                  ;-905 
  9529                                  
  9530                                  
  9531                                  ;-906 int next() {char r; r = thechar; globC=r; thechar = fgets1(); return r; }
  9532 00004D48 C9                       LEAVE
  9533 00004D49 C3                       ret
  9534                                  ; ENDP
  9535                                  
  9536                                  next:  ; *** PROC ***
  9537                                  ;Function : next, Number of local variables: 1
  9538                                  ;   # type sign width line used address name   list of local variables
  9539                                  ;  200 var sign byte   906 NULL bp-2    r;
  9540 00004D4A C8020000                 ENTER  2,0
  9541 00004D4E A0[4200]                 mov al, [thechar]
  9542 00004D51 8846FE                   mov byte [bp-2], al
  9543 00004D54 8A46FE                   mov al, [bp-2]
  9544 00004D57 A2[3F00]                 mov byte [globC], al
  9545 00004D5A E85303                   call fgets1
  9546 00004D5D A2[4200]                 mov byte [thechar], al
  9547 00004D60 8A46FE                   mov al, [bp-2]
  9548 00004D63 E90000                   jmp @@retn
  9549                                  
  9550                                  ;-907 int istoken(int t) {if (token == t) { token=getlex(); return 1; } return 0;}
  9551                                  
  9552 00004D66 C9                      @@retn: LEAVE
  9553 00004D67 C3                       ret
  9554                                  ; ENDP
  9555                                  
  9556                                  istoken:  ; *** PROC ***
  9557                                  ;Function : istoken, Number of local variables: 1
  9558                                  ;   # type sign width line used address name   list of local variables
  9559                                  ;  200 var sign word   907 NULL bp+4    t;
  9560 00004D68 C8000000                 ENTER  0,0
  9561 00004D6C A1[3D00]                 mov ax, [token]
  9562 00004D6F 3B4604                   cmp ax, [bp+4]
  9563 00004D72 0F850F00                 jne @@istoken548
  9564 00004D76 E84FF7                   call getlex
  9565 00004D79 A3[3D00]                 mov word [token], ax
  9566 00004D7C 66B801000000             mov eax, 1
  9567 00004D82 E90900                   jmp @@retn
  9568                                  @@istoken548:
  9569 00004D85 66B800000000             mov eax, 0
  9570 00004D8B E90000                   jmp @@retn
  9571                                  
  9572                                  ;-908 int expect(int t) {if (istoken(t)==0) { *cloc=0; prs(co); listproc();
  9573                                  
  9574 00004D8E C9                      @@retn: LEAVE
  9575 00004D8F C3                       ret
  9576                                  ; ENDP
  9577                                  
  9578                                  expect:  ; *** PROC ***
  9579                                  ;Function : expect, Number of local variables: 1
  9580                                  ;   # type sign width line used address name   list of local variables
  9581                                  ;  200 var sign word   908 NULL bp+4    t;
  9582 00004D90 C8000000                 ENTER  0,0
  9583 00004D94 FF7604                   push word [bp+4]
  9584 00004D97 E8CEFF                   call istoken
  9585 00004D9A 83C402                   add  sp, 2
  9586 00004D9D 83F800                   cmp ax, 0
  9587 00004DA0 0F853500                 jne @@expect549
  9588 00004DA4 66B800000000             mov eax, 0
  9589 00004DAA 8B1E[3000]               mov  bx, [cloc]
  9590 00004DAE 8807                     mov  [bx], al
  9591 00004DB0 8D063075                 lea  ax, [co]
  9592 00004DB4 50                       push ax
  9593 00004DB5 E8F600                   call prs
  9594 00004DB8 83C402                   add  sp, 2
  9595 00004DBB E8FC04                   call listproc
  9596                                  
  9597                                  ;-909   prs("\nExpected ASCII(dez): "); pint1(t); error1(" not found"); } }
  9598                                  
  9599 00004DBE 68[DB4D]                 push expect_0
  9600 00004DC1 E8EA00                   call prs
  9601 00004DC4 83C402                   add  sp, 2
  9602 00004DC7 FF7604                   push word [bp+4]
  9603 00004DCA E8E701                   call pint1
  9604 00004DCD 83C402                   add  sp, 2
  9605 00004DD0 68[F34D]                 push expect_1
  9606 00004DD3 E8D903                   call error1
  9607 00004DD6 83C402                   add  sp, 2
  9608                                  @@expect549:
  9609                                  
  9610                                  ;-910 
  9611                                  
  9612                                  
  9613                                  ;-911 int eprc(char c)  {*cloc=c; cloc++; }
  9614 00004DD9 C9                       LEAVE
  9615 00004DDA C3                       ret
  9616                                  ; ENDP
  9617 00004DDB 5C6E45787065637465-     expect_0 db "\nExpected ASCII(dez): ",0
  9618 00004DE4 642041534349492864-
  9619 00004DED 657A293A2000       
  9620 00004DF3 206E6F7420666F756E-     expect_1 db " not found",0
  9621 00004DFC 6400               
  9622                                  
  9623                                  eprc:  ; *** PROC ***
  9624                                  ;Function : eprc, Number of local variables: 1
  9625                                  ;   # type sign width line used address name   list of local variables
  9626                                  ;  200 var sign byte   911 NULL bp+4    c;
  9627 00004DFE C8000000                 ENTER  0,0
  9628 00004E02 8A4604                   mov al, [bp+4]
  9629 00004E05 8B1E[3000]               mov  bx, [cloc]
  9630 00004E09 8807                     mov  [bx], al
  9631 00004E0B FF06[3000]               inc  word [cloc]
  9632                                  
  9633                                  ;-912 int eprs(char *s) {char c;  while(*s) { c=*s; eprc(c); s++; } }
  9634 00004E0F C9                       LEAVE
  9635 00004E10 C3                       ret
  9636                                  ; ENDP
  9637                                  
  9638                                  eprs:  ; *** PROC ***
  9639                                  ;Function : eprs, Number of local variables: 2
  9640                                  ;   # type sign width line used address name   list of local variables
  9641                                  ;  200 ptr sign byte   912 NULL bp+4    s
  9642                                  ;  201 var sign byte   912 NULL bp-2    c;
  9643 00004E11 C8020000                 ENTER  2,0
  9644                                  @@eprs550:
  9645 00004E15 8B5E04                   mov bx, [bp+4]
  9646 00004E18 8A07                     mov al, [bx]
  9647 00004E1A B400                     mov ah, 0
  9648 00004E1C 08C0                     or  al, al
  9649 00004E1E 0F841B00                 je @@eprs551
  9650 00004E22 8B5E04                   mov bx, [bp+4]
  9651 00004E25 8A07                     mov al, [bx]
  9652 00004E27 B400                     mov ah, 0
  9653 00004E29 8846FE                   mov byte [bp-2], al
  9654 00004E2C 8A46FE                   mov al, byte [bp-2]
  9655 00004E2F B400                     mov ah, 0
  9656 00004E31 50                       push ax
  9657 00004E32 E8C9FF                   call eprc
  9658 00004E35 83C402                   add  sp, 2
  9659 00004E38 FF4604                   inc  word [bp+4]
  9660 00004E3B EBD8                     jmp @@eprs550
  9661                                  @@eprs551:
  9662                                  
  9663                                  ;-913 int prc(unsigned char c) { if (LIST) { if (_ c==10) {ax=13; writetty(); }
  9664 00004E3D C9                       LEAVE
  9665 00004E3E C3                       ret
  9666                                  ; ENDP
  9667                                  
  9668                                  prc:  ; *** PROC ***
  9669                                  ;Function : prc, Number of local variables: 1
  9670                                  ;   # type sign width line used address name   list of local variables
  9671                                  ;  200 var unsg byte   913 NULL bp+4    c;
  9672 00004E3F C8000000                 ENTER  0,0
  9673 00004E43 A0[1700]                 mov al, [LIST]
  9674 00004E46 08C0                     or  al, al
  9675 00004E48 0F841400                 je @@prc552
  9676 00004E4C 807E040A                cmp byte [bp+4], 10
  9677 00004E50 0F850600                 jne @@prc553
  9678 00004E54 B80D00                   mov  ax, 13
  9679 00004E57 E82312                   call writetty
  9680                                  
  9681                                  ;-914    al=c; writetty(); } fputcR(c, fdout); }
  9682                                  
  9683                                  @@prc553:
  9684 00004E5A 8A4604                   mov  al, [bp+4]
  9685 00004E5D E81D12                   call writetty
  9686                                  @@prc552:
  9687 00004E60 FF36[3600]               push word [fdout]
  9688 00004E64 8A4604                   mov al, byte [bp+4]
  9689 00004E67 B400                     mov ah, 0
  9690 00004E69 50                       push ax
  9691 00004E6A E85D15                   call fputcR
  9692 00004E6D 83C404                   add  sp, 4
  9693                                  
  9694                                  ;-915 int prscomment(unsigned char *s) {unsigned char c;
  9695 00004E70 C9                       LEAVE
  9696 00004E71 C3                       ret
  9697                                  ; ENDP
  9698                                  
  9699                                  prscomment:  ; *** PROC ***
  9700                                  
  9701                                  ;-916   while(*s){c=*s;prc(c);s++;} }
  9702                                  
  9703                                  ;Function : prscomment, Number of local variables: 2
  9704                                  ;   # type sign width line used address name   list of local variables
  9705                                  ;  200 ptr unsg byte   915 NULL bp+4    s
  9706                                  ;  201 var unsg byte   915 NULL bp-2    c;
  9707 00004E72 C8020000                 ENTER  2,0
  9708                                  @@prscomment554:
  9709 00004E76 8B5E04                   mov bx, [bp+4]
  9710 00004E79 8A07                     mov al, [bx]
  9711 00004E7B B400                     mov ah, 0
  9712 00004E7D 08C0                     or  al, al
  9713 00004E7F 0F841B00                 je @@prscomment555
  9714 00004E83 8B5E04                   mov bx, [bp+4]
  9715 00004E86 8A07                     mov al, [bx]
  9716 00004E88 B400                     mov ah, 0
  9717 00004E8A 8846FE                   mov byte [bp-2], al
  9718 00004E8D 8A46FE                   mov al, byte [bp-2]
  9719 00004E90 B400                     mov ah, 0
  9720 00004E92 50                       push ax
  9721 00004E93 E8A9FF                   call prc
  9722 00004E96 83C402                   add  sp, 2
  9723 00004E99 FF4604                   inc  word [bp+4]
  9724 00004E9C EBD8                     jmp @@prscomment554
  9725                                  @@prscomment555:
  9726                                  
  9727                                  ;-917 int prnl() { prs("\n ");}
  9728 00004E9E C9                       LEAVE
  9729 00004E9F C3                       ret
  9730                                  ; ENDP
  9731                                  
  9732                                  prnl:  ; *** PROC ***
  9733 00004EA0 68[AA4E]                 push prnl_0
  9734 00004EA3 E80800                   call prs
  9735 00004EA6 83C402                   add  sp, 2
  9736                                  
  9737                                  ;-918 
  9738                                  
  9739                                  
  9740                                  ;-919 int prs(unsigned char *s) {unsigned char c; int com; com=0;
  9741                                  
  9742 00004EA9 C3                       ret
  9743                                  ; ENDP
  9744 00004EAA 5C6E2000                prnl_0 db "\n ",0
  9745                                  
  9746                                  prs:  ; *** PROC ***
  9747                                  ;Function : prs, Number of local variables: 3
  9748                                  ;   # type sign width line used address name   list of local variables
  9749                                  ;  200 ptr unsg byte   919 NULL bp+4    s
  9750                                  ;  201 var unsg byte   919 NULL bp-2    c
  9751                                  ;  202 var sign word   919 NULL bp-4    com;
  9752 00004EAE C8040000                 ENTER  4,0
  9753 00004EB2 66B800000000             mov eax, 0
  9754 00004EB8 8946FC                   mov word [bp-4], ax
  9755                                  
  9756                                  ;-920   while(*s) { c=*s; if (c==34) if (com) com=0; else com=1;
  9757                                  
  9758                                  @@prs556:
  9759 00004EBB 8B5E04                   mov bx, [bp+4]
  9760 00004EBE 8A07                     mov al, [bx]
  9761 00004EC0 B400                     mov ah, 0
  9762 00004EC2 08C0                     or  al, al
  9763 00004EC4 0F848700                 je @@prs557
  9764 00004EC8 8B5E04                   mov bx, [bp+4]
  9765 00004ECB 8A07                     mov al, [bx]
  9766 00004ECD B400                     mov ah, 0
  9767 00004ECF 8846FE                   mov byte [bp-2], al
  9768 00004ED2 8A46FE                   mov al, [bp-2]
  9769 00004ED5 3C22                     cmp al, 34
  9770 00004ED7 0F851E00                 jne @@prs558
  9771 00004EDB 8B46FC                   mov ax, [bp-4]
  9772 00004EDE 08C0                     or  al, al
  9773 00004EE0 0F840C00                 je @@prs559
  9774 00004EE4 66B800000000             mov eax, 0
  9775 00004EEA 8946FC                   mov word [bp-4], ax
  9776 00004EED E90900                   jmp @@prs560
  9777                                  @@prs559:
  9778 00004EF0 66B801000000             mov eax, 1
  9779 00004EF6 8946FC                   mov word [bp-4], ax
  9780                                  
  9781                                  ;-921     if (c==92) { if (com==0) { s++; c=*s;
  9782                                  
  9783                                  @@prs560:
  9784                                  @@prs558:
  9785 00004EF9 8A46FE                   mov al, [bp-2]
  9786 00004EFC 3C5C                     cmp al, 92
  9787 00004EFE 0F853B00                 jne @@prs561
  9788 00004F02 8B46FC                   mov ax, [bp-4]
  9789 00004F05 83F800                   cmp ax, 0
  9790 00004F08 0F853100                 jne @@prs562
  9791 00004F0C FF4604                   inc  word [bp+4]
  9792 00004F0F 8B5E04                   mov bx, [bp+4]
  9793 00004F12 8A07                     mov al, [bx]
  9794 00004F14 B400                     mov ah, 0
  9795 00004F16 8846FE                   mov byte [bp-2], al
  9796                                  
  9797                                  ;-922           if (c=='n') c=10; if (c=='t') c= 9; } } prc(c); s++;  } }
  9798                                  
  9799 00004F19 8A46FE                   mov al, [bp-2]
  9800 00004F1C 3C6E                     cmp al, 110
  9801 00004F1E 0F850900                 jne @@prs563
  9802 00004F22 66B80A000000             mov eax, 10
  9803 00004F28 8846FE                   mov byte [bp-2], al
  9804                                  @@prs563:
  9805 00004F2B 8A46FE                   mov al, [bp-2]
  9806 00004F2E 3C74                     cmp al, 116
  9807 00004F30 0F850900                 jne @@prs564
  9808 00004F34 66B809000000             mov eax, 9
  9809 00004F3A 8846FE                   mov byte [bp-2], al
  9810                                  @@prs564:
  9811                                  @@prs562:
  9812                                  @@prs561:
  9813 00004F3D 8A46FE                   mov al, byte [bp-2]
  9814 00004F40 B400                     mov ah, 0
  9815 00004F42 50                       push ax
  9816 00004F43 E8F9FE                   call prc
  9817 00004F46 83C402                   add  sp, 2
  9818 00004F49 FF4604                   inc  word [bp+4]
  9819 00004F4C E96CFF                   jmp @@prs556
  9820                                  @@prs557:
  9821                                  
  9822                                  ;-923 int eprnum(int n){int e; if(n<0) { eprc('-'); n=mkneg(n); }
  9823 00004F4F C9                       LEAVE
  9824 00004F50 C3                       ret
  9825                                  ; ENDP
  9826                                  
  9827                                  eprnum:  ; *** PROC ***
  9828                                  ;Function : eprnum, Number of local variables: 2
  9829                                  ;   # type sign width line used address name   list of local variables
  9830                                  ;  200 var sign word   923 NULL bp+4    n
  9831                                  ;  201 var sign word   923 NULL bp-2    e;
  9832 00004F51 C8020000                 ENTER  2,0
  9833 00004F55 8B4604                   mov ax, [bp+4]
  9834 00004F58 83F800                   cmp ax, 0
  9835 00004F5B 0F8D1400                 jge @@eprnum565
  9836 00004F5F 6A2D                     push 45
  9837 00004F61 E89AFE                   call eprc
  9838 00004F64 83C402                   add  sp, 2
  9839 00004F67 FF7604                   push word [bp+4]
  9840 00004F6A E85F11                   call mkneg
  9841 00004F6D 83C402                   add  sp, 2
  9842 00004F70 894604                   mov word [bp+4], ax
  9843                                  
  9844                                  ;-924   if (n >= 10) {e=n/10; eprnum(e);}  n=n%10; n=n+'0'; eprc(n); }
  9845                                  
  9846                                  @@eprnum565:
  9847 00004F73 8B4604                   mov ax, [bp+4]
  9848 00004F76 83F80A                   cmp ax, 10 ;unsigned : 1
  9849 00004F79 0F8C1500                 jl  @@eprnum566
  9850 00004F7D 8B4604                   mov ax, [bp+4]
  9851 00004F80 BB0A00                   mov bx, 10
  9852 00004F83 99                       cwd
  9853 00004F84 F7FB                     idiv bx
  9854 00004F86 8946FE                   mov word [bp-2], ax
  9855 00004F89 FF76FE                   push word [bp-2]
  9856 00004F8C E8C2FF                   call eprnum
  9857 00004F8F 83C402                   add  sp, 2
  9858                                  @@eprnum566:
  9859 00004F92 8B4604                   mov ax, [bp+4]
  9860 00004F95 BB0A00                   mov bx, 10
  9861 00004F98 99                       cwd
  9862 00004F99 F7FB                     idiv bx
  9863 00004F9B 89D0                     mov ax, dx
  9864 00004F9D 894604                   mov word [bp+4], ax
  9865 00004FA0 8B4604                   mov ax, [bp+4]
  9866 00004FA3 83C030                   add ax, 48
  9867 00004FA6 894604                   mov word [bp+4], ax
  9868 00004FA9 FF7604                   push word [bp+4]
  9869 00004FAC E84FFE                   call eprc
  9870 00004FAF 83C402                   add  sp, 2
  9871                                  
  9872                                  ;-925 int pint1 (int n){int e; if(n<0) {  prc('-');  n=mkneg(n); }
  9873 00004FB2 C9                       LEAVE
  9874 00004FB3 C3                       ret
  9875                                  ; ENDP
  9876                                  
  9877                                  pint1:  ; *** PROC ***
  9878                                  ;Function : pint1, Number of local variables: 2
  9879                                  ;   # type sign width line used address name   list of local variables
  9880                                  ;  200 var sign word   925 NULL bp+4    n
  9881                                  ;  201 var sign word   925 NULL bp-2    e;
  9882 00004FB4 C8020000                 ENTER  2,0
  9883 00004FB8 8B4604                   mov ax, [bp+4]
  9884 00004FBB 83F800                   cmp ax, 0
  9885 00004FBE 0F8D1400                 jge @@pint1567
  9886 00004FC2 6A2D                     push 45
  9887 00004FC4 E878FE                   call prc
  9888 00004FC7 83C402                   add  sp, 2
  9889 00004FCA FF7604                   push word [bp+4]
  9890 00004FCD E8FC10                   call mkneg
  9891 00004FD0 83C402                   add  sp, 2
  9892 00004FD3 894604                   mov word [bp+4], ax
  9893                                  
  9894                                  ;-926   if (n >= 10) {e=n/10;  pint1(e);}  n=n%10; n=n+'0'; prc(n); }
  9895                                  
  9896                                  @@pint1567:
  9897 00004FD6 8B4604                   mov ax, [bp+4]
  9898 00004FD9 83F80A                   cmp ax, 10 ;unsigned : 1
  9899 00004FDC 0F8C1500                 jl  @@pint1568
  9900 00004FE0 8B4604                   mov ax, [bp+4]
  9901 00004FE3 BB0A00                   mov bx, 10
  9902 00004FE6 99                       cwd
  9903 00004FE7 F7FB                     idiv bx
  9904 00004FE9 8946FE                   mov word [bp-2], ax
  9905 00004FEC FF76FE                   push word [bp-2]
  9906 00004FEF E8C2FF                   call pint1
  9907 00004FF2 83C402                   add  sp, 2
  9908                                  @@pint1568:
  9909 00004FF5 8B4604                   mov ax, [bp+4]
  9910 00004FF8 BB0A00                   mov bx, 10
  9911 00004FFB 99                       cwd
  9912 00004FFC F7FB                     idiv bx
  9913 00004FFE 89D0                     mov ax, dx
  9914 00005000 894604                   mov word [bp+4], ax
  9915 00005003 8B4604                   mov ax, [bp+4]
  9916 00005006 83C030                   add ax, 48
  9917 00005009 894604                   mov word [bp+4], ax
  9918 0000500C FF7604                   push word [bp+4]
  9919 0000500F E82DFE                   call prc
  9920 00005012 83C402                   add  sp, 2
  9921                                  
  9922                                  ;-927 int prunsign1(unsigned int n) { unsigned int e;
  9923 00005015 C9                       LEAVE
  9924 00005016 C3                       ret
  9925                                  ; ENDP
  9926                                  
  9927                                  prunsign1:  ; *** PROC ***
  9928                                  
  9929                                  ;-928   if ( _ n >= 10) {  e=n/10; /*DIV*/ prunsign1(e); }
  9930                                  
  9931                                  ;Function : prunsign1, Number of local variables: 2
  9932                                  ;   # type sign width line used address name   list of local variables
  9933                                  ;  200 var unsg word   927 NULL bp+4    n
  9934                                  ;  201 var unsg word   927 NULL bp-2    e;
  9935 00005017 C8020000                 ENTER  2,0
  9936 0000501B 837E040A                cmp word [bp+4], 10 ;unsigned : 0
  9937 0000501F 0F821700                 jb  @@prunsign1569
  9938 00005023 8B4604                   mov ax, [bp+4]
  9939 00005026 BB0A00                   mov bx, 10
  9940 00005029 BA0000                   mov dx, 0
  9941 0000502C F7F3                     div bx
  9942 0000502E 8946FE                   mov word [bp-2], ax
  9943 00005031 FF76FE                   push word [bp-2]
  9944 00005034 E8E0FF                   call prunsign1
  9945 00005037 83C402                   add  sp, 2
  9946                                  
  9947                                  ;-929     n = n % 10; /*unsigned mod*/   n += '0'; prc(n); }
  9948                                  
  9949                                  @@prunsign1569:
  9950 0000503A 8B4604                   mov ax, [bp+4]
  9951 0000503D BB0A00                   mov bx, 10
  9952 00005040 BA0000                   mov dx, 0
  9953 00005043 F7F3                     div bx
  9954 00005045 89D0                     mov ax, dx
  9955 00005047 894604                   mov word [bp+4], ax
  9956 0000504A 83460430                 add  word [bp+4], 48
  9957 0000504E FF7604                   push word [bp+4]
  9958 00005051 E8EBFD                   call prc
  9959 00005054 83C402                   add  sp, 2
  9960                                  
  9961                                  ;-930 int printint51(unsigned int j)  {
  9962 00005057 C9                       LEAVE
  9963 00005058 C3                       ret
  9964                                  ; ENDP
  9965                                  
  9966                                  printint51:  ; *** PROC ***
  9967                                  
  9968                                  ;-931   if (j<10000) prc(32); if (j<1000) prc(32);  if (j<100) prc(32);
  9969                                  
  9970                                  ;Function : printint51, Number of local variables: 1
  9971                                  ;   # type sign width line used address name   list of local variables
  9972                                  ;  200 var unsg word   930 NULL bp+4    j;
  9973 00005059 C8000000                 ENTER  0,0
  9974 0000505D 8B4604                   mov ax, [bp+4]
  9975 00005060 3D1027                   cmp ax, 10000
  9976 00005063 0F8D0800                 jge @@printint51570
  9977 00005067 6A20                     push 32
  9978 00005069 E8D3FD                   call prc
  9979 0000506C 83C402                   add  sp, 2
  9980                                  @@printint51570:
  9981 0000506F 8B4604                   mov ax, [bp+4]
  9982 00005072 3DE803                   cmp ax, 1000
  9983 00005075 0F8D0800                 jge @@printint51571
  9984 00005079 6A20                     push 32
  9985 0000507B E8C1FD                   call prc
  9986 0000507E 83C402                   add  sp, 2
  9987                                  @@printint51571:
  9988 00005081 8B4604                   mov ax, [bp+4]
  9989 00005084 83F864                   cmp ax, 100
  9990 00005087 0F8D0800                 jge @@printint51572
  9991 0000508B 6A20                     push 32
  9992 0000508D E8AFFD                   call prc
  9993 00005090 83C402                   add  sp, 2
  9994                                  
  9995                                  ;-932    if (j<10) prc(32);  prunsign1(j); }
  9996                                  
  9997                                  @@printint51572:
  9998 00005093 8B4604                   mov ax, [bp+4]
  9999 00005096 83F80A                   cmp ax, 10
 10000 00005099 0F8D0800                 jge @@printint51573
 10001 0000509D 6A20                     push 32
 10002 0000509F E89DFD                   call prc
 10003 000050A2 83C402                   add  sp, 2
 10004                                  @@printint51573:
 10005 000050A5 FF7604                   push word [bp+4]
 10006 000050A8 E86CFF                   call prunsign1
 10007 000050AB 83C402                   add  sp, 2
 10008                                  
 10009                                  ;-933 
 10010                                  
 10011                                  
 10012                                  ;-934 int fgets1() { char c; c=*fgetsp;
 10013 000050AE C9                       LEAVE
 10014 000050AF C3                       ret
 10015                                  ; ENDP
 10016                                  
 10017                                  fgets1:  ; *** PROC ***
 10018                                  ;Function : fgets1, Number of local variables: 1
 10019                                  ;   # type sign width line used address name   list of local variables
 10020                                  ;  200 var sign byte   934 NULL bp-2    c;
 10021 000050B0 C8020000                 ENTER  2,0
 10022 000050B4 8B1E[B600]               mov bx, [fgetsp]
 10023 000050B8 8A07                     mov al, [bx]
 10024 000050BA B400                     mov ah, 0
 10025 000050BC 8846FE                   mov byte [bp-2], al
 10026                                  
 10027                                  ;-935   if (c==0) { printinputline(); if (DOS_NoBytes == 0) return 0;
 10028                                  
 10029 000050BF 8A46FE                   mov al, [bp-2]
 10030 000050C2 3C00                     cmp al, 0
 10031 000050C4 0F853000                 jne @@fgets1574
 10032 000050C8 E83D00                   call printinputline
 10033 000050CB A1[C400]                 mov ax, [DOS_NoBytes]
 10034 000050CE 83F800                   cmp ax, 0
 10035 000050D1 0F850900                 jne @@fgets1575
 10036 000050D5 66B800000000             mov eax, 0
 10037 000050DB E92800                   jmp @@retn
 10038                                  
 10039                                  ;-936     fgetsp=&fgetsdest; c=*fgetsp; spalte=0; }
 10040                                  
 10041                                  @@fgets1575:
 10042 000050DE B847B6                   mov ax, fgetsdest
 10043 000050E1 A3[B600]                 mov word [fgetsp], ax
 10044 000050E4 8B1E[B600]               mov bx, [fgetsp]
 10045 000050E8 8A07                     mov al, [bx]
 10046 000050EA B400                     mov ah, 0
 10047 000050EC 8846FE                   mov byte [bp-2], al
 10048 000050EF 66B800000000             mov eax, 0
 10049 000050F5 A3[4000]                 mov word [spalte], ax
 10050                                  
 10051                                  ;-937   fgetsp++; spalte++;  return c; }
 10052                                  
 10053                                  @@fgets1574:
 10054 000050F8 FF06[B600]               inc  word [fgetsp]
 10055 000050FC FF06[4000]               inc  word [spalte]
 10056 00005100 8A46FE                   mov al, [bp-2]
 10057 00005103 E90000                   jmp @@retn
 10058                                  
 10059                                  ;-938 int printinputline() { fgetsp=&fgetsdest;
 10060                                  
 10061 00005106 C9                      @@retn: LEAVE
 10062 00005107 C3                       ret
 10063                                  ; ENDP
 10064                                  
 10065                                  printinputline:  ; *** PROC ***
 10066 00005108 B847B6                   mov ax, fgetsdest
 10067 0000510B A3[B600]                 mov word [fgetsp], ax
 10068                                  
 10069                                  ;-939   do {DOS_NoBytes=readR(&DOS_ByteRead, fdin);
 10070                                  
 10071                                  @@printinputline576:
 10072 0000510E FF36[3400]               push word [fdin]
 10073 00005112 8D06[C600]               lea  ax, [DOS_ByteRead]
 10074 00005116 50                       push ax
 10075 00005117 E88612                   call readR
 10076 0000511A 83C404                   add  sp, 4
 10077 0000511D A3[C400]                 mov word [DOS_NoBytes], ax
 10078                                  
 10079                                  ;-940   if (DOS_NoBytes == 0) return; 
 10080                                  
 10081 00005120 A1[C400]                 mov ax, [DOS_NoBytes]
 10082 00005123 83F800                   cmp ax, 0
 10083 00005126 0F850300                 jne @@printinputline577
 10084 0000512A E95700                   jmp @@retn
 10085                                  
 10086                                  ;-941     *fgetsp=DOS_ByteRead; fgetsp++;} 
 10087                                  
 10088                                  @@printinputline577:
 10089 0000512D A0[C600]                 mov al, [DOS_ByteRead]
 10090 00005130 8B1E[B600]               mov  bx, [fgetsp]
 10091 00005134 8807                     mov  [bx], al
 10092 00005136 FF06[B600]               inc  word [fgetsp]
 10093                                  
 10094                                  ;-942   while (DOS_ByteRead != 10); *fgetsp=0;
 10095                                  
 10096 0000513A A0[C600]                 mov al, [DOS_ByteRead]
 10097 0000513D 3C0A                     cmp al, 10
 10098 0000513F 0F840200                 je  @@printinputline578
 10099 00005143 EBC9                     jmp @@printinputline576
 10100                                  @@printinputline578:
 10101 00005145 66B800000000             mov eax, 0
 10102 0000514B 8B1E[B600]               mov  bx, [fgetsp]
 10103 0000514F 8807                     mov  [bx], al
 10104                                  
 10105                                  ;-943     if (fdout) { prs("\n\n;-"); prunsign1(lineno); prc(' '); lineno++;
 10106                                  
 10107 00005151 A1[3600]                 mov ax, [fdout]
 10108 00005154 08C0                     or  al, al
 10109 00005156 0F842A00                 je @@printinputline579
 10110 0000515A 68[8551]                 push printinputline_0
 10111 0000515D E84EFD                   call prs
 10112 00005160 83C402                   add  sp, 2
 10113 00005163 FF36[BA00]               push word [lineno]
 10114 00005167 E8ADFE                   call prunsign1
 10115 0000516A 83C402                   add  sp, 2
 10116 0000516D 6A20                     push 32
 10117 0000516F E8CDFC                   call prc
 10118 00005172 83C402                   add  sp, 2
 10119 00005175 FF06[BA00]               inc  word [lineno]
 10120                                  
 10121                                  ;-944       prscomment(&fgetsdest);}
 10122                                  
 10123 00005179 8D0647B6                 lea  ax, [fgetsdest]
 10124 0000517D 50                       push ax
 10125 0000517E E8F1FC                   call prscomment
 10126 00005181 83C402                   add  sp, 2
 10127                                  
 10128                                  ;-945 }
 10129                                  
 10130                                  @@printinputline579:
 10131                                  
 10132                                  ;-946 int end1(int n) {fcloseR(fdin); fcloseR(fdout); exitR(n); }
 10133                                  
 10134                                  @@retn:
 10135 00005184 C3                       ret
 10136                                  ; ENDP
 10137 00005185 5C6E5C6E3B2D00          printinputline_0 db "\n\n;-",0
 10138                                  
 10139                                  end1:  ; *** PROC ***
 10140                                  ;Function : end1, Number of local variables: 1
 10141                                  ;   # type sign width line used address name   list of local variables
 10142                                  ;  200 var sign word   946 NULL bp+4    n;
 10143 0000518C C8000000                 ENTER  0,0
 10144 00005190 FF36[3400]               push word [fdin]
 10145 00005194 E84812                   call fcloseR
 10146 00005197 83C402                   add  sp, 2
 10147 0000519A FF36[3600]               push word [fdout]
 10148 0000519E E83E12                   call fcloseR
 10149 000051A1 83C402                   add  sp, 2
 10150 000051A4 FF7604                   push word [bp+4]
 10151 000051A7 E84312                   call exitR
 10152 000051AA 83C402                   add  sp, 2
 10153                                  
 10154                                  ;-947 int error1(char *s) { LIST=1;
 10155 000051AD C9                       LEAVE
 10156 000051AE C3                       ret
 10157                                  ; ENDP
 10158                                  
 10159                                  error1:  ; *** PROC ***
 10160                                  ;Function : error1, Number of local variables: 1
 10161                                  ;   # type sign width line used address name   list of local variables
 10162                                  ;  200 ptr sign byte   947 NULL bp+4    s;
 10163 000051AF C8000000                 ENTER  0,0
 10164 000051B3 66B801000000             mov eax, 1
 10165 000051B9 A2[1700]                 mov byte [LIST], al
 10166                                  
 10167                                  ;-948   lineno--;
 10168                                  
 10169 000051BC FF0E[BA00]               dec  word [lineno]
 10170                                  
 10171                                  ;-949   prnl(); prscomment(&fgetsdest);
 10172                                  
 10173 000051C0 E8DDFC                   call prnl
 10174 000051C3 8D0647B6                 lea  ax, [fgetsdest]
 10175 000051C7 50                       push ax
 10176 000051C8 E8A7FC                   call prscomment
 10177 000051CB 83C402                   add  sp, 2
 10178                                  
 10179                                  ;-950   prs(";Line: "); prunsign1(lineno);
 10180                                  
 10181 000051CE 68[6152]                 push error1_0
 10182 000051D1 E8DAFC                   call prs
 10183 000051D4 83C402                   add  sp, 2
 10184 000051D7 FF36[BA00]               push word [lineno]
 10185 000051DB E839FE                   call prunsign1
 10186 000051DE 83C402                   add  sp, 2
 10187                                  
 10188                                  ;-951   prs(" ************** ERROR: "); prs(s);
 10189                                  
 10190 000051E1 68[6952]                 push error1_1
 10191 000051E4 E8C7FC                   call prs
 10192 000051E7 83C402                   add  sp, 2
 10193 000051EA FF7604                   push word [bp+4]
 10194 000051ED E8BEFC                   call prs
 10195 000051F0 83C402                   add  sp, 2
 10196                                  
 10197                                  ;-952   prs("  in column: "); pint1(spalte);
 10198                                  
 10199 000051F3 68[8152]                 push error1_2
 10200 000051F6 E8B5FC                   call prs
 10201 000051F9 83C402                   add  sp, 2
 10202 000051FC FF36[4000]               push word [spalte]
 10203 00005200 E8B1FD                   call pint1
 10204 00005203 83C402                   add  sp, 2
 10205                                  
 10206                                  ;-953   prs("\nToken: "); prunsign1(token); prs(", globC: "); prc(globC);
 10207                                  
 10208 00005206 68[8F52]                 push error1_3
 10209 00005209 E8A2FC                   call prs
 10210 0000520C 83C402                   add  sp, 2
 10211 0000520F FF36[3D00]               push word [token]
 10212 00005213 E801FE                   call prunsign1
 10213 00005216 83C402                   add  sp, 2
 10214 00005219 68[9952]                 push error1_4
 10215 0000521C E88FFC                   call prs
 10216 0000521F 83C402                   add  sp, 2
 10217 00005222 A0[3F00]                 mov al, byte [globC]
 10218 00005225 B400                     mov ah, 0
 10219 00005227 50                       push ax
 10220 00005228 E814FC                   call prc
 10221 0000522B 83C402                   add  sp, 2
 10222                                  
 10223                                  ;-954   prs(", thechar: "); pint1(thechar); prs(", symbol: "); prs(symbol);
 10224                                  
 10225 0000522E 68[A352]                 push error1_5
 10226 00005231 E87AFC                   call prs
 10227 00005234 83C402                   add  sp, 2
 10228 00005237 A0[4200]                 mov al, byte [thechar]
 10229 0000523A B400                     mov ah, 0
 10230 0000523C 50                       push ax
 10231 0000523D E874FD                   call pint1
 10232 00005240 83C402                   add  sp, 2
 10233 00005243 68[AF52]                 push error1_6
 10234 00005246 E865FC                   call prs
 10235 00005249 83C402                   add  sp, 2
 10236 0000524C 8D066E81                 lea  ax, [symbol]
 10237 00005250 50                       push ax
 10238 00005251 E85AFC                   call prs
 10239 00005254 83C402                   add  sp, 2
 10240                                  
 10241                                  ;-955   end1(1); }
 10242                                  
 10243 00005257 6A01                     push 1
 10244 00005259 E830FF                   call end1
 10245 0000525C 83C402                   add  sp, 2
 10246                                  
 10247                                  ;-956 int listproc() {int i; 
 10248 0000525F C9                       LEAVE
 10249 00005260 C3                       ret
 10250                                  ; ENDP
 10251 00005261 3B4C696E653A2000        error1_0 db ";Line: ",0
 10252 00005269 202A2A2A2A2A2A2A2A-     error1_1 db " ************** ERROR: ",0
 10253 00005272 2A2A2A2A2A2A204552-
 10254 0000527B 524F523A2000       
 10255 00005281 2020696E20636F6C75-     error1_2 db "  in column: ",0
 10256 0000528A 6D6E3A2000         
 10257 0000528F 5C6E546F6B656E3A20-     error1_3 db "\nToken: ",0
 10258 00005298 00                 
 10259 00005299 2C20676C6F62433A20-     error1_4 db ", globC: ",0
 10260 000052A2 00                 
 10261 000052A3 2C2074686563686172-     error1_5 db ", thechar: ",0
 10262 000052AC 3A2000             
 10263 000052AF 2C2073796D626F6C3A-     error1_6 db ", symbol: ",0
 10264 000052B8 2000               
 10265                                  
 10266                                  listproc:  ; *** PROC ***
 10267                                  
 10268                                  ;-957   if (LTop > LSTART) {
 10269                                  
 10270                                  ;Function : listproc, Number of local variables: 1
 10271                                  ;   # type sign width line used address name   list of local variables
 10272                                  ;  200 var sign word   956 NULL bp-2    i;
 10273 000052BA C8020000                 ENTER  2,0
 10274 000052BE A1[6000]                 mov ax, [LTop]
 10275 000052C1 3DC800                   cmp ax, 200
 10276 000052C4 0F8E5A00                 jle @@listproc580
 10277                                  
 10278                                  ;-958   prs("\n;Function : "); prs(fname);
 10279                                  
 10280 000052C8 68[2453]                 push listproc_0
 10281 000052CB E8E0FB                   call prs
 10282 000052CE 83C402                   add  sp, 2
 10283 000052D1 8D06EE81                 lea  ax, [fname]
 10284 000052D5 50                       push ax
 10285 000052D6 E8D5FB                   call prs
 10286 000052D9 83C402                   add  sp, 2
 10287                                  
 10288                                  ;-959   prs(", Number of local variables: "); i=LTop - LSTART; prunsign1(i);
 10289                                  
 10290 000052DC 68[3353]                 push listproc_1
 10291 000052DF E8CCFB                   call prs
 10292 000052E2 83C402                   add  sp, 2
 10293 000052E5 A1[6000]                 mov ax, [LTop]
 10294 000052E8 2DC800                   sub ax, 200
 10295 000052EB 8946FE                   mov word [bp-2], ax
 10296 000052EE FF76FE                   push word [bp-2]
 10297 000052F1 E823FD                   call prunsign1
 10298 000052F4 83C402                   add  sp, 2
 10299                                  
 10300                                  ;-960   prs("\n;   # type sign width line used address name   list of local variables");
 10301                                  
 10302 000052F7 68[5153]                 push listproc_2
 10303 000052FA E8B1FB                   call prs
 10304 000052FD 83C402                   add  sp, 2
 10305                                  
 10306                                  ;-961     i=LSTART; 
 10307                                  
 10308 00005300 66B8C8000000             mov eax, 200
 10309 00005306 8946FE                   mov word [bp-2], ax
 10310                                  
 10311                                  ;-962     while (i < LTop) { listvar(i); i++; } } 
 10312                                  
 10313                                  @@listproc581:
 10314 00005309 8B46FE                   mov ax, [bp-2]
 10315 0000530C 3B06[6000]               cmp ax, [LTop]
 10316 00005310 0F8D0E00                 jge @@listproc582
 10317 00005314 FF76FE                   push word [bp-2]
 10318 00005317 E88000                   call listvar
 10319 0000531A 83C402                   add  sp, 2
 10320 0000531D FF46FE                   inc  word [bp-2]
 10321 00005320 EBE7                     jmp @@listproc581
 10322                                  @@listproc582:
 10323                                  
 10324                                  ;-963 }
 10325                                  
 10326                                  @@listproc580:
 10327                                  
 10328                                  ;-964 int listvar(unsigned int i) {unsigned int j; char c;  long L;
 10329 00005322 C9                       LEAVE
 10330 00005323 C3                       ret
 10331                                  ; ENDP
 10332 00005324 5C6E3B46756E637469-     listproc_0 db "\n;Function : ",0
 10333 0000532D 6F6E203A2000       
 10334 00005333 2C204E756D62657220-     listproc_1 db ", Number of local variables: ",0
 10335 0000533C 6F66206C6F63616C20-
 10336 00005345 7661726961626C6573-
 10337 0000534E 3A2000             
 10338 00005351 5C6E3B202020232074-     listproc_2 db "\n;   # type sign width line used address name   list of local variables",0
 10339 0000535A 797065207369676E20-
 10340 00005363 7769647468206C696E-
 10341 0000536C 652075736564206164-
 10342 00005375 6472657373206E616D-
 10343 0000537E 652020206C69737420-
 10344 00005387 6F66206C6F63616C20-
 10345 00005390 7661726961626C6573-
 10346 00005399 00                 
 10347                                  
 10348                                  listvar:  ; *** PROC ***
 10349                                  
 10350                                  ;-965   prs("\n;"); printint51(i); prc(32);
 10351                                  
 10352                                  ;Function : listvar, Number of local variables: 4
 10353                                  ;   # type sign width line used address name   list of local variables
 10354                                  ;  200 var unsg word   964 NULL bp+4    i
 10355                                  ;  201 var unsg word   964 NULL bp-2    j
 10356                                  ;  202 var sign byte   964 NULL bp-4    c
 10357                                  ;  203 var sign dwrd   964 NULL bp-8    L;
 10358 0000539A C8080000                 ENTER  8,0
 10359 0000539E 68[CE55]                 push listvar_0
 10360 000053A1 E80AFB                   call prs
 10361 000053A4 83C402                   add  sp, 2
 10362 000053A7 FF7604                   push word [bp+4]
 10363 000053AA E8ACFC                   call printint51
 10364 000053AD 83C402                   add  sp, 2
 10365 000053B0 6A20                     push 32
 10366 000053B2 E88AFA                   call prc
 10367 000053B5 83C402                   add  sp, 2
 10368                                  
 10369                                  ;-966   c=GType [i]; if(c=='V')prs("var ");   if(c=='*')prs("ptr ");
 10370                                  
 10371 000053B8 8B5E04                   mov bx, [bp+4]
 10372 000053BB 8A87B782                 mov al, [GType + bx]
 10373 000053BF 8846FC                   mov byte [bp-4], al
 10374 000053C2 8A46FC                   mov al, [bp-4]
 10375 000053C5 3C56                     cmp al, 86
 10376 000053C7 0F850900                 jne @@listvar583
 10377 000053CB 68[D255]                 push listvar_1
 10378 000053CE E8DDFA                   call prs
 10379 000053D1 83C402                   add  sp, 2
 10380                                  @@listvar583:
 10381 000053D4 8A46FC                   mov al, [bp-4]
 10382 000053D7 3C2A                     cmp al, 42
 10383 000053D9 0F850900                 jne @@listvar584
 10384 000053DD 68[D755]                 push listvar_2
 10385 000053E0 E8CBFA                   call prs
 10386 000053E3 83C402                   add  sp, 2
 10387                                  
 10388                                  ;-967                if(c=='&')prs("arr ");   if(c=='#')prs("def ");
 10389                                  
 10390                                  @@listvar584:
 10391 000053E6 8A46FC                   mov al, [bp-4]
 10392 000053E9 3C26                     cmp al, 38
 10393 000053EB 0F850900                 jne @@listvar585
 10394 000053EF 68[DC55]                 push listvar_3
 10395 000053F2 E8B9FA                   call prs
 10396 000053F5 83C402                   add  sp, 2
 10397                                  @@listvar585:
 10398 000053F8 8A46FC                   mov al, [bp-4]
 10399 000053FB 3C23                     cmp al, 35
 10400 000053FD 0F850900                 jne @@listvar586
 10401 00005401 68[E155]                 push listvar_4
 10402 00005404 E8A7FA                   call prs
 10403 00005407 83C402                   add  sp, 2
 10404                                  
 10405                                  ;-968   c=GSign [i]; if(c=='S')prs("sign ");  if(c=='U')prs("unsg ");
 10406                                  
 10407                                  @@listvar586:
 10408 0000540A 8B5E04                   mov bx, [bp+4]
 10409 0000540D 8A87E383                 mov al, [GSign + bx]
 10410 00005411 8846FC                   mov byte [bp-4], al
 10411 00005414 8A46FC                   mov al, [bp-4]
 10412 00005417 3C53                     cmp al, 83
 10413 00005419 0F850900                 jne @@listvar587
 10414 0000541D 68[E655]                 push listvar_5
 10415 00005420 E88BFA                   call prs
 10416 00005423 83C402                   add  sp, 2
 10417                                  @@listvar587:
 10418 00005426 8A46FC                   mov al, [bp-4]
 10419 00005429 3C55                     cmp al, 85
 10420 0000542B 0F850900                 jne @@listvar588
 10421 0000542F 68[EC55]                 push listvar_6
 10422 00005432 E879FA                   call prs
 10423 00005435 83C402                   add  sp, 2
 10424                                  
 10425                                  ;-969   c=GWidth[i]; if(c==  1)prs("byte " ); if(c==  2)prs("word " );
 10426                                  
 10427                                  @@listvar588:
 10428 00005438 8B5E04                   mov bx, [bp+4]
 10429 0000543B 8A870F85                 mov al, [GWidth + bx]
 10430 0000543F 8846FC                   mov byte [bp-4], al
 10431 00005442 8A46FC                   mov al, [bp-4]
 10432 00005445 3C01                     cmp al, 1
 10433 00005447 0F850900                 jne @@listvar589
 10434 0000544B 68[F255]                 push listvar_7
 10435 0000544E E85DFA                   call prs
 10436 00005451 83C402                   add  sp, 2
 10437                                  @@listvar589:
 10438 00005454 8A46FC                   mov al, [bp-4]
 10439 00005457 3C02                     cmp al, 2
 10440 00005459 0F850900                 jne @@listvar590
 10441 0000545D 68[F855]                 push listvar_8
 10442 00005460 E84BFA                   call prs
 10443 00005463 83C402                   add  sp, 2
 10444                                  
 10445                                  ;-970                if(c==  4)prs("dwrd " );
 10446                                  
 10447                                  @@listvar590:
 10448 00005466 8A46FC                   mov al, [bp-4]
 10449 00005469 3C04                     cmp al, 4
 10450 0000546B 0F850900                 jne @@listvar591
 10451 0000546F 68[FE55]                 push listvar_9
 10452 00005472 E839FA                   call prs
 10453 00005475 83C402                   add  sp, 2
 10454                                  
 10455                                  ;-971   j=GLino[i]; printint51(j);
 10456                                  
 10457                                  @@listvar591:
 10458 00005478 8B5E04                   mov bx, [bp+4]
 10459 0000547B D1E3                     shl bx, 1
 10460 0000547D 8B873B86                 mov ax, [GLino + bx]
 10461 00005481 8946FE                   mov word [bp-2], ax
 10462 00005484 FF76FE                   push word [bp-2]
 10463 00005487 E8CFFB                   call printint51
 10464 0000548A 83C402                   add  sp, 2
 10465                                  
 10466                                  ;-972   j=GUsed[i]; if (j) printint51(j);
 10467                                  
 10468 0000548D 8B5E04                   mov bx, [bp+4]
 10469 00005490 D1E3                     shl bx, 1
 10470 00005492 8B879388                 mov ax, [GUsed + bx]
 10471 00005496 8946FE                   mov word [bp-2], ax
 10472 00005499 8B46FE                   mov ax, [bp-2]
 10473 0000549C 08C0                     or  al, al
 10474 0000549E 0F840C00                 je @@listvar592
 10475 000054A2 FF76FE                   push word [bp-2]
 10476 000054A5 E8B1FB                   call printint51
 10477 000054A8 83C402                   add  sp, 2
 10478                                  
 10479                                  ;-973   else {if(GType[i]=='#') prs("    -"); else prs(" NULL");}
 10480                                  
 10481 000054AB E92200                   jmp @@listvar593
 10482                                  @@listvar592:
 10483 000054AE 8B5E04                   mov bx, [bp+4]
 10484 000054B1 8A87B782                 mov al, [GType + bx]
 10485 000054B5 3C23                     cmp al, 35
 10486 000054B7 0F850C00                 jne @@listvar594
 10487 000054BB 68[0456]                 push listvar_10
 10488 000054BE E8EDF9                   call prs
 10489 000054C1 83C402                   add  sp, 2
 10490 000054C4 E90900                   jmp @@listvar595
 10491                                  @@listvar594:
 10492 000054C7 68[0A56]                 push listvar_11
 10493 000054CA E8E1F9                   call prs
 10494 000054CD 83C402                   add  sp, 2
 10495                                  @@listvar595:
 10496                                  
 10497                                  ;-974   prc(32);  L=GAdr[i];
 10498                                  
 10499                                  @@listvar593:
 10500 000054D0 6A20                     push 32
 10501 000054D2 E86AF9                   call prc
 10502 000054D5 83C402                   add  sp, 2
 10503 000054D8 8B5E04                   mov bx, [bp+4]
 10504 000054DB C1E302                   shl bx, 2
 10505 000054DE 668B879B8F               mov eax, [GAdr + bx]
 10506 000054E3 668946F8                 mov dword [bp-8], eax
 10507                                  
 10508                                  ;-975   if (i < LSTART) { /*if (L == 0) prs("       0"); else */ prf(L, 8); }
 10509                                  
 10510 000054E7 8B4604                   mov ax, [bp+4]
 10511 000054EA 3DC800                   cmp ax, 200
 10512 000054ED 0F8D0F00                 jge @@listvar596
 10513 000054F1 6A08                     push 8
 10514 000054F3 66FF76F8                 push dword [bp-8]
 10515 000054F7 E8880A                   call prf
 10516 000054FA 83C406                   add  sp, 6
 10517                                  
 10518                                  ;-976   else  { prs("bp"); j=GData[i];
 10519                                  
 10520 000054FD E93B00                   jmp @@listvar597
 10521                                  @@listvar596:
 10522 00005500 68[1056]                 push listvar_12
 10523 00005503 E8A8F9                   call prs
 10524 00005506 83C402                   add  sp, 2
 10525 00005509 8B5E04                   mov bx, [bp+4]
 10526 0000550C C1E302                   shl bx, 2
 10527 0000550F 668B87EB8A               mov eax, [GData + bx]
 10528 00005514 8946FE                   mov word [bp-2], ax
 10529                                  
 10530                                  ;-977     if (j > 0) prc('+'); pint1(j); prs("   "); }
 10531                                  
 10532 00005517 8B46FE                   mov ax, [bp-2]
 10533 0000551A 83F800                   cmp ax, 0
 10534 0000551D 0F8E0800                 jle @@listvar598
 10535 00005521 6A2B                     push 43
 10536 00005523 E819F9                   call prc
 10537 00005526 83C402                   add  sp, 2
 10538                                  @@listvar598:
 10539 00005529 FF76FE                   push word [bp-2]
 10540 0000552C E885FA                   call pint1
 10541 0000552F 83C402                   add  sp, 2
 10542 00005532 68[1356]                 push listvar_13
 10543 00005535 E876F9                   call prs
 10544 00005538 83C402                   add  sp, 2
 10545                                  
 10546                                  ;-978   prc(32);  j=GName[i]; from_far(NA, j); prs(NA);
 10547                                  
 10548                                  @@listvar597:
 10549 0000553B 6A20                     push 32
 10550 0000553D E8FFF8                   call prc
 10551 00005540 83C402                   add  sp, 2
 10552 00005543 8B5E04                   mov bx, [bp+4]
 10553 00005546 D1E3                     shl bx, 1
 10554 00005548 8B874B94                 mov ax, [GName + bx]
 10555 0000554C 8946FE                   mov word [bp-2], ax
 10556 0000554F FF76FE                   push word [bp-2]
 10557 00005552 8D06[7200]               lea  ax, [NA]
 10558 00005556 50                       push ax
 10559 00005557 E84B09                   call from_far
 10560 0000555A 83C404                   add  sp, 4
 10561 0000555D 8D06[7200]               lea  ax, [NA]
 10562 00005561 50                       push ax
 10563 00005562 E849F9                   call prs
 10564 00005565 83C402                   add  sp, 2
 10565                                  
 10566                                  ;-979   if(GType[i]=='#') { prc('='); L=GData[i]; prL(L); }
 10567                                  
 10568 00005568 8B5E04                   mov bx, [bp+4]
 10569 0000556B 8A87B782                 mov al, [GType + bx]
 10570 0000556F 3C23                     cmp al, 35
 10571 00005571 0F852100                 jne @@listvar599
 10572 00005575 6A3D                     push 61
 10573 00005577 E8C5F8                   call prc
 10574 0000557A 83C402                   add  sp, 2
 10575 0000557D 8B5E04                   mov bx, [bp+4]
 10576 00005580 C1E302                   shl bx, 2
 10577 00005583 668B87EB8A               mov eax, [GData + bx]
 10578 00005588 668946F8                 mov dword [bp-8], eax
 10579 0000558C 66FF76F8                 push dword [bp-8]
 10580 00005590 E8CE09                   call prL
 10581 00005593 83C404                   add  sp, 4
 10582                                  
 10583                                  ;-980   if(GType[i]=='&') { prc('['); L=GData[i]; prL(L); prc(']');}
 10584                                  
 10585                                  @@listvar599:
 10586 00005596 8B5E04                   mov bx, [bp+4]
 10587 00005599 8A87B782                 mov al, [GType + bx]
 10588 0000559D 3C26                     cmp al, 38
 10589 0000559F 0F852900                 jne @@listvar600
 10590 000055A3 6A5B                     push 91
 10591 000055A5 E897F8                   call prc
 10592 000055A8 83C402                   add  sp, 2
 10593 000055AB 8B5E04                   mov bx, [bp+4]
 10594 000055AE C1E302                   shl bx, 2
 10595 000055B1 668B87EB8A               mov eax, [GData + bx]
 10596 000055B6 668946F8                 mov dword [bp-8], eax
 10597 000055BA 66FF76F8                 push dword [bp-8]
 10598 000055BE E8A009                   call prL
 10599 000055C1 83C404                   add  sp, 4
 10600 000055C4 6A5D                     push 93
 10601 000055C6 E876F8                   call prc
 10602 000055C9 83C402                   add  sp, 2
 10603                                  
 10604                                  ;-981 }
 10605                                  
 10606                                  @@listvar600:
 10607                                  
 10608                                  ;-982 int listcall() { int i;  prs("\n\n;    #  addr name   list of CALLs\n");
 10609 000055CC C9                       LEAVE
 10610 000055CD C3                       ret
 10611                                  ; ENDP
 10612 000055CE 5C6E3B00                listvar_0 db "\n;",0
 10613 000055D2 7661722000              listvar_1 db "var ",0
 10614 000055D7 7074722000              listvar_2 db "ptr ",0
 10615 000055DC 6172722000              listvar_3 db "arr ",0
 10616 000055E1 6465662000              listvar_4 db "def ",0
 10617 000055E6 7369676E2000            listvar_5 db "sign ",0
 10618 000055EC 756E73672000            listvar_6 db "unsg ",0
 10619 000055F2 627974652000            listvar_7 db "byte ",0
 10620 000055F8 776F72642000            listvar_8 db "word ",0
 10621 000055FE 647772642000            listvar_9 db "dwrd ",0
 10622 00005604 202020202D00            listvar_10 db "    -",0
 10623 0000560A 204E554C4C00            listvar_11 db " NULL",0
 10624 00005610 627000                  listvar_12 db "bp",0
 10625 00005613 20202000                listvar_13 db "   ",0
 10626                                  
 10627                                  listcall:  ; *** PROC ***
 10628                                  ;Function : listcall, Number of local variables: 1
 10629                                  ;   # type sign width line used address name   list of local variables
 10630                                  ;  200 var sign word   982 NULL bp-2    i;
 10631 00005617 C8020000                 ENTER  2,0
 10632 0000561B 68[4856]                 push listcall_0
 10633 0000561E E88DF8                   call prs
 10634 00005621 83C402                   add  sp, 2
 10635                                  
 10636                                  ;-983   i=0;  while (i< CTop) { calllisting(i); i++; } }
 10637                                  
 10638 00005624 66B800000000             mov eax, 0
 10639 0000562A 8946FE                   mov word [bp-2], ax
 10640                                  @@listcall601:
 10641 0000562D 8B46FE                   mov ax, [bp-2]
 10642 00005630 3B06[6400]               cmp ax, [CTop]
 10643 00005634 0F8D0E00                 jge @@listcall602
 10644 00005638 FF76FE                   push word [bp-2]
 10645 0000563B E83200                   call calllisting
 10646 0000563E 83C402                   add  sp, 2
 10647 00005641 FF46FE                   inc  word [bp-2]
 10648 00005644 EBE7                     jmp @@listcall601
 10649                                  @@listcall602:
 10650                                  
 10651                                  ;-984 int calllisting(int i) {char c; int j;
 10652 00005646 C9                       LEAVE
 10653 00005647 C3                       ret
 10654                                  ; ENDP
 10655 00005648 5C6E5C6E3B20202020-     listcall_0 db "\n\n;    #  addr name   list of CALLs\n",0
 10656 00005651 23202061646472206E-
 10657 0000565A 616D652020206C6973-
 10658 00005663 74206F662043414C4C-
 10659 0000566C 735C6E00           
 10660                                  
 10661                                  calllisting:  ; *** PROC ***
 10662                                  
 10663                                  ;-985   prs("\n;"); printint51(i); prc(32);
 10664                                  
 10665                                  ;Function : calllisting, Number of local variables: 3
 10666                                  ;   # type sign width line used address name   list of local variables
 10667                                  ;  200 var sign word   984 NULL bp+4    i
 10668                                  ;  201 var sign byte   984 NULL bp-2    c
 10669                                  ;  202 var sign word   984 NULL bp-4    j;
 10670 00005670 C8040000                 ENTER  4,0
 10671 00005674 68[E256]                 push calllisting_0
 10672 00005677 E834F8                   call prs
 10673 0000567A 83C402                   add  sp, 2
 10674 0000567D FF7604                   push word [bp+4]
 10675 00005680 E8D6F9                   call printint51
 10676 00005683 83C402                   add  sp, 2
 10677 00005686 6A20                     push 32
 10678 00005688 E8B4F7                   call prc
 10679 0000568B 83C402                   add  sp, 2
 10680                                  
 10681                                  ;-986   c=CUnres [i]; if(c==0)prs("unresolved ");
 10682                                  
 10683 0000568E 8B5E04                   mov bx, [bp+4]
 10684 00005691 8A8777AE                 mov al, [CUnres + bx]
 10685 00005695 8846FE                   mov byte [bp-2], al
 10686 00005698 8A46FE                   mov al, [bp-2]
 10687 0000569B 3C00                     cmp al, 0
 10688 0000569D 0F850900                 jne @@calllisting603
 10689 000056A1 68[E656]                 push calllisting_1
 10690 000056A4 E807F8                   call prs
 10691 000056A7 83C402                   add  sp, 2
 10692                                  
 10693                                  ;-987   j=CName[i];            printint51(j); prc(32);
 10694                                  
 10695                                  @@calllisting603:
 10696 000056AA 8B5E04                   mov bx, [bp+4]
 10697 000056AD D1E3                     shl bx, 1
 10698 000056AF 8B87D79E                 mov ax, [CName + bx]
 10699 000056B3 8946FC                   mov word [bp-4], ax
 10700 000056B6 FF76FC                   push word [bp-4]
 10701 000056B9 E89DF9                   call printint51
 10702 000056BC 83C402                   add  sp, 2
 10703 000056BF 6A20                     push 32
 10704 000056C1 E87BF7                   call prc
 10705 000056C4 83C402                   add  sp, 2
 10706                                  
 10707                                  ;-988   from_far(NA, j);   prs(NA);
 10708                                  
 10709 000056C7 FF76FC                   push word [bp-4]
 10710 000056CA 8D06[7200]               lea  ax, [NA]
 10711 000056CE 50                       push ax
 10712 000056CF E8D307                   call from_far
 10713 000056D2 83C404                   add  sp, 4
 10714 000056D5 8D06[7200]               lea  ax, [NA]
 10715 000056D9 50                       push ax
 10716 000056DA E8D1F7                   call prs
 10717 000056DD 83C402                   add  sp, 2
 10718                                  
 10719                                  ;-989 }
 10720                                  
 10721                                  
 10722                                  ;-990 int countcalls(int f) { unsigned int i;
 10723 000056E0 C9                       LEAVE
 10724 000056E1 C3                       ret
 10725                                  ; ENDP
 10726 000056E2 5C6E3B00                calllisting_0 db "\n;",0
 10727 000056E6 756E7265736F6C7665-     calllisting_1 db "unresolved ",0
 10728 000056EF 642000             
 10729                                  
 10730                                  countcalls:  ; *** PROC ***
 10731                                  
 10732                                  ;-991   pt=FName[f]; from_far(NA, pt);
 10733                                  
 10734                                  ;Function : countcalls, Number of local variables: 2
 10735                                  ;   # type sign width line used address name   list of local variables
 10736                                  ;  200 var sign word   990 NULL bp+4    f
 10737                                  ;  201 var unsg word   990 NULL bp-2    i;
 10738 000056F2 C8020000                 ENTER  2,0
 10739 000056F6 8B5E04                   mov bx, [bp+4]
 10740 000056F9 D1E3                     shl bx, 1
 10741 000056FB 8B877F9C                 mov ax, [FName + bx]
 10742 000056FF A3[BE00]                 mov word [pt], ax
 10743 00005702 FF36[BE00]               push word [pt]
 10744 00005706 8D06[7200]               lea  ax, [NA]
 10745 0000570A 50                       push ax
 10746 0000570B E89707                   call from_far
 10747 0000570E 83C404                   add  sp, 4
 10748                                  
 10749                                  ;-992   i=0;  while (i < CTop) {  p1=CName[i]; from_far(NB, p1);
 10750                                  
 10751 00005711 66B800000000             mov eax, 0
 10752 00005717 8946FE                   mov word [bp-2], ax
 10753                                  @@countcalls604:
 10754 0000571A 8B46FE                   mov ax, [bp-2]
 10755 0000571D 3B06[6400]               cmp ax, [CTop]
 10756 00005721 0F8D4B00                 jge @@countcalls605
 10757 00005725 8B5EFE                   mov bx, [bp-2]
 10758 00005728 D1E3                     shl bx, 1
 10759 0000572A 8B87D79E                 mov ax, [CName + bx]
 10760 0000572E A3[C000]                 mov word [p1], ax
 10761 00005731 FF36[C000]               push word [p1]
 10762 00005735 8D06[9300]               lea  ax, [NB]
 10763 00005739 50                       push ax
 10764 0000573A E86807                   call from_far
 10765 0000573D 83C404                   add  sp, 4
 10766                                  
 10767                                  ;-993     if (eqstr(NA, NB))  FCalls[f] = FCalls[f] + 1;         i++; }
 10768                                  
 10769 00005740 8D06[9300]               lea  ax, [NB]
 10770 00005744 50                       push ax
 10771 00005745 8D06[7200]               lea  ax, [NA]
 10772 00005749 50                       push ax
 10773 0000574A E8AF0B                   call eqstr
 10774 0000574D 83C404                   add  sp, 4
 10775 00005750 08C0                     or  al, al
 10776 00005752 0F841500                 je @@countcalls606
 10777 00005756 8B5E04                   mov bx, [bp+4]
 10778 00005759 D1E3                     shl bx, 1
 10779 0000575B 8B87279A                 mov ax, [FCalls + bx]
 10780 0000575F 83C001                   add ax, 1
 10781 00005762 8B5E04                   mov bx, [bp+4]
 10782 00005765 D1E3                     shl bx, 1
 10783 00005767 8987279A                 mov [FCalls+bx], ax
 10784                                  @@countcalls606:
 10785 0000576B FF46FE                   inc  word [bp-2]
 10786                                  
 10787                                  ;-994 }
 10788                                  
 10789 0000576E EBAA                     jmp @@countcalls604
 10790                                  @@countcalls605:
 10791                                  
 10792                                  ;-995 int listfunc() { int i;
 10793 00005770 C9                       LEAVE
 10794 00005771 C3                       ret
 10795                                  ; ENDP
 10796                                  
 10797                                  listfunc:  ; *** PROC ***
 10798                                  
 10799                                  ;-996   prs("\n\n\n;   # Calls Line Width  Name   list of functions\n");
 10800                                  
 10801                                  ;Function : listfunc, Number of local variables: 1
 10802                                  ;   # type sign width line used address name   list of local variables
 10803                                  ;  200 var sign word   995 NULL bp-2    i;
 10804 00005772 C8020000                 ENTER  2,0
 10805 00005776 68[C557]                 push listfunc_0
 10806 00005779 E832F7                   call prs
 10807 0000577C 83C402                   add  sp, 2
 10808                                  
 10809                                  ;-997   i=0;  while (i < FTop) { countcalls (i); i++; } 
 10810                                  
 10811 0000577F 66B800000000             mov eax, 0
 10812 00005785 8946FE                   mov word [bp-2], ax
 10813                                  @@listfunc607:
 10814 00005788 8B46FE                   mov ax, [bp-2]
 10815 0000578B 3B06[6200]               cmp ax, [FTop]
 10816 0000578F 0F8D0E00                 jge @@listfunc608
 10817 00005793 FF76FE                   push word [bp-2]
 10818 00005796 E859FF                   call countcalls
 10819 00005799 83C402                   add  sp, 2
 10820 0000579C FF46FE                   inc  word [bp-2]
 10821                                  
 10822                                  ;-998   i=0;  while (i < FTop) { funclisting(i); i++; } }
 10823                                  
 10824 0000579F EBE7                     jmp @@listfunc607
 10825                                  @@listfunc608:
 10826 000057A1 66B800000000             mov eax, 0
 10827 000057A7 8946FE                   mov word [bp-2], ax
 10828                                  @@listfunc609:
 10829 000057AA 8B46FE                   mov ax, [bp-2]
 10830 000057AD 3B06[6200]               cmp ax, [FTop]
 10831 000057B1 0F8D0E00                 jge @@listfunc610
 10832 000057B5 FF76FE                   push word [bp-2]
 10833 000057B8 E84300                   call funclisting
 10834 000057BB 83C402                   add  sp, 2
 10835 000057BE FF46FE                   inc  word [bp-2]
 10836 000057C1 EBE7                     jmp @@listfunc609
 10837                                  @@listfunc610:
 10838                                  
 10839                                  ;-999 int funclisting(int i) {int j;  char c;
 10840 000057C3 C9                       LEAVE
 10841 000057C4 C3                       ret
 10842                                  ; ENDP
 10843 000057C5 5C6E5C6E5C6E3B2020-     listfunc_0 db "\n\n\n;   # Calls Line Width  Name   list of functions\n",0
 10844 000057CE 20232043616C6C7320-
 10845 000057D7 4C696E652057696474-
 10846 000057E0 6820204E616D652020-
 10847 000057E9 206C697374206F6620-
 10848 000057F2 66756E6374696F6E73-
 10849 000057FB 5C6E00             
 10850                                  
 10851                                  funclisting:  ; *** PROC ***
 10852                                  
 10853                                  ;-1000   prs("\n;");    printint51(i);
 10854                                  
 10855                                  ;Function : funclisting, Number of local variables: 3
 10856                                  ;   # type sign width line used address name   list of local variables
 10857                                  ;  200 var sign word   999 NULL bp+4    i
 10858                                  ;  201 var sign word   999 NULL bp-2    j
 10859                                  ;  202 var sign byte   999 NULL bp-4    c;
 10860 000057FE C8040000                 ENTER  4,0
 10861 00005802 68[E058]                 push funclisting_0
 10862 00005805 E8A6F6                   call prs
 10863 00005808 83C402                   add  sp, 2
 10864 0000580B FF7604                   push word [bp+4]
 10865 0000580E E848F8                   call printint51
 10866 00005811 83C402                   add  sp, 2
 10867                                  
 10868                                  ;-1001   j = FCalls[i]; if (j) printint51(j); else prs(" NULL");
 10869                                  
 10870 00005814 8B5E04                   mov bx, [bp+4]
 10871 00005817 D1E3                     shl bx, 1
 10872 00005819 8B87279A                 mov ax, [FCalls + bx]
 10873 0000581D 8946FE                   mov word [bp-2], ax
 10874 00005820 8B46FE                   mov ax, [bp-2]
 10875 00005823 08C0                     or  al, al
 10876 00005825 0F840C00                 je @@funclisting611
 10877 00005829 FF76FE                   push word [bp-2]
 10878 0000582C E82AF8                   call printint51
 10879 0000582F 83C402                   add  sp, 2
 10880 00005832 E90900                   jmp @@funclisting612
 10881                                  @@funclisting611:
 10882 00005835 68[E458]                 push funclisting_1
 10883 00005838 E873F6                   call prs
 10884 0000583B 83C402                   add  sp, 2
 10885                                  
 10886                                  ;-1002   j = FLino[i];   printint51(j); prc(32);
 10887                                  
 10888                                  @@funclisting612:
 10889 0000583E 8B5E04                   mov bx, [bp+4]
 10890 00005841 D1E3                     shl bx, 1
 10891 00005843 8B87CF97                 mov ax, [FLino + bx]
 10892 00005847 8946FE                   mov word [bp-2], ax
 10893 0000584A FF76FE                   push word [bp-2]
 10894 0000584D E809F8                   call printint51
 10895 00005850 83C402                   add  sp, 2
 10896 00005853 6A20                     push 32
 10897 00005855 E8E7F5                   call prc
 10898 00005858 83C402                   add  sp, 2
 10899                                  
 10900                                  ;-1003   c=FWidth[i];
 10901                                  
 10902 0000585B 8B5E04                   mov bx, [bp+4]
 10903 0000585E 8A87A396                 mov al, [FWidth + bx]
 10904 00005862 8846FC                   mov byte [bp-4], al
 10905                                  
 10906                                  ;-1004   if(_ c==0)prs("void " );    if(_ c==1)prs("byte " );
 10907                                  
 10908 00005865 807EFC00                cmp byte [bp-4], 0
 10909 00005869 0F850900                 jne @@funclisting613
 10910 0000586D 68[EA58]                 push funclisting_2
 10911 00005870 E83BF6                   call prs
 10912 00005873 83C402                   add  sp, 2
 10913                                  @@funclisting613:
 10914 00005876 807EFC01                cmp byte [bp-4], 1
 10915 0000587A 0F850900                 jne @@funclisting614
 10916 0000587E 68[F058]                 push funclisting_3
 10917 00005881 E82AF6                   call prs
 10918 00005884 83C402                   add  sp, 2
 10919                                  
 10920                                  ;-1005   if(_ c==2)prs("word " );    if(_ c==4)prs("dwrd " );
 10921                                  
 10922                                  @@funclisting614:
 10923 00005887 807EFC02                cmp byte [bp-4], 2
 10924 0000588B 0F850900                 jne @@funclisting615
 10925 0000588F 68[F658]                 push funclisting_4
 10926 00005892 E819F6                   call prs
 10927 00005895 83C402                   add  sp, 2
 10928                                  @@funclisting615:
 10929 00005898 807EFC04                cmp byte [bp-4], 4
 10930 0000589C 0F850900                 jne @@funclisting616
 10931 000058A0 68[FC58]                 push funclisting_5
 10932 000058A3 E808F6                   call prs
 10933 000058A6 83C402                   add  sp, 2
 10934                                  
 10935                                  ;-1006   prc(32); prc(32);
 10936                                  
 10937                                  @@funclisting616:
 10938 000058A9 6A20                     push 32
 10939 000058AB E891F5                   call prc
 10940 000058AE 83C402                   add  sp, 2
 10941 000058B1 6A20                     push 32
 10942 000058B3 E889F5                   call prc
 10943 000058B6 83C402                   add  sp, 2
 10944                                  
 10945                                  ;-1007   j=FName[i]; from_far(NA, j); prs(NA);
 10946                                  
 10947 000058B9 8B5E04                   mov bx, [bp+4]
 10948 000058BC D1E3                     shl bx, 1
 10949 000058BE 8B877F9C                 mov ax, [FName + bx]
 10950 000058C2 8946FE                   mov word [bp-2], ax
 10951 000058C5 FF76FE                   push word [bp-2]
 10952 000058C8 8D06[7200]               lea  ax, [NA]
 10953 000058CC 50                       push ax
 10954 000058CD E8D505                   call from_far
 10955 000058D0 83C404                   add  sp, 4
 10956 000058D3 8D06[7200]               lea  ax, [NA]
 10957 000058D7 50                       push ax
 10958 000058D8 E8D3F5                   call prs
 10959 000058DB 83C402                   add  sp, 2
 10960                                  
 10961                                  ;-1008 }
 10962                                  
 10963                                  
 10964                                  ;-1009 unsigned int MAXUI=65535;
 10965 000058DE C9                       LEAVE
 10966 000058DF C3                       ret
 10967                                  ; ENDP
 10968 000058E0 5C6E3B00                funclisting_0 db "\n;",0
 10969 000058E4 204E554C4C00            funclisting_1 db " NULL",0
 10970 000058EA 766F69642000            funclisting_2 db "void ",0
 10971 000058F0 627974652000            funclisting_3 db "byte ",0
 10972 000058F6 776F72642000            funclisting_4 db "word ",0
 10973 000058FC 647772642000            funclisting_5 db "dwrd ",0
 10974 00005902 FFFF                    MAXUI dw 65535
 10975                                  
 10976                                  ;-1010 int epilog() {unsigned int i; 
 10977                                  
 10978                                  
 10979                                  epilog:  ; *** PROC ***
 10980                                  
 10981                                  ;-1011   strcpy(symbol, "LastFunctionByt");  storefunc();
 10982                                  
 10983                                  ;Function : epilog, Number of local variables: 1
 10984                                  ;   # type sign width line used address name   list of local variables
 10985                                  ;  200 var unsg word  1010 NULL bp-2    i;
 10986 00005904 C8020000                 ENTER  2,0
 10987 00005908 68[C45B]                 push epilog_0
 10988 0000590B 8D066E81                 lea  ax, [symbol]
 10989 0000590F 50                       push ax
 10990 00005910 E89508                   call strcpy
 10991 00005913 83C404                   add  sp, 4
 10992 00005916 E815B4                   call storefunc
 10993                                  
 10994                                  ;-1012   prs("\nLastFunctionByt:db 0E8h, 0, 0\npop ax\nret");
 10995                                  
 10996 00005919 68[D45B]                 push epilog_1
 10997 0000591C E88FF5                   call prs
 10998 0000591F 83C402                   add  sp, 2
 10999                                  
 11000                                  ;-1013   prs("\n \n;   # type sign width line used  address name   list of global variables\n");
 11001                                  
 11002 00005922 68[015C]                 push epilog_2
 11003 00005925 E886F5                   call prs
 11004 00005928 83C402                   add  sp, 2
 11005                                  
 11006                                  ;-1014   i=1;      while (i< GTop) { listvar(i); i++; }
 11007                                  
 11008 0000592B 66B801000000             mov eax, 1
 11009 00005931 8946FE                   mov word [bp-2], ax
 11010                                  @@epilog617:
 11011 00005934 8B46FE                   mov ax, [bp-2]
 11012 00005937 3B06[5E00]               cmp ax, [GTop]
 11013 0000593B 0F8D0E00                 jge @@epilog618
 11014 0000593F FF76FE                   push word [bp-2]
 11015 00005942 E855FA                   call listvar
 11016 00005945 83C402                   add  sp, 2
 11017 00005948 FF46FE                   inc  word [bp-2]
 11018                                  
 11019                                  ;-1015   listfunc();   listcall();   LIST=1;
 11020                                  
 11021 0000594B EBE7                     jmp @@epilog617
 11022                                  @@epilog618:
 11023 0000594D E822FE                   call listfunc
 11024 00005950 E8C4FC                   call listcall
 11025 00005953 66B801000000             mov eax, 1
 11026 00005959 A2[1700]                 mov byte [LIST], al
 11027                                  
 11028                                  ;-1016   prs("\n;Input: "); prs(&namein);
 11029                                  
 11030 0000595C 68[515C]                 push epilog_3
 11031 0000595F E84CF5                   call prs
 11032 00005962 83C402                   add  sp, 2
 11033 00005965 8D063182                 lea  ax, [namein]
 11034 00005969 50                       push ax
 11035 0000596A E841F5                   call prs
 11036 0000596D 83C402                   add  sp, 2
 11037                                  
 11038                                  ;-1017   prs(", List: ");   prs(&namelst);
 11039                                  
 11040 00005970 68[5C5C]                 push epilog_4
 11041 00005973 E838F5                   call prs
 11042 00005976 83C402                   add  sp, 2
 11043 00005979 8D067482                 lea  ax, [namelst]
 11044 0000597D 50                       push ax
 11045 0000597E E82DF5                   call prs
 11046 00005981 83C402                   add  sp, 2
 11047                                  
 11048                                  ;-1018   prs(",  Lines:"); printint51(lineno);
 11049                                  
 11050 00005984 68[655C]                 push epilog_5
 11051 00005987 E824F5                   call prs
 11052 0000598A 83C402                   add  sp, 2
 11053 0000598D FF36[BA00]               push word [lineno]
 11054 00005991 E8C5F6                   call printint51
 11055 00005994 83C402                   add  sp, 2
 11056                                  
 11057                                  ;-1019   prs("\n;Glob. variables:"); GTop--; printint51(GTop);
 11058                                  
 11059 00005997 68[6F5C]                 push epilog_6
 11060 0000599A E811F5                   call prs
 11061 0000599D 83C402                   add  sp, 2
 11062 000059A0 FF0E[5E00]               dec  word [GTop]
 11063 000059A4 FF36[5E00]               push word [GTop]
 11064 000059A8 E8AEF6                   call printint51
 11065 000059AB 83C402                   add  sp, 2
 11066                                  
 11067                                  ;-1020   prs(" max.:"); printint51(LSTART);
 11068                                  
 11069 000059AE 68[835C]                 push epilog_7
 11070 000059B1 E8FAF4                   call prs
 11071 000059B4 83C402                   add  sp, 2
 11072 000059B7 68C800                   push 200
 11073 000059BA E89CF6                   call printint51
 11074 000059BD 83C402                   add  sp, 2
 11075                                  
 11076                                  ;-1021   prs("\n;Local variables:"); i=maxloc-LSTART; printint51(i);
 11077                                  
 11078 000059C0 68[8A5C]                 push epilog_8
 11079 000059C3 E8E8F4                   call prs
 11080 000059C6 83C402                   add  sp, 2
 11081 000059C9 A1[3200]                 mov ax, [maxloc]
 11082 000059CC 2DC800                   sub ax, 200
 11083 000059CF 8946FE                   mov word [bp-2], ax
 11084 000059D2 FF76FE                   push word [bp-2]
 11085 000059D5 E881F6                   call printint51
 11086 000059D8 83C402                   add  sp, 2
 11087                                  
 11088                                  ;-1022   prs(" max.:"); _ i=VARMAX; i-=LSTART; printint51(i);
 11089                                  
 11090 000059DB 68[9E5C]                 push epilog_9
 11091 000059DE E8CDF4                   call prs
 11092 000059E1 83C402                   add  sp, 2
 11093 000059E4 C746FE2C01              mov word [bp-2], 300; i
 11094 000059E9 816EFEC800               sub  word [bp-2], 200
 11095 000059EE FF76FE                   push word [bp-2]
 11096 000059F1 E865F6                   call printint51
 11097 000059F4 83C402                   add  sp, 2
 11098                                  
 11099                                  ;-1023   prs(", in '"); prs(locname); prs("'");
 11100                                  
 11101 000059F7 68[A55C]                 push epilog_10
 11102 000059FA E8B1F4                   call prs
 11103 000059FD 83C402                   add  sp, 2
 11104 00005A00 8D062B81                 lea  ax, [locname]
 11105 00005A04 50                       push ax
 11106 00005A05 E8A6F4                   call prs
 11107 00005A08 83C402                   add  sp, 2
 11108 00005A0B 68[AC5C]                 push epilog_11
 11109 00005A0E E89DF4                   call prs
 11110 00005A11 83C402                   add  sp, 2
 11111                                  
 11112                                  ;-1024   prs("\n;Functions      :"); printint51(FTop);
 11113                                  
 11114 00005A14 68[AE5C]                 push epilog_12
 11115 00005A17 E894F4                   call prs
 11116 00005A1A 83C402                   add  sp, 2
 11117 00005A1D FF36[6200]               push word [FTop]
 11118 00005A21 E835F6                   call printint51
 11119 00005A24 83C402                   add  sp, 2
 11120                                  
 11121                                  ;-1025   prs(" max.:"); printint51(FUNCMAX);
 11122                                  
 11123 00005A27 68[C25C]                 push epilog_13
 11124 00005A2A E881F4                   call prs
 11125 00005A2D 83C402                   add  sp, 2
 11126 00005A30 682C01                   push 300
 11127 00005A33 E823F6                   call printint51
 11128 00005A36 83C402                   add  sp, 2
 11129                                  
 11130                                  ;-1026   prs("\n;Calls          :"); printint51(CTop);
 11131                                  
 11132 00005A39 68[C95C]                 push epilog_14
 11133 00005A3C E86FF4                   call prs
 11134 00005A3F 83C402                   add  sp, 2
 11135 00005A42 FF36[6400]               push word [CTop]
 11136 00005A46 E810F6                   call printint51
 11137 00005A49 83C402                   add  sp, 2
 11138                                  
 11139                                  ;-1027   prs(" max.:"); printint51(CALLMAX);
 11140                                  
 11141 00005A4C 68[DD5C]                 push epilog_15
 11142 00005A4F E85CF4                   call prs
 11143 00005A52 83C402                   add  sp, 2
 11144 00005A55 68D007                   push 2000
 11145 00005A58 E8FEF5                   call printint51
 11146 00005A5B 83C402                   add  sp, 2
 11147                                  
 11148                                  ;-1028   prs(", NameField:"); printint51(CNameTop);
 11149                                  
 11150 00005A5E 68[E45C]                 push epilog_16
 11151 00005A61 E84AF4                   call prs
 11152 00005A64 83C402                   add  sp, 2
 11153 00005A67 FF36[B400]               push word [CNameTop]
 11154 00005A6B E8EBF5                   call printint51
 11155 00005A6E 83C402                   add  sp, 2
 11156                                  
 11157                                  ;-1029   prs(" max.:"); printint51(MAXUI);
 11158                                  
 11159 00005A71 68[F15C]                 push epilog_17
 11160 00005A74 E837F4                   call prs
 11161 00005A77 83C402                   add  sp, 2
 11162 00005A7A FF36[0259]               push word [MAXUI]
 11163 00005A7E E8D8F5                   call printint51
 11164 00005A81 83C402                   add  sp, 2
 11165                                  
 11166                                  ;-1030   __asm{call LastFunctionByt}  _ i=ax;
 11167                                  
 11168 00005A84 E87309                  call LastFunctionByt
 11169 00005A87 8946FE                  mov [bp-2], ax
 11170                                  
 11171                                  ;-1031   prs("\n;Code until     :"); printint51(i);
 11172                                  
 11173 00005A8A 68[F85C]                 push epilog_18
 11174 00005A8D E81EF4                   call prs
 11175 00005A90 83C402                   add  sp, 2
 11176 00005A93 FF76FE                   push word [bp-2]
 11177 00005A96 E8C0F5                   call printint51
 11178 00005A99 83C402                   add  sp, 2
 11179                                  
 11180                                  ;-1032   prs(" max.: "); printint51(ORGDATAORIG); i=ORGDATAORIG-i; prs(", free:");
 11181                                  
 11182 00005A9C 68[0C5D]                 push epilog_19
 11183 00005A9F E80CF4                   call prs
 11184 00005AA2 83C402                   add  sp, 2
 11185 00005AA5 66FF36[2400]             push dword [ORGDATAORIG]
 11186 00005AAA E8ACF5                   call printint51
 11187 00005AAD 83C404                   add  sp, 4
 11188 00005AB0 66A1[2400]               mov eax, [ORGDATAORIG]
 11189 00005AB4 2B46FE                   sub ax, [bp-2]
 11190 00005AB7 8946FE                   mov word [bp-2], ax
 11191 00005ABA 68[145D]                 push epilog_20
 11192 00005ABD E8EEF3                   call prs
 11193 00005AC0 83C402                   add  sp, 2
 11194                                  
 11195                                  ;-1033   printint51(i); if (i <= 1000) {prs(" *** Warning *** Code area too small");
 11196                                  
 11197 00005AC3 FF76FE                   push word [bp-2]
 11198 00005AC6 E890F5                   call printint51
 11199 00005AC9 83C402                   add  sp, 2
 11200 00005ACC 8B46FE                   mov ax, [bp-2]
 11201 00005ACF 3DE803                   cmp ax, 1000
 11202 00005AD2 0F871D00                 ja  @@epilog619
 11203 00005AD6 68[1C5D]                 push epilog_21
 11204 00005AD9 E8D2F3                   call prs
 11205 00005ADC 83C402                   add  sp, 2
 11206                                  
 11207                                  ;-1034   prs("\nuse #define ORGDATA > "); printint51(ORGDATAORIG); }
 11208                                  
 11209 00005ADF 68[415D]                 push epilog_22
 11210 00005AE2 E8C9F3                   call prs
 11211 00005AE5 83C402                   add  sp, 2
 11212 00005AE8 66FF36[2400]             push dword [ORGDATAORIG]
 11213 00005AED E869F5                   call printint51
 11214 00005AF0 83C404                   add  sp, 4
 11215                                  
 11216                                  ;-1035   prs("\n;Data (HeapEnd) :"); prunsign1(orgData); i=MAXUI-orgData;
 11217                                  
 11218                                  @@epilog619:
 11219 00005AF3 68[5A5D]                 push epilog_23
 11220 00005AF6 E8B5F3                   call prs
 11221 00005AF9 83C402                   add  sp, 2
 11222 00005AFC 66FF36[2800]             push dword [orgData]
 11223 00005B01 E813F5                   call prunsign1
 11224 00005B04 83C404                   add  sp, 4
 11225 00005B07 A1[0259]                 mov ax, [MAXUI]
 11226 00005B0A 662B06[2800]             sub eax, [orgData]
 11227 00005B0F 8946FE                   mov word [bp-2], ax
 11228                                  
 11229                                  ;-1036   prs(", resting stacksize: ");printint51(i);
 11230                                  
 11231 00005B12 68[6E5D]                 push epilog_24
 11232 00005B15 E896F3                   call prs
 11233 00005B18 83C402                   add  sp, 2
 11234 00005B1B FF76FE                   push word [bp-2]
 11235 00005B1E E838F5                   call printint51
 11236 00005B21 83C402                   add  sp, 2
 11237                                  
 11238                                  ;-1037   if (i <= 5000) prs(" *** Warning *** Stack too small");
 11239                                  
 11240 00005B24 8B46FE                   mov ax, [bp-2]
 11241 00005B27 3D8813                   cmp ax, 5000
 11242 00005B2A 0F870900                 ja  @@epilog620
 11243 00005B2E 68[845D]                 push epilog_25
 11244 00005B31 E87AF3                   call prs
 11245 00005B34 83C402                   add  sp, 2
 11246                                  
 11247                                  ;-1038   prs("\n;Max. Const in '"); prs(coname); prs("' :"); printint51(maxco);
 11248                                  
 11249                                  @@epilog620:
 11250 00005B37 68[A55D]                 push epilog_26
 11251 00005B3A E871F3                   call prs
 11252 00005B3D 83C402                   add  sp, 2
 11253 00005B40 8D06E880                 lea  ax, [coname]
 11254 00005B44 50                       push ax
 11255 00005B45 E866F3                   call prs
 11256 00005B48 83C402                   add  sp, 2
 11257 00005B4B 68[B85D]                 push epilog_27
 11258 00005B4E E85DF3                   call prs
 11259 00005B51 83C402                   add  sp, 2
 11260 00005B54 FF36[2C00]               push word [maxco]
 11261 00005B58 E8FEF4                   call printint51
 11262 00005B5B 83C402                   add  sp, 2
 11263                                  
 11264                                  ;-1039   prs(" max."); printint51(COMAX); i=COMAX; i=i-maxco; prs(", free:");
 11265                                  
 11266 00005B5E 68[BC5D]                 push epilog_28
 11267 00005B61 E84AF3                   call prs
 11268 00005B64 83C402                   add  sp, 2
 11269 00005B67 68B80B                   push 3000
 11270 00005B6A E8ECF4                   call printint51
 11271 00005B6D 83C402                   add  sp, 2
 11272 00005B70 66B8B80B0000             mov eax, 3000
 11273 00005B76 8946FE                   mov word [bp-2], ax
 11274 00005B79 8B46FE                   mov ax, [bp-2]
 11275 00005B7C 2B06[2C00]               sub ax, [maxco]
 11276 00005B80 8946FE                   mov word [bp-2], ax
 11277 00005B83 68[C25D]                 push epilog_29
 11278 00005B86 E825F3                   call prs
 11279 00005B89 83C402                   add  sp, 2
 11280                                  
 11281                                  ;-1040   printint51(i);if (i <= 1000)prs(" *** Warning *** constant area too small");
 11282                                  
 11283 00005B8C FF76FE                   push word [bp-2]
 11284 00005B8F E8C7F4                   call printint51
 11285 00005B92 83C402                   add  sp, 2
 11286 00005B95 8B46FE                   mov ax, [bp-2]
 11287 00005B98 3DE803                   cmp ax, 1000
 11288 00005B9B 0F870900                 ja  @@epilog621
 11289 00005B9F 68[CA5D]                 push epilog_30
 11290 00005BA2 E809F3                   call prs
 11291 00005BA5 83C402                   add  sp, 2
 11292                                  
 11293                                  ;-1041   if(NASM==0)prs("\nEND");end1(0);}
 11294                                  
 11295                                  @@epilog621:
 11296 00005BA8 A0[1500]                 mov al, [NASM]
 11297 00005BAB 3C00                     cmp al, 0
 11298 00005BAD 0F850900                 jne @@epilog622
 11299 00005BB1 68[F35D]                 push epilog_31
 11300 00005BB4 E8F7F2                   call prs
 11301 00005BB7 83C402                   add  sp, 2
 11302                                  @@epilog622:
 11303 00005BBA 6A00                     push 0
 11304 00005BBC E8CDF5                   call end1
 11305 00005BBF 83C402                   add  sp, 2
 11306                                  
 11307                                  ;-1042 
 11308                                  
 11309                                  
 11310                                  ;-1043 int memresize(unsigned int i) {
 11311 00005BC2 C9                       LEAVE
 11312 00005BC3 C3                       ret
 11313                                  ; ENDP
 11314 00005BC4 4C61737446756E6374-     epilog_0 db "LastFunctionByt",0
 11315 00005BCD 696F6E42797400     
 11316 00005BD4 5C6E4C61737446756E-     epilog_1 db "\nLastFunctionByt:db 0E8h, 0, 0\npop ax\nret",0
 11317 00005BDD 6374696F6E4279743A-
 11318 00005BE6 646220304538682C20-
 11319 00005BEF 302C20305C6E706F70-
 11320 00005BF8 2061785C6E72657400 
 11321 00005C01 5C6E205C6E3B202020-     epilog_2 db "\n \n;   # type sign width line used  address name   list of global variables\n",0
 11322 00005C0A 232074797065207369-
 11323 00005C13 676E20776964746820-
 11324 00005C1C 6C696E652075736564-
 11325 00005C25 202061646472657373-
 11326 00005C2E 206E616D652020206C-
 11327 00005C37 697374206F6620676C-
 11328 00005C40 6F62616C2076617269-
 11329 00005C49 61626C65735C6E00   
 11330 00005C51 5C6E3B496E7075743A-     epilog_3 db "\n;Input: ",0
 11331 00005C5A 2000               
 11332 00005C5C 2C204C6973743A2000      epilog_4 db ", List: ",0
 11333 00005C65 2C20204C696E65733A-     epilog_5 db ",  Lines:",0
 11334 00005C6E 00                 
 11335 00005C6F 5C6E3B476C6F622E20-     epilog_6 db "\n;Glob. variables:",0
 11336 00005C78 7661726961626C6573-
 11337 00005C81 3A00               
 11338 00005C83 206D61782E3A00          epilog_7 db " max.:",0
 11339 00005C8A 5C6E3B4C6F63616C20-     epilog_8 db "\n;Local variables:",0
 11340 00005C93 7661726961626C6573-
 11341 00005C9C 3A00               
 11342 00005C9E 206D61782E3A00          epilog_9 db " max.:",0
 11343 00005CA5 2C20696E202700          epilog_10 db ", in '",0
 11344 00005CAC 2700                    epilog_11 db "'",0
 11345 00005CAE 5C6E3B46756E637469-     epilog_12 db "\n;Functions      :",0
 11346 00005CB7 6F6E73202020202020-
 11347 00005CC0 3A00               
 11348 00005CC2 206D61782E3A00          epilog_13 db " max.:",0
 11349 00005CC9 5C6E3B43616C6C7320-     epilog_14 db "\n;Calls          :",0
 11350 00005CD2 202020202020202020-
 11351 00005CDB 3A00               
 11352 00005CDD 206D61782E3A00          epilog_15 db " max.:",0
 11353 00005CE4 2C204E616D65466965-     epilog_16 db ", NameField:",0
 11354 00005CED 6C643A00           
 11355 00005CF1 206D61782E3A00          epilog_17 db " max.:",0
 11356 00005CF8 5C6E3B436F64652075-     epilog_18 db "\n;Code until     :",0
 11357 00005D01 6E74696C2020202020-
 11358 00005D0A 3A00               
 11359 00005D0C 206D61782E3A2000        epilog_19 db " max.: ",0
 11360 00005D14 2C20667265653A00        epilog_20 db ", free:",0
 11361 00005D1C 202A2A2A205761726E-     epilog_21 db " *** Warning *** Code area too small",0
 11362 00005D25 696E67202A2A2A2043-
 11363 00005D2E 6F6465206172656120-
 11364 00005D37 746F6F20736D616C6C-
 11365 00005D40 00                 
 11366 00005D41 5C6E75736520236465-     epilog_22 db "\nuse #define ORGDATA > ",0
 11367 00005D4A 66696E65204F524744-
 11368 00005D53 415441203E2000     
 11369 00005D5A 5C6E3B446174612028-     epilog_23 db "\n;Data (HeapEnd) :",0
 11370 00005D63 48656170456E642920-
 11371 00005D6C 3A00               
 11372 00005D6E 2C2072657374696E67-     epilog_24 db ", resting stacksize: ",0
 11373 00005D77 20737461636B73697A-
 11374 00005D80 653A2000           
 11375 00005D84 202A2A2A205761726E-     epilog_25 db " *** Warning *** Stack too small",0
 11376 00005D8D 696E67202A2A2A2053-
 11377 00005D96 7461636B20746F6F20-
 11378 00005D9F 736D616C6C00       
 11379 00005DA5 5C6E3B4D61782E2043-     epilog_26 db "\n;Max. Const in '",0
 11380 00005DAE 6F6E737420696E2027-
 11381 00005DB7 00                 
 11382 00005DB8 27203A00                epilog_27 db "' :",0
 11383 00005DBC 206D61782E00            epilog_28 db " max.",0
 11384 00005DC2 2C20667265653A00        epilog_29 db ", free:",0
 11385 00005DCA 202A2A2A205761726E-     epilog_30 db " *** Warning *** constant area too small",0
 11386 00005DD3 696E67202A2A2A2063-
 11387 00005DDC 6F6E7374616E742061-
 11388 00005DE5 72656120746F6F2073-
 11389 00005DEE 6D616C6C00         
 11390 00005DF3 5C6E454E4400            epilog_31 db "\nEND",0
 11391                                  
 11392                                  memresize:  ; *** PROC ***
 11393                                  
 11394                                  ;-1044   _ DOS_ERR=0; bx=i; _ ax=cs; es=ax; ax=0x4A00; DosInt(); }
 11395                                  
 11396                                  ;Function : memresize, Number of local variables: 1
 11397                                  ;   # type sign width line used address name   list of local variables
 11398                                  ;  200 var unsg word  1043 NULL bp+4    i;
 11399 00005DF9 C8000000                 ENTER  0,0
 11400 00005DFD C706[C200]0000          mov word [DOS_ERR], 0
 11401 00005E03 8B5E04                   mov  bx, [bp+4]
 11402 00005E06 8CC8                     mov  ax, cs
 11403 00005E08 8EC0                     mov  es, ax
 11404 00005E0A B8004A                   mov  ax, 18944
 11405 00005E0D E86605                   call DosInt
 11406                                  
 11407                                  ;-1045 int memalloc(unsigned int i) { unsigned int vAX; unsigned int vBX;
 11408 00005E10 C9                       LEAVE
 11409 00005E11 C3                       ret
 11410                                  ; ENDP
 11411                                  
 11412                                  memalloc:  ; *** PROC ***
 11413                                  
 11414                                  ;-1046   _ DOS_ERR=0; bx=i;  ax=0x4800; DosInt(); _ vAX=ax; _ vBX=bx;
 11415                                  
 11416                                  ;Function : memalloc, Number of local variables: 3
 11417                                  ;   # type sign width line used address name   list of local variables
 11418                                  ;  200 var unsg word  1045 NULL bp+4    i
 11419                                  ;  201 var unsg word  1045 NULL bp-2    vAX
 11420                                  ;  202 var unsg word  1045 NULL bp-4    vBX;
 11421 00005E12 C8040000                 ENTER  4,0
 11422 00005E16 C706[C200]0000          mov word [DOS_ERR], 0
 11423 00005E1C 8B5E04                   mov  bx, [bp+4]
 11424 00005E1F B80048                   mov  ax, 18432
 11425 00005E22 E85105                   call DosInt
 11426 00005E25 8946FE                  mov [bp-2], ax
 11427 00005E28 895EFC                  mov [bp-4], bx
 11428                                  
 11429                                  ;-1047   if(DOS_ERR) return vBX;   return vAX;  }
 11430                                  
 11431 00005E2B A1[C200]                 mov ax, [DOS_ERR]
 11432 00005E2E 08C0                     or  al, al
 11433 00005E30 0F840600                 je @@memalloc623
 11434 00005E34 8B46FC                   mov ax, [bp-4]
 11435 00005E37 E90600                   jmp @@retn
 11436                                  @@memalloc623:
 11437 00005E3A 8B46FE                   mov ax, [bp-2]
 11438 00005E3D E90000                   jmp @@retn
 11439                                  
 11440                                  ;-1048 int copyF(char *dest, char *src, unsigned int sz) {
 11441                                  
 11442 00005E40 C9                      @@retn: LEAVE
 11443 00005E41 C3                       ret
 11444                                  ; ENDP
 11445                                  
 11446                                  copyF:  ; *** PROC ***
 11447                                  
 11448                                  ;-1049   segE;  _ es=ax;  _ si=src;  _ di=dest; _ cx=sz;  // ds:si   es:di
 11449                                  
 11450                                  ;Function : copyF, Number of local variables: 3
 11451                                  ;   # type sign width line used address name   list of local variables
 11452                                  ;  200 ptr sign byte  1048 NULL bp+4    dest
 11453                                  ;  201 ptr sign byte  1048 NULL bp+6    src
 11454                                  ;  202 var unsg word  1048 NULL bp+8    sz;
 11455 00005E42 C8000000                 ENTER  0,0
 11456 00005E46 A1[B800]                 mov ax, [segE]
 11457 00005E49 8EC0                     mov  es, ax
 11458 00005E4B 8B7606                   mov  si, [bp+6]
 11459 00005E4E 8B7E04                   mov  di, [bp+4]
 11460 00005E51 8B4E08                   mov  cx, [bp+8]
 11461                                  
 11462                                  ;-1050   __asm{cld} __asm{rep movsb} __asm{mov byte [es:di], 0}   }
 11463                                  
 11464 00005E54 FC                      cld
 11465 00005E55 F3A4                    rep movsb
 11466 00005E57 26C60500                mov byte [es:di], 0
 11467                                  
 11468                                  ;-1051 int loadName(char *dest, int i) {
 11469 00005E5B C9                       LEAVE
 11470 00005E5C C3                       ret
 11471                                  ; ENDP
 11472                                  
 11473                                  loadName:  ; *** PROC ***
 11474                                  
 11475                                  ;-1052   segE;  _ es=ax; _ di=dest;  GName[i]; _ si=ax;
 11476                                  
 11477                                  ;Function : loadName, Number of local variables: 2
 11478                                  ;   # type sign width line used address name   list of local variables
 11479                                  ;  200 ptr sign byte  1051 NULL bp+4    dest
 11480                                  ;  201 var sign word  1051 NULL bp+6    i;
 11481 00005E5D C8000000                 ENTER  0,0
 11482 00005E61 A1[B800]                 mov ax, [segE]
 11483 00005E64 8EC0                     mov  es, ax
 11484 00005E66 8B7E04                   mov  di, [bp+4]
 11485 00005E69 8B5E06                   mov bx, [bp+6]
 11486 00005E6C D1E3                     shl bx, 1
 11487 00005E6E 8B874B94                 mov ax, [GName + bx]
 11488 00005E72 89C6                     mov  si, ax
 11489                                  
 11490                                  ;-1053   do{ __asm{mov al, [es:si]} si++; *di=al;  di++; } while (al != 0); }
 11491                                  
 11492                                  @@loadName624:
 11493 00005E74 268A04                  mov al, [es:si]
 11494 00005E77 46                       inc  si
 11495 00005E78 8805                     mov  [di], al
 11496 00005E7A 47                       inc  di
 11497 00005E7B 3C00                     cmp  al, 0
 11498 00005E7D 0F840200                 je  @@loadName625
 11499 00005E81 EBF1                     jmp @@loadName624
 11500                                  @@loadName625:
 11501                                  
 11502                                  ;-1054 int to_far(char *dest, char *src) {
 11503 00005E83 C9                       LEAVE
 11504 00005E84 C3                       ret
 11505                                  ; ENDP
 11506                                  
 11507                                  to_far:  ; *** PROC ***
 11508                                  
 11509                                  ;-1055   segE;  _ es=ax;  _ si=src;  _ di=dest;  // ds:si   es:di
 11510                                  
 11511                                  ;Function : to_far, Number of local variables: 2
 11512                                  ;   # type sign width line used address name   list of local variables
 11513                                  ;  200 ptr sign byte  1054 NULL bp+4    dest
 11514                                  ;  201 ptr sign byte  1054 NULL bp+6    src;
 11515 00005E85 C8000000                 ENTER  0,0
 11516 00005E89 A1[B800]                 mov ax, [segE]
 11517 00005E8C 8EC0                     mov  es, ax
 11518 00005E8E 8B7606                   mov  si, [bp+6]
 11519 00005E91 8B7E04                   mov  di, [bp+4]
 11520                                  
 11521                                  ;-1056   do{ al= *si; si++; __asm{mov [es:di], al} di++; } while (al != 0); }
 11522                                  
 11523                                  @@to_far626:
 11524 00005E94 8A04                     mov  al, [si]
 11525 00005E96 46                       inc  si
 11526 00005E97 268805                  mov [es:di], al
 11527 00005E9A 47                       inc  di
 11528 00005E9B 3C00                     cmp  al, 0
 11529 00005E9D 0F840200                 je  @@to_far627
 11530 00005EA1 EBF1                     jmp @@to_far626
 11531                                  @@to_far627:
 11532                                  
 11533                                  ;-1057 int from_far(char *dest, char *src) {
 11534 00005EA3 C9                       LEAVE
 11535 00005EA4 C3                       ret
 11536                                  ; ENDP
 11537                                  
 11538                                  from_far:  ; *** PROC ***
 11539                                  
 11540                                  ;-1058   segE;  _ es=ax;  _ si=src;  _ di=dest;  // ds:si   es:di
 11541                                  
 11542                                  ;Function : from_far, Number of local variables: 2
 11543                                  ;   # type sign width line used address name   list of local variables
 11544                                  ;  200 ptr sign byte  1057 NULL bp+4    dest
 11545                                  ;  201 ptr sign byte  1057 NULL bp+6    src;
 11546 00005EA5 C8000000                 ENTER  0,0
 11547 00005EA9 A1[B800]                 mov ax, [segE]
 11548 00005EAC 8EC0                     mov  es, ax
 11549 00005EAE 8B7606                   mov  si, [bp+6]
 11550 00005EB1 8B7E04                   mov  di, [bp+4]
 11551                                  
 11552                                  ;-1059   do{ __asm{mov al, [es:si]} si++; *di=al;  di++; } while (al != 0); }
 11553                                  
 11554                                  @@from_far628:
 11555 00005EB4 268A04                  mov al, [es:si]
 11556 00005EB7 46                       inc  si
 11557 00005EB8 8805                     mov  [di], al
 11558 00005EBA 47                       inc  di
 11559 00005EBB 3C00                     cmp  al, 0
 11560 00005EBD 0F840200                 je  @@from_far629
 11561 00005EC1 EBF1                     jmp @@from_far628
 11562                                  @@from_far629:
 11563                                  
 11564                                  ;-1060 
 11565                                  
 11566                                  
 11567                                  ;-1061 unsigned char GDT1[]={15,0,0,0,0,0,0,0, 0xFF,0xFF,0x00,0x00,0x00,0x92,0xCF,0};
 11568 00005EC3 C9                       LEAVE
 11569 00005EC4 C3                       ret
 11570                                  ; ENDP
 11571 00005EC5 0F00000000000000FF-     GDT1 db 15,0,0,0,0,0,0,0,255,255,0,0,0,146,207,0
 11572 00005ECE FF00000092CF00     
 11573                                  
 11574                                  ;-1062 int isvirtual86() { eax=cr0;  ax &= 1; }
 11575                                  
 11576                                  
 11577                                  isvirtual86:  ; *** PROC ***
 11578 00005ED5 0F20C0                   mov  eax, cr0
 11579 00005ED8 83E001                   and  ax, 1
 11580                                  
 11581                                  ;-1063 int is32bit() { ecx=0xFFFF; __asm{jmp $ + 2;} ecx++; ifzero return 0; return 1;}
 11582                                  
 11583 00005EDB C3                       ret
 11584                                  ; ENDP
 11585                                  
 11586                                  is32bit:  ; *** PROC ***
 11587 00005EDC 66B9FFFF0000             mov  ecx, 65535
 11588 00005EE2 EB00                    jmp $ + 2;
 11589 00005EE4 6641                     inc  ecx
 11590 00005EE6 7509                     jne short @@is32bit630
 11591 00005EE8 66B800000000             mov eax, 0
 11592 00005EEE E90900                   jmp @@retn
 11593                                  @@is32bit630:
 11594 00005EF1 66B801000000             mov eax, 1
 11595 00005EF7 E90000                   jmp @@retn
 11596                                  
 11597                                  ;-1064 int INITCPU32() { eax=0;	ax=ds; eax << 4;
 11598                                  
 11599                                  @@retn:
 11600 00005EFA C3                       ret
 11601                                  ; ENDP
 11602                                  
 11603                                  INITCPU32:  ; *** PROC ***
 11604 00005EFB 66B800000000             mov  eax, 0
 11605 00005F01 8CD8                     mov  ax, ds
 11606 00005F03 66C1E004                 shl  eax, 4
 11607                                  
 11608                                  ;-1065 	asm add eax, GDT1       ;//Offset GDT
 11609                                  
 11610 00005F07 6605[C55E0000]           add eax, GDT1       ;//Offset GDT
 11611                                  
 11612                                  ;-1066 	asm mov [GDT1+2], eax
 11613                                  
 11614 00005F0D 66A3[C75E]               mov [GDT1+2], eax
 11615                                  
 11616                                  ;-1067 	asm lgdt [GDT1]
 11617                                  
 11618 00005F11 0F0116[C55E]             lgdt [GDT1]
 11619                                  
 11620                                  ;-1068 	bx=8;
 11621                                  
 11622 00005F16 BB0800                   mov  bx, 8
 11623                                  
 11624                                  ;-1069 	asm push ds
 11625                                  
 11626 00005F19 1E                       push ds
 11627                                  
 11628                                  ;-1070 	asm cli
 11629                                  
 11630 00005F1A FA                       cli
 11631                                  
 11632                                  ;-1071 	eax=cr0; al++; cr0=eax;
 11633                                  
 11634 00005F1B 0F20C0                   mov  eax, cr0
 11635 00005F1E FEC0                     inc  al
 11636 00005F20 0F22C0                   mov  cr0, eax
 11637                                  
 11638                                  ;-1072 	asm use32
 11639                                  
 11640                                   use32
 11641                                  
 11642                                  ;-1073 	__asm{jmp dword PROT_EN}   __asm{PROT_EN:}
 11643                                  
 11644 00005F23 E900000000              jmp dword PROT_EN
 11645                                  PROT_EN:
 11646                                  
 11647                                  ;-1074 	fs=bx;	al--;	cr0=eax;
 11648                                  
 11649 00005F28 8EE3                     mov  fs, bx
 11650 00005F2A FEC8                     dec  al
 11651 00005F2C 0F22C0                   mov  cr0, eax
 11652                                  
 11653                                  ;-1075 	asm use16
 11654                                  
 11655                                   use16
 11656                                  
 11657                                  ;-1076 	__asm{jmp word PROT_DI} __asm{PROT_DI:}
 11658                                  
 11659 00005F2F E90000                  jmp word PROT_DI
 11660                                  PROT_DI:
 11661                                  
 11662                                  ;-1077 	asm sti
 11663                                  
 11664 00005F32 FB                       sti
 11665                                  
 11666                                  ;-1078 	asm pop ds
 11667                                  
 11668 00005F33 1F                       pop ds
 11669                                  
 11670                                  ;-1079 }
 11671                                  
 11672                                  
 11673                                  ;-1080 
 11674                                  
 11675                                  
 11676                                  ;-1081 void to32  (long L,  char *src) { }
 11677                                  
 11678 00005F34 C3                       ret
 11679                                  ; ENDP
 11680                                  
 11681                                  to32:  ; *** PROC ***
 11682                                  ;Function : to32, Number of local variables: 2
 11683                                  ;   # type sign width line used address name   list of local variables
 11684                                  ;  200 var sign dwrd  1081 NULL bp+4    L
 11685                                  ;  201 ptr sign byte  1081 NULL bp+8    src;
 11686 00005F35 C8000000                 ENTER  0,0
 11687                                  
 11688                                  ;-1082 void from32(char *dest, long L) { }
 11689 00005F39 C9                       LEAVE
 11690 00005F3A C3                       ret
 11691                                  ; ENDP
 11692                                  
 11693                                  from32:  ; *** PROC ***
 11694                                  ;Function : from32, Number of local variables: 2
 11695                                  ;   # type sign width line used address name   list of local variables
 11696                                  ;  200 ptr sign byte  1082 NULL bp+4    dest
 11697                                  ;  201 var sign dwrd  1082 NULL bp+6    L;
 11698 00005F3B C8000000                 ENTER  0,0
 11699                                  
 11700                                  ;-1083 void prLr(unsigned long L) {           ultoar(L, Ls); prs(Ls); }//right
 11701 00005F3F C9                       LEAVE
 11702 00005F40 C3                       ret
 11703                                  ; ENDP
 11704                                  
 11705                                  prLr:  ; *** PROC ***
 11706                                  ;Function : prLr, Number of local variables: 1
 11707                                  ;   # type sign width line used address name   list of local variables
 11708                                  ;  200 var unsg dwrd  1083 NULL bp+4    L;
 11709 00005F41 C8000000                 ENTER  0,0
 11710 00005F45 8D06[6600]               lea  ax, [Ls]
 11711 00005F49 50                       push ax
 11712 00005F4A 66FF7604                 push dword [bp+4]
 11713 00005F4E E87F00                   call ultoar
 11714 00005F51 83C406                   add  sp, 6
 11715 00005F54 8D06[6600]               lea  ax, [Ls]
 11716 00005F58 50                       push ax
 11717 00005F59 E852EF                   call prs
 11718 00005F5C 83C402                   add  sp, 2
 11719                                  
 11720                                  ;-1084 void prL (unsigned long L) {char *p; p=ultoaL(L, Ls); prs(p ); }//left
 11721 00005F5F C9                       LEAVE
 11722 00005F60 C3                       ret
 11723                                  ; ENDP
 11724                                  
 11725                                  prL:  ; *** PROC ***
 11726                                  ;Function : prL, Number of local variables: 2
 11727                                  ;   # type sign width line used address name   list of local variables
 11728                                  ;  200 var unsg dwrd  1084 NULL bp+4    L
 11729                                  ;  201 ptr sign byte  1084 NULL bp-2    p;
 11730 00005F61 C8020000                 ENTER  2,0
 11731 00005F65 8D06[6600]               lea  ax, [Ls]
 11732 00005F69 50                       push ax
 11733 00005F6A 66FF7604                 push dword [bp+4]
 11734 00005F6E E8C100                   call ultoaL
 11735 00005F71 83C406                   add  sp, 6
 11736 00005F74 8946FE                   mov word [bp-2], ax
 11737 00005F77 FF76FE                   push word [bp-2]
 11738 00005F7A E831EF                   call prs
 11739 00005F7D 83C402                   add  sp, 2
 11740                                  
 11741                                  ;-1085 void prf(unsigned long L, int w) {char len; char *p;            //format width
 11742 00005F80 C9                       LEAVE
 11743 00005F81 C3                       ret
 11744                                  ; ENDP
 11745                                  
 11746                                  prf:  ; *** PROC ***
 11747                                  
 11748                                  ;-1086   p=ultoaL(L, Ls); len=strlen(p); if (w > len) do {prc(32); w--;} while (w>len);
 11749                                  
 11750                                  ;Function : prf, Number of local variables: 4
 11751                                  ;   # type sign width line used address name   list of local variables
 11752                                  ;  200 var unsg dwrd  1085 NULL bp+4    L
 11753                                  ;  201 var sign word  1085 NULL bp+8    w
 11754                                  ;  202 var sign byte  1085 NULL bp-2    len
 11755                                  ;  203 ptr sign byte  1085 NULL bp-4    p;
 11756 00005F82 C8040000                 ENTER  4,0
 11757 00005F86 8D06[6600]               lea  ax, [Ls]
 11758 00005F8A 50                       push ax
 11759 00005F8B 66FF7604                 push dword [bp+4]
 11760 00005F8F E8A000                   call ultoaL
 11761 00005F92 83C406                   add  sp, 6
 11762 00005F95 8946FC                   mov word [bp-4], ax
 11763 00005F98 FF76FC                   push word [bp-4]
 11764 00005F9B E8DF01                   call strlen
 11765 00005F9E 83C402                   add  sp, 2
 11766 00005FA1 8846FE                   mov byte [bp-2], al
 11767 00005FA4 8B4608                   mov ax, [bp+8]
 11768 00005FA7 3A46FE                   cmp al, [bp-2]
 11769 00005FAA 0F8E1700                 jle @@prf631
 11770                                  @@prf632:
 11771 00005FAE 6A20                     push 32
 11772 00005FB0 E88CEE                   call prc
 11773 00005FB3 83C402                   add  sp, 2
 11774 00005FB6 FF4E08                   dec  word [bp+8]
 11775 00005FB9 8B4608                   mov ax, [bp+8]
 11776 00005FBC 3A46FE                   cmp al, [bp-2]
 11777 00005FBF 0F8E0200                 jle @@prf633
 11778 00005FC3 EBE9                     jmp @@prf632
 11779                                  @@prf633:
 11780                                  @@prf631:
 11781                                  
 11782                                  ;-1087   prs(p); }
 11783                                  
 11784 00005FC5 FF76FC                   push word [bp-4]
 11785 00005FC8 E8E3EE                   call prs
 11786 00005FCB 83C402                   add  sp, 2
 11787                                  
 11788                                  ;-1088 void ultoar(unsigned long L, char *s) { int i;//edx:eax DIV ebx = eax Modulo edx
 11789 00005FCE C9                       LEAVE
 11790 00005FCF C3                       ret
 11791                                  ; ENDP
 11792                                  
 11793                                  ultoar:  ; *** PROC ***
 11794                                  
 11795                                  ;-1089   i=0;  while(i<10) { *s = '0'; s++; i++; }   *s = 0;   s--;  eax=L;
 11796                                  
 11797                                  ;Function : ultoar, Number of local variables: 3
 11798                                  ;   # type sign width line used address name   list of local variables
 11799                                  ;  200 var unsg dwrd  1088 NULL bp+4    L
 11800                                  ;  201 ptr sign byte  1088 NULL bp+8    s
 11801                                  ;  202 var sign word  1088 NULL bp-2    i;
 11802 00005FD0 C8020000                 ENTER  2,0
 11803 00005FD4 66B800000000             mov eax, 0
 11804 00005FDA 8946FE                   mov word [bp-2], ax
 11805                                  @@ultoar634:
 11806 00005FDD 8B46FE                   mov ax, [bp-2]
 11807 00005FE0 83F80A                   cmp ax, 10
 11808 00005FE3 0F8D1300                 jge @@ultoar635
 11809 00005FE7 66B830000000             mov eax, 48
 11810 00005FED 8B5E08                   mov  bx, [bp+8]
 11811 00005FF0 8807                     mov  [bx], al
 11812 00005FF2 FF4608                   inc  word [bp+8]
 11813 00005FF5 FF46FE                   inc  word [bp-2]
 11814 00005FF8 EBE3                     jmp @@ultoar634
 11815                                  @@ultoar635:
 11816 00005FFA 66B800000000             mov eax, 0
 11817 00006000 8B5E08                   mov  bx, [bp+8]
 11818 00006003 8807                     mov  [bx], al
 11819 00006005 FF4E08                   dec  word [bp+8]
 11820 00006008 668B4604                 mov  eax, [bp+4]
 11821                                  
 11822                                  ;-1090   do { edx=0;  ebx=10; ebx /= ;
 11823                                  
 11824                                  @@ultoar636:
 11825 0000600C 66BA00000000             mov  edx, 0
 11826 00006012 66BB0A000000             mov  ebx, 10
 11827 00006018 66F7F3                   div  ebx
 11828                                  
 11829                                  ;-1091        dl+=48; bx=s;   *bx=dl;  s--; } while (eax != 0);  }
 11830                                  
 11831 0000601B 80C230                   add  dl, 48
 11832 0000601E 8B5E08                   mov  bx, [bp+8]
 11833 00006021 8817                     mov  [bx], dl
 11834 00006023 FF4E08                   dec  word [bp+8]
 11835 00006026 6683F800                 cmp  eax, 0
 11836 0000602A 0F840200                 je  @@ultoar637
 11837 0000602E EBDC                     jmp @@ultoar636
 11838                                  @@ultoar637:
 11839                                  
 11840                                  ;-1092 int ultoaL(unsigned long L, char *s) { // edx:eax DIV ebx = eax Modulo edx
 11841 00006030 C9                       LEAVE
 11842 00006031 C3                       ret
 11843                                  ; ENDP
 11844                                  
 11845                                  ultoaL:  ; *** PROC ***
 11846                                  
 11847                                  ;-1093   s=s+10;  *s = 0;   s--;  eax=L;
 11848                                  
 11849                                  ;Function : ultoaL, Number of local variables: 2
 11850                                  ;   # type sign width line used address name   list of local variables
 11851                                  ;  200 var unsg dwrd  1092 NULL bp+4    L
 11852                                  ;  201 ptr sign byte  1092 NULL bp+8    s;
 11853 00006032 C8000000                 ENTER  0,0
 11854 00006036 8B4608                   mov ax, [bp+8]
 11855 00006039 83C00A                   add ax, 10
 11856 0000603C 894608                   mov word [bp+8], ax
 11857 0000603F 66B800000000             mov eax, 0
 11858 00006045 8B5E08                   mov  bx, [bp+8]
 11859 00006048 8807                     mov  [bx], al
 11860 0000604A FF4E08                   dec  word [bp+8]
 11861 0000604D 668B4604                 mov  eax, [bp+4]
 11862                                  
 11863                                  ;-1094   do { edx=0;  ebx=10; ebx /= ;
 11864                                  
 11865                                  @@ultoaL638:
 11866 00006051 66BA00000000             mov  edx, 0
 11867 00006057 66BB0A000000             mov  ebx, 10
 11868 0000605D 66F7F3                   div  ebx
 11869                                  
 11870                                  ;-1095        dl+=48; bx=s;   *bx=dl;  s--; } while (eax != 0);   s++; ax=s;
 11871                                  
 11872 00006060 80C230                   add  dl, 48
 11873 00006063 8B5E08                   mov  bx, [bp+8]
 11874 00006066 8817                     mov  [bx], dl
 11875 00006068 FF4E08                   dec  word [bp+8]
 11876 0000606B 6683F800                 cmp  eax, 0
 11877 0000606F 0F840200                 je  @@ultoaL639
 11878 00006073 EBDC                     jmp @@ultoaL638
 11879                                  @@ultoaL639:
 11880 00006075 FF4608                   inc  word [bp+8]
 11881 00006078 8B4608                   mov  ax, [bp+8]
 11882                                  
 11883                                  ;-1096 }
 11884 0000607B C9                       LEAVE
 11885 0000607C C3                       ret
 11886                                  ; ENDP
 11887                                   
 11888                                  ; missing functions: 
 11889                                  ; strlen
 11890                                  ; strlen
 11891                                  ; strcpy
 11892                                  ; strlen
 11893                                  ; strcpy
 11894                                  ; eqstr
 11895                                  ; eqstr
 11896                                  ; eqstr
 11897                                  ; strcpy
 11898                                  ; mkneg
 11899                                  ; strlen
 11900                                  ; strcpy
 11901                                  ; strcpy
 11902                                  ; eqstr
 11903                                  ; eqstr
 11904                                  ; strcpy
 11905                                  ; strcpy
 11906                                  ; strcpy
 11907                                  ; strcpy
 11908                                  ; strcpy
 11909                                  ; strcpy
 11910                                  ; strcpy
 11911                                  ; strcpy
 11912                                  ; strcpy
 11913                                  ; strcpy
 11914                                  ; strcpy
 11915                                  ; strcpy
 11916                                  ; eqstr
 11917                                  ; strcpy
 11918                                  ; strcpy
 11919                                  ; strlen
 11920                                  ; eqstr
 11921                                  ; eqstr
 11922                                  ; eqstr
 11923                                  ; eqstr
 11924                                  ; eqstr
 11925                                  ; eqstr
 11926                                  ; eqstr
 11927                                  ; eqstr
 11928                                  ; eqstr
 11929                                  ; eqstr
 11930                                  ; eqstr
 11931                                  ; eqstr
 11932                                  ; eqstr
 11933                                  ; eqstr
 11934                                  ; eqstr
 11935                                  ; eqstr
 11936                                  ; eqstr
 11937                                  ; eqstr
 11938                                  ; eqstr
 11939                                  ; eqstr
 11940                                  ; eqstr
 11941                                  ; eqstr
 11942                                  ; strlen
 11943                                  ; eqstr
 11944                                  ; eqstr
 11945                                  ; eqstr
 11946                                  ; eqstr
 11947                                  ; eqstr
 11948                                  ; eqstr
 11949                                  ; eqstr
 11950                                  ; eqstr
 11951                                  ; eqstr
 11952                                  ; eqstr
 11953                                  ; strcpy
 11954                                  ; cputs
 11955                                  ; cputs
 11956                                  ; cputs
 11957                                  ; cputs
 11958                                  ; readRL
 11959                                  ; strcpy
 11960                                  ; instr2
 11961                                  ; strcat1
 11962                                  ; toupper
 11963                                  ; instr2
 11964                                  ; strcpy
 11965                                  ; instr2
 11966                                  ; strcpy
 11967                                  ; strlen
 11968                                  ; openR
 11969                                  ; cputs
 11970                                  ; cputs
 11971                                  ; exitR
 11972                                  ; creatR
 11973                                  ; cputs
 11974                                  ; cputs
 11975                                  ; exitR
 11976                                  ; cputs
 11977                                  ; cputs
 11978                                  ; cputs
 11979                                  ; cputs
 11980                                  ; cputs
 11981                                  ; cputs
 11982                                  ; cputs
 11983                                  ; cputs
 11984                                  ; eqstr
 11985                                  ; cputs
 11986                                  ; cputs
 11987                                  ; pint
 11988                                  ; openR
 11989                                  ; cputs
 11990                                  ; cputs
 11991                                  ; exitR
 11992                                  ; eqstr
 11993                                  ; putch
 11994                                  ; cputs
 11995                                  ; openR
 11996                                  ; cputs
 11997                                  ; eqstr
 11998                                  ; eqstr
 11999                                  ; eqstr
 12000                                  ; eqstr
 12001                                  ; eqstr
 12002                                  ; strcpy
 12003                                  ; instr1
 12004                                  ; digit
 12005                                  ; letter
 12006                                  ; strcpy
 12007                                  ; letter
 12008                                  ; eqstr
 12009                                  ; eqstr
 12010                                  ; eqstr
 12011                                  ; eqstr
 12012                                  ; eqstr
 12013                                  ; eqstr
 12014                                  ; eqstr
 12015                                  ; eqstr
 12016                                  ; eqstr
 12017                                  ; eqstr
 12018                                  ; eqstr
 12019                                  ; eqstr
 12020                                  ; eqstr
 12021                                  ; eqstr
 12022                                  ; eqstr
 12023                                  ; eqstr
 12024                                  ; eqstr
 12025                                  ; eqstr
 12026                                  ; eqstr
 12027                                  ; eqstr
 12028                                  ; eqstr
 12029                                  ; eqstr
 12030                                  ; strcpy
 12031                                  ; eqstr
 12032                                  ; letter
 12033                                  ; digit
 12034                                  ; writetty
 12035                                  ; writetty
 12036                                  ; fputcR
 12037                                  ; mkneg
 12038                                  ; mkneg
 12039                                  ; readR
 12040                                  ; fcloseR
 12041                                  ; fcloseR
 12042                                  ; exitR
 12043                                  ; eqstr
 12044                                  ; strcpy
 12045                                  ; DosInt
 12046                                  ; DosInt
 12047                                  ; strlen
 12048                                  ; Number of unresolved CALLs :  159
 12049                                  ;use archive file: AR.C
 12050                                  
 12051                                  ;-1097 // AR.C Archive file for PLA.DE The MIT License (MIT) starting 1.1.2015  (c) 2015 Helmut Guenther
 12052                                  
 12053                                  ;Number of CALLs:    2 : writetty
 12054                                  
 12055                                  writetty:  ; *** PROC ***
 12056 0000607D B40E                     mov  ah, 14
 12057 0000607F BB0000                   mov  bx, 0
 12058 00006082 CD10                     int  16
 12059                                  
 12060                                  ;-1098 int putch(char c)  {if (_ c==10) {al=13; writetty();} al=c; writetty(); }
 12061                                  
 12062 00006084 C3                       ret
 12063                                  ; ENDP
 12064                                  ;Number of CALLs:    1 : putch
 12065                                  
 12066                                  putch:  ; *** PROC ***
 12067                                  ;Function : putch, Number of local variables: 1
 12068                                  ;   # type sign width line used address name   list of local variables
 12069                                  ;  200 var sign byte  1098 NULL bp+4    c;
 12070 00006085 C8000000                 ENTER  0,0
 12071 00006089 807E040A                cmp byte [bp+4], 10
 12072 0000608D 0F850500                 jne @@putch640
 12073 00006091 B00D                     mov  al, 13
 12074 00006093 E8E7FF                   call writetty
 12075                                  @@putch640:
 12076 00006096 8A4604                   mov  al, [bp+4]
 12077 00006099 E8E1FF                   call writetty
 12078                                  
 12079                                  ;-1099 int cputs(char *s) {char c;  while(*s) { c=*s; putch(c); s++; } }
 12080 0000609C C9                       LEAVE
 12081 0000609D C3                       ret
 12082                                  ; ENDP
 12083                                  ;Number of CALLs:   22 : cputs
 12084                                  
 12085                                  cputs:  ; *** PROC ***
 12086                                  ;Function : cputs, Number of local variables: 2
 12087                                  ;   # type sign width line used address name   list of local variables
 12088                                  ;  200 ptr sign byte  1099 NULL bp+4    s
 12089                                  ;  201 var sign byte  1099 NULL bp-2    c;
 12090 0000609E C8020000                 ENTER  2,0
 12091                                  @@cputs641:
 12092 000060A2 8B5E04                   mov bx, [bp+4]
 12093 000060A5 8A07                     mov al, [bx]
 12094 000060A7 B400                     mov ah, 0
 12095 000060A9 08C0                     or  al, al
 12096 000060AB 0F841B00                 je @@cputs642
 12097 000060AF 8B5E04                   mov bx, [bp+4]
 12098 000060B2 8A07                     mov al, [bx]
 12099 000060B4 B400                     mov ah, 0
 12100 000060B6 8846FE                   mov byte [bp-2], al
 12101 000060B9 8A46FE                   mov al, byte [bp-2]
 12102 000060BC B400                     mov ah, 0
 12103 000060BE 50                       push ax
 12104 000060BF E8C3FF                   call putch
 12105 000060C2 83C402                   add  sp, 2
 12106 000060C5 FF4604                   inc  word [bp+4]
 12107 000060C8 EBD8                     jmp @@cputs641
 12108                                  @@cputs642:
 12109                                  
 12110                                  ;-1100 int mkneg(int n) { n; __asm {neg ax} }
 12111 000060CA C9                       LEAVE
 12112 000060CB C3                       ret
 12113                                  ; ENDP
 12114                                  ;Number of CALLs:    3 : mkneg
 12115                                  
 12116                                  mkneg:  ; *** PROC ***
 12117                                  ;Function : mkneg, Number of local variables: 1
 12118                                  ;   # type sign width line used address name   list of local variables
 12119                                  ;  200 var sign word  1100 NULL bp+4    n;
 12120 000060CC C8000000                 ENTER  0,0
 12121 000060D0 8B4604                   mov ax, [bp+4]
 12122 000060D3 F7D8                    neg ax
 12123                                  
 12124                                  ;-1101 int prunsign(unsigned int n) { unsigned int e;
 12125 000060D5 C9                       LEAVE
 12126 000060D6 C3                       ret
 12127                                  ; ENDP
 12128                                  ;Number of CALLs:    1 : pint
 12129                                  
 12130                                  pint:  ; *** PROC ***
 12131                                  ;Function : pint, Number of local variables: 2
 12132                                  ;   # type sign width line used address name   list of local variables
 12133                                  ;  200 var sign word  1101 NULL bp+4    n
 12134                                  ;  201 var sign word  1101 NULL bp-2    e;
 12135 000060D7 C8020000                 ENTER  2,0
 12136 000060DB 8B4604                   mov ax, [bp+4]
 12137 000060DE 83F800                   cmp ax, 0
 12138 000060E1 0F8D1400                 jge @@pint643
 12139 000060E5 6A2D                     push 45
 12140 000060E7 E855ED                   call prc
 12141 000060EA 83C402                   add  sp, 2
 12142 000060ED FF7604                   push word [bp+4]
 12143 000060F0 E8D9FF                   call mkneg
 12144 000060F3 83C402                   add  sp, 2
 12145 000060F6 894604                   mov word [bp+4], ax
 12146                                  
 12147                                  ;-1102   if (n >= 10) {e=n/10;  pint(e);}  n=n%10; n=n+'0'; putch(n); }
 12148                                  
 12149                                  @@pint643:
 12150 000060F9 8B4604                   mov ax, [bp+4]
 12151 000060FC 83F80A                   cmp ax, 10 ;unsigned : 1
 12152 000060FF 0F8C1500                 jl  @@pint644
 12153 00006103 8B4604                   mov ax, [bp+4]
 12154 00006106 BB0A00                   mov bx, 10
 12155 00006109 99                       cwd
 12156 0000610A F7FB                     idiv bx
 12157 0000610C 8946FE                   mov word [bp-2], ax
 12158 0000610F FF76FE                   push word [bp-2]
 12159 00006112 E8C2FF                   call pint
 12160 00006115 83C402                   add  sp, 2
 12161                                  @@pint644:
 12162 00006118 8B4604                   mov ax, [bp+4]
 12163 0000611B BB0A00                   mov bx, 10
 12164 0000611E 99                       cwd
 12165 0000611F F7FB                     idiv bx
 12166 00006121 89D0                     mov ax, dx
 12167 00006123 894604                   mov word [bp+4], ax
 12168 00006126 8B4604                   mov ax, [bp+4]
 12169 00006129 83C030                   add ax, 48
 12170 0000612C 894604                   mov word [bp+4], ax
 12171 0000612F FF7604                   push word [bp+4]
 12172 00006132 E850FF                   call putch
 12173 00006135 83C402                   add  sp, 2
 12174                                  
 12175                                  ;-1103 int printint5(unsigned int j)  {
 12176 00006138 C9                       LEAVE
 12177 00006139 C3                       ret
 12178                                  ; ENDP
 12179                                  ;Number of CALLs:    1 : toupper
 12180                                  
 12181                                  toupper:  ; *** PROC ***
 12182                                  ;Function : toupper, Number of local variables: 1
 12183                                  ;   # type sign width line used address name   list of local variables
 12184                                  ;  200 ptr sign byte  1103 NULL bp+4    s;
 12185 0000613A C8000000                 ENTER  0,0
 12186                                  @@toupper645:
 12187 0000613E 8B5E04                   mov bx, [bp+4]
 12188 00006141 8A07                     mov al, [bx]
 12189 00006143 B400                     mov ah, 0
 12190 00006145 08C0                     or  al, al
 12191 00006147 0F843000                 je @@toupper646
 12192 0000614B 8B5E04                   mov bx, [bp+4]
 12193 0000614E 8A07                     mov al, [bx]
 12194 00006150 B400                     mov ah, 0
 12195 00006152 83F861                   cmp ax, 97 ;unsigned : 1
 12196 00006155 0F8C1D00                 jl  @@toupper647
 12197 00006159 8B5E04                   mov bx, [bp+4]
 12198 0000615C 8A07                     mov al, [bx]
 12199 0000615E B400                     mov ah, 0
 12200 00006160 83F87A                   cmp ax, 122
 12201 00006163 0F8F0F00                 jg  @@toupper648
 12202 00006167 8B5E04                   mov bx, [bp+4]
 12203 0000616A 8A07                     mov al, [bx]
 12204 0000616C B400                     mov ah, 0
 12205 0000616E 83E820                   sub ax, 32
 12206 00006171 8B5E04                   mov  bx, [bp+4]
 12207 00006174 8807                     mov  [bx], al
 12208                                  @@toupper648:
 12209                                  @@toupper647:
 12210 00006176 FF4604                   inc  word [bp+4]
 12211 00006179 EBC3                     jmp @@toupper645
 12212                                  @@toupper646:
 12213                                  
 12214                                  ;-1104 //int head1  (char *s) {char c; do{c=*s; c=letter(c); s++; }while(c) *s=0; }
 12215                                  
 12216                                  
 12217                                  ;-1105 int strlen(char *s) { int c; c=0; while (*s!=0) {s++; c++;} return c; }
 12218 0000617B C9                       LEAVE
 12219 0000617C C3                       ret
 12220                                  ; ENDP
 12221                                  ;Number of CALLs:    8 : strlen
 12222                                  
 12223                                  strlen:  ; *** PROC ***
 12224                                  ;Function : strlen, Number of local variables: 2
 12225                                  ;   # type sign width line used address name   list of local variables
 12226                                  ;  200 ptr sign byte  1105 NULL bp+4    s
 12227                                  ;  201 var sign word  1105 NULL bp-2    c;
 12228 0000617D C8020000                 ENTER  2,0
 12229 00006181 66B800000000             mov eax, 0
 12230 00006187 8946FE                   mov word [bp-2], ax
 12231                                  @@strlen649:
 12232 0000618A 8B5E04                   mov bx, [bp+4]
 12233 0000618D 8A07                     mov al, [bx]
 12234 0000618F B400                     mov ah, 0
 12235 00006191 83F800                   cmp ax, 0
 12236 00006194 0F840800                 je  @@strlen650
 12237 00006198 FF4604                   inc  word [bp+4]
 12238 0000619B FF46FE                   inc  word [bp-2]
 12239 0000619E EBEA                     jmp @@strlen649
 12240                                  @@strlen650:
 12241 000061A0 8B46FE                   mov ax, [bp-2]
 12242 000061A3 E90000                   jmp @@retn
 12243                                  
 12244                                  ;-1106 int strcpy1(char *s, char *t) {do { *s=*t; s++; t++; } while (*t!=0); *s=0; }
 12245                                  
 12246 000061A6 C9                      @@retn: LEAVE
 12247 000061A7 C3                       ret
 12248                                  ; ENDP
 12249                                  ;Number of CALLs:   27 : strcpy
 12250                                  
 12251                                  strcpy:  ; *** PROC ***
 12252                                  ;Function : strcpy, Number of local variables: 2
 12253                                  ;   # type sign width line used address name   list of local variables
 12254                                  ;  200 ptr sign byte  1106 NULL bp+4    s
 12255                                  ;  201 ptr sign byte  1106 NULL bp+6    t;
 12256 000061A8 C8000000                 ENTER  0,0
 12257                                  @@strcpy651:
 12258 000061AC 8B5E06                   mov bx, [bp+6]
 12259 000061AF 8A07                     mov al, [bx]
 12260 000061B1 B400                     mov ah, 0
 12261 000061B3 8B5E04                   mov  bx, [bp+4]
 12262 000061B6 8807                     mov  [bx], al
 12263 000061B8 FF4604                   inc  word [bp+4]
 12264 000061BB FF4606                   inc  word [bp+6]
 12265                                  
 12266                                  ;-1107   while (*t!=0); *s=0; return s; }
 12267                                  
 12268 000061BE 8B5E06                   mov bx, [bp+6]
 12269 000061C1 8A07                     mov al, [bx]
 12270 000061C3 B400                     mov ah, 0
 12271 000061C5 83F800                   cmp ax, 0
 12272 000061C8 0F840200                 je  @@strcpy652
 12273 000061CC EBDE                     jmp @@strcpy651
 12274                                  @@strcpy652:
 12275 000061CE 66B800000000             mov eax, 0
 12276 000061D4 8B5E04                   mov  bx, [bp+4]
 12277 000061D7 8807                     mov  [bx], al
 12278 000061D9 8B4604                   mov ax, [bp+4]
 12279 000061DC E90000                   jmp @@retn
 12280                                  
 12281                                  ;-1108 int strncpy(char *s, char *t, int n) { if (_ n==0) return;
 12282                                  
 12283 000061DF C9                      @@retn: LEAVE
 12284 000061E0 C3                       ret
 12285                                  ; ENDP
 12286                                  ;Number of CALLs:    1 : instr1
 12287                                  
 12288                                  instr1:  ; *** PROC ***
 12289                                  ;Function : instr1, Number of local variables: 2
 12290                                  ;   # type sign width line used address name   list of local variables
 12291                                  ;  200 ptr sign byte  1108 NULL bp+4    s
 12292                                  ;  201 var sign byte  1108 NULL bp+6    c;
 12293 000061E1 C8000000                 ENTER  0,0
 12294                                  @@instr1653:
 12295 000061E5 8B5E04                   mov bx, [bp+4]
 12296 000061E8 8A07                     mov al, [bx]
 12297 000061EA B400                     mov ah, 0
 12298 000061EC 08C0                     or  al, al
 12299 000061EE 0F841C00                 je @@instr1654
 12300 000061F2 8B5E04                   mov bx, [bp+4]
 12301 000061F5 8A07                     mov al, [bx]
 12302 000061F7 B400                     mov ah, 0
 12303 000061F9 3A4606                   cmp al, [bp+6]
 12304 000061FC 0F850900                 jne @@instr1655
 12305 00006200 66B801000000             mov eax, 1
 12306 00006206 E90E00                   jmp @@retn
 12307                                  @@instr1655:
 12308 00006209 FF4604                   inc  word [bp+4]
 12309 0000620C EBD7                     jmp @@instr1653
 12310                                  @@instr1654:
 12311 0000620E 66B800000000             mov eax, 0
 12312 00006214 E90000                   jmp @@retn
 12313                                  
 12314                                  ;-1109 int instr2(char *s, char c) { while(*s) { if (*s==c) return &s; s++;} return 0;}
 12315                                  
 12316 00006217 C9                      @@retn: LEAVE
 12317 00006218 C3                       ret
 12318                                  ; ENDP
 12319                                  ;Number of CALLs:    3 : instr2
 12320                                  
 12321                                  instr2:  ; *** PROC ***
 12322                                  ;Function : instr2, Number of local variables: 2
 12323                                  ;   # type sign width line used address name   list of local variables
 12324                                  ;  200 ptr sign byte  1109 NULL bp+4    s
 12325                                  ;  201 var sign byte  1109 NULL bp+6    c;
 12326 00006219 C8000000                 ENTER  0,0
 12327                                  @@instr2656:
 12328 0000621D 8B5E04                   mov bx, [bp+4]
 12329 00006220 8A07                     mov al, [bx]
 12330 00006222 B400                     mov ah, 0
 12331 00006224 08C0                     or  al, al
 12332 00006226 0F841900                 je @@instr2657
 12333 0000622A 8B5E04                   mov bx, [bp+4]
 12334 0000622D 8A07                     mov al, [bx]
 12335 0000622F B400                     mov ah, 0
 12336 00006231 3A4606                   cmp al, [bp+6]
 12337 00006234 0F850600                 jne @@instr2658
 12338 00006238 8B4604                   mov ax, [bp+4]
 12339 0000623B E90E00                   jmp @@retn
 12340                                  @@instr2658:
 12341 0000623E FF4604                   inc  word [bp+4]
 12342 00006241 EBDA                     jmp @@instr2656
 12343                                  @@instr2657:
 12344 00006243 66B800000000             mov eax, 0
 12345 00006249 E90000                   jmp @@retn
 12346                                  
 12347                                  ;-1110 int digit(char c){ if(c<'0') return 0; if(c>'9') return 0; return 1; }
 12348                                  
 12349 0000624C C9                      @@retn: LEAVE
 12350 0000624D C3                       ret
 12351                                  ; ENDP
 12352                                  ;Number of CALLs:    2 : digit
 12353                                  
 12354                                  digit:  ; *** PROC ***
 12355                                  ;Function : digit, Number of local variables: 1
 12356                                  ;   # type sign width line used address name   list of local variables
 12357                                  ;  200 var sign byte  1110 NULL bp+4    c;
 12358 0000624E C8000000                 ENTER  0,0
 12359 00006252 8A4604                   mov al, [bp+4]
 12360 00006255 3C30                     cmp al, 48
 12361 00006257 0F8D0900                 jge @@digit659
 12362 0000625B 66B800000000             mov eax, 0
 12363 00006261 E91B00                   jmp @@retn
 12364                                  @@digit659:
 12365 00006264 8A4604                   mov al, [bp+4]
 12366 00006267 3C39                     cmp al, 57
 12367 00006269 0F8E0900                 jle @@digit660
 12368 0000626D 66B800000000             mov eax, 0
 12369 00006273 E90900                   jmp @@retn
 12370                                  @@digit660:
 12371 00006276 66B801000000             mov eax, 1
 12372 0000627C E90000                   jmp @@retn
 12373                                  
 12374                                  ;-1111 int letter(char c) { if (digit(c)) return 1; if (c=='_') return 1;
 12375                                  
 12376 0000627F C9                      @@retn: LEAVE
 12377 00006280 C3                       ret
 12378                                  ; ENDP
 12379                                  ;Number of CALLs:    3 : letter
 12380                                  
 12381                                  letter:  ; *** PROC ***
 12382                                  ;Function : letter, Number of local variables: 1
 12383                                  ;   # type sign width line used address name   list of local variables
 12384                                  ;  200 var sign byte  1111 NULL bp+4    c;
 12385 00006281 C8000000                 ENTER  0,0
 12386 00006285 8A4604                   mov al, byte [bp+4]
 12387 00006288 B400                     mov ah, 0
 12388 0000628A 50                       push ax
 12389 0000628B E8C0FF                   call digit
 12390 0000628E 83C402                   add  sp, 2
 12391 00006291 08C0                     or  al, al
 12392 00006293 0F840900                 je @@letter661
 12393 00006297 66B801000000             mov eax, 1
 12394 0000629D E95A00                   jmp @@retn
 12395                                  @@letter661:
 12396 000062A0 8A4604                   mov al, [bp+4]
 12397 000062A3 3C5F                     cmp al, 95
 12398 000062A5 0F850900                 jne @@letter662
 12399 000062A9 66B801000000             mov eax, 1
 12400 000062AF E94800                   jmp @@retn
 12401                                  
 12402                                  ;-1112   if (c> 'z') return 0; if (c< '@') return 0;
 12403                                  
 12404                                  @@letter662:
 12405 000062B2 8A4604                   mov al, [bp+4]
 12406 000062B5 3C7A                     cmp al, 122
 12407 000062B7 0F8E0900                 jle @@letter663
 12408 000062BB 66B800000000             mov eax, 0
 12409 000062C1 E93600                   jmp @@retn
 12410                                  @@letter663:
 12411 000062C4 8A4604                   mov al, [bp+4]
 12412 000062C7 3C40                     cmp al, 64
 12413 000062C9 0F8D0900                 jge @@letter664
 12414 000062CD 66B800000000             mov eax, 0
 12415 000062D3 E92400                   jmp @@retn
 12416                                  
 12417                                  ;-1113   if (c> 'Z') { if (c< 'a') return 0; }  return 1; }
 12418                                  
 12419                                  @@letter664:
 12420 000062D6 8A4604                   mov al, [bp+4]
 12421 000062D9 3C5A                     cmp al, 90
 12422 000062DB 0F8E1200                 jle @@letter665
 12423 000062DF 8A4604                   mov al, [bp+4]
 12424 000062E2 3C61                     cmp al, 97
 12425 000062E4 0F8D0900                 jge @@letter666
 12426 000062E8 66B800000000             mov eax, 0
 12427 000062EE E90900                   jmp @@retn
 12428                                  @@letter666:
 12429                                  @@letter665:
 12430 000062F1 66B801000000             mov eax, 1
 12431 000062F7 E90000                   jmp @@retn
 12432                                  
 12433                                  ;-1114 int alnum(char c) { if (digit(c)) return 1; if (c=='_') return 1;
 12434                                  
 12435 000062FA C9                      @@retn: LEAVE
 12436 000062FB C3                       ret
 12437                                  ; ENDP
 12438                                  ;Number of CALLs:   69 : eqstr
 12439                                  
 12440                                  eqstr:  ; *** PROC ***
 12441                                  ;Function : eqstr, Number of local variables: 2
 12442                                  ;   # type sign width line used address name   list of local variables
 12443                                  ;  200 ptr sign byte  1114 NULL bp+4    p
 12444                                  ;  201 ptr sign byte  1114 NULL bp+6    q;
 12445 000062FC C8000000                 ENTER  0,0
 12446                                  @@eqstr667:
 12447 00006300 8B5E04                   mov bx, [bp+4]
 12448 00006303 8A07                     mov al, [bx]
 12449 00006305 B400                     mov ah, 0
 12450 00006307 08C0                     or  al, al
 12451 00006309 0F842300                 je @@eqstr668
 12452                                  
 12453                                  ;-1115     if (*p != *q) return 0; p++; q++; }
 12454                                  
 12455 0000630D 8B5E04                   mov bx, [bp+4]
 12456 00006310 8A07                     mov al, [bx]
 12457 00006312 B400                     mov ah, 0
 12458 00006314 8B5E06                   mov bx, [bp+6]
 12459 00006317 3A07                     cmp al, [bx]
 12460 00006319 B400                     mov ah, 0
 12461 0000631B 0F840900                 je  @@eqstr669
 12462 0000631F 66B800000000             mov eax, 0
 12463 00006325 E92700                   jmp @@retn
 12464                                  @@eqstr669:
 12465 00006328 FF4604                   inc  word [bp+4]
 12466 0000632B FF4606                   inc  word [bp+6]
 12467                                  
 12468                                  ;-1116     if(*q) return 0; return 1; }
 12469                                  
 12470 0000632E EBD0                     jmp @@eqstr667
 12471                                  @@eqstr668:
 12472 00006330 8B5E06                   mov bx, [bp+6]
 12473 00006333 8A07                     mov al, [bx]
 12474 00006335 B400                     mov ah, 0
 12475 00006337 08C0                     or  al, al
 12476 00006339 0F840900                 je @@eqstr670
 12477 0000633D 66B800000000             mov eax, 0
 12478 00006343 E90900                   jmp @@retn
 12479                                  @@eqstr670:
 12480 00006346 66B801000000             mov eax, 1
 12481 0000634C E90000                   jmp @@retn
 12482                                  
 12483                                  ;-1117 int strcat1(char *s, char *t) { while (*s != 0) s++; strcpy(s, t);  }
 12484                                  
 12485 0000634F C9                      @@retn: LEAVE
 12486 00006350 C3                       ret
 12487                                  ; ENDP
 12488                                  ;Number of CALLs:    1 : strcat1
 12489                                  
 12490                                  strcat1:  ; *** PROC ***
 12491                                  ;Function : strcat1, Number of local variables: 2
 12492                                  ;   # type sign width line used address name   list of local variables
 12493                                  ;  200 ptr sign byte  1117 NULL bp+4    s
 12494                                  ;  201 ptr sign byte  1117 NULL bp+6    t;
 12495 00006351 C8000000                 ENTER  0,0
 12496                                  @@strcat1671:
 12497 00006355 8B5E04                   mov bx, [bp+4]
 12498 00006358 8A07                     mov al, [bx]
 12499 0000635A B400                     mov ah, 0
 12500 0000635C 83F800                   cmp ax, 0
 12501 0000635F 0F840500                 je  @@strcat1672
 12502 00006363 FF4604                   inc  word [bp+4]
 12503 00006366 EBED                     jmp @@strcat1671
 12504                                  @@strcat1672:
 12505 00006368 FF7606                   push word [bp+6]
 12506 0000636B FF7604                   push word [bp+4]
 12507 0000636E E837FE                   call strcpy
 12508 00006371 83C404                   add  sp, 4
 12509                                  
 12510                                  ;-1118 int basename(char *s) { char *p; p=0;
 12511 00006374 C9                       LEAVE
 12512 00006375 C3                       ret
 12513                                  ; ENDP
 12514                                  ;Number of CALLs:    2 : DosInt
 12515                                  
 12516                                  DosInt:  ; *** PROC ***
 12517 00006376 CD21                     int  33
 12518 00006378 7304                     jae short @@DosInt673
 12519 0000637A FF06[C200]               inc  word [DOS_ERR]
 12520                                  @@DosInt673:
 12521                                  
 12522                                  ;-1119 int openR (char *s) { dx=s; ax=0x3D02;  DosInt(); }
 12523                                  
 12524 0000637E C3                       ret
 12525                                  ; ENDP
 12526                                  ;Number of CALLs:    3 : openR
 12527                                  
 12528                                  openR:  ; *** PROC ***
 12529                                  ;Function : openR, Number of local variables: 1
 12530                                  ;   # type sign width line used address name   list of local variables
 12531                                  ;  200 ptr sign byte  1119 NULL bp+4    s;
 12532 0000637F C8000000                 ENTER  0,0
 12533 00006383 8B5604                   mov  dx, [bp+4]
 12534 00006386 B8023D                   mov  ax, 15618
 12535 00006389 E8EAFF                   call DosInt
 12536                                  
 12537                                  ;-1120 int creatR(char *s) { dx=s; cx=0; ax=0x3C00; DosInt(); }
 12538 0000638C C9                       LEAVE
 12539 0000638D C3                       ret
 12540                                  ; ENDP
 12541                                  ;Number of CALLs:    1 : creatR
 12542                                  
 12543                                  creatR:  ; *** PROC ***
 12544                                  ;Function : creatR, Number of local variables: 1
 12545                                  ;   # type sign width line used address name   list of local variables
 12546                                  ;  200 ptr sign byte  1120 NULL bp+4    s;
 12547 0000638E C8000000                 ENTER  0,0
 12548 00006392 8B5604                   mov  dx, [bp+4]
 12549 00006395 B90000                   mov  cx, 0
 12550 00006398 B8003C                   mov  ax, 15360
 12551 0000639B E8D8FF                   call DosInt
 12552                                  
 12553                                  ;-1121 int readR (char *s, int fd) {dx=s; cx=1; bx=fd; ax=0x3F00; DosInt(); }
 12554 0000639E C9                       LEAVE
 12555 0000639F C3                       ret
 12556                                  ; ENDP
 12557                                  ;Number of CALLs:    1 : readR
 12558                                  
 12559                                  readR:  ; *** PROC ***
 12560                                  ;Function : readR, Number of local variables: 2
 12561                                  ;   # type sign width line used address name   list of local variables
 12562                                  ;  200 ptr sign byte  1121 NULL bp+4    s
 12563                                  ;  201 var sign word  1121 NULL bp+6    fd;
 12564 000063A0 C8000000                 ENTER  0,0
 12565 000063A4 8B5604                   mov  dx, [bp+4]
 12566 000063A7 B90100                   mov  cx, 1
 12567 000063AA 8B5E06                   mov  bx, [bp+6]
 12568 000063AD B8003F                   mov  ax, 16128
 12569 000063B0 E8C3FF                   call DosInt
 12570                                  
 12571                                  ;-1122 int readRL(char *s, int fd, int len){dx=s; cx=len; bx=fd; ax=0x3F00; DosInt();}
 12572 000063B3 C9                       LEAVE
 12573 000063B4 C3                       ret
 12574                                  ; ENDP
 12575                                  ;Number of CALLs:    1 : readRL
 12576                                  
 12577                                  readRL:  ; *** PROC ***
 12578                                  ;Function : readRL, Number of local variables: 3
 12579                                  ;   # type sign width line used address name   list of local variables
 12580                                  ;  200 ptr sign byte  1122 NULL bp+4    s
 12581                                  ;  201 var sign word  1122 NULL bp+6    fd
 12582                                  ;  202 var sign word  1122 NULL bp+8    len;
 12583 000063B5 C8000000                 ENTER  0,0
 12584 000063B9 8B5604                   mov  dx, [bp+4]
 12585 000063BC 8B4E08                   mov  cx, [bp+8]
 12586 000063BF 8B5E06                   mov  bx, [bp+6]
 12587 000063C2 B8003F                   mov  ax, 16128
 12588 000063C5 E8AEFF                   call DosInt
 12589                                  
 12590                                  ;-1123 int fputcR(char *n, int fd) { __asm{lea dx, [bp+4]}; /* = *n */
 12591 000063C8 C9                       LEAVE
 12592 000063C9 C3                       ret
 12593                                  ; ENDP
 12594                                  ;Number of CALLs:    1 : fputcR
 12595                                  
 12596                                  fputcR:  ; *** PROC ***
 12597                                  ;Function : fputcR, Number of local variables: 2
 12598                                  ;   # type sign width line used address name   list of local variables
 12599                                  ;  200 ptr sign byte  1123 NULL bp+4    n
 12600                                  ;  201 var sign word  1123 NULL bp+6    fd;
 12601 000063CA C8000000                 ENTER  0,0
 12602 000063CE 8D5604                  lea dx, [bp+4]
 12603                                  
 12604                                  ;-1124   cx=1; bx=fd; ax=0x4000; DosInt(); }
 12605                                  
 12606 000063D1 B90100                   mov  cx, 1
 12607 000063D4 8B5E06                   mov  bx, [bp+6]
 12608 000063D7 B80040                   mov  ax, 16384
 12609 000063DA E899FF                   call DosInt
 12610                                  
 12611                                  ;-1125 int writeRL(char *s, int fd, int len){dx=s; cx=len; bx=fd; ax=0x4000; DosInt();}
 12612 000063DD C9                       LEAVE
 12613 000063DE C3                       ret
 12614                                  ; ENDP
 12615                                  ;Number of CALLs:    2 : fcloseR
 12616                                  
 12617                                  fcloseR:  ; *** PROC ***
 12618                                  ;Function : fcloseR, Number of local variables: 1
 12619                                  ;   # type sign width line used address name   list of local variables
 12620                                  ;  200 var sign word  1125 NULL bp+4    fd;
 12621 000063DF C8000000                 ENTER  0,0
 12622 000063E3 8B5E04                   mov  bx, [bp+4]
 12623 000063E6 B8003E                   mov  ax, 15872
 12624 000063E9 CD21                     int  33
 12625                                  
 12626                                  ;-1126 int exitR(char c) {ah=0x4C; al=c; inth 0x21; }
 12627 000063EB C9                       LEAVE
 12628 000063EC C3                       ret
 12629                                  ; ENDP
 12630                                  ;Number of CALLs:    4 : exitR
 12631                                  
 12632                                  exitR:  ; *** PROC ***
 12633                                  ;Function : exitR, Number of local variables: 1
 12634                                  ;   # type sign width line used address name   list of local variables
 12635                                  ;  200 var sign byte  1126 NULL bp+4    c;
 12636 000063ED C8000000                 ENTER  0,0
 12637 000063F1 B44C                     mov  ah, 76
 12638 000063F3 8A4604                   mov  al, [bp+4]
 12639 000063F6 CD21                     int  33
 12640                                  
 12641                                  ;-1127 int setdta(char *s) {dx=s; ah=0x1A; inth 0x21; }
 12642 000063F8 C9                       LEAVE
 12643 000063F9 C3                       ret
 12644                                  ; ENDP
 12645                                  ;End of archive file. 
 12646                                   
 12647                                  ; missing functions:  All FUNCTIONs in place
 12648 000063FA E80000                  LastFunctionByt:db 0E8h, 0, 0
 12649 000063FD 58                      pop ax
 12650 000063FE C3                      ret
 12651                                   
 12652                                  ;   # type sign width line used  address name   list of global variables
 12653                                  
 12654                                  ;    1 arr sign byte     2    2        0 Version1[16]
 12655                                  ;    2 var sign byte     5    3        0 BSS
 12656                                  ;    3 var sign byte     5   17        0 NASM
 12657                                  ;    4 var sign byte     5    3        0 PROTECTED
 12658                                  ;    5 var sign byte     5    6        0 LIST
 12659                                  ;    6 def unsg byte     6    -        0 LSTART=200
 12660                                  ;    7 def unsg byte     7    -        0 VARMAX=300
 12661                                  ;    8 def unsg byte     8    -        0 FUNCMAX=300
 12662                                  ;    9 def unsg byte     9    -        0 CALLMAX=2000
 12663                                  ;   10 def unsg byte    10    -        0 IDLENMAX=16
 12664                                  ;   11 def unsg byte    12    -        0 T_NAME=256
 12665                                  ;   12 def unsg byte    13    -        0 T_CONST=257
 12666                                  ;   13 def unsg byte    14    -        0 T_STRING=258
 12667                                  ;   14 def unsg byte    15    -        0 T_INCLUDE=510
 12668                                  ;   15 def unsg byte    16    -        0 T_DEFINE=511
 12669                                  ;   16 def unsg byte    17    -        0 T_RETURN=512
 12670                                  ;   17 def unsg byte    18    -        0 T_IF=513
 12671                                  ;   18 def unsg byte    19    -        0 T_ELSE=514
 12672                                  ;   19 def unsg byte    20    -        0 T_WHILE=515
 12673                                  ;   20 def unsg byte    21    -        0 T_DO=516
 12674                                  ;   21 def unsg byte    22    -        0 T_INT=517
 12675                                  ;   22 def unsg byte    23    -        0 T_ASM=518
 12676                                  ;   23 def unsg byte    24    -        0 T_ASMBLOCK=519
 12677                                  ;   24 def unsg byte    25    -        0 T_EMIT=520
 12678                                  ;   25 def unsg byte    26    -        0 T_GOTO=521
 12679                                  ;   26 def unsg byte    27    -        0 T_VOID=529
 12680                                  ;   27 def unsg byte    28    -        0 T_CHAR=530
 12681                                  ;   28 def unsg byte    29    -        0 T_SIGNED=531
 12682                                  ;   29 def unsg byte    30    -        0 T_UNSIGNED=532
 12683                                  ;   30 def unsg byte    31    -        0 T_LONG=533
 12684                                  ;   31 def unsg byte    32    -        0 T_SHORT=534
 12685                                  ;   32 def unsg byte    33    -        0 T_UINT32=545
 12686                                  ;   33 def unsg byte    34    -        0 T_INTH=600
 12687                                  ;   34 def unsg byte    35    -        0 T_IFCARRY=601
 12688                                  ;   35 def unsg byte    36    -        0 T_IFZERO=602
 12689                                  ;   36 def unsg byte    37    -        0 T_EQ=806
 12690                                  ;   37 def unsg byte    38    -        0 T_NE=807
 12691                                  ;   38 def unsg byte    39    -        0 T_GE=811
 12692                                  ;   39 def unsg byte    40    -        0 T_LE=824
 12693                                  ;   40 def unsg byte    41    -        0 T_PLUSPLUS=1219
 12694                                  ;   41 def unsg byte    42    -        0 T_MINUSMINUS=1225
 12695                                  ;   42 def unsg byte    43    -        0 T_PLUSASS=1230
 12696                                  ;   43 def unsg byte    44    -        0 T_MINUSASS=1231
 12697                                  ;   44 def unsg byte    45    -        0 T_MULASS=1232
 12698                                  ;   45 def unsg byte    46    -        0 T_DIVASS=1233
 12699                                  ;   46 def unsg byte    47    -        0 T_ANDASS=1234
 12700                                  ;   47 def unsg byte    48    -        0 T_ORASS=1235
 12701                                  ;   48 def unsg byte    49    -        0 T_LESSLESS=1240
 12702                                  ;   49 def unsg byte    50    -        0 T_GREATGREAT=1241
 12703                                  ;   50 def unsg byte    51    -        0 COMAX=3000
 12704                                  ;   51 def unsg byte    52    -        0 CMDLENMAX=67
 12705                                  ;   52 var unsg dwrd    53 NULL        0 LDATAORIG
 12706                                  ;   53 var unsg dwrd    53    5        0 ldata
 12707                                  ;   54 var sign dwrd    53    2        0 LONG0
 12708                                  ;   55 var unsg dwrd    54    4        0 ORGDATAORIG
 12709                                  ;   56 var unsg dwrd    54   12        0 orgData
 12710                                  ;   57 arr sign byte    55    4    30000 co[3000]
 12711                                  ;   58 var sign word    55    4        0 maxco
 12712                                  ;   59 var sign word    55    3        0 maxco1
 12713                                  ;   60 arr sign byte    56    2    33000 coname[67]
 12714                                  ;   61 ptr sign byte    56    5        0 cloc
 12715                                  ;   62 arr sign byte    57    2    33067 locname[67]
 12716                                  ;   63 var sign word    57    3        0 maxloc
 12717                                  ;   64 var sign word    58    7        0 fdin
 12718                                  ;   65 var sign word    58    7        0 fdout
 12719                                  ;   66 arr sign byte    58   96    33134 symbol[128]
 12720                                  ;   67 arr sign byte    59   13    33262 fname[67]
 12721                                  ;   68 arr sign byte    59   14    33329 namein[67]
 12722                                  ;   69 arr sign byte    60    7    33396 namelst[67]
 12723                                  ;   70 arr sign byte    60    5        0 archivename[4]
 12724                                  ;   71 var sign word    61   55        0 token
 12725                                  ;   72 var sign byte    61    2        0 globC
 12726                                  ;   73 var sign word    61    3        0 spalte
 12727                                  ;   74 var sign byte    62   28        0 thechar
 12728                                  ;   75 var sign word    62    9        0 iscmp
 12729                                  ;   76 var sign word    62    4        0 nconst
 12730                                  ;   77 var sign word    63    3        0 nreturn
 12731                                  ;   78 var sign word    63   16        0 nlabel
 12732                                  ;   79 var sign word    63    3        0 callrecursive
 12733                                  ;   80 var unsg dwrd    64   55        0 lexvalL
 12734                                  ;   81 var sign byte    64    2        0 islong
 12735                                  ;   82 var sign byte    64 NULL        0 isldata
 12736                                  ;   83 var sign word    65    7        0 typei
 12737                                  ;   84 var sign byte    65   10        0 istype
 12738                                  ;   85 arr sign byte    65   12    33463 GType[300]
 12739                                  ;   86 var sign word    66    7        0 signi
 12740                                  ;   87 var sign byte    66    8        0 issign
 12741                                  ;   88 arr sign byte    66    6    33763 GSign[300]
 12742                                  ;   89 var sign word    67   10        0 widthi
 12743                                  ;   90 var sign word    67   28        0 wi
 12744                                  ;   91 var sign byte    67   30        0 iswidth
 12745                                  ;   92 arr sign byte    67    6    34063 GWidth[300]
 12746                                  ;   93 var sign word    68   38        0 GTop
 12747                                  ;   94 var sign word    68   21        0 LTop
 12748                                  ;   95 arr sign word    69    5    34363 GLino[300]
 12749                                  ;   96 arr sign word    70    7    34963 GUsed[300]
 12750                                  ;   97 arr sign dwrd    71   12    35563 GData[300]
 12751                                  ;   98 arr sign dwrd    72    5    36763 GAdr[300]
 12752                                  ;   99 arr sign word    73    7    37963 GName[300]
 12753                                  ;  100 var sign word    74   13        0 FTop
 12754                                  ;  101 arr sign byte    75    2    38563 FWidth[300]
 12755                                  ;  102 arr sign word    76    2    38863 FLino[300]
 12756                                  ;  103 arr sign word    77    4    39463 FCalls[300]
 12757                                  ;  104 arr sign word    78    5    40063 FName[300]
 12758                                  ;  105 var sign word    79    9        0 CTop
 12759                                  ;  106 arr sign word    80    5    40663 CName[2000]
 12760                                  ;  107 arr sign byte    81    5    44663 CUnres[2000]
 12761                                  ;  108 arr sign byte    82    4        0 Ls[11]
 12762                                  ;  109 arr sign byte    83   27        0 NA[32]
 12763                                  ;  110 arr sign byte    84    4        0 NB[32]
 12764                                  ;  111 arr sign byte    85    5    46663 fgetsdest[128]
 12765                                  ;  112 ptr unsg byte    85   13        0 CNameTop
 12766                                  ;  113 ptr unsg byte    86   10        0 fgetsp
 12767                                  ;  114 var unsg word    86    5        0 segE
 12768                                  ;  115 var unsg word    87   13        0 lineno
 12769                                  ;  116 var unsg word    87    2        0 linenoinclude
 12770                                  ;  117 ptr unsg byte    88    6        0 pt
 12771                                  ;  118 ptr unsg byte    88    8        0 p1
 12772                                  ;  119 var sign word    89   10        0 DOS_ERR
 12773                                  ;  120 var sign word    89    5        0 DOS_NoBytes
 12774                                  ;  121 var sign byte    89    3        0 DOS_ByteRead
 12775                                  ;  122 var sign dwrd    91 NULL  2000000 varL1
 12776                                  ;  123 var sign word    91 NULL  2000004 vari1
 12777                                  ;  124 arr unsg word    91 NULL  2000006 vari2[6]
 12778                                  ;  125 var sign byte    92 NULL  2000012 varc1
 12779                                  ;  126 var sign dwrd    92 NULL  2000013 varL2
 12780                                  ;  127 arr sign dwrd    93 NULL  2000017 arrL1[12]
 12781                                  ;  128 var sign dwrd    93 NULL  2000029 varL4
 12782                                  ;  129 var sign byte    93 NULL  2000033 chc2
 12783                                  ;  130 arr sign byte   108    2    46791 doglobName[16]
 12784                                  ;  131 var sign word   288    1        0 sd
 12785                                  ;  132 var sign byte   289   13        0 un
 12786                                  ;  133 var sign byte   290 NULL        0 ty
 12787                                  ;  134 arr sign byte   291 NULL    46807 md[3]
 12788                                  ;  135 var sign word   291    6        0 mod1
 12789                                  ;  136 var sign word   291    7        0 mod2
 12790                                  ;  137 arr sign word   292 NULL    46810 ir[3]
 12791                                  ;  138 var sign word   292   14        0 irg1
 12792                                  ;  139 var sign word   292    6        0 irg2
 12793                                  ;  140 arr sign word   293 NULL    46816 ix[3]
 12794                                  ;  141 var sign word   293    7        0 idx1
 12795                                  ;  142 var sign word   293    6        0 idx2
 12796                                  ;  143 arr sign byte   294 NULL    46822 is[3]
 12797                                  ;  144 var sign word   294    2        0 ids1
 12798                                  ;  145 var sign word   294    3        0 ids2
 12799                                  ;  146 arr sign byte   295 NULL    46825 iw[3]
 12800                                  ;  147 var sign word   295    3        0 idw1
 12801                                  ;  148 var sign word   295    6        0 idw2
 12802                                  ;  149 arr sign byte   296 NULL    46828 it[3]
 12803                                  ;  150 var sign word   296    2        0 idt1
 12804                                  ;  151 var sign word   296    3        0 idt2
 12805                                  ;  152 arr sign dwrd   297 NULL    46831 ia[3]
 12806                                  ;  153 var sign word   297 NULL        0 ida1
 12807                                  ;  154 var sign word   297 NULL        0 ida2
 12808                                  ;  155 arr sign byte   298 NULL    46843 ic[3]
 12809                                  ;  156 var sign word   298 NULL        0 idac1
 12810                                  ;  157 var sign word   298 NULL        0 idac2
 12811                                  ;  158 arr sign dwrd   299 NULL    46846 iv[3]
 12812                                  ;  159 var sign dwrd   299 NULL        0 val1
 12813                                  ;  160 var sign dwrd   299    2        0 val2
 12814                                  ;  161 arr sign byte   366   17    46858 ops[6]
 12815                                  ;  162 arr sign byte   445    3        0 printregstr[74]
 12816                                  ;  163 arr sign word   571    2    46864 docalltype[10]
 12817                                  ;  164 arr sign word   571    2    46884 docallvalue[10]
 12818                                  ;  165 arr sign byte   572    2    46904 procname[16]
 12819                                  ;  166 ptr sign byte   625    1        0 arglen
 12820                                  ;  167 ptr sign byte   625    3        0 argv
 12821                                  ;  168 var sign byte   695    4        0 wasfunction
 12822                                  ;  169 arr sign byte   826    2    46920 symboltemp[80]
 12823                                  ;  170 var unsg word  1009    2        0 MAXUI
 12824                                  ;  171 arr unsg byte  1061 NULL        0 GDT1[16]
 12825                                  
 12826                                  
 12827                                  ;   # Calls Line Width  Name   list of functions
 12828                                  
 12829                                  ;    0 NULL   94 void   ttt
 12830                                  ;    1    4   96 void   a
 12831                                  ;    2   19   97 void   v
 12832                                  ;    3    6   99 void   checknamelen
 12833                                  ;    4   12  101 void   pwi
 12834                                  ;    5    6  105 void   storeName
 12835                                  ;    6    1  109 void   doLdata
 12836                                  ;    7    1  132 void   doglob
 12837                                  ;    8   13  184 word   gettypes
 12838                                  ;    9    4  194 void   printName
 12839                                  ;   10   11  198 word   searchname
 12840                                  ;   11    4  202 word   checkName
 12841                                  ;   12   10  207 word   typeName
 12842                                  ;   13    3  217 void   name1
 12843                                  ;   14    1  219 void   storecall
 12844                                  ;   15    2  226 void   storefunc
 12845                                  ;   16    2  233 void   addlocal
 12846                                  ;   17    1  240 word   checkFunction
 12847                                  ;   18    2  246 void   dofunc
 12848                                  ;   19    1  282 word   isvariable
 12849                                  ;   20    3  302 word   pexpr
 12850                                  ;   21    1  309 void   constantexpr
 12851                                  ;   22    3  319 void   exprstart
 12852                                  ;   23    1  321 word   simplexpr
 12853                                  ;   24    1  367 word   getop
 12854                                  ;   25    4  387 word   prleftreg
 12855                                  ;   26 NULL  388 word   prleftvar
 12856                                  ;   27 NULL  390 word   printvar
 12857                                  ;   28    3  392 word   doreg1
 12858                                  ;   29    6  423 word   checkreg
 12859                                  ;   30    9  448 void   printreg
 12860                                  ;   31    6  455 word   printpri
 12861                                  ;   32    2  461 word   expr
 12862                                  ;   33    4  506 word   compoundass
 12863                                  ;   34    2  512 word   dovar1
 12864                                  ;   35    8  529 word   rterm
 12865                                  ;   36    1  539 word   doassign
 12866                                  ;   37    1  551 word   domul
 12867                                  ;   38    2  556 word   doidiv
 12868                                  ;   39    1  569 word   domod
 12869                                  ;   40    2  574 void   docall1
 12870                                  ;   41 NULL  617 word   main
 12871                                  ;   42    3  624 word   getfirstchar
 12872                                  ;   43    1  627 word   getarg
 12873                                  ;   44    1  669 word   ltrim
 12874                                  ;   45    2  671 word   parse
 12875                                  ;   46    2  681 word   checkcalls
 12876                                  ;   47    1  696 word   doar
 12877                                  ;   48    1  716 word   getfunctionhead
 12878                                  ;   49    1  723 void   doinclude
 12879                                  ;   50    1  737 word   dodefine
 12880                                  ;   51    8  759 word   stmt
 12881                                  ;   52    1  783 word   doemit
 12882                                  ;   53    3  787 word   cmpneg
 12883                                  ;   54    9  800 word   prlabel
 12884                                  ;   55    3  801 word   prjump
 12885                                  ;   56    1  802 word   doif
 12886                                  ;   57    1  807 word   doifcarry
 12887                                  ;   58    1  810 word   doifzero
 12888                                  ;   59    1  813 word   dodo
 12889                                  ;   60    1  817 word   dowhile
 12890                                  ;   61    4  820 word   isrelational
 12891                                  ;   62   23  827 word   getlex
 12892                                  ;   63    1  884 word   convertdefine
 12893                                  ;   64    1  890 dwrd   getdigit
 12894                                  ;   65    1  903 word   getstring
 12895                                  ;   66   31  906 word   next
 12896                                  ;   67   89  907 word   istoken
 12897                                  ;   68   40  908 word   expect
 12898                                  ;   69    6  911 word   eprc
 12899                                  ;   70    5  912 word   eprs
 12900                                  ;   71   49  913 word   prc
 12901                                  ;   72    3  915 word   prscomment
 12902                                  ;   73    8  917 word   prnl
 12903                                  ;   74  276  919 word   prs
 12904                                  ;   75    2  923 word   eprnum
 12905                                  ;   76   19  925 word   pint1
 12906                                  ;   77   13  927 word   prunsign1
 12907                                  ;   78   29  930 word   printint51
 12908                                  ;   79    2  934 word   fgets1
 12909                                  ;   80    1  938 word   printinputline
 12910                                  ;   81    2  946 word   end1
 12911                                  ;   82   51  947 word   error1
 12912                                  ;   83    2  956 word   listproc
 12913                                  ;   84    2  964 word   listvar
 12914                                  ;   85    1  982 word   listcall
 12915                                  ;   86    1  984 word   calllisting
 12916                                  ;   87    1  990 word   countcalls
 12917                                  ;   88    1  995 word   listfunc
 12918                                  ;   89    1  999 word   funclisting
 12919                                  ;   90    1 1010 word   epilog
 12920                                  ;   91    1 1043 word   memresize
 12921                                  ;   92    1 1045 word   memalloc
 12922                                  ;   93 NULL 1048 word   copyF
 12923                                  ;   94    5 1051 word   loadName
 12924                                  ;   95    1 1054 word   to_far
 12925                                  ;   96   10 1057 word   from_far
 12926                                  ;   97    4 1062 word   isvirtual86
 12927                                  ;   98    4 1063 word   is32bit
 12928                                  ;   99    1 1064 word   INITCPU32
 12929                                  ;  100 NULL 1081 void   to32
 12930                                  ;  101 NULL 1082 void   from32
 12931                                  ;  102 NULL 1083 void   prLr
 12932                                  ;  103   19 1084 void   prL
 12933                                  ;  104    1 1085 void   prf
 12934                                  ;  105    1 1088 void   ultoar
 12935                                  ;  106    2 1092 word   ultoaL
 12936                                  ;  107    4 1097 word   writetty
 12937                                  ;  108    3 1098 word   putch
 12938                                  ;  109   22 1099 word   cputs
 12939                                  ;  110    4 1100 word   mkneg
 12940                                  ;  111    2 1101 word   pint
 12941                                  ;  112    1 1103 word   toupper
 12942                                  ;  113    8 1105 word   strlen
 12943                                  ;  114   28 1106 word   strcpy
 12944                                  ;  115    1 1108 word   instr1
 12945                                  ;  116    3 1109 word   instr2
 12946                                  ;  117    3 1110 word   digit
 12947                                  ;  118    3 1111 word   letter
 12948                                  ;  119   69 1114 word   eqstr
 12949                                  ;  120    1 1117 word   strcat1
 12950                                  ;  121    7 1118 word   DosInt
 12951                                  ;  122    3 1119 word   openR
 12952                                  ;  123    1 1120 word   creatR
 12953                                  ;  124    1 1121 word   readR
 12954                                  ;  125    1 1122 word   readRL
 12955                                  ;  126    1 1123 word   fputcR
 12956                                  ;  127    2 1125 word   fcloseR
 12957                                  ;  128    4 1126 word   exitR
 12958                                  ;  129 NULL 1127 word   LastFunctionByt
 12959                                  
 12960                                  ;    #  addr name   list of CALLs
 12961                                  
 12962                                  ;    0   951 prs
 12963                                  ;    1   955 printName
 12964                                  ;    2   969 prc
 12965                                  ;    3   973 printName
 12966                                  ;    4   983 prc
 12967                                  ;    5  1002 strlen
 12968                                  ;    6  1009 error1
 12969                                  ;    7  1022 prs
 12970                                  ;    8  1026 prs
 12971                                  ;    9  1030 prs
 12972                                  ;   10  1034 prs
 12973                                  ;   11  1050 strlen
 12974                                  ;   12  1057 to_far
 12975                                  ;   13  1083 error1
 12976                                  ;   14  1090 error1
 12977                                  ;   15  1097 checknamelen
 12978                                  ;   16  1110 checkName
 12979                                  ;   17  1120 error1
 12980                                  ;   18  1127 istoken
 12981                                  ;   19  1135 expect
 12982                                  ;   20  1142 expect
 12983                                  ;   21  1149 prs
 12984                                  ;   22  1153 prL
 12985                                  ;   23  1157 prs
 12986                                  ;   24  1161 prs
 12987                                  ;   25  1165 prs
 12988                                  ;   26  1169 prL
 12989                                  ;   27  1173 prc
 12990                                  ;   28  1177 storeName
 12991                                  ;   29  1187 expect
 12992                                  ;   30  1214 error1
 12993                                  ;   31  1221 error1
 12994                                  ;   32  1228 checknamelen
 12995                                  ;   33  1241 checkName
 12996                                  ;   34  1251 error1
 12997                                  ;   35  1258 istoken
 12998                                  ;   36  1266 istoken
 12999                                  ;   37  1274 prs
 13000                                  ;   38  1278 prunsign1
 13001                                  ;   39  1288 prs
 13002                                  ;   40  1292 prunsign1
 13003                                  ;   41  1302 prs
 13004                                  ;   42  1306 prs
 13005                                  ;   43  1310 prs
 13006                                  ;   44  1314 prs
 13007                                  ;   45  1318 prs
 13008                                  ;   46  1322 prs
 13009                                  ;   47  1326 prs
 13010                                  ;   48  1330 prs
 13011                                  ;   49  1334 prL
 13012                                  ;   50  1338 prs
 13013                                  ;   51  1342 prs
 13014                                  ;   52  1346 prs
 13015                                  ;   53  1350 expect
 13016                                  ;   54  1357 expect
 13017                                  ;   55  1364 error1
 13018                                  ;   56  1371 prs
 13019                                  ;   57  1375 prs
 13020                                  ;   58  1379 prs
 13021                                  ;   59  1383 strcpy
 13022                                  ;   60  1390 expect
 13023                                  ;   61  1397 istoken
 13024                                  ;   62  1405 prc
 13025                                  ;   63  1409 prscomment
 13026                                  ;   64  1420 prc
 13027                                  ;   65  1424 prs
 13028                                  ;   66  1428 strlen
 13029                                  ;   67  1435 istoken
 13030                                  ;   68  1443 prc
 13031                                  ;   69  1447 expect
 13032                                  ;   70  1454 prL
 13033                                  ;   71  1458 istoken
 13034                                  ;   72  1466 expect
 13035                                  ;   73  1473 error1
 13036                                  ;   74  1480 prs
 13037                                  ;   75  1484 prs
 13038                                  ;   76  1488 prs
 13039                                  ;   77  1492 prs
 13040                                  ;   78  1496 prs
 13041                                  ;   79  1500 prs
 13042                                  ;   80  1504 istoken
 13043                                  ;   81  1512 prc
 13044                                  ;   82  1516 istoken
 13045                                  ;   83  1524 expect
 13046                                  ;   84  1531 prL
 13047                                  ;   85  1535 prunsign1
 13048                                  ;   86  1545 strcpy
 13049                                  ;   87  1552 storeName
 13050                                  ;   88  1562 expect
 13051                                  ;   89  1598 loadName
 13052                                  ;   90  1607 prs
 13053                                  ;   91  1611 prs
 13054                                  ;   92  1615 prc
 13055                                  ;   93  1619 pint1
 13056                                  ;   94  1625 prc
 13057                                  ;   95  1642 checkName
 13058                                  ;   96  1652 error1
 13059                                  ;   97  1673 loadName
 13060                                  ;   98  1682 eqstr
 13061                                  ;   99  1688 loadName
 13062                                  ;  100  1697 eqstr
 13063                                  ;  101  1714 istoken
 13064                                  ;  102  1722 istoken
 13065                                  ;  103  1730 istoken
 13066                                  ;  104  1738 istoken
 13067                                  ;  105  1746 istoken
 13068                                  ;  106  1754 istoken
 13069                                  ;  107  1762 istoken
 13070                                  ;  108  1770 istoken
 13071                                  ;  109  1778 istoken
 13072                                  ;  110  1786 istoken
 13073                                  ;  111  1794 name1
 13074                                  ;  112  1806 error1
 13075                                  ;  113  1813 getlex
 13076                                  ;  114  1832 error1
 13077                                  ;  115  1839 error1
 13078                                  ;  116  1846 storeName
 13079                                  ;  117  1868 error1
 13080                                  ;  118  1875 storeName
 13081                                  ;  119  1894 error1
 13082                                  ;  120  1901 checkName
 13083                                  ;  121  1911 error1
 13084                                  ;  122  1918 storeName
 13085                                  ;  123  1946 from_far
 13086                                  ;  124  1955 eqstr
 13087                                  ;  125  1980 checknamelen
 13088                                  ;  126  1993 strcpy
 13089                                  ;  127  2000 checkFunction
 13090                                  ;  128  2014 error1
 13091                                  ;  129  2021 storefunc
 13092                                  ;  130  2031 prs
 13093                                  ;  131  2035 prs
 13094                                  ;  132  2039 prs
 13095                                  ;  133  2043 expect
 13096                                  ;  134  2050 istoken
 13097                                  ;  135  2058 typeName
 13098                                  ;  136  2067 addlocal
 13099                                  ;  137  2076 istoken
 13100                                  ;  138  2084 expect
 13101                                  ;  139  2091 expect
 13102                                  ;  140  2098 isvariable
 13103                                  ;  141  2109 typeName
 13104                                  ;  142  2118 checknamelen
 13105                                  ;  143  2131 addlocal
 13106                                  ;  144  2140 istoken
 13107                                  ;  145  2148 expect
 13108                                  ;  146  2155 expect
 13109                                  ;  147  2162 istoken
 13110                                  ;  148  2170 expect
 13111                                  ;  149  2177 listproc
 13112                                  ;  150  2186 prs
 13113                                  ;  151  2190 mkneg
 13114                                  ;  152  2196 pint1
 13115                                  ;  153  2202 prs
 13116                                  ;  154  2206 istoken
 13117                                  ;  155  2214 stmt
 13118                                  ;  156  2219 prs
 13119                                  ;  157  2223 prs
 13120                                  ;  158  2227 prs
 13121                                  ;  159  2231 prs
 13122                                  ;  160  2235 prs
 13123                                  ;  161  2239 strlen
 13124                                  ;  162  2246 strcpy
 13125                                  ;  163  2253 strcpy
 13126                                  ;  164  2405 expect
 13127                                  ;  165  2412 eqstr
 13128                                  ;  166  2418 constantexpr
 13129                                  ;  167  2431 checkreg
 13130                                  ;  168  2440 doreg1
 13131                                  ;  169  2447 exprstart
 13132                                  ;  170  2457 prs
 13133                                  ;  171  2461 prs
 13134                                  ;  172  2465 expect
 13135                                  ;  173  2498 getlex
 13136                                  ;  174  2505 typeName
 13137                                  ;  175  2514 searchname
 13138                                  ;  176  2525 gettypes
 13139                                  ;  177  2534 isrelational
 13140                                  ;  178  2547 error1
 13141                                  ;  179  2554 expect
 13142                                  ;  180  2561 prs
 13143                                  ;  181  2565 gettypes
 13144                                  ;  182  2574 pwi
 13145                                  ;  183  2578 v
 13146                                  ;  184  2580 prs
 13147                                  ;  185  2584 prL
 13148                                  ;  186  2588 cmpneg
 13149                                  ;  187  2595 prs
 13150                                  ;  188  2599 expect
 13151                                  ;  189  2616 eqstr
 13152                                  ;  190  2622 simplexpr
 13153                                  ;  191  2632 expr
 13154                                  ;  192  2649 getlex
 13155                                  ;  193  2656 istoken
 13156                                  ;  194  2664 prs
 13157                                  ;  195  2668 prL
 13158                                  ;  196  2672 typeName
 13159                                  ;  197  2681 docall1
 13160                                  ;  198  2689 error1
 13161                                  ;  199  2696 checkreg
 13162                                  ;  200  2705 doreg1
 13163                                  ;  201  2712 searchname
 13164                                  ;  202  2723 gettypes
 13165                                  ;  203  2732 error1
 13166                                  ;  204  2739 isrelational
 13167                                  ;  205  2752 error1
 13168                                  ;  206  2759 istoken
 13169                                  ;  207  2767 error1
 13170                                  ;  208  2774 istoken
 13171                                  ;  209  2782 prs
 13172                                  ;  210  2786 pwi
 13173                                  ;  211  2790 v
 13174                                  ;  212  2792 prs
 13175                                  ;  213  2796 prL
 13176                                  ;  214  2800 prs
 13177                                  ;  215  2804 loadName
 13178                                  ;  216  2813 prs
 13179                                  ;  217  2817 typeName
 13180                                  ;  218  2826 checkreg
 13181                                  ;  219  2835 prs
 13182                                  ;  220  2839 printreg
 13183                                  ;  221  2848 pwi
 13184                                  ;  222  2852 v
 13185                                  ;  223  2854 prs
 13186                                  ;  224  2858 printreg
 13187                                  ;  225  2867 error1
 13188                                  ;  226  2874 searchname
 13189                                  ;  227  2885 gettypes
 13190                                  ;  228  2894 error1
 13191                                  ;  229  2901 prs
 13192                                  ;  230  2905 printreg
 13193                                  ;  231  2914 error1
 13194                                  ;  232  2921 prs
 13195                                  ;  233  2925 a
 13196                                  ;  234  2927 pwi
 13197                                  ;  235  2931 v
 13198                                  ;  236  2933 prs
 13199                                  ;  237  2937 loadName
 13200                                  ;  238  2946 prs
 13201                                  ;  239  2962 istoken
 13202                                  ;  240  2970 strcpy
 13203                                  ;  241  2977 istoken
 13204                                  ;  242  2985 strcpy
 13205                                  ;  243  2992 istoken
 13206                                  ;  244  3000 strcpy
 13207                                  ;  245  3007 istoken
 13208                                  ;  246  3015 strcpy
 13209                                  ;  247  3022 istoken
 13210                                  ;  248  3030 strcpy
 13211                                  ;  249  3037 istoken
 13212                                  ;  250  3045 strcpy
 13213                                  ;  251  3052 istoken
 13214                                  ;  252  3060 strcpy
 13215                                  ;  253  3067 istoken
 13216                                  ;  254  3075 strcpy
 13217                                  ;  255  3082 istoken
 13218                                  ;  256  3090 strcpy
 13219                                  ;  257  3097 istoken
 13220                                  ;  258  3105 strcpy
 13221                                  ;  259  3112 istoken
 13222                                  ;  260  3120 strcpy
 13223                                  ;  261  3137 prnl
 13224                                  ;  262  3142 prs
 13225                                  ;  263  3146 prs
 13226                                  ;  264  3150 printreg
 13227                                  ;  265  3204 getop
 13228                                  ;  266  3210 getlex
 13229                                  ;  267  3217 isrelational
 13230                                  ;  268  3230 error1
 13231                                  ;  269  3237 strcpy
 13232                                  ;  270  3244 prleftreg
 13233                                  ;  271  3254 istoken
 13234                                  ;  272  3262 prleftreg
 13235                                  ;  273  3272 prs
 13236                                  ;  274  3276 prL
 13237                                  ;  275  3280 typeName
 13238                                  ;  276  3289 checkreg
 13239                                  ;  277  3298 prleftreg
 13240                                  ;  278  3308 prs
 13241                                  ;  279  3312 printreg
 13242                                  ;  280  3321 searchname
 13243                                  ;  281  3332 gettypes
 13244                                  ;  282  3341 eqstr
 13245                                  ;  283  3347 strcpy
 13246                                  ;  284  3354 strcpy
 13247                                  ;  285  3361 prleftreg
 13248                                  ;  286  3371 prs
 13249                                  ;  287  3375 pwi
 13250                                  ;  288  3379 a
 13251                                  ;  289  3381 pwi
 13252                                  ;  290  3385 v
 13253                                  ;  291  3387 cmpneg
 13254                                  ;  292  3394 prs
 13255                                  ;  293  3398 expect
 13256                                  ;  294  3414 strlen
 13257                                  ;  295  3421 eqstr
 13258                                  ;  296  3427 eqstr
 13259                                  ;  297  3433 eqstr
 13260                                  ;  298  3439 eqstr
 13261                                  ;  299  3445 eqstr
 13262                                  ;  300  3451 eqstr
 13263                                  ;  301  3457 eqstr
 13264                                  ;  302  3463 eqstr
 13265                                  ;  303  3469 eqstr
 13266                                  ;  304  3475 eqstr
 13267                                  ;  305  3481 eqstr
 13268                                  ;  306  3487 eqstr
 13269                                  ;  307  3493 eqstr
 13270                                  ;  308  3499 eqstr
 13271                                  ;  309  3505 eqstr
 13272                                  ;  310  3511 eqstr
 13273                                  ;  311  3517 eqstr
 13274                                  ;  312  3523 eqstr
 13275                                  ;  313  3529 eqstr
 13276                                  ;  314  3535 eqstr
 13277                                  ;  315  3541 eqstr
 13278                                  ;  316  3547 eqstr
 13279                                  ;  317  3553 strlen
 13280                                  ;  318  3560 eqstr
 13281                                  ;  319  3566 eqstr
 13282                                  ;  320  3572 eqstr
 13283                                  ;  321  3578 eqstr
 13284                                  ;  322  3584 eqstr
 13285                                  ;  323  3590 eqstr
 13286                                  ;  324  3596 eqstr
 13287                                  ;  325  3602 eqstr
 13288                                  ;  326  3608 eqstr
 13289                                  ;  327  3646 prc
 13290                                  ;  328  3650 prc
 13291                                  ;  329  3654 prc
 13292                                  ;  330  3658 prc
 13293                                  ;  331  3662 prc
 13294                                  ;  332  3677 printreg
 13295                                  ;  333  3686 printreg
 13296                                  ;  334  3695 printreg
 13297                                  ;  335  3748 istoken
 13298                                  ;  336  3756 prs
 13299                                  ;  337  3760 prL
 13300                                  ;  338  3764 typeName
 13301                                  ;  339  3773 checkreg
 13302                                  ;  340  3782 doreg1
 13303                                  ;  341  3789 docall1
 13304                                  ;  342  3797 searchname
 13305                                  ;  343  3808 gettypes
 13306                                  ;  344  3817 istoken
 13307                                  ;  345  3825 istoken
 13308                                  ;  346  3833 expect
 13309                                  ;  347  3840 searchname
 13310                                  ;  348  3851 expect
 13311                                  ;  349  3858 expect
 13312                                  ;  350  3865 gettypes
 13313                                  ;  351  3874 error1
 13314                                  ;  352  3881 istoken
 13315                                  ;  353  3889 error1
 13316                                  ;  354  3896 prs
 13317                                  ;  355  3900 pwi
 13318                                  ;  356  3904 v
 13319                                  ;  357  3906 istoken
 13320                                  ;  358  3914 error1
 13321                                  ;  359  3921 prs
 13322                                  ;  360  3925 pwi
 13323                                  ;  361  3929 v
 13324                                  ;  362  3931 istoken
 13325                                  ;  363  3939 compoundass
 13326                                  ;  364  3951 istoken
 13327                                  ;  365  3959 compoundass
 13328                                  ;  366  3971 istoken
 13329                                  ;  367  3979 compoundass
 13330                                  ;  368  3991 istoken
 13331                                  ;  369  3999 compoundass
 13332                                  ;  370  4011 istoken
 13333                                  ;  371  4019 error1
 13334                                  ;  372  4026 istoken
 13335                                  ;  373  4034 error1
 13336                                  ;  374  4041 istoken
 13337                                  ;  375  4049 expr
 13338                                  ;  376  4054 doassign
 13339                                  ;  377  4063 dovar1
 13340                                  ;  378  4070 istoken
 13341                                  ;  379  4078 rterm
 13342                                  ;  380  4084 istoken
 13343                                  ;  381  4092 rterm
 13344                                  ;  382  4098 istoken
 13345                                  ;  383  4106 rterm
 13346                                  ;  384  4112 istoken
 13347                                  ;  385  4120 rterm
 13348                                  ;  386  4126 istoken
 13349                                  ;  387  4134 rterm
 13350                                  ;  388  4140 istoken
 13351                                  ;  389  4148 rterm
 13352                                  ;  390  4154 istoken
 13353                                  ;  391  4162 domul
 13354                                  ;  392  4168 istoken
 13355                                  ;  393  4176 doidiv
 13356                                  ;  394  4183 istoken
 13357                                  ;  395  4191 domod
 13358                                  ;  396  4197 isrelational
 13359                                  ;  397  4210 rterm
 13360                                  ;  398  4216 cmpneg
 13361                                  ;  399  4247 error1
 13362                                  ;  400  4254 prnl
 13363                                  ;  401  4259 prs
 13364                                  ;  402  4263 prs
 13365                                  ;  403  4267 gettypes
 13366                                  ;  404  4276 pwi
 13367                                  ;  405  4280 v
 13368                                  ;  406  4282 prs
 13369                                  ;  407  4286 expect
 13370                                  ;  408  4293 prL
 13371                                  ;  409  4322 gettypes
 13372                                  ;  410  4331 prs
 13373                                  ;  411  4335 v
 13374                                  ;  412  4337 prnl
 13375                                  ;  413  4342 prs
 13376                                  ;  414  4346 prs
 13377                                  ;  415  4350 prs
 13378                                  ;  416  4354 prs
 13379                                  ;  417  4358 prnl
 13380                                  ;  418  4363 prs
 13381                                  ;  419  4367 prs
 13382                                  ;  420  4371 a
 13383                                  ;  421  4373 prs
 13384                                  ;  422  4377 v
 13385                                  ;  423  4379 prs
 13386                                  ;  424  4383 prs
 13387                                  ;  425  4387 prs
 13388                                  ;  426  4391 prs
 13389                                  ;  427  4395 prc
 13390                                  ;  428  4399 printpri
 13391                                  ;  429  4408 prs
 13392                                  ;  430  4412 prc
 13393                                  ;  431  4416 printName
 13394                                  ;  432  4426 prs
 13395                                  ;  433  4430 prnl
 13396                                  ;  434  4435 prs
 13397                                  ;  435  4439 prc
 13398                                  ;  436  4443 printpri
 13399                                  ;  437  4452 prs
 13400                                  ;  438  4456 v
 13401                                  ;  439  4488 istoken
 13402                                  ;  440  4496 prnl
 13403                                  ;  441  4501 prs
 13404                                  ;  442  4505 prc
 13405                                  ;  443  4509 printpri
 13406                                  ;  444  4518 prs
 13407                                  ;  445  4522 prL
 13408                                  ;  446  4526 typeName
 13409                                  ;  447  4535 searchname
 13410                                  ;  448  4546 istoken
 13411                                  ;  449  4554 searchname
 13412                                  ;  450  4565 expect
 13413                                  ;  451  4572 expect
 13414                                  ;  452  4579 gettypes
 13415                                  ;  453  4588 error1
 13416                                  ;  454  4595 eqstr
 13417                                  ;  455  4601 dovar1
 13418                                  ;  456  4638 gettypes
 13419                                  ;  457  4647 prs
 13420                                  ;  458  4651 v
 13421                                  ;  459  4653 prs
 13422                                  ;  460  4657 printpri
 13423                                  ;  461  4666 prs
 13424                                  ;  462  4670 a
 13425                                  ;  463  4672 prs
 13426                                  ;  464  4676 prs
 13427                                  ;  465  4680 prunsign1
 13428                                  ;  466  4690 v
 13429                                  ;  467  4692 prs
 13430                                  ;  468  4696 prs
 13431                                  ;  469  4700 prs
 13432                                  ;  470  4704 printName
 13433                                  ;  471  4714 prs
 13434                                  ;  472  4718 printpri
 13435                                  ;  473  4727 prs
 13436                                  ;  474  4731 pwi
 13437                                  ;  475  4735 v
 13438                                  ;  476  4737 prs
 13439                                  ;  477  4741 printpri
 13440                                  ;  478  4760 rterm
 13441                                  ;  479  4766 istoken
 13442                                  ;  480  4774 prs
 13443                                  ;  481  4778 prL
 13444                                  ;  482  4782 prs
 13445                                  ;  483  4786 error1
 13446                                  ;  484  4813 istoken
 13447                                  ;  485  4821 prs
 13448                                  ;  486  4825 prL
 13449                                  ;  487  4829 prs
 13450                                  ;  488  4833 prs
 13451                                  ;  489  4837 typeName
 13452                                  ;  490  4846 searchname
 13453                                  ;  491  4857 error1
 13454                                  ;  492  4864 gettypes
 13455                                  ;  493  4873 error1
 13456                                  ;  494  4880 error1
 13457                                  ;  495  4887 prs
 13458                                  ;  496  4891 v
 13459                                  ;  497  4893 prs
 13460                                  ;  498  4897 prs
 13461                                  ;  499  4911 doidiv
 13462                                  ;  500  4918 prs
 13463                                  ;  501  4980 checknamelen
 13464                                  ;  502  4993 strcpy
 13465                                  ;  503  5000 storecall
 13466                                  ;  504  5010 expect
 13467                                  ;  505  5017 istoken
 13468                                  ;  506  5025 error1
 13469                                  ;  507  5032 istoken
 13470                                  ;  508  5040 istoken
 13471                                  ;  509  5048 eprs
 13472                                  ;  510  5053 eprs
 13473                                  ;  511  5058 eprc
 13474                                  ;  512  5063 eprnum
 13475                                  ;  513  5070 eprs
 13476                                  ;  514  5075 eprc
 13477                                  ;  515  5080 eprs
 13478                                  ;  516  5085 eprc
 13479                                  ;  517  5090 eprs
 13480                                  ;  518  5095 istoken
 13481                                  ;  519  5103 name1
 13482                                  ;  520  5109 searchname
 13483                                  ;  521  5120 istoken
 13484                                  ;  522  5128 checkreg
 13485                                  ;  523  5137 searchname
 13486                                  ;  524  5148 error1
 13487                                  ;  525  5155 istoken
 13488                                  ;  526  5163 expect
 13489                                  ;  527  5170 prs
 13490                                  ;  528  5174 pint1
 13491                                  ;  529  5180 prs
 13492                                  ;  530  5184 prs
 13493                                  ;  531  5188 prs
 13494                                  ;  532  5192 prc
 13495                                  ;  533  5196 pint1
 13496                                  ;  534  5202 prs
 13497                                  ;  535  5206 prs
 13498                                  ;  536  5210 v
 13499                                  ;  537  5212 prs
 13500                                  ;  538  5216 gettypes
 13501                                  ;  539  5225 prs
 13502                                  ;  540  5229 pwi
 13503                                  ;  541  5233 v
 13504                                  ;  542  5235 prs
 13505                                  ;  543  5239 pwi
 13506                                  ;  544  5243 v
 13507                                  ;  545  5245 prs
 13508                                  ;  546  5249 prs
 13509                                  ;  547  5253 v
 13510                                  ;  548  5255 prs
 13511                                  ;  549  5259 prs
 13512                                  ;  550  5263 printreg
 13513                                  ;  551  5272 prs
 13514                                  ;  552  5276 prs
 13515                                  ;  553  5280 prs
 13516                                  ;  554  5284 pint1
 13517                                  ;  555  5295 getarg
 13518                                  ;  556  5302 memresize
 13519                                  ;  557  5312 error1
 13520                                  ;  558  5319 memalloc
 13521                                  ;  559  5328 error1
 13522                                  ;  560  5335 getfirstchar
 13523                                  ;  561  5348 cputs
 13524                                  ;  562  5354 parse
 13525                                  ;  563  5360 cputs
 13526                                  ;  564  5366 checkcalls
 13527                                  ;  565  5377 epilog
 13528                                  ;  566  5397 fgets1
 13529                                  ;  567  5435 cputs
 13530                                  ;  568  5441 cputs
 13531                                  ;  569  5447 readRL
 13532                                  ;  570  5454 prnl
 13533                                  ;  571  5459 strcpy
 13534                                  ;  572  5466 instr2
 13535                                  ;  573  5473 strcat1
 13536                                  ;  574  5481 toupper
 13537                                  ;  575  5489 instr2
 13538                                  ;  576  5496 strcpy
 13539                                  ;  577  5503 instr2
 13540                                  ;  578  5510 ltrim
 13541                                  ;  579  5516 strcpy
 13542                                  ;  580  5523 strlen
 13543                                  ;  581  5530 openR
 13544                                  ;  582  5536 cputs
 13545                                  ;  583  5542 cputs
 13546                                  ;  584  5548 exitR
 13547                                  ;  585  5554 creatR
 13548                                  ;  586  5561 cputs
 13549                                  ;  587  5567 cputs
 13550                                  ;  588  5573 exitR
 13551                                  ;  589  5579 prs
 13552                                  ;  590  5583 prs
 13553                                  ;  591  5587 prs
 13554                                  ;  592  5591 pint1
 13555                                  ;  593  5597 prs
 13556                                  ;  594  5601 prs
 13557                                  ;  595  5605 prs
 13558                                  ;  596  5609 prs
 13559                                  ;  597  5613 prs
 13560                                  ;  598  5617 prs
 13561                                  ;  599  5621 prs
 13562                                  ;  600  5625 pint1
 13563                                  ;  601  5631 isvirtual86
 13564                                  ;  602  5643 prs
 13565                                  ;  603  5647 prs
 13566                                  ;  604  5651 is32bit
 13567                                  ;  605  5659 prs
 13568                                  ;  606  5663 prs
 13569                                  ;  607  5667 prs
 13570                                  ;  608  5671 prs
 13571                                  ;  609  5675 prs
 13572                                  ;  610  5679 prL
 13573                                  ;  611  5683 isvirtual86
 13574                                  ;  612  5695 cputs
 13575                                  ;  613  5701 cputs
 13576                                  ;  614  5707 is32bit
 13577                                  ;  615  5715 cputs
 13578                                  ;  616  5721 cputs
 13579                                  ;  617  5727 INITCPU32
 13580                                  ;  618  5737 prs
 13581                                  ;  619  5741 isvirtual86
 13582                                  ;  620  5753 cputs
 13583                                  ;  621  5759 cputs
 13584                                  ;  622  5765 is32bit
 13585                                  ;  623  5773 cputs
 13586                                  ;  624  5779 cputs
 13587                                  ;  625  5785 isvirtual86
 13588                                  ;  626  5797 prs
 13589                                  ;  627  5801 prs
 13590                                  ;  628  5805 is32bit
 13591                                  ;  629  5813 prs
 13592                                  ;  630  5817 prs
 13593                                  ;  631  5835 getlex
 13594                                  ;  632  5842 istoken
 13595                                  ;  633  5850 istoken
 13596                                  ;  634  5858 dodefine
 13597                                  ;  635  5867 istoken
 13598                                  ;  636  5875 doinclude
 13599                                  ;  637  5885 error1
 13600                                  ;  638  5892 typeName
 13601                                  ;  639  5901 dofunc
 13602                                  ;  640  5908 istoken
 13603                                  ;  641  5916 doLdata
 13604                                  ;  642  5924 doglob
 13605                                  ;  643  5948 prs
 13606                                  ;  644  5952 from_far
 13607                                  ;  645  5961 from_far
 13608                                  ;  646  5970 eqstr
 13609                                  ;  647  5976 prs
 13610                                  ;  648  5980 prs
 13611                                  ;  649  5984 doar
 13612                                  ;  650  5989 prs
 13613                                  ;  651  5993 cputs
 13614                                  ;  652  6045 cputs
 13615                                  ;  653  6051 pint
 13616                                  ;  654  6056 prs
 13617                                  ;  655  6060 printint51
 13618                                  ;  656  6071 openR
 13619                                  ;  657  6077 cputs
 13620                                  ;  658  6083 cputs
 13621                                  ;  659  6089 exitR
 13622                                  ;  660  6095 prs
 13623                                  ;  661  6099 prs
 13624                                  ;  662  6103 getfirstchar
 13625                                  ;  663  6116 getfunctionhead
 13626                                  ;  664  6132 from_far
 13627                                  ;  665  6141 eqstr
 13628                                  ;  666  6147 prs
 13629                                  ;  667  6151 printint51
 13630                                  ;  668  6162 prs
 13631                                  ;  669  6166 prs
 13632                                  ;  670  6170 dofunc
 13633                                  ;  671  6177 prs
 13634                                  ;  672  6181 checkcalls
 13635                                  ;  673  6192 putch
 13636                                  ;  674  6198 cputs
 13637                                  ;  675  6204 error1
 13638                                  ;  676  6227 getlex
 13639                                  ;  677  6234 istoken
 13640                                  ;  678  6242 getlex
 13641                                  ;  679  6266 prs
 13642                                  ;  680  6270 prs
 13643                                  ;  681  6274 openR
 13644                                  ;  682  6280 prs
 13645                                  ;  683  6284 prs
 13646                                  ;  684  6288 cputs
 13647                                  ;  685  6294 error1
 13648                                  ;  686  6301 parse
 13649                                  ;  687  6307 prs
 13650                                  ;  688  6311 prs
 13651                                  ;  689  6315 getfirstchar
 13652                                  ;  690  6328 getlex
 13653                                  ;  691  6355 eqstr
 13654                                  ;  692  6361 getlex
 13655                                  ;  693  6368 eqstr
 13656                                  ;  694  6374 getlex
 13657                                  ;  695  6381 eqstr
 13658                                  ;  696  6387 getlex
 13659                                  ;  697  6394 eqstr
 13660                                  ;  698  6400 getlex
 13661                                  ;  699  6407 error1
 13662                                  ;  700  6414 getlex
 13663                                  ;  701  6421 eqstr
 13664                                  ;  702  6427 getlex
 13665                                  ;  703  6434 prs
 13666                                  ;  704  6438 strcpy
 13667                                  ;  705  6445 prs
 13668                                  ;  706  6449 error1
 13669                                  ;  707  6456 getlex
 13670                                  ;  708  6463 expect
 13671                                  ;  709  6470 error1
 13672                                  ;  710  6477 checknamelen
 13673                                  ;  711  6490 storeName
 13674                                  ;  712  6500 expect
 13675                                  ;  713  6518 istoken
 13676                                  ;  714  6526 istoken
 13677                                  ;  715  6534 stmt
 13678                                  ;  716  6539 istoken
 13679                                  ;  717  6547 doif
 13680                                  ;  718  6552 istoken
 13681                                  ;  719  6560 dodo
 13682                                  ;  720  6565 istoken
 13683                                  ;  721  6573 dowhile
 13684                                  ;  722  6581 istoken
 13685                                  ;  723  6589 prs
 13686                                  ;  724  6593 name1
 13687                                  ;  725  6599 prs
 13688                                  ;  726  6603 expect
 13689                                  ;  727  6610 prs
 13690                                  ;  728  6614 next
 13691                                  ;  729  6619 prc
 13692                                  ;  730  6623 next
 13693                                  ;  731  6628 getlex
 13694                                  ;  732  6635 istoken
 13695                                  ;  733  6643 prs
 13696                                  ;  734  6647 next
 13697                                  ;  735  6652 prc
 13698                                  ;  736  6656 next
 13699                                  ;  737  6661 getlex
 13700                                  ;  738  6668 error1
 13701                                  ;  739  6675 istoken
 13702                                  ;  740  6683 prs
 13703                                  ;  741  6687 expect
 13704                                  ;  742  6694 prL
 13705                                  ;  743  6698 expect
 13706                                  ;  744  6705 istoken
 13707                                  ;  745  6713 doifcarry
 13708                                  ;  746  6723 istoken
 13709                                  ;  747  6731 doifzero
 13710                                  ;  748  6740 istoken
 13711                                  ;  749  6748 doemit
 13712                                  ;  750  6755 istoken
 13713                                  ;  751  6763 istoken
 13714                                  ;  752  6771 exprstart
 13715                                  ;  753  6781 prs
 13716                                  ;  754  6785 expect
 13717                                  ;  755  6792 prs
 13718                                  ;  756  6796 prs
 13719                                  ;  757  6800 prc
 13720                                  ;  758  6804 expect
 13721                                  ;  759  6811 expect
 13722                                  ;  760  6818 exprstart
 13723                                  ;  761  6828 expect
 13724                                  ;  762  6842 prs
 13725                                  ;  763  6846 getlex
 13726                                  ;  764  6853 prL
 13727                                  ;  765  6857 getlex
 13728                                  ;  766  6864 prc
 13729                                  ;  767  6868 expect
 13730                                  ;  768  6886 prs
 13731                                  ;  769  6890 prs
 13732                                  ;  770  6894 prs
 13733                                  ;  771  6898 prs
 13734                                  ;  772  6902 prs
 13735                                  ;  773  6906 prunsign1
 13736                                  ;  774  6916 prs
 13737                                  ;  775  6920 prs
 13738                                  ;  776  6924 prunsign1
 13739                                  ;  777  6934 prs
 13740                                  ;  778  6938 prs
 13741                                  ;  779  6942 prs
 13742                                  ;  780  6946 error1
 13743                                  ;  781  6963 prs
 13744                                  ;  782  6967 prs
 13745                                  ;  783  6971 pint1
 13746                                  ;  784  6977 prc
 13747                                  ;  785  6990 prs
 13748                                  ;  786  6994 prs
 13749                                  ;  787  6998 pint1
 13750                                  ;  788  7019 pexpr
 13751                                  ;  789  7025 pint1
 13752                                  ;  790  7031 stmt
 13753                                  ;  791  7036 istoken
 13754                                  ;  792  7044 prjump
 13755                                  ;  793  7051 prlabel
 13756                                  ;  794  7059 stmt
 13757                                  ;  795  7064 prlabel
 13758                                  ;  796  7072 prlabel
 13759                                  ;  797  7096 prs
 13760                                  ;  798  7100 prs
 13761                                  ;  799  7104 pint1
 13762                                  ;  800  7110 stmt
 13763                                  ;  801  7115 prlabel
 13764                                  ;  802  7138 prs
 13765                                  ;  803  7142 prs
 13766                                  ;  804  7146 pint1
 13767                                  ;  805  7152 stmt
 13768                                  ;  806  7157 prlabel
 13769                                  ;  807  7182 prlabel
 13770                                  ;  808  7190 stmt
 13771                                  ;  809  7195 expect
 13772                                  ;  810  7202 pexpr
 13773                                  ;  811  7208 pint1
 13774                                  ;  812  7214 prjump
 13775                                  ;  813  7221 prlabel
 13776                                  ;  814  7247 prlabel
 13777                                  ;  815  7255 pexpr
 13778                                  ;  816  7261 pint1
 13779                                  ;  817  7267 stmt
 13780                                  ;  818  7272 prjump
 13781                                  ;  819  7279 prlabel
 13782                                  ;  820  7300 getlex
 13783                                  ;  821  7329 next
 13784                                  ;  822  7334 next
 13785                                  ;  823  7339 next
 13786                                  ;  824  7344 next
 13787                                  ;  825  7349 next
 13788                                  ;  826  7354 next
 13789                                  ;  827  7359 next
 13790                                  ;  828  7364 next
 13791                                  ;  829  7369 next
 13792                                  ;  830  7374 next
 13793                                  ;  831  7379 next
 13794                                  ;  832  7384 next
 13795                                  ;  833  7389 next
 13796                                  ;  834  7394 next
 13797                                  ;  835  7399 next
 13798                                  ;  836  7404 instr1
 13799                                  ;  837  7411 next
 13800                                  ;  838  7416 getlex
 13801                                  ;  839  7423 next
 13802                                  ;  840  7428 next
 13803                                  ;  841  7433 getlex
 13804                                  ;  842  7440 getstring
 13805                                  ;  843  7450 digit
 13806                                  ;  844  7456 getdigit
 13807                                  ;  845  7465 next
 13808                                  ;  846  7470 next
 13809                                  ;  847  7475 next
 13810                                  ;  848  7480 letter
 13811                                  ;  849  7487 strcpy
 13812                                  ;  850  7494 letter
 13813                                  ;  851  7501 next
 13814                                  ;  852  7506 eqstr
 13815                                  ;  853  7512 eqstr
 13816                                  ;  854  7518 eqstr
 13817                                  ;  855  7524 eqstr
 13818                                  ;  856  7530 eqstr
 13819                                  ;  857  7536 eqstr
 13820                                  ;  858  7542 eqstr
 13821                                  ;  859  7548 eqstr
 13822                                  ;  860  7554 eqstr
 13823                                  ;  861  7560 eqstr
 13824                                  ;  862  7566 eqstr
 13825                                  ;  863  7572 eqstr
 13826                                  ;  864  7578 eqstr
 13827                                  ;  865  7584 eqstr
 13828                                  ;  866  7590 eqstr
 13829                                  ;  867  7596 eqstr
 13830                                  ;  868  7602 eqstr
 13831                                  ;  869  7608 eqstr
 13832                                  ;  870  7614 eqstr
 13833                                  ;  871  7620 eqstr
 13834                                  ;  872  7626 eqstr
 13835                                  ;  873  7632 eqstr
 13836                                  ;  874  7638 convertdefine
 13837                                  ;  875  7652 strcpy
 13838                                  ;  876  7659 error1
 13839                                  ;  877  7684 from_far
 13840                                  ;  878  7693 eqstr
 13841                                  ;  879  7712 next
 13842                                  ;  880  7717 letter
 13843                                  ;  881  7724 next
 13844                                  ;  882  7729 digit
 13845                                  ;  883  7735 next
 13846                                  ;  884  7760 next
 13847                                  ;  885  7765 next
 13848                                  ;  886  7777 fgets1
 13849                                  ;  887  7794 getlex
 13850                                  ;  888  7810 istoken
 13851                                  ;  889  7818 prs
 13852                                  ;  890  7822 listproc
 13853                                  ;  891  7831 prs
 13854                                  ;  892  7835 pint1
 13855                                  ;  893  7841 error1
 13856                                  ;  894  7864 eprc
 13857                                  ;  895  7875 writetty
 13858                                  ;  896  7884 writetty
 13859                                  ;  897  7893 fputcR
 13860                                  ;  898  7915 prc
 13861                                  ;  899  7924 prs
 13862                                  ;  900  7940 prc
 13863                                  ;  901  7955 eprc
 13864                                  ;  902  7960 mkneg
 13865                                  ;  903  7966 eprnum
 13866                                  ;  904  7973 eprc
 13867                                  ;  905  7988 prc
 13868                                  ;  906  7992 mkneg
 13869                                  ;  907  7998 pint1
 13870                                  ;  908  8004 prc
 13871                                  ;  909  8022 prunsign1
 13872                                  ;  910  8032 prc
 13873                                  ;  911  8049 prc
 13874                                  ;  912  8053 prc
 13875                                  ;  913  8057 prc
 13876                                  ;  914  8061 prc
 13877                                  ;  915  8065 prunsign1
 13878                                  ;  916  8084 printinputline
 13879                                  ;  917  8114 readR
 13880                                  ;  918  8120 prs
 13881                                  ;  919  8124 prunsign1
 13882                                  ;  920  8134 prc
 13883                                  ;  921  8138 prscomment
 13884                                  ;  922  8156 fcloseR
 13885                                  ;  923  8164 fcloseR
 13886                                  ;  924  8172 exitR
 13887                                  ;  925  8187 prnl
 13888                                  ;  926  8192 prscomment
 13889                                  ;  927  8203 prs
 13890                                  ;  928  8207 prunsign1
 13891                                  ;  929  8217 prs
 13892                                  ;  930  8221 prs
 13893                                  ;  931  8225 prs
 13894                                  ;  932  8229 pint1
 13895                                  ;  933  8235 prs
 13896                                  ;  934  8239 prunsign1
 13897                                  ;  935  8249 prs
 13898                                  ;  936  8253 prc
 13899                                  ;  937  8257 prs
 13900                                  ;  938  8261 pint1
 13901                                  ;  939  8267 prs
 13902                                  ;  940  8271 prs
 13903                                  ;  941  8275 end1
 13904                                  ;  942  8291 prs
 13905                                  ;  943  8295 prs
 13906                                  ;  944  8299 prs
 13907                                  ;  945  8303 prunsign1
 13908                                  ;  946  8313 prs
 13909                                  ;  947  8317 listvar
 13910                                  ;  948  8341 prs
 13911                                  ;  949  8345 printint51
 13912                                  ;  950  8356 prc
 13913                                  ;  951  8360 prs
 13914                                  ;  952  8364 prs
 13915                                  ;  953  8368 prs
 13916                                  ;  954  8372 prs
 13917                                  ;  955  8376 prs
 13918                                  ;  956  8380 prs
 13919                                  ;  957  8384 prs
 13920                                  ;  958  8388 prs
 13921                                  ;  959  8392 prs
 13922                                  ;  960  8396 printint51
 13923                                  ;  961  8407 printint51
 13924                                  ;  962  8418 prs
 13925                                  ;  963  8422 prs
 13926                                  ;  964  8426 prc
 13927                                  ;  965  8430 prf
 13928                                  ;  966  8434 prs
 13929                                  ;  967  8438 prc
 13930                                  ;  968  8442 pint1
 13931                                  ;  969  8448 prs
 13932                                  ;  970  8452 prc
 13933                                  ;  971  8456 from_far
 13934                                  ;  972  8465 prs
 13935                                  ;  973  8469 prc
 13936                                  ;  974  8473 prL
 13937                                  ;  975  8477 prc
 13938                                  ;  976  8481 prL
 13939                                  ;  977  8485 prc
 13940                                  ;  978  8500 prs
 13941                                  ;  979  8504 calllisting
 13942                                  ;  980  8534 prs
 13943                                  ;  981  8538 printint51
 13944                                  ;  982  8549 prc
 13945                                  ;  983  8553 prs
 13946                                  ;  984  8557 printint51
 13947                                  ;  985  8568 prc
 13948                                  ;  986  8572 from_far
 13949                                  ;  987  8581 prs
 13950                                  ;  988  8600 from_far
 13951                                  ;  989  8609 from_far
 13952                                  ;  990  8618 eqstr
 13953                                  ;  991  8635 prs
 13954                                  ;  992  8639 countcalls
 13955                                  ;  993  8650 funclisting
 13956                                  ;  994  8680 prs
 13957                                  ;  995  8684 printint51
 13958                                  ;  996  8695 printint51
 13959                                  ;  997  8706 prs
 13960                                  ;  998  8710 printint51
 13961                                  ;  999  8721 prc
 13962                                  ; 1000  8725 prs
 13963                                  ; 1001  8729 prs
 13964                                  ; 1002  8733 prs
 13965                                  ; 1003  8737 prs
 13966                                  ; 1004  8741 prc
 13967                                  ; 1005  8745 prc
 13968                                  ; 1006  8749 from_far
 13969                                  ; 1007  8758 prs
 13970                                  ; 1008  8777 strcpy
 13971                                  ; 1009  8784 storefunc
 13972                                  ; 1010  8794 prs
 13973                                  ; 1011  8798 prs
 13974                                  ; 1012  8802 listvar
 13975                                  ; 1013  8810 listfunc
 13976                                  ; 1014  8819 listcall
 13977                                  ; 1015  8828 prs
 13978                                  ; 1016  8832 prs
 13979                                  ; 1017  8836 prs
 13980                                  ; 1018  8840 prs
 13981                                  ; 1019  8844 prs
 13982                                  ; 1020  8848 printint51
 13983                                  ; 1021  8859 prs
 13984                                  ; 1022  8863 printint51
 13985                                  ; 1023  8874 prs
 13986                                  ; 1024  8878 printint51
 13987                                  ; 1025  8889 prs
 13988                                  ; 1026  8893 printint51
 13989                                  ; 1027  8904 prs
 13990                                  ; 1028  8908 printint51
 13991                                  ; 1029  8919 prs
 13992                                  ; 1030  8923 prs
 13993                                  ; 1031  8927 prs
 13994                                  ; 1032  8931 prs
 13995                                  ; 1033  8935 printint51
 13996                                  ; 1034  8946 prs
 13997                                  ; 1035  8950 printint51
 13998                                  ; 1036  8961 prs
 13999                                  ; 1037  8965 printint51
 14000                                  ; 1038  8976 prs
 14001                                  ; 1039  8980 printint51
 14002                                  ; 1040  8991 prs
 14003                                  ; 1041  8995 printint51
 14004                                  ; 1042  9006 prs
 14005                                  ; 1043  9010 printint51
 14006                                  ; 1044  9021 prs
 14007                                  ; 1045  9025 printint51
 14008                                  ; 1046  9036 prs
 14009                                  ; 1047  9040 printint51
 14010                                  ; 1048  9051 prs
 14011                                  ; 1049  9055 printint51
 14012                                  ; 1050  9066 prs
 14013                                  ; 1051  9070 prs
 14014                                  ; 1052  9074 printint51
 14015                                  ; 1053  9085 prs
 14016                                  ; 1054  9089 prunsign1
 14017                                  ; 1055  9099 prs
 14018                                  ; 1056  9103 printint51
 14019                                  ; 1057  9114 prs
 14020                                  ; 1058  9118 prs
 14021                                  ; 1059  9122 prs
 14022                                  ; 1060  9126 prs
 14023                                  ; 1061  9130 printint51
 14024                                  ; 1062  9141 prs
 14025                                  ; 1063  9145 printint51
 14026                                  ; 1064  9156 prs
 14027                                  ; 1065  9160 printint51
 14028                                  ; 1066  9171 prs
 14029                                  ; 1067  9175 prs
 14030                                  ; 1068  9179 end1
 14031                                  ; 1069  9196 DosInt
 14032                                  ; 1070  9222 DosInt
 14033                                  ; 1071  9364 ultoar
 14034                                  ; 1072  9371 prs
 14035                                  ; 1073  9383 ultoaL
 14036                                  ; 1074  9390 prs
 14037                                  ; 1075  9408 ultoaL
 14038                                  ; 1076  9415 strlen
 14039                                  ; 1077  9422 prc
 14040                                  ; 1078  9426 prs
 14041                                  ; 1079  9471 writetty
 14042                                  ; 1080  9480 writetty
 14043                                  ; 1081  9499 putch
 14044                                  ; 1082  9522 prc
 14045                                  ; 1083  9526 mkneg
 14046                                  ; 1084  9532 pint
 14047                                  ; 1085  9537 putch
 14048                                  ; 1086  9614 digit
 14049                                  ; 1087  9642 strcpy
 14050                                  ; 1088  9664 DosInt
 14051                                  ; 1089  9680 DosInt
 14052                                  ; 1090  9698 DosInt
 14053                                  ; 1091  9721 DosInt
 14054                                  ; 1092  9740 DosInt
 14055                                  ;Input: A.C, List: A.S,  Lines: 1128
 14056                                  ;Glob. variables:  171 max.:  200
 14057                                  ;Local variables:    8 max.:  100, in 'expr'
 14058                                  ;Functions      :  130 max.:  300
 14059                                  ;Calls          : 1093 max.: 2000, NameField: 9782 max.:    65535
 14060                                  ;Code until     :25853 max.: 30000, free: 4147
 14061                                  ;Data (HeapEnd) :47000, resting stacksize: 18535
 14062                                  ;Max. Const in 'epilog' : 1131 max. 3000, free: 1869
