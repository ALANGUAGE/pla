     1                                  
     2                                  ; A.COM CComp V0.6, Arglen: 4, Argv: A.C, Source: A.C, Output asm: A.S
     3                                  ;PROTECTED: 0 V86 OFF.  32bit: ON. 
     4                                  org  256 ; NASM ON
     5 00000000 E9BD2F                  jmp main
     6                                  
     7                                  ;-1 //A.C  The MIT License 2015 (c) 2015 Helmut Guenther
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
    18                                  ;-4 #define ARCHIVE "AR.C"
    19                                  
    20                                  ;Use archive file: AR.C
    21                                  
    22                                  ;-5 #define ORGDATA     30000
    23                                  
    24                                  
    25                                  ;-6 char BSS=0;  char NASM=0;  char PROTECTED=0;     char LIST=0;
    26                                  
    27 00000014 00                      BSS db 0
    28 00000015 00                      NASM db 0
    29 00000016 00                      PROTECTED db 0
    30 00000017 00                      LIST db 0
    31                                  
    32                                  ;-7 #define LSTART        200
    33                                  
    34                                  
    35                                  ;-8 #define VARMAX        300
    36                                  
    37                                  
    38                                  ;-9 #define FUNCMAX       300
    39                                  
    40                                  
    41                                  ;-10 #define CALLMAX      2000
    42                                  
    43                                  
    44                                  ;-11 #define IDLENMAX       16
    45                                  
    46                                  
    47                                  ;-12 #define _  // constant compare
    48                                  
    49                                  
    50                                  ;-13 #define T_NAME        256
    51                                  
    52                                  
    53                                  ;-14 #define T_CONST       257 
    54                                  
    55                                  
    56                                  ;-15 #define T_STRING      258     
    57                                  
    58                                  
    59                                  ;-16 #define T_INCLUDE     510     
    60                                  
    61                                  
    62                                  ;-17 #define T_DEFINE      511  
    63                                  
    64                                  
    65                                  ;-18 #define T_RETURN      512
    66                                  
    67                                  
    68                                  ;-19 #define T_IF          513      
    69                                  
    70                                  
    71                                  ;-20 #define T_ELSE        514  
    72                                  
    73                                  
    74                                  ;-21 #define T_WHILE       515      
    75                                  
    76                                  
    77                                  ;-22 #define T_DO          516
    78                                  
    79                                  
    80                                  ;-23 #define T_INT         517     
    81                                  
    82                                  
    83                                  ;-24 #define T_ASM         518   
    84                                  
    85                                  
    86                                  ;-25 #define T_ASMBLOCK    519   
    87                                  
    88                                  
    89                                  ;-26 #define T_EMIT        520
    90                                  
    91                                  
    92                                  ;-27 #define T_GOTO        521    
    93                                  
    94                                  
    95                                  ;-28 #define T_VOID        529  
    96                                  
    97                                  
    98                                  ;-29 #define T_CHAR        530       
    99                                  
   100                                  
   101                                  ;-30 #define T_SIGNED      531
   102                                  
   103                                  
   104                                  ;-31 #define T_UNSIGNED    532
   105                                  
   106                                  
   107                                  ;-32 #define T_LONG        533
   108                                  
   109                                  
   110                                  ;-33 #define T_SHORT       534
   111                                  
   112                                  
   113                                  ;-34 #define T_UINT32      545
   114                                  
   115                                  
   116                                  ;-35 #define T_INTH        600
   117                                  
   118                                  
   119                                  ;-36 #define T_IFCARRY     601
   120                                  
   121                                  
   122                                  ;-37 #define T_IFZERO      602
   123                                  
   124                                  
   125                                  ;-38 #define T_EQ          806
   126                                  
   127                                  
   128                                  ;-39 #define T_NE          807
   129                                  
   130                                  
   131                                  ;-40 #define T_GE          811
   132                                  
   133                                  
   134                                  ;-41 #define T_LE          824
   135                                  
   136                                  
   137                                  ;-42 #define T_PLUSPLUS   1219
   138                                  
   139                                  
   140                                  ;-43 #define T_MINUSMINUS 1225
   141                                  
   142                                  
   143                                  ;-44 #define T_PLUSASS    1230
   144                                  
   145                                  
   146                                  ;-45 #define T_MINUSASS   1231
   147                                  
   148                                  
   149                                  ;-46 #define T_MULASS     1232
   150                                  
   151                                  
   152                                  ;-47 #define T_DIVASS     1233
   153                                  
   154                                  
   155                                  ;-48 #define T_ANDASS     1234
   156                                  
   157                                  
   158                                  ;-49 #define T_ORASS      1235
   159                                  
   160                                  
   161                                  ;-50 #define T_LESSLESS   1240
   162                                  
   163                                  
   164                                  ;-51 #define T_GREATGREAT 1241
   165                                  
   166                                  
   167                                  ;-52 #define COMAX        3000
   168                                  
   169                                  
   170                                  ;-53 #define CMDLENMAX      67
   171                                  
   172                                  
   173                                  ;-54 unsigned long LDATAORIG=2000000;     unsigned long ldata=2000000; long LONG0=0;
   174                                  
   175 00000018 80841E00                LDATAORIG dd 2000000
   176 0000001C 80841E00                ldata dd 2000000
   177 00000020 00000000                LONG0 dd 0
   178                                  
   179                                  ;-55 unsigned long ORGDATAORIG=30000;     unsigned long orgData=30000;
   180                                  
   181 00000024 30750000                ORGDATAORIG dd 30000
   182 00000028 30750000                orgData dd 30000
   183                                  
   184                                  ;-56 char co[COMAX];    int maxco=0;      int maxco1=0;
   185                                  
   186                                  section .bss
   187                                  absolute 30000
   188 00007530 <res 00000BB8>          co resb 3000
   189                                  section .text
   190 0000002C 0000                    maxco dw 0
   191 0000002E 0000                    maxco1 dw 0
   192                                  
   193                                  ;-57 char coname[CMDLENMAX];              char *cloc=0;
   194                                  
   195                                  section .bss
   196                                  absolute 33000
   197 000080E8 <res 00000043>          coname resb 67
   198                                  section .text
   199 00000030 0000                    cloc dw 0
   200                                  
   201                                  ;-58 char locname[CMDLENMAX]; int maxloc=0;
   202                                  
   203                                  section .bss
   204                                  absolute 33067
   205 0000812B <res 00000043>          locname resb 67
   206                                  section .text
   207 00000032 0000                    maxloc dw 0
   208                                  
   209                                  ;-59 int fdin=0;        int fdout=0;      char symbol[128];
   210                                  
   211 00000034 0000                    fdin dw 0
   212 00000036 0000                    fdout dw 0
   213                                  section .bss
   214                                  absolute 33134
   215 0000816E <res 00000080>          symbol resb 128
   216                                  section .text
   217                                  
   218                                  ;-60 char fname[CMDLENMAX];               char namein[CMDLENMAX];
   219                                  
   220                                  section .bss
   221                                  absolute 33262
   222 000081EE <res 00000043>          fname resb 67
   223                                  section .text
   224                                  section .bss
   225                                  absolute 33329
   226 00008231 <res 00000043>          namein resb 67
   227                                  section .text
   228                                  
   229                                  ;-61 char namelst[CMDLENMAX];             char archivename[]="AR.C";
   230                                  
   231                                  section .bss
   232                                  absolute 33396
   233 00008274 <res 00000043>          namelst resb 67
   234                                  section .text
   235 00000038 41522E4300              archivename db "AR.C",0
   236                                  
   237                                  ;-62 int token=0;       char globC=0;     int spalte=0;
   238                                  
   239 0000003D 0000                    token dw 0
   240 0000003F 00                      globC db 0
   241 00000040 0000                    spalte dw 0
   242                                  
   243                                  ;-63 char thechar=0;    int iscmp=0;      int nconst=0;
   244                                  
   245 00000042 00                      thechar db 0
   246 00000043 0000                    iscmp dw 0
   247 00000045 0000                    nconst dw 0
   248                                  
   249                                  ;-64 int nreturn=0;     int nlabel=0;     int callrecursive=0;
   250                                  
   251 00000047 0000                    nreturn dw 0
   252 00000049 0000                    nlabel dw 0
   253 0000004B 0000                    callrecursive dw 0
   254                                  
   255                                  ;-65 unsigned long lexvalL;  char islong; char isldata=0;
   256                                  
   257 0000004D 00000000                lexvalL dd 0
   258 00000051 00                      islong db 0
   259 00000052 00                      isldata db 0
   260                                  
   261                                  ;-66 int typei;        char istype;  char GType [VARMAX]; // 0=V, 1=*, 2=&,#
   262                                  
   263 00000053 0000                    typei dw 0
   264 00000055 00                      istype db 0
   265                                  section .bss
   266                                  absolute 33463
   267 000082B7 <res 0000012C>          GType resb 300
   268                                  section .text
   269                                  
   270                                  ;-67 int signi;        char issign;  char GSign [VARMAX]; // 0=U, 1=S
   271                                  
   272 00000056 0000                    signi dw 0
   273 00000058 00                      issign db 0
   274                                  section .bss
   275                                  absolute 33763
   276 000083E3 <res 0000012C>          GSign resb 300
   277                                  section .text
   278                                  
   279                                  ;-68 int widthi;int wi;char iswidth; char GWidth[VARMAX]; // 0, 1, 2, 4
   280                                  
   281 00000059 0000                    widthi dw 0
   282 0000005B 0000                    wi dw 0
   283 0000005D 00                      iswidth db 0
   284                                  section .bss
   285                                  absolute 34063
   286 0000850F <res 0000012C>          GWidth resb 300
   287                                  section .text
   288                                  
   289                                  ;-69 int  GTop=1;        int LTop=150;
   290                                  
   291 0000005E 0100                    GTop dw 1
   292 00000060 9600                    LTop dw 150
   293                                  
   294                                  ;-70 int  GLino   [VARMAX];     // lineno
   295                                  
   296                                  section .bss
   297                                  absolute 34363
   298 0000863B <res 00000258>          GLino resw 300
   299                                  section .text
   300                                  
   301                                  ;-71 int  GUsed   [VARMAX];     // how manytimes is var used
   302                                  
   303                                  section .bss
   304                                  absolute 34963
   305 00008893 <res 00000258>          GUsed resw 300
   306                                  section .text
   307                                  
   308                                  ;-72 long GData   [VARMAX];     // init data or local addr or array len or define no
   309                                  
   310                                  section .bss
   311                                  absolute 35563
   312 00008AEB <res 000004B0>          GData resd 300
   313                                  section .text
   314                                  
   315                                  ;-73 long GAdr    [VARMAX];     // Address 32 bit
   316                                  
   317                                  section .bss
   318                                  absolute 36763
   319 00008F9B <res 000004B0>          GAdr resd 300
   320                                  section .text
   321                                  
   322                                  ;-74 int  GName   [VARMAX];     // start of var name in list
   323                                  
   324                                  section .bss
   325                                  absolute 37963
   326 0000944B <res 00000258>          GName resw 300
   327                                  section .text
   328                                  
   329                                  ;-75 int  FTop=0;               // top of function list
   330                                  
   331 00000062 0000                    FTop dw 0
   332                                  
   333                                  ;-76 char FWidth  [FUNCMAX];    // iswidth
   334                                  
   335                                  section .bss
   336                                  absolute 38563
   337 000096A3 <res 0000012C>          FWidth resb 300
   338                                  section .text
   339                                  
   340                                  ;-77 int  FLino   [FUNCMAX];    // lineno
   341                                  
   342                                  section .bss
   343                                  absolute 38863
   344 000097CF <res 00000258>          FLino resw 300
   345                                  section .text
   346                                  
   347                                  ;-78 int  FCalls  [FUNCMAX];    // no of calls for this function
   348                                  
   349                                  section .bss
   350                                  absolute 39463
   351 00009A27 <res 00000258>          FCalls resw 300
   352                                  section .text
   353                                  
   354                                  ;-79 int  FName   [FUNCMAX];    // start of function name in list
   355                                  
   356                                  section .bss
   357                                  absolute 40063
   358 00009C7F <res 00000258>          FName resw 300
   359                                  section .text
   360                                  
   361                                  ;-80 int  CTop=0;               // top of call list
   362                                  
   363 00000064 0000                    CTop dw 0
   364                                  
   365                                  ;-81 int  CName   [CALLMAX];    // CNameTop
   366                                  
   367                                  section .bss
   368                                  absolute 40663
   369 00009ED7 <res 00000FA0>          CName resw 2000
   370                                  section .text
   371                                  
   372                                  ;-82 char CUnres  [CALLMAX];    // 0 = unresolved call
   373                                  
   374                                  section .bss
   375                                  absolute 44663
   376 0000AE77 <res 000007D0>          CUnres resb 2000
   377                                  section .text
   378                                  
   379                                  ;-83 char Ls[]="12345678901";                      //must be in low memory
   380                                  
   381 00000066 313233343536373839-     Ls db "12345678901",0
   382 0000006F 303100             
   383                                  
   384                                  ;-84 char NA[]="12345678901234567890123456789012"; //must be in low memory
   385                                  
   386 00000072 313233343536373839-     NA db "12345678901234567890123456789012",0
   387 0000007B 303132333435363738-
   388 00000084 393031323334353637-
   389 0000008D 383930313200       
   390                                  
   391                                  ;-85 char NB[]="12345678901234567890123456789012"; //must be in low memory
   392                                  
   393 00000093 313233343536373839-     NB db "12345678901234567890123456789012",0
   394 0000009C 303132333435363738-
   395 000000A5 393031323334353637-
   396 000000AE 383930313200       
   397                                  
   398                                  ;-86 char fgetsdest[128];         unsigned char *CNameTop=0;
   399                                  
   400                                  section .bss
   401                                  absolute 46663
   402 0000B647 <res 00000080>          fgetsdest resb 128
   403                                  section .text
   404 000000B4 0000                    CNameTop dw 0
   405                                  
   406                                  ;-87 unsigned char *fgetsp=0;     unsigned int segE;
   407                                  
   408 000000B6 0000                    fgetsp dw 0
   409 000000B8 0000                    segE dw 0
   410                                  
   411                                  ;-88 unsigned int lineno=1;       unsigned int linenoinclude=1;
   412                                  
   413 000000BA 0100                    lineno dw 1
   414 000000BC 0100                    linenoinclude dw 1
   415                                  
   416                                  ;-89 unsigned char *pt=0;         unsigned char *p1=0;
   417                                  
   418 000000BE 0000                    pt dw 0
   419 000000C0 0000                    p1 dw 0
   420                                  
   421                                  ;-90 int DOS_ERR=0; int DOS_NoBytes=0; char DOS_ByteRead=0;
   422                                  
   423 000000C2 0000                    DOS_ERR dw 0
   424 000000C4 0000                    DOS_NoBytes dw 0
   425 000000C6 00                      DOS_ByteRead db 0
   426                                  
   427                                  ;-91 
   428                                  
   429                                  
   430                                  ;-92 long varL1!; int vari1!; unsigned int vari2![3];
   431                                  
   432                                  ;p32  adr: 2000000, varL1 [4]
   433                                  ;p32  adr: 2000004, vari1 [2]
   434                                  ;p32  adr: 2000006, vari2 [6]
   435                                  
   436                                  ;-93 char varc1!; long varL2!;
   437                                  
   438                                  ;p32  adr: 2000012, varc1 [1]
   439                                  ;p32  adr: 2000013, varL2 [4]
   440                                  
   441                                  ;-94 long arrL1![3]; long varL4!; char chc2!;
   442                                  
   443                                  ;p32  adr: 2000017, arrL1 [12]
   444                                  ;p32  adr: 2000029, varL4 [4]
   445                                  ;p32  adr: 2000033, chc2 [1]
   446                                  
   447                                  ;-95 void ttt(long par1, char *s)
   448                                  
   449                                  
   450                                  ttt:  ; *** PROC ***
   451                                  
   452                                  ;-96   {   }
   453                                  
   454                                  ;Function : ttt, Number of local variables: 2
   455                                  ;   # type sign width line used address name   list of local variables
   456                                  ;  200 var sign dwrd    95 NULL bp+4    par1
   457                                  ;  201 ptr sign byte    95 NULL bp+8    s;
   458 000000C7 C8000000                 ENTER  0,0
   459                                  
   460                                  ;-97 void a(unsigned int i) { if(NASM == 0) prs("offset "); printName(i);}//address
   461 000000CB C9                       LEAVE
   462 000000CC C3                       ret
   463                                  ; ENDP
   464                                  
   465                                  a:  ; *** PROC ***
   466                                  ;Function : a, Number of local variables: 1
   467                                  ;   # type sign width line used address name   list of local variables
   468                                  ;  200 var unsg word    97 NULL bp+4    i;
   469 000000CD C8000000                 ENTER  0,0
   470 000000D1 A0[1500]                 mov al, [NASM]
   471 000000D4 3C00                     cmp al, 0
   472 000000D6 0F850900                 jne @@a1
   473 000000DA 68[EE00]                 push a_0
   474 000000DD E8CE4D                   call prs
   475 000000E0 83C402                   add  sp, 2
   476                                  @@a1:
   477 000000E3 FF7604                   push word [bp+4]
   478 000000E6 E82309                   call printName
   479 000000E9 83C402                   add  sp, 2
   480                                  
   481                                  ;-98 void v(unsigned int i) { if(NASM) { if (i < LSTART) prc('['); }
   482 000000EC C9                       LEAVE
   483 000000ED C3                       ret
   484                                  ; ENDP
   485 000000EE 6F66667365742000        a_0 db "offset ",0
   486                                  
   487                                  v:  ; *** PROC ***
   488                                  ;Function : v, Number of local variables: 1
   489                                  ;   # type sign width line used address name   list of local variables
   490                                  ;  200 var unsg word    98 NULL bp+4    i;
   491 000000F6 C8000000                 ENTER  0,0
   492 000000FA A0[1500]                 mov al, [NASM]
   493 000000FD 08C0                     or  al, al
   494 000000FF 0F841200                 je @@v2
   495 00000103 8B4604                   mov ax, [bp+4]
   496 00000106 3DC800                   cmp ax, 200
   497 00000109 0F8D0800                 jge @@v3
   498 0000010D 6A5B                     push 91
   499 0000010F E82D4D                   call prc
   500 00000112 83C402                   add  sp, 2
   501                                  @@v3:
   502                                  
   503                                  ;-99   printName(i); if(NASM) { if (i < LSTART) prc(']'); }   }//value
   504                                  
   505                                  @@v2:
   506 00000115 FF7604                   push word [bp+4]
   507 00000118 E8F108                   call printName
   508 0000011B 83C402                   add  sp, 2
   509 0000011E A0[1500]                 mov al, [NASM]
   510 00000121 08C0                     or  al, al
   511 00000123 0F841200                 je @@v4
   512 00000127 8B4604                   mov ax, [bp+4]
   513 0000012A 3DC800                   cmp ax, 200
   514 0000012D 0F8D0800                 jge @@v5
   515 00000131 6A5D                     push 93
   516 00000133 E8094D                   call prc
   517 00000136 83C402                   add  sp, 2
   518                                  @@v5:
   519                                  @@v4:
   520                                  
   521                                  ;-100 void checknamelen() { int i;    i=strlen(symbol);
   522 00000139 C9                       LEAVE
   523 0000013A C3                       ret
   524                                  ; ENDP
   525                                  
   526                                  checknamelen:  ; *** PROC ***
   527                                  ;Function : checknamelen, Number of local variables: 1
   528                                  ;   # type sign width line used address name   list of local variables
   529                                  ;  200 var sign word   100 NULL bp-2    i;
   530 0000013B C8020000                 ENTER  2,0
   531 0000013F 8D066E81                 lea  ax, [symbol]
   532 00000143 50                       push ax
   533 00000144 E83660                   call strlen
   534 00000147 83C402                   add  sp, 2
   535 0000014A 8946FE                   mov word [bp-2], ax
   536                                  
   537                                  ;-101   if (i >= IDLENMAX) error1("Item name is too long in characters)"); }
   538                                  
   539 0000014D 8B46FE                   mov ax, [bp-2]
   540 00000150 83F810                   cmp ax, 16 ;unsigned : 1
   541 00000153 0F8C0900                 jl  @@checknamelen6
   542 00000157 68[6201]                 push checknamelen_0
   543 0000015A E85250                   call error1
   544 0000015D 83C402                   add  sp, 2
   545                                  @@checknamelen6:
   546                                  
   547                                  ;-102 void pwi(int i) {  // print width
   548 00000160 C9                       LEAVE
   549 00000161 C3                       ret
   550                                  ; ENDP
   551 00000162 4974656D206E616D65-     checknamelen_0 db "Item name is too long in characters)",0
   552 0000016B 20697320746F6F206C-
   553 00000174 6F6E6720696E206368-
   554 0000017D 617261637465727329-
   555 00000186 00                 
   556                                  
   557                                  pwi:  ; *** PROC ***
   558                                  
   559                                  ;-103   if (i == 1) prs("byte ");    if (i == 2) prs("word ");
   560                                  
   561                                  ;Function : pwi, Number of local variables: 1
   562                                  ;   # type sign width line used address name   list of local variables
   563                                  ;  200 var sign word   102 NULL bp+4    i;
   564 00000187 C8000000                 ENTER  0,0
   565 0000018B 8B4604                   mov ax, [bp+4]
   566 0000018E 83F801                   cmp ax, 1
   567 00000191 0F850900                 jne @@pwi7
   568 00000195 68[D801]                 push pwi_0
   569 00000198 E8134D                   call prs
   570 0000019B 83C402                   add  sp, 2
   571                                  @@pwi7:
   572 0000019E 8B4604                   mov ax, [bp+4]
   573 000001A1 83F802                   cmp ax, 2
   574 000001A4 0F850900                 jne @@pwi8
   575 000001A8 68[DE01]                 push pwi_1
   576 000001AB E8004D                   call prs
   577 000001AE 83C402                   add  sp, 2
   578                                  
   579                                  ;-104   if (i == 4) prs("dword ");   if (NASM == 0) prs("ptr ");
   580                                  
   581                                  @@pwi8:
   582 000001B1 8B4604                   mov ax, [bp+4]
   583 000001B4 83F804                   cmp ax, 4
   584 000001B7 0F850900                 jne @@pwi9
   585 000001BB 68[E401]                 push pwi_2
   586 000001BE E8ED4C                   call prs
   587 000001C1 83C402                   add  sp, 2
   588                                  @@pwi9:
   589 000001C4 A0[1500]                 mov al, [NASM]
   590 000001C7 3C00                     cmp al, 0
   591 000001C9 0F850900                 jne @@pwi10
   592 000001CD 68[EB01]                 push pwi_3
   593 000001D0 E8DB4C                   call prs
   594 000001D3 83C402                   add  sp, 2
   595                                  
   596                                  ;-105 }
   597                                  
   598                                  @@pwi10:
   599                                  
   600                                  ;-106 void storeName() {int i;
   601 000001D6 C9                       LEAVE
   602 000001D7 C3                       ret
   603                                  ; ENDP
   604 000001D8 627974652000            pwi_0 db "byte ",0
   605 000001DE 776F72642000            pwi_1 db "word ",0
   606 000001E4 64776F72642000          pwi_2 db "dword ",0
   607 000001EB 7074722000              pwi_3 db "ptr ",0
   608                                  
   609                                  storeName:  ; *** PROC ***
   610                                  
   611                                  ;-107   i=strlen(symbol); to_far(CNameTop, symbol); CNameTop=CNameTop+i; CNameTop++;
   612                                  
   613                                  ;Function : storeName, Number of local variables: 1
   614                                  ;   # type sign width line used address name   list of local variables
   615                                  ;  200 var sign word   106 NULL bp-2    i;
   616 000001F0 C8020000                 ENTER  2,0
   617 000001F4 8D066E81                 lea  ax, [symbol]
   618 000001F8 50                       push ax
   619 000001F9 E8815F                   call strlen
   620 000001FC 83C402                   add  sp, 2
   621 000001FF 8946FE                   mov word [bp-2], ax
   622 00000202 8D066E81                 lea  ax, [symbol]
   623 00000206 50                       push ax
   624 00000207 FF36[B400]               push word [CNameTop]
   625 0000020B E8775C                   call to_far
   626 0000020E 83C404                   add  sp, 4
   627 00000211 A1[B400]                 mov ax, [CNameTop]
   628 00000214 0346FE                   add ax, [bp-2]
   629 00000217 A3[B400]                 mov word [CNameTop], ax
   630 0000021A FF06[B400]               inc  word [CNameTop]
   631                                  
   632                                  ;-108 }
   633                                  
   634                                  
   635                                  ;-109 char doglobName[IDLENMAX];
   636 0000021E C9                       LEAVE
   637 0000021F C3                       ret
   638                                  ; ENDP
   639                                  section .bss
   640                                  absolute 46791
   641 0000B6C7 <res 00000010>          doglobName resb 16
   642                                  section .text
   643                                  
   644                                  ;-110 void doLdata() {
   645                                  
   646                                  
   647                                  doLdata:  ; *** PROC ***
   648                                  
   649                                  ;-111   if (GTop >= LSTART) error1("Global table full");
   650                                  
   651 00000220 A1[5E00]                 mov ax, [GTop]
   652 00000223 3DC800                   cmp ax, 200 ;unsigned : 1
   653 00000226 0F8C0900                 jl  @@doLdata11
   654 0000022A 68[8703]                 push doLdata_0
   655 0000022D E87F4F                   call error1
   656 00000230 83C402                   add  sp, 2
   657                                  
   658                                  ;-112   if (iswidth == 0) error1("no VOID as var type");
   659                                  
   660                                  @@doLdata11:
   661 00000233 A0[5D00]                 mov al, [iswidth]
   662 00000236 3C00                     cmp al, 0
   663 00000238 0F850900                 jne @@doLdata12
   664 0000023C 68[9903]                 push doLdata_1
   665 0000023F E86D4F                   call error1
   666 00000242 83C402                   add  sp, 2
   667                                  
   668                                  ;-113   checknamelen();
   669                                  
   670                                  @@doLdata12:
   671 00000245 E8F3FE                   call checknamelen
   672                                  
   673                                  ;-114   if (checkName() != 0) error1("Global variable already defined");
   674                                  
   675 00000248 E87608                   call checkName
   676 0000024B 3C00                     cmp al, 0
   677 0000024D 0F840900                 je  @@doLdata13
   678 00000251 68[AD03]                 push doLdata_2
   679 00000254 E8584F                   call error1
   680 00000257 83C402                   add  sp, 2
   681                                  
   682                                  ;-115   GAdr[GTop]=ldata;
   683                                  
   684                                  @@doLdata13:
   685 0000025A 66A1[1C00]               mov eax, [ldata]
   686 0000025E 8B1E[5E00]               mov bx, [GTop]
   687 00000262 C1E302                   shl bx, 2
   688 00000265 6689879B8F               mov [GAdr+bx], eax
   689                                  
   690                                  ;-116   eax=0;  lexvalL=iswidth; // Cast B2L
   691                                  
   692 0000026A 66B800000000             mov  eax, 0
   693 00000270 A0[5D00]                 mov al, [iswidth]
   694 00000273 66A3[4D00]               mov dword [lexvalL], eax
   695                                  
   696                                  ;-117   if (istoken('[')) { istype='&';
   697                                  
   698 00000277 6A5B                     push 91
   699 00000279 E8EC4A                   call istoken
   700 0000027C 83C402                   add  sp, 2
   701 0000027F 08C0                     or  al, al
   702 00000281 0F844300                 je @@doLdata14
   703 00000285 66B826000000             mov eax, 38
   704 0000028B A2[5500]                 mov byte [istype], al
   705                                  
   706                                  ;-118     expect(T_CONST);
   707                                  
   708 0000028E 680101                   push 257
   709 00000291 E8FC4A                   call expect
   710 00000294 83C402                   add  sp, 2
   711                                  
   712                                  ;-119     if (iswidth==2) lexvalL=lexvalL << 1;
   713                                  
   714 00000297 A0[5D00]                 mov al, [iswidth]
   715 0000029A 3C02                     cmp al, 2
   716 0000029C 0F850B00                 jne @@doLdata15
   717 000002A0 66A1[4D00]               mov eax, [lexvalL]
   718 000002A4 66D1E0                   shl eax, 1
   719 000002A7 66A3[4D00]               mov dword [lexvalL], eax
   720                                  
   721                                  ;-120     if (iswidth==4) lexvalL=lexvalL << 2;
   722                                  
   723                                  @@doLdata15:
   724 000002AB A0[5D00]                 mov al, [iswidth]
   725 000002AE 3C04                     cmp al, 4
   726 000002B0 0F850C00                 jne @@doLdata16
   727 000002B4 66A1[4D00]               mov eax, [lexvalL]
   728 000002B8 66C1E002                 shl eax, 2
   729 000002BC 66A3[4D00]               mov dword [lexvalL], eax
   730                                  
   731                                  ;-121     expect(']');
   732                                  
   733                                  @@doLdata16:
   734 000002C0 6A5D                     push 93
   735 000002C2 E8CB4A                   call expect
   736 000002C5 83C402                   add  sp, 2
   737                                  
   738                                  ;-122   }
   739                                  
   740                                  
   741                                  ;-123   prs("\n;p32  adr: "); prL(ldata); prs(", "); prs(symbol);
   742                                  
   743                                  @@doLdata14:
   744 000002C8 68[CD03]                 push doLdata_3
   745 000002CB E8E04B                   call prs
   746 000002CE 83C402                   add  sp, 2
   747 000002D1 66FF36[1C00]             push dword [ldata]
   748 000002D6 E8885C                   call prL
   749 000002D9 83C404                   add  sp, 4
   750 000002DC 68[DB03]                 push doLdata_4
   751 000002DF E8CC4B                   call prs
   752 000002E2 83C402                   add  sp, 2
   753 000002E5 8D066E81                 lea  ax, [symbol]
   754 000002E9 50                       push ax
   755 000002EA E8C14B                   call prs
   756 000002ED 83C402                   add  sp, 2
   757                                  
   758                                  ;-124   prs(" ["); prL(lexvalL); prc(']');
   759                                  
   760 000002F0 68[DE03]                 push doLdata_5
   761 000002F3 E8B84B                   call prs
   762 000002F6 83C402                   add  sp, 2
   763 000002F9 66FF36[4D00]             push dword [lexvalL]
   764 000002FE E8605C                   call prL
   765 00000301 83C404                   add  sp, 4
   766 00000304 6A5D                     push 93
   767 00000306 E8364B                   call prc
   768 00000309 83C402                   add  sp, 2
   769                                  
   770                                  ;-125   ldata=ldata+lexvalL; GData[GTop]=lexvalL;
   771                                  
   772 0000030C 66A1[1C00]               mov eax, [ldata]
   773 00000310 660306[4D00]             add eax, [lexvalL]
   774 00000315 66A3[1C00]               mov dword [ldata], eax
   775 00000319 66A1[4D00]               mov eax, [lexvalL]
   776 0000031D 8B1E[5E00]               mov bx, [GTop]
   777 00000321 C1E302                   shl bx, 2
   778 00000324 668987EB8A               mov [GData+bx], eax
   779                                  
   780                                  ;-126   GSign[GTop]=issign;  GWidth[GTop]=iswidth; GType[GTop]=istype;
   781                                  
   782 00000329 A0[5800]                 mov al, [issign]
   783 0000032C 8B1E[5E00]               mov bx, [GTop]
   784 00000330 8887E383                 mov [GSign+bx], al
   785 00000334 A0[5D00]                 mov al, [iswidth]
   786 00000337 8B1E[5E00]               mov bx, [GTop]
   787 0000033B 88870F85                 mov [GWidth+bx], al
   788 0000033F A0[5500]                 mov al, [istype]
   789 00000342 8B1E[5E00]               mov bx, [GTop]
   790 00000346 8887B782                 mov [GType+bx], al
   791                                  
   792                                  ;-127   GLino [GTop]=lineno-1; GUsed [GTop]=0;
   793                                  
   794 0000034A A1[BA00]                 mov ax, [lineno]
   795 0000034D 83E801                   sub ax, 1
   796 00000350 8B1E[5E00]               mov bx, [GTop]
   797 00000354 D1E3                     shl bx, 1
   798 00000356 89873B86                 mov [GLino+bx], ax
   799 0000035A 66B800000000             mov eax, 0
   800 00000360 8B1E[5E00]               mov bx, [GTop]
   801 00000364 D1E3                     shl bx, 1
   802 00000366 89879388                 mov [GUsed+bx], ax
   803                                  
   804                                  ;-128 //  if (isstrarr) strcpy(symbol, doglobName);
   805                                  
   806                                  
   807                                  ;-129   GName[GTop] = CNameTop;
   808                                  
   809 0000036A A1[B400]                 mov ax, [CNameTop]
   810 0000036D 8B1E[5E00]               mov bx, [GTop]
   811 00000371 D1E3                     shl bx, 1
   812 00000373 89874B94                 mov [GName+bx], ax
   813                                  
   814                                  ;-130   storeName();
   815                                  
   816 00000377 E876FE                   call storeName
   817                                  
   818                                  ;-131   GTop++; expect(';');
   819                                  
   820 0000037A FF06[5E00]               inc  word [GTop]
   821 0000037E 6A3B                     push 59
   822 00000380 E80D4A                   call expect
   823 00000383 83C402                   add  sp, 2
   824                                  
   825                                  ;-132 }
   826                                  
   827                                  
   828                                  ;-133 void doglob() { int i; int j; int isstrarr; isstrarr=0;
   829                                  
   830 00000386 C3                       ret
   831                                  ; ENDP
   832 00000387 476C6F62616C207461-     doLdata_0 db "Global table full",0
   833 00000390 626C652066756C6C00 
   834 00000399 6E6F20564F49442061-     doLdata_1 db "no VOID as var type",0
   835 000003A2 732076617220747970-
   836 000003AB 6500               
   837 000003AD 476C6F62616C207661-     doLdata_2 db "Global variable already defined",0
   838 000003B6 726961626C6520616C-
   839 000003BF 726561647920646566-
   840 000003C8 696E656400         
   841 000003CD 5C6E3B703332202061-     doLdata_3 db "\n;p32  adr: ",0
   842 000003D6 64723A2000         
   843 000003DB 2C2000                  doLdata_4 db ", ",0
   844 000003DE 205B00                  doLdata_5 db " [",0
   845                                  
   846                                  doglob:  ; *** PROC ***
   847                                  ;Function : doglob, Number of local variables: 3
   848                                  ;   # type sign width line used address name   list of local variables
   849                                  ;  200 var sign word   133 NULL bp-2    i
   850                                  ;  201 var sign word   133 NULL bp-4    j
   851                                  ;  202 var sign word   133 NULL bp-6    isstrarr;
   852 000003E1 C8060000                 ENTER  6,0
   853 000003E5 66B800000000             mov eax, 0
   854 000003EB 8946FA                   mov word [bp-6], ax
   855                                  
   856                                  ;-134   if (GTop >= LSTART) error1("Global table full");
   857                                  
   858 000003EE A1[5E00]                 mov ax, [GTop]
   859 000003F1 3DC800                   cmp ax, 200 ;unsigned : 1
   860 000003F4 0F8C0900                 jl  @@doglob17
   861 000003F8 68[1408]                 push doglob_0
   862 000003FB E8B14D                   call error1
   863 000003FE 83C402                   add  sp, 2
   864                                  
   865                                  ;-135   if (iswidth == 0) error1("no VOID as var type");
   866                                  
   867                                  @@doglob17:
   868 00000401 A0[5D00]                 mov al, [iswidth]
   869 00000404 3C00                     cmp al, 0
   870 00000406 0F850900                 jne @@doglob18
   871 0000040A 68[2608]                 push doglob_1
   872 0000040D E89F4D                   call error1
   873 00000410 83C402                   add  sp, 2
   874                                  
   875                                  ;-136   checknamelen();
   876                                  
   877                                  @@doglob18:
   878 00000413 E825FD                   call checknamelen
   879                                  
   880                                  ;-137   if (checkName() != 0) error1("Global variable already defined");
   881                                  
   882 00000416 E8A806                   call checkName
   883 00000419 3C00                     cmp al, 0
   884 0000041B 0F840900                 je  @@doglob19
   885 0000041F 68[3A08]                 push doglob_2
   886 00000422 E88A4D                   call error1
   887 00000425 83C402                   add  sp, 2
   888                                  
   889                                  ;-138   GAdr[GTop]=LONG0;
   890                                  
   891                                  @@doglob19:
   892 00000428 66A1[2000]               mov eax, [LONG0]
   893 0000042C 8B1E[5E00]               mov bx, [GTop]
   894 00000430 C1E302                   shl bx, 2
   895 00000433 6689879B8F               mov [GAdr+bx], eax
   896                                  
   897                                  ;-139   if (istoken('[')) { istype='&';
   898                                  
   899 00000438 6A5B                     push 91
   900 0000043A E82B49                   call istoken
   901 0000043D 83C402                   add  sp, 2
   902 00000440 08C0                     or  al, al
   903 00000442 0F84B402                 je @@doglob20
   904 00000446 66B826000000             mov eax, 38
   905 0000044C A2[5500]                 mov byte [istype], al
   906                                  
   907                                  ;-140       if (istoken(T_CONST)) {
   908                                  
   909 0000044F 680101                   push 257
   910 00000452 E81349                   call istoken
   911 00000455 83C402                   add  sp, 2
   912 00000458 08C0                     or  al, al
   913 0000045A 0F847C01                 je @@doglob21
   914                                  
   915                                  ;-141       if (BSS) { if (NASM) {prs("\nsection .bss\nabsolute ");
   916                                  
   917 0000045E A0[1400]                 mov al, [BSS]
   918 00000461 08C0                     or  al, al
   919 00000463 0F844400                 je @@doglob22
   920 00000467 A0[1500]                 mov al, [NASM]
   921 0000046A 08C0                     or  al, al
   922 0000046C 0F842700                 je @@doglob23
   923 00000470 68[5A08]                 push doglob_3
   924 00000473 E8384A                   call prs
   925 00000476 83C402                   add  sp, 2
   926                                  
   927                                  ;-142         GAdr[GTop]=orgData;
   928                                  
   929 00000479 66A1[2800]               mov eax, [orgData]
   930 0000047D 8B1E[5E00]               mov bx, [GTop]
   931 00000481 C1E302                   shl bx, 2
   932 00000484 6689879B8F               mov [GAdr+bx], eax
   933                                  
   934                                  ;-143         prunsign1(orgData); }
   935                                  
   936 00000489 66FF36[2800]             push dword [orgData]
   937 0000048E E8864B                   call prunsign1
   938 00000491 83C404                   add  sp, 4
   939                                  
   940                                  ;-144         else {prs("\nAData = $\norg "); prunsign1(orgData);} }
   941                                  
   942 00000494 E91400                   jmp @@doglob24
   943                                  @@doglob23:
   944 00000497 68[7408]                 push doglob_4
   945 0000049A E8114A                   call prs
   946 0000049D 83C402                   add  sp, 2
   947 000004A0 66FF36[2800]             push dword [orgData]
   948 000004A5 E86F4B                   call prunsign1
   949 000004A8 83C404                   add  sp, 4
   950                                  @@doglob24:
   951                                  
   952                                  ;-145       prs("\n"); prs(symbol); 
   953                                  
   954                                  @@doglob22:
   955 000004AB 68[8608]                 push doglob_5
   956 000004AE E8FD49                   call prs
   957 000004B1 83C402                   add  sp, 2
   958 000004B4 8D066E81                 lea  ax, [symbol]
   959 000004B8 50                       push ax
   960 000004B9 E8F249                   call prs
   961 000004BC 83C402                   add  sp, 2
   962                                  
   963                                  ;-146       if (iswidth==1) {if (NASM) prs(" resb "); else prs(" db ");}
   964                                  
   965 000004BF A0[5D00]                 mov al, [iswidth]
   966 000004C2 3C01                     cmp al, 1
   967 000004C4 0F851E00                 jne @@doglob25
   968 000004C8 A0[1500]                 mov al, [NASM]
   969 000004CB 08C0                     or  al, al
   970 000004CD 0F840C00                 je @@doglob26
   971 000004D1 68[8908]                 push doglob_6
   972 000004D4 E8D749                   call prs
   973 000004D7 83C402                   add  sp, 2
   974 000004DA E90900                   jmp @@doglob27
   975                                  @@doglob26:
   976 000004DD 68[9008]                 push doglob_7
   977 000004E0 E8CB49                   call prs
   978 000004E3 83C402                   add  sp, 2
   979                                  @@doglob27:
   980                                  
   981                                  ;-147       if (iswidth==2) {if (NASM) prs(" resw "); else prs(" dw ");}
   982                                  
   983                                  @@doglob25:
   984 000004E6 A0[5D00]                 mov al, [iswidth]
   985 000004E9 3C02                     cmp al, 2
   986 000004EB 0F851E00                 jne @@doglob28
   987 000004EF A0[1500]                 mov al, [NASM]
   988 000004F2 08C0                     or  al, al
   989 000004F4 0F840C00                 je @@doglob29
   990 000004F8 68[9508]                 push doglob_8
   991 000004FB E8B049                   call prs
   992 000004FE 83C402                   add  sp, 2
   993 00000501 E90900                   jmp @@doglob30
   994                                  @@doglob29:
   995 00000504 68[9C08]                 push doglob_9
   996 00000507 E8A449                   call prs
   997 0000050A 83C402                   add  sp, 2
   998                                  @@doglob30:
   999                                  
  1000                                  ;-148       if (iswidth==4) {if (NASM) prs(" resd "); else prs(" dd ");}
  1001                                  
  1002                                  @@doglob28:
  1003 0000050D A0[5D00]                 mov al, [iswidth]
  1004 00000510 3C04                     cmp al, 4
  1005 00000512 0F851E00                 jne @@doglob31
  1006 00000516 A0[1500]                 mov al, [NASM]
  1007 00000519 08C0                     or  al, al
  1008 0000051B 0F840C00                 je @@doglob32
  1009 0000051F 68[A108]                 push doglob_10
  1010 00000522 E88949                   call prs
  1011 00000525 83C402                   add  sp, 2
  1012 00000528 E90900                   jmp @@doglob33
  1013                                  @@doglob32:
  1014 0000052B 68[A808]                 push doglob_11
  1015 0000052E E87D49                   call prs
  1016 00000531 83C402                   add  sp, 2
  1017                                  @@doglob33:
  1018                                  
  1019                                  ;-149       prL(lexvalL); if (NASM==0)prs(" dup (?)");
  1020                                  
  1021                                  @@doglob31:
  1022 00000534 66FF36[4D00]             push dword [lexvalL]
  1023 00000539 E8255A                   call prL
  1024 0000053C 83C404                   add  sp, 4
  1025 0000053F A0[1500]                 mov al, [NASM]
  1026 00000542 3C00                     cmp al, 0
  1027 00000544 0F850900                 jne @@doglob34
  1028 00000548 68[AD08]                 push doglob_12
  1029 0000054B E86049                   call prs
  1030 0000054E 83C402                   add  sp, 2
  1031                                  
  1032                                  ;-150       if (BSS) {if(NASM) prs("\nsection .text");
  1033                                  
  1034                                  @@doglob34:
  1035 00000551 A0[1400]                 mov al, [BSS]
  1036 00000554 08C0                     or  al, al
  1037 00000556 0F841E00                 je @@doglob35
  1038 0000055A A0[1500]                 mov al, [NASM]
  1039 0000055D 08C0                     or  al, al
  1040 0000055F 0F840C00                 je @@doglob36
  1041 00000563 68[B608]                 push doglob_13
  1042 00000566 E84549                   call prs
  1043 00000569 83C402                   add  sp, 2
  1044                                  
  1045                                  ;-151         else prs("\norg AData"); }
  1046                                  
  1047 0000056C E90900                   jmp @@doglob37
  1048                                  @@doglob36:
  1049 0000056F 68[C608]                 push doglob_14
  1050 00000572 E83949                   call prs
  1051 00000575 83C402                   add  sp, 2
  1052                                  @@doglob37:
  1053                                  
  1054                                  ;-152       orgData=orgData+lexvalL;
  1055                                  
  1056                                  @@doglob35:
  1057 00000578 66A1[2800]               mov eax, [orgData]
  1058 0000057C 660306[4D00]             add eax, [lexvalL]
  1059 00000581 66A3[2800]               mov dword [orgData], eax
  1060                                  
  1061                                  ;-153       if (iswidth==2) orgData=orgData+lexvalL;
  1062                                  
  1063 00000585 A0[5D00]                 mov al, [iswidth]
  1064 00000588 3C02                     cmp al, 2
  1065 0000058A 0F850D00                 jne @@doglob38
  1066 0000058E 66A1[2800]               mov eax, [orgData]
  1067 00000592 660306[4D00]             add eax, [lexvalL]
  1068 00000597 66A3[2800]               mov dword [orgData], eax
  1069                                  
  1070                                  ;-154       if (iswidth==4) {i= lexvalL * 3; orgData=orgData + i;}
  1071                                  
  1072                                  @@doglob38:
  1073 0000059B A0[5D00]                 mov al, [iswidth]
  1074 0000059E 3C04                     cmp al, 4
  1075 000005A0 0F851B00                 jne @@doglob39
  1076 000005A4 66A1[4D00]               mov eax, [lexvalL]
  1077 000005A8 66BB03000000             mov ebx, 3
  1078 000005AE 66F7E3                   mul ebx
  1079 000005B1 8946FE                   mov word [bp-2], ax
  1080 000005B4 66A1[2800]               mov eax, [orgData]
  1081 000005B8 0346FE                   add ax, [bp-2]
  1082 000005BB 66A3[2800]               mov dword [orgData], eax
  1083                                  
  1084                                  ;-155       GData[GTop]=lexvalL; expect(']');
  1085                                  
  1086                                  @@doglob39:
  1087 000005BF 66A1[4D00]               mov eax, [lexvalL]
  1088 000005C3 8B1E[5E00]               mov bx, [GTop]
  1089 000005C7 C1E302                   shl bx, 2
  1090 000005CA 668987EB8A               mov [GData+bx], eax
  1091 000005CF 6A5D                     push 93
  1092 000005D1 E8BC47                   call expect
  1093 000005D4 83C402                   add  sp, 2
  1094                                  
  1095                                  ;-156     }else { expect(']');
  1096                                  
  1097 000005D7 E91D01                   jmp @@doglob40
  1098                                  @@doglob21:
  1099 000005DA 6A5D                     push 93
  1100 000005DC E8B147                   call expect
  1101 000005DF 83C402                   add  sp, 2
  1102                                  
  1103                                  ;-157       if (iswidth != 1) error1("Only ByteArray allowed");
  1104                                  
  1105 000005E2 A0[5D00]                 mov al, [iswidth]
  1106 000005E5 3C01                     cmp al, 1
  1107 000005E7 0F840900                 je  @@doglob41
  1108 000005EB 68[D208]                 push doglob_15
  1109 000005EE E8BE4B                   call error1
  1110 000005F1 83C402                   add  sp, 2
  1111                                  
  1112                                  ;-158       prs("\n"); prs(symbol); prs(" db "); 
  1113                                  
  1114                                  @@doglob41:
  1115 000005F4 68[E908]                 push doglob_16
  1116 000005F7 E8B448                   call prs
  1117 000005FA 83C402                   add  sp, 2
  1118 000005FD 8D066E81                 lea  ax, [symbol]
  1119 00000601 50                       push ax
  1120 00000602 E8A948                   call prs
  1121 00000605 83C402                   add  sp, 2
  1122 00000608 68[EC08]                 push doglob_17
  1123 0000060B E8A048                   call prs
  1124 0000060E 83C402                   add  sp, 2
  1125                                  
  1126                                  ;-159       isstrarr=1; strcpy(doglobName, symbol);
  1127                                  
  1128 00000611 66B801000000             mov eax, 1
  1129 00000617 8946FA                   mov word [bp-6], ax
  1130 0000061A 8D066E81                 lea  ax, [symbol]
  1131 0000061E 50                       push ax
  1132 0000061F 8D06C7B6                 lea  ax, [doglobName]
  1133 00000623 50                       push ax
  1134 00000624 E8815B                   call strcpy
  1135 00000627 83C404                   add  sp, 4
  1136                                  
  1137                                  ;-160       expect('='); 
  1138                                  
  1139 0000062A 6A3D                     push 61
  1140 0000062C E86147                   call expect
  1141 0000062F 83C402                   add  sp, 2
  1142                                  
  1143                                  ;-161       if (istoken(T_STRING)) { 
  1144                                  
  1145 00000632 680201                   push 258
  1146 00000635 E83047                   call istoken
  1147 00000638 83C402                   add  sp, 2
  1148 0000063B 08C0                     or  al, al
  1149 0000063D 0F844400                 je @@doglob42
  1150                                  
  1151                                  ;-162         prc(34); prscomment(symbol); prc(34); prs(",0"); 
  1152                                  
  1153 00000641 6A22                     push 34
  1154 00000643 E8F947                   call prc
  1155 00000646 83C402                   add  sp, 2
  1156 00000649 8D066E81                 lea  ax, [symbol]
  1157 0000064D 50                       push ax
  1158 0000064E E82148                   call prscomment
  1159 00000651 83C402                   add  sp, 2
  1160 00000654 6A22                     push 34
  1161 00000656 E8E647                   call prc
  1162 00000659 83C402                   add  sp, 2
  1163 0000065C 68[F108]                 push doglob_18
  1164 0000065F E84C48                   call prs
  1165 00000662 83C402                   add  sp, 2
  1166                                  
  1167                                  ;-163         i=strlen(symbol); GData[GTop]=i; }
  1168                                  
  1169 00000665 8D066E81                 lea  ax, [symbol]
  1170 00000669 50                       push ax
  1171 0000066A E8105B                   call strlen
  1172 0000066D 83C402                   add  sp, 2
  1173 00000670 8946FE                   mov word [bp-2], ax
  1174 00000673 8B46FE                   mov ax, [bp-2]
  1175 00000676 8B1E[5E00]               mov bx, [GTop]
  1176 0000067A C1E302                   shl bx, 2
  1177 0000067D 668987EB8A               mov [GData+bx], eax
  1178                                  
  1179                                  ;-164       else if (istoken('{' )) { i=0;
  1180                                  
  1181 00000682 E97200                   jmp @@doglob43
  1182                                  @@doglob42:
  1183 00000685 6A7B                     push 123
  1184 00000687 E8DE46                   call istoken
  1185 0000068A 83C402                   add  sp, 2
  1186 0000068D 08C0                     or  al, al
  1187 0000068F 0F845B00                 je @@doglob44
  1188 00000693 66B800000000             mov eax, 0
  1189 00000699 8946FE                   mov word [bp-2], ax
  1190                                  
  1191                                  ;-165         do { if(i) prc(','); 
  1192                                  
  1193                                  @@doglob45:
  1194 0000069C 8B46FE                   mov ax, [bp-2]
  1195 0000069F 08C0                     or  al, al
  1196 000006A1 0F840800                 je @@doglob46
  1197 000006A5 6A2C                     push 44
  1198 000006A7 E89547                   call prc
  1199 000006AA 83C402                   add  sp, 2
  1200                                  
  1201                                  ;-166           expect(T_CONST); prL(lexvalL); i++; }
  1202                                  
  1203                                  @@doglob46:
  1204 000006AD 680101                   push 257
  1205 000006B0 E8DD46                   call expect
  1206 000006B3 83C402                   add  sp, 2
  1207 000006B6 66FF36[4D00]             push dword [lexvalL]
  1208 000006BB E8A358                   call prL
  1209 000006BE 83C404                   add  sp, 4
  1210 000006C1 FF46FE                   inc  word [bp-2]
  1211                                  
  1212                                  ;-167         while (istoken(',')); expect('}'); GData[GTop]=i; }
  1213                                  
  1214 000006C4 6A2C                     push 44
  1215 000006C6 E89F46                   call istoken
  1216 000006C9 83C402                   add  sp, 2
  1217 000006CC 08C0                     or  al, al
  1218 000006CE 0F840200                 je @@doglob47
  1219 000006D2 EBC8                     jmp @@doglob45
  1220                                  @@doglob47:
  1221 000006D4 6A7D                     push 125
  1222 000006D6 E8B746                   call expect
  1223 000006D9 83C402                   add  sp, 2
  1224 000006DC 8B46FE                   mov ax, [bp-2]
  1225 000006DF 8B1E[5E00]               mov bx, [GTop]
  1226 000006E3 C1E302                   shl bx, 2
  1227 000006E6 668987EB8A               mov [GData+bx], eax
  1228                                  
  1229                                  ;-168       else error1("String or number array expected");
  1230                                  
  1231 000006EB E90900                   jmp @@doglob48
  1232                                  @@doglob44:
  1233 000006EE 68[F408]                 push doglob_19
  1234 000006F1 E8BB4A                   call error1
  1235 000006F4 83C402                   add  sp, 2
  1236                                  
  1237                                  ;-169       }; 
  1238                                  
  1239                                  @@doglob48:
  1240                                  @@doglob43:
  1241                                  @@doglob40:
  1242                                  
  1243                                  ;-170     } else { //expect('=');
  1244                                  
  1245 000006F7 E9A200                   jmp @@doglob49
  1246                                  @@doglob20:
  1247                                  
  1248                                  ;-171     prs("\n"); prs(symbol); if (istype=='*') prs(" dw ");
  1249                                  
  1250 000006FA 68[1409]                 push doglob_20
  1251 000006FD E8AE47                   call prs
  1252 00000700 83C402                   add  sp, 2
  1253 00000703 8D066E81                 lea  ax, [symbol]
  1254 00000707 50                       push ax
  1255 00000708 E8A347                   call prs
  1256 0000070B 83C402                   add  sp, 2
  1257 0000070E A0[5500]                 mov al, [istype]
  1258 00000711 3C2A                     cmp al, 42
  1259 00000713 0F850C00                 jne @@doglob50
  1260 00000717 68[1709]                 push doglob_21
  1261 0000071A E89147                   call prs
  1262 0000071D 83C402                   add  sp, 2
  1263                                  
  1264                                  ;-172     else {if (iswidth==1) prs(" db ");
  1265                                  
  1266 00000720 E93600                   jmp @@doglob51
  1267                                  @@doglob50:
  1268 00000723 A0[5D00]                 mov al, [iswidth]
  1269 00000726 3C01                     cmp al, 1
  1270 00000728 0F850900                 jne @@doglob52
  1271 0000072C 68[1C09]                 push doglob_22
  1272 0000072F E87C47                   call prs
  1273 00000732 83C402                   add  sp, 2
  1274                                  
  1275                                  ;-173           if (iswidth==2) prs(" dw ");
  1276                                  
  1277                                  @@doglob52:
  1278 00000735 A0[5D00]                 mov al, [iswidth]
  1279 00000738 3C02                     cmp al, 2
  1280 0000073A 0F850900                 jne @@doglob53
  1281 0000073E 68[2109]                 push doglob_23
  1282 00000741 E86A47                   call prs
  1283 00000744 83C402                   add  sp, 2
  1284                                  
  1285                                  ;-174           if (iswidth==4) prs(" dd ");  }
  1286                                  
  1287                                  @@doglob53:
  1288 00000747 A0[5D00]                 mov al, [iswidth]
  1289 0000074A 3C04                     cmp al, 4
  1290 0000074C 0F850900                 jne @@doglob54
  1291 00000750 68[2609]                 push doglob_24
  1292 00000753 E85847                   call prs
  1293 00000756 83C402                   add  sp, 2
  1294                                  @@doglob54:
  1295                                  
  1296                                  ;-175     if(istoken('-')) prc('-');
  1297                                  
  1298                                  @@doglob51:
  1299 00000759 6A2D                     push 45
  1300 0000075B E80A46                   call istoken
  1301 0000075E 83C402                   add  sp, 2
  1302 00000761 08C0                     or  al, al
  1303 00000763 0F840800                 je @@doglob55
  1304 00000767 6A2D                     push 45
  1305 00000769 E8D346                   call prc
  1306 0000076C 83C402                   add  sp, 2
  1307                                  
  1308                                  ;-176     if (istoken('=')) {expect(T_CONST); prL(lexvalL); }
  1309                                  
  1310                                  @@doglob55:
  1311 0000076F 6A3D                     push 61
  1312 00000771 E8F445                   call istoken
  1313 00000774 83C402                   add  sp, 2
  1314 00000777 08C0                     or  al, al
  1315 00000779 0F841700                 je @@doglob56
  1316 0000077D 680101                   push 257
  1317 00000780 E80D46                   call expect
  1318 00000783 83C402                   add  sp, 2
  1319 00000786 66FF36[4D00]             push dword [lexvalL]
  1320 0000078B E8D357                   call prL
  1321 0000078E 83C404                   add  sp, 4
  1322                                  
  1323                                  ;-177     else prunsign1(0); }
  1324                                  
  1325 00000791 E90800                   jmp @@doglob57
  1326                                  @@doglob56:
  1327 00000794 6A00                     push 0
  1328 00000796 E87E48                   call prunsign1
  1329 00000799 83C402                   add  sp, 2
  1330                                  @@doglob57:
  1331                                  
  1332                                  ;-178   GSign[GTop]=issign; GWidth[GTop]=iswidth; GType[GTop]=istype;
  1333                                  
  1334                                  @@doglob49:
  1335 0000079C A0[5800]                 mov al, [issign]
  1336 0000079F 8B1E[5E00]               mov bx, [GTop]
  1337 000007A3 8887E383                 mov [GSign+bx], al
  1338 000007A7 A0[5D00]                 mov al, [iswidth]
  1339 000007AA 8B1E[5E00]               mov bx, [GTop]
  1340 000007AE 88870F85                 mov [GWidth+bx], al
  1341 000007B2 A0[5500]                 mov al, [istype]
  1342 000007B5 8B1E[5E00]               mov bx, [GTop]
  1343 000007B9 8887B782                 mov [GType+bx], al
  1344                                  
  1345                                  ;-179   GLino [GTop]=lineno-1; GUsed [GTop]=0;
  1346                                  
  1347 000007BD A1[BA00]                 mov ax, [lineno]
  1348 000007C0 83E801                   sub ax, 1
  1349 000007C3 8B1E[5E00]               mov bx, [GTop]
  1350 000007C7 D1E3                     shl bx, 1
  1351 000007C9 89873B86                 mov [GLino+bx], ax
  1352 000007CD 66B800000000             mov eax, 0
  1353 000007D3 8B1E[5E00]               mov bx, [GTop]
  1354 000007D7 D1E3                     shl bx, 1
  1355 000007D9 89879388                 mov [GUsed+bx], ax
  1356                                  
  1357                                  ;-180   if (isstrarr) strcpy(symbol, doglobName);
  1358                                  
  1359 000007DD 8B46FA                   mov ax, [bp-6]
  1360 000007E0 08C0                     or  al, al
  1361 000007E2 0F841000                 je @@doglob58
  1362 000007E6 8D06C7B6                 lea  ax, [doglobName]
  1363 000007EA 50                       push ax
  1364 000007EB 8D066E81                 lea  ax, [symbol]
  1365 000007EF 50                       push ax
  1366 000007F0 E8B559                   call strcpy
  1367 000007F3 83C404                   add  sp, 4
  1368                                  
  1369                                  ;-181   GName[GTop] = CNameTop;
  1370                                  
  1371                                  @@doglob58:
  1372 000007F6 A1[B400]                 mov ax, [CNameTop]
  1373 000007F9 8B1E[5E00]               mov bx, [GTop]
  1374 000007FD D1E3                     shl bx, 1
  1375 000007FF 89874B94                 mov [GName+bx], ax
  1376                                  
  1377                                  ;-182   storeName();
  1378                                  
  1379 00000803 E8EAF9                   call storeName
  1380                                  
  1381                                  ;-183   GTop++; expect(';');
  1382                                  
  1383 00000806 FF06[5E00]               inc  word [GTop]
  1384 0000080A 6A3B                     push 59
  1385 0000080C E88145                   call expect
  1386 0000080F 83C402                   add  sp, 2
  1387                                  
  1388                                  ;-184 }
  1389                                  
  1390                                  
  1391                                  ;-185 int gettypes(int i) {int j; char c;
  1392 00000812 C9                       LEAVE
  1393 00000813 C3                       ret
  1394                                  ; ENDP
  1395 00000814 476C6F62616C207461-     doglob_0 db "Global table full",0
  1396 0000081D 626C652066756C6C00 
  1397 00000826 6E6F20564F49442061-     doglob_1 db "no VOID as var type",0
  1398 0000082F 732076617220747970-
  1399 00000838 6500               
  1400 0000083A 476C6F62616C207661-     doglob_2 db "Global variable already defined",0
  1401 00000843 726961626C6520616C-
  1402 0000084C 726561647920646566-
  1403 00000855 696E656400         
  1404 0000085A 5C6E73656374696F6E-     doglob_3 db "\nsection .bss\nabsolute ",0
  1405 00000863 202E6273735C6E6162-
  1406 0000086C 736F6C7574652000   
  1407 00000874 5C6E4144617461203D-     doglob_4 db "\nAData = $\norg ",0
  1408 0000087D 20245C6E6F72672000 
  1409 00000886 5C6E00                  doglob_5 db "\n",0
  1410 00000889 20726573622000          doglob_6 db " resb ",0
  1411 00000890 2064622000              doglob_7 db " db ",0
  1412 00000895 20726573772000          doglob_8 db " resw ",0
  1413 0000089C 2064772000              doglob_9 db " dw ",0
  1414 000008A1 20726573642000          doglob_10 db " resd ",0
  1415 000008A8 2064642000              doglob_11 db " dd ",0
  1416 000008AD 2064757020283F2900      doglob_12 db " dup (?)",0
  1417 000008B6 5C6E73656374696F6E-     doglob_13 db "\nsection .text",0
  1418 000008BF 202E7465787400     
  1419 000008C6 5C6E6F726720414461-     doglob_14 db "\norg AData",0
  1420 000008CF 746100             
  1421 000008D2 4F6E6C792042797465-     doglob_15 db "Only ByteArray allowed",0
  1422 000008DB 417272617920616C6C-
  1423 000008E4 6F77656400         
  1424 000008E9 5C6E00                  doglob_16 db "\n",0
  1425 000008EC 2064622000              doglob_17 db " db ",0
  1426 000008F1 2C3000                  doglob_18 db ",0",0
  1427 000008F4 537472696E67206F72-     doglob_19 db "String or number array expected",0
  1428 000008FD 206E756D6265722061-
  1429 00000906 727261792065787065-
  1430 0000090F 6374656400         
  1431 00000914 5C6E00                  doglob_20 db "\n",0
  1432 00000917 2064772000              doglob_21 db " dw ",0
  1433 0000091C 2064622000              doglob_22 db " db ",0
  1434 00000921 2064772000              doglob_23 db " dw ",0
  1435 00000926 2064642000              doglob_24 db " dd ",0
  1436                                  
  1437                                  gettypes:  ; *** PROC ***
  1438                                  
  1439                                  ;-186   c=GSign [i]; if (c=='S') signi =1;    else signi =0;
  1440                                  
  1441                                  ;Function : gettypes, Number of local variables: 3
  1442                                  ;   # type sign width line used address name   list of local variables
  1443                                  ;  200 var sign word   185 NULL bp+4    i
  1444                                  ;  201 var sign word   185 NULL bp-2    j
  1445                                  ;  202 var sign byte   185 NULL bp-4    c;
  1446 0000092B C8040000                 ENTER  4,0
  1447 0000092F 8B5E04                   mov bx, [bp+4]
  1448 00000932 8A87E383                 mov al, [GSign + bx]
  1449 00000936 8846FC                   mov byte [bp-4], al
  1450 00000939 8A46FC                   mov al, [bp-4]
  1451 0000093C 3C53                     cmp al, 83
  1452 0000093E 0F850C00                 jne @@gettypes59
  1453 00000942 66B801000000             mov eax, 1
  1454 00000948 A3[5600]                 mov word [signi], ax
  1455 0000094B E90900                   jmp @@gettypes60
  1456                                  @@gettypes59:
  1457 0000094E 66B800000000             mov eax, 0
  1458 00000954 A3[5600]                 mov word [signi], ax
  1459                                  
  1460                                  ;-187   c=GWidth[i]; widthi=0;wi=0;
  1461                                  
  1462                                  @@gettypes60:
  1463 00000957 8B5E04                   mov bx, [bp+4]
  1464 0000095A 8A870F85                 mov al, [GWidth + bx]
  1465 0000095E 8846FC                   mov byte [bp-4], al
  1466 00000961 66B800000000             mov eax, 0
  1467 00000967 A3[5900]                 mov word [widthi], ax
  1468 0000096A 66B800000000             mov eax, 0
  1469 00000970 A3[5B00]                 mov word [wi], ax
  1470                                  
  1471                                  ;-188   if (c==1) {widthi=1;wi=1;}
  1472                                  
  1473 00000973 8A46FC                   mov al, [bp-4]
  1474 00000976 3C01                     cmp al, 1
  1475 00000978 0F851200                 jne @@gettypes61
  1476 0000097C 66B801000000             mov eax, 1
  1477 00000982 A3[5900]                 mov word [widthi], ax
  1478 00000985 66B801000000             mov eax, 1
  1479 0000098B A3[5B00]                 mov word [wi], ax
  1480                                  
  1481                                  ;-189   if (c==2) {widthi=2;wi=2;}
  1482                                  
  1483                                  @@gettypes61:
  1484 0000098E 8A46FC                   mov al, [bp-4]
  1485 00000991 3C02                     cmp al, 2
  1486 00000993 0F851200                 jne @@gettypes62
  1487 00000997 66B802000000             mov eax, 2
  1488 0000099D A3[5900]                 mov word [widthi], ax
  1489 000009A0 66B802000000             mov eax, 2
  1490 000009A6 A3[5B00]                 mov word [wi], ax
  1491                                  
  1492                                  ;-190   if (c==4) {widthi=4;wi=4;}
  1493                                  
  1494                                  @@gettypes62:
  1495 000009A9 8A46FC                   mov al, [bp-4]
  1496 000009AC 3C04                     cmp al, 4
  1497 000009AE 0F851200                 jne @@gettypes63
  1498 000009B2 66B804000000             mov eax, 4
  1499 000009B8 A3[5900]                 mov word [widthi], ax
  1500 000009BB 66B804000000             mov eax, 4
  1501 000009C1 A3[5B00]                 mov word [wi], ax
  1502                                  
  1503                                  ;-191   c=GType [i]; typei=0; if (c=='*') {typei=1;wi=2;}
  1504                                  
  1505                                  @@gettypes63:
  1506 000009C4 8B5E04                   mov bx, [bp+4]
  1507 000009C7 8A87B782                 mov al, [GType + bx]
  1508 000009CB 8846FC                   mov byte [bp-4], al
  1509 000009CE 66B800000000             mov eax, 0
  1510 000009D4 A3[5300]                 mov word [typei], ax
  1511 000009D7 8A46FC                   mov al, [bp-4]
  1512 000009DA 3C2A                     cmp al, 42
  1513 000009DC 0F851200                 jne @@gettypes64
  1514 000009E0 66B801000000             mov eax, 1
  1515 000009E6 A3[5300]                 mov word [typei], ax
  1516 000009E9 66B802000000             mov eax, 2
  1517 000009EF A3[5B00]                 mov word [wi], ax
  1518                                  
  1519                                  ;-192   if (c=='&')  typei=2;  
  1520                                  
  1521                                  @@gettypes64:
  1522 000009F2 8A46FC                   mov al, [bp-4]
  1523 000009F5 3C26                     cmp al, 38
  1524 000009F7 0F850900                 jne @@gettypes65
  1525 000009FB 66B802000000             mov eax, 2
  1526 00000A01 A3[5300]                 mov word [typei], ax
  1527                                  
  1528                                  ;-193   return i; }  
  1529                                  
  1530                                  @@gettypes65:
  1531 00000A04 8B4604                   mov ax, [bp+4]
  1532 00000A07 E90000                   jmp @@retn
  1533                                  
  1534                                  ;-194 
  1535                                  
  1536                                  
  1537                                  ;-195 void printName(unsigned int i) {int j;
  1538                                  
  1539 00000A0A C9                      @@retn: LEAVE
  1540 00000A0B C3                       ret
  1541                                  ; ENDP
  1542                                  
  1543                                  printName:  ; *** PROC ***
  1544                                  
  1545                                  ;-196   if (i < LSTART) { loadName(NA, i); prs(NA); }
  1546                                  
  1547                                  ;Function : printName, Number of local variables: 2
  1548                                  ;   # type sign width line used address name   list of local variables
  1549                                  ;  200 var unsg word   195 NULL bp+4    i
  1550                                  ;  201 var sign word   195 NULL bp-2    j;
  1551 00000A0C C8020000                 ENTER  2,0
  1552 00000A10 8B4604                   mov ax, [bp+4]
  1553 00000A13 3DC800                   cmp ax, 200
  1554 00000A16 0F8D1C00                 jge @@printName66
  1555 00000A1A FF7604                   push word [bp+4]
  1556 00000A1D 8D06[7200]               lea  ax, [NA]
  1557 00000A21 50                       push ax
  1558 00000A22 E83854                   call loadName
  1559 00000A25 83C404                   add  sp, 4
  1560 00000A28 8D06[7200]               lea  ax, [NA]
  1561 00000A2C 50                       push ax
  1562 00000A2D E87E44                   call prs
  1563 00000A30 83C402                   add  sp, 2
  1564                                  
  1565                                  ;-197   else { prs("[bp"); j = GData[i]; if (j>0) prc('+'); pint1(j); prc(']'); }
  1566                                  
  1567 00000A33 E93A00                   jmp @@printName67
  1568                                  @@printName66:
  1569 00000A36 68[720A]                 push printName_0
  1570 00000A39 E87244                   call prs
  1571 00000A3C 83C402                   add  sp, 2
  1572 00000A3F 8B5E04                   mov bx, [bp+4]
  1573 00000A42 C1E302                   shl bx, 2
  1574 00000A45 668B87EB8A               mov eax, [GData + bx]
  1575 00000A4A 8946FE                   mov word [bp-2], ax
  1576 00000A4D 8B46FE                   mov ax, [bp-2]
  1577 00000A50 83F800                   cmp ax, 0
  1578 00000A53 0F8E0800                 jle @@printName68
  1579 00000A57 6A2B                     push 43
  1580 00000A59 E8E343                   call prc
  1581 00000A5C 83C402                   add  sp, 2
  1582                                  @@printName68:
  1583 00000A5F FF76FE                   push word [bp-2]
  1584 00000A62 E84F45                   call pint1
  1585 00000A65 83C402                   add  sp, 2
  1586 00000A68 6A5D                     push 93
  1587 00000A6A E8D243                   call prc
  1588 00000A6D 83C402                   add  sp, 2
  1589                                  
  1590                                  ;-198 }
  1591                                  
  1592                                  @@printName67:
  1593                                  
  1594                                  ;-199 int searchname() { unsigned int i;
  1595 00000A70 C9                       LEAVE
  1596 00000A71 C3                       ret
  1597                                  ; ENDP
  1598 00000A72 5B627000                printName_0 db "[bp",0
  1599                                  
  1600                                  searchname:  ; *** PROC ***
  1601                                  
  1602                                  ;-200   i=checkName(); if (i == 0) error1("Variable unknown");
  1603                                  
  1604                                  ;Function : searchname, Number of local variables: 1
  1605                                  ;   # type sign width line used address name   list of local variables
  1606                                  ;  200 var unsg word   199 NULL bp-2    i;
  1607 00000A76 C8020000                 ENTER  2,0
  1608 00000A7A E84400                   call checkName
  1609 00000A7D 8946FE                   mov word [bp-2], ax
  1610 00000A80 8B46FE                   mov ax, [bp-2]
  1611 00000A83 83F800                   cmp ax, 0
  1612 00000A86 0F850900                 jne @@searchname69
  1613 00000A8A 68[B00A]                 push searchname_0
  1614 00000A8D E81F47                   call error1
  1615 00000A90 83C402                   add  sp, 2
  1616                                  
  1617                                  ;-201   GUsed[i]=GUsed[i] + 1; return i;
  1618                                  
  1619                                  @@searchname69:
  1620 00000A93 8B5EFE                   mov bx, [bp-2]
  1621 00000A96 D1E3                     shl bx, 1
  1622 00000A98 8B879388                 mov ax, [GUsed + bx]
  1623 00000A9C 83C001                   add ax, 1
  1624 00000A9F 8B5EFE                   mov bx, [bp-2]
  1625 00000AA2 D1E3                     shl bx, 1
  1626 00000AA4 89879388                 mov [GUsed+bx], ax
  1627 00000AA8 8B46FE                   mov ax, [bp-2]
  1628 00000AAB E90000                   jmp @@retn
  1629                                  
  1630                                  ;-202 }
  1631                                  
  1632                                  
  1633                                  ;-203 int checkName() { unsigned int i; unsigned int j;
  1634                                  
  1635 00000AAE C9                      @@retn: LEAVE
  1636 00000AAF C3                       ret
  1637                                  ; ENDP
  1638 00000AB0 5661726961626C6520-     searchname_0 db "Variable unknown",0
  1639 00000AB9 756E6B6E6F776E00   
  1640                                  
  1641                                  checkName:  ; *** PROC ***
  1642                                  
  1643                                  ;-204   i=LSTART;while(i<LTop){loadName(NA,i);if(eqstr(symbol,NA))return i;i++;}
  1644                                  
  1645                                  ;Function : checkName, Number of local variables: 2
  1646                                  ;   # type sign width line used address name   list of local variables
  1647                                  ;  200 var unsg word   203 NULL bp-2    i
  1648                                  ;  201 var unsg word   203 NULL bp-4    j;
  1649 00000AC1 C8040000                 ENTER  4,0
  1650 00000AC5 66B8C8000000             mov eax, 200
  1651 00000ACB 8946FE                   mov word [bp-2], ax
  1652                                  @@checkName70:
  1653 00000ACE 8B46FE                   mov ax, [bp-2]
  1654 00000AD1 3B06[6000]               cmp ax, [LTop]
  1655 00000AD5 0F8D2F00                 jge @@checkName71
  1656 00000AD9 FF76FE                   push word [bp-2]
  1657 00000ADC 8D06[7200]               lea  ax, [NA]
  1658 00000AE0 50                       push ax
  1659 00000AE1 E87953                   call loadName
  1660 00000AE4 83C404                   add  sp, 4
  1661 00000AE7 8D06[7200]               lea  ax, [NA]
  1662 00000AEB 50                       push ax
  1663 00000AEC 8D066E81                 lea  ax, [symbol]
  1664 00000AF0 50                       push ax
  1665 00000AF1 E80858                   call eqstr
  1666 00000AF4 83C404                   add  sp, 4
  1667 00000AF7 08C0                     or  al, al
  1668 00000AF9 0F840600                 je @@checkName72
  1669 00000AFD 8B46FE                   mov ax, [bp-2]
  1670 00000B00 E95100                   jmp @@retn
  1671                                  @@checkName72:
  1672 00000B03 FF46FE                   inc  word [bp-2]
  1673                                  
  1674                                  ;-205   i=1;     while(i<GTop){loadName(NA,i);if(eqstr(symbol,NA))return i;i++;}
  1675                                  
  1676 00000B06 EBC6                     jmp @@checkName70
  1677                                  @@checkName71:
  1678 00000B08 66B801000000             mov eax, 1
  1679 00000B0E 8946FE                   mov word [bp-2], ax
  1680                                  @@checkName73:
  1681 00000B11 8B46FE                   mov ax, [bp-2]
  1682 00000B14 3B06[5E00]               cmp ax, [GTop]
  1683 00000B18 0F8D2F00                 jge @@checkName74
  1684 00000B1C FF76FE                   push word [bp-2]
  1685 00000B1F 8D06[7200]               lea  ax, [NA]
  1686 00000B23 50                       push ax
  1687 00000B24 E83653                   call loadName
  1688 00000B27 83C404                   add  sp, 4
  1689 00000B2A 8D06[7200]               lea  ax, [NA]
  1690 00000B2E 50                       push ax
  1691 00000B2F 8D066E81                 lea  ax, [symbol]
  1692 00000B33 50                       push ax
  1693 00000B34 E8C557                   call eqstr
  1694 00000B37 83C404                   add  sp, 4
  1695 00000B3A 08C0                     or  al, al
  1696 00000B3C 0F840600                 je @@checkName75
  1697 00000B40 8B46FE                   mov ax, [bp-2]
  1698 00000B43 E90E00                   jmp @@retn
  1699                                  @@checkName75:
  1700 00000B46 FF46FE                   inc  word [bp-2]
  1701                                  
  1702                                  ;-206   return 0;
  1703                                  
  1704 00000B49 EBC6                     jmp @@checkName73
  1705                                  @@checkName74:
  1706 00000B4B 66B800000000             mov eax, 0
  1707 00000B51 E90000                   jmp @@retn
  1708                                  
  1709                                  ;-207 }    
  1710                                  
  1711                                  
  1712                                  ;-208 int typeName() { int m; //0=V,1=*,2=&
  1713                                  
  1714 00000B54 C9                      @@retn: LEAVE
  1715 00000B55 C3                       ret
  1716                                  ; ENDP
  1717                                  
  1718                                  typeName:  ; *** PROC ***
  1719                                  
  1720                                  ;-209   issign='S';
  1721                                  
  1722                                  ;Function : typeName, Number of local variables: 1
  1723                                  ;   # type sign width line used address name   list of local variables
  1724                                  ;  200 var sign word   208 NULL bp-2    m;
  1725 00000B56 C8020000                 ENTER  2,0
  1726 00000B5A 66B853000000             mov eax, 83
  1727 00000B60 A2[5800]                 mov byte [issign], al
  1728                                  
  1729                                  ;-210   if(istoken(T_SIGNED))   issign='S';  if(istoken(T_UNSIGNED)) issign='U';
  1730                                  
  1731 00000B63 681302                   push 531
  1732 00000B66 E8FF41                   call istoken
  1733 00000B69 83C402                   add  sp, 2
  1734 00000B6C 08C0                     or  al, al
  1735 00000B6E 0F840900                 je @@typeName76
  1736 00000B72 66B853000000             mov eax, 83
  1737 00000B78 A2[5800]                 mov byte [issign], al
  1738                                  @@typeName76:
  1739 00000B7B 681402                   push 532
  1740 00000B7E E8E741                   call istoken
  1741 00000B81 83C402                   add  sp, 2
  1742 00000B84 08C0                     or  al, al
  1743 00000B86 0F840900                 je @@typeName77
  1744 00000B8A 66B855000000             mov eax, 85
  1745 00000B90 A2[5800]                 mov byte [issign], al
  1746                                  
  1747                                  ;-211   iswidth=2;                           if(istoken(T_VOID))     iswidth=0;
  1748                                  
  1749                                  @@typeName77:
  1750 00000B93 66B802000000             mov eax, 2
  1751 00000B99 A2[5D00]                 mov byte [iswidth], al
  1752 00000B9C 681102                   push 529
  1753 00000B9F E8C641                   call istoken
  1754 00000BA2 83C402                   add  sp, 2
  1755 00000BA5 08C0                     or  al, al
  1756 00000BA7 0F840900                 je @@typeName78
  1757 00000BAB 66B800000000             mov eax, 0
  1758 00000BB1 A2[5D00]                 mov byte [iswidth], al
  1759                                  
  1760                                  ;-212   if(istoken(T_CHAR))     iswidth=1;   if(istoken(T_INT))      iswidth=2;
  1761                                  
  1762                                  @@typeName78:
  1763 00000BB4 681202                   push 530
  1764 00000BB7 E8AE41                   call istoken
  1765 00000BBA 83C402                   add  sp, 2
  1766 00000BBD 08C0                     or  al, al
  1767 00000BBF 0F840900                 je @@typeName79
  1768 00000BC3 66B801000000             mov eax, 1
  1769 00000BC9 A2[5D00]                 mov byte [iswidth], al
  1770                                  @@typeName79:
  1771 00000BCC 680502                   push 517
  1772 00000BCF E89641                   call istoken
  1773 00000BD2 83C402                   add  sp, 2
  1774 00000BD5 08C0                     or  al, al
  1775 00000BD7 0F840900                 je @@typeName80
  1776 00000BDB 66B802000000             mov eax, 2
  1777 00000BE1 A2[5D00]                 mov byte [iswidth], al
  1778                                  
  1779                                  ;-213   if(istoken(T_SHORT))    iswidth=2;   if(istoken(T_LONG))     iswidth=4;
  1780                                  
  1781                                  @@typeName80:
  1782 00000BE4 681602                   push 534
  1783 00000BE7 E87E41                   call istoken
  1784 00000BEA 83C402                   add  sp, 2
  1785 00000BED 08C0                     or  al, al
  1786 00000BEF 0F840900                 je @@typeName81
  1787 00000BF3 66B802000000             mov eax, 2
  1788 00000BF9 A2[5D00]                 mov byte [iswidth], al
  1789                                  @@typeName81:
  1790 00000BFC 681502                   push 533
  1791 00000BFF E86641                   call istoken
  1792 00000C02 83C402                   add  sp, 2
  1793 00000C05 08C0                     or  al, al
  1794 00000C07 0F840900                 je @@typeName82
  1795 00000C0B 66B804000000             mov eax, 4
  1796 00000C11 A2[5D00]                 mov byte [iswidth], al
  1797                                  
  1798                                  ;-214   if(istoken(T_UINT32)) { iswidth=4; issign='U'; }
  1799                                  
  1800                                  @@typeName82:
  1801 00000C14 682102                   push 545
  1802 00000C17 E84E41                   call istoken
  1803 00000C1A 83C402                   add  sp, 2
  1804 00000C1D 08C0                     or  al, al
  1805 00000C1F 0F841200                 je @@typeName83
  1806 00000C23 66B804000000             mov eax, 4
  1807 00000C29 A2[5D00]                 mov byte [iswidth], al
  1808 00000C2C 66B855000000             mov eax, 85
  1809 00000C32 A2[5800]                 mov byte [issign], al
  1810                                  
  1811                                  ;-215   istype='V'; m=0;
  1812                                  
  1813                                  @@typeName83:
  1814 00000C35 66B856000000             mov eax, 86
  1815 00000C3B A2[5500]                 mov byte [istype], al
  1816 00000C3E 66B800000000             mov eax, 0
  1817 00000C44 8946FE                   mov word [bp-2], ax
  1818                                  
  1819                                  ;-216   if(istoken('*'))  { istype='*'; m=1; } if(istoken('&'))  {istype='&'; m=2;}
  1820                                  
  1821 00000C47 6A2A                     push 42
  1822 00000C49 E81C41                   call istoken
  1823 00000C4C 83C402                   add  sp, 2
  1824 00000C4F 08C0                     or  al, al
  1825 00000C51 0F841200                 je @@typeName84
  1826 00000C55 66B82A000000             mov eax, 42
  1827 00000C5B A2[5500]                 mov byte [istype], al
  1828 00000C5E 66B801000000             mov eax, 1
  1829 00000C64 8946FE                   mov word [bp-2], ax
  1830                                  @@typeName84:
  1831 00000C67 6A26                     push 38
  1832 00000C69 E8FC40                   call istoken
  1833 00000C6C 83C402                   add  sp, 2
  1834 00000C6F 08C0                     or  al, al
  1835 00000C71 0F841200                 je @@typeName85
  1836 00000C75 66B826000000             mov eax, 38
  1837 00000C7B A2[5500]                 mov byte [istype], al
  1838 00000C7E 66B802000000             mov eax, 2
  1839 00000C84 8946FE                   mov word [bp-2], ax
  1840                                  
  1841                                  ;-217   name1(); return m; }
  1842                                  
  1843                                  @@typeName85:
  1844 00000C87 E80800                   call name1
  1845 00000C8A 8B46FE                   mov ax, [bp-2]
  1846 00000C8D E90000                   jmp @@retn
  1847                                  
  1848                                  ;-218 void name1() {if (token!=T_NAME) error1("Name expected"); token=getlex(); }
  1849                                  
  1850 00000C90 C9                      @@retn: LEAVE
  1851 00000C91 C3                       ret
  1852                                  ; ENDP
  1853                                  
  1854                                  name1:  ; *** PROC ***
  1855 00000C92 A1[3D00]                 mov ax, [token]
  1856 00000C95 3D0001                   cmp ax, 256
  1857 00000C98 0F840900                 je  @@name186
  1858 00000C9C 68[AC0C]                 push name1_0
  1859 00000C9F E80D45                   call error1
  1860 00000CA2 83C402                   add  sp, 2
  1861                                  @@name186:
  1862 00000CA5 E82038                   call getlex
  1863 00000CA8 A3[3D00]                 mov word [token], ax
  1864                                  
  1865                                  ;-219 
  1866                                  
  1867                                  
  1868                                  ;-220 void storecall() { int i;
  1869                                  
  1870 00000CAB C3                       ret
  1871                                  ; ENDP
  1872 00000CAC 4E616D652065787065-     name1_0 db "Name expected",0
  1873 00000CB5 6374656400         
  1874                                  
  1875                                  storecall:  ; *** PROC ***
  1876                                  
  1877                                  ;-221   if (CTop >= CALLMAX) error1("Call table full");
  1878                                  
  1879                                  ;Function : storecall, Number of local variables: 1
  1880                                  ;   # type sign width line used address name   list of local variables
  1881                                  ;  200 var sign word   220 NULL bp-2    i;
  1882 00000CBA C8020000                 ENTER  2,0
  1883 00000CBE A1[6400]                 mov ax, [CTop]
  1884 00000CC1 3DD007                   cmp ax, 2000 ;unsigned : 1
  1885 00000CC4 0F8C0900                 jl  @@storecall87
  1886 00000CC8 68[080D]                 push storecall_0
  1887 00000CCB E8E144                   call error1
  1888 00000CCE 83C402                   add  sp, 2
  1889                                  
  1890                                  ;-222   if (CNameTop >= 65468) error1("Call name table fuill");
  1891                                  
  1892                                  @@storecall87:
  1893 00000CD1 A1[B400]                 mov ax, [CNameTop]
  1894 00000CD4 3DBCFF                   cmp ax, 65468 ;unsigned : 0
  1895 00000CD7 0F820900                 jb  @@storecall88
  1896 00000CDB 68[180D]                 push storecall_1
  1897 00000CDE E8CE44                   call error1
  1898 00000CE1 83C402                   add  sp, 2
  1899                                  
  1900                                  ;-223   CUnres[CTop]=0;  CName [CTop]=CNameTop;
  1901                                  
  1902                                  @@storecall88:
  1903 00000CE4 66B800000000             mov eax, 0
  1904 00000CEA 8B1E[6400]               mov bx, [CTop]
  1905 00000CEE 888777AE                 mov [CUnres+bx], al
  1906 00000CF2 A1[B400]                 mov ax, [CNameTop]
  1907 00000CF5 8B1E[6400]               mov bx, [CTop]
  1908 00000CF9 D1E3                     shl bx, 1
  1909 00000CFB 8987D79E                 mov [CName+bx], ax
  1910                                  
  1911                                  ;-224   storeName();
  1912                                  
  1913 00000CFF E8EEF4                   call storeName
  1914                                  
  1915                                  ;-225   CTop++;
  1916                                  
  1917 00000D02 FF06[6400]               inc  word [CTop]
  1918                                  
  1919                                  ;-226 }
  1920                                  
  1921                                  
  1922                                  ;-227 void storefunc() { int i;
  1923 00000D06 C9                       LEAVE
  1924 00000D07 C3                       ret
  1925                                  ; ENDP
  1926 00000D08 43616C6C207461626C-     storecall_0 db "Call table full",0
  1927 00000D11 652066756C6C00     
  1928 00000D18 43616C6C206E616D65-     storecall_1 db "Call name table fuill",0
  1929 00000D21 207461626C65206675-
  1930 00000D2A 696C6C00           
  1931                                  
  1932                                  storefunc:  ; *** PROC ***
  1933                                  
  1934                                  ;-228   if (FTop >= FUNCMAX) error1("Function table full");
  1935                                  
  1936                                  ;Function : storefunc, Number of local variables: 1
  1937                                  ;   # type sign width line used address name   list of local variables
  1938                                  ;  200 var sign word   227 NULL bp-2    i;
  1939 00000D2E C8020000                 ENTER  2,0
  1940 00000D32 A1[6200]                 mov ax, [FTop]
  1941 00000D35 3D2C01                   cmp ax, 300 ;unsigned : 1
  1942 00000D38 0F8C0900                 jl  @@storefunc89
  1943 00000D3C 68[860D]                 push storefunc_0
  1944 00000D3F E86D44                   call error1
  1945 00000D42 83C402                   add  sp, 2
  1946                                  
  1947                                  ;-229   FLino[FTop]=lineno - 1;  FCalls[FTop]=0;   FWidth[FTop]=iswidth;
  1948                                  
  1949                                  @@storefunc89:
  1950 00000D45 A1[BA00]                 mov ax, [lineno]
  1951 00000D48 83E801                   sub ax, 1
  1952 00000D4B 8B1E[6200]               mov bx, [FTop]
  1953 00000D4F D1E3                     shl bx, 1
  1954 00000D51 8987CF97                 mov [FLino+bx], ax
  1955 00000D55 66B800000000             mov eax, 0
  1956 00000D5B 8B1E[6200]               mov bx, [FTop]
  1957 00000D5F D1E3                     shl bx, 1
  1958 00000D61 8987279A                 mov [FCalls+bx], ax
  1959 00000D65 A0[5D00]                 mov al, [iswidth]
  1960 00000D68 8B1E[6200]               mov bx, [FTop]
  1961 00000D6C 8887A396                 mov [FWidth+bx], al
  1962                                  
  1963                                  ;-230   FName[FTop]=CNameTop;
  1964                                  
  1965 00000D70 A1[B400]                 mov ax, [CNameTop]
  1966 00000D73 8B1E[6200]               mov bx, [FTop]
  1967 00000D77 D1E3                     shl bx, 1
  1968 00000D79 89877F9C                 mov [FName+bx], ax
  1969                                  
  1970                                  ;-231   storeName();
  1971                                  
  1972 00000D7D E870F4                   call storeName
  1973                                  
  1974                                  ;-232   FTop++;
  1975                                  
  1976 00000D80 FF06[6200]               inc  word [FTop]
  1977                                  
  1978                                  ;-233 }
  1979                                  
  1980                                  
  1981                                  ;-234 void addlocal() { if(LTop >= VARMAX) error1("Local variable table full");
  1982 00000D84 C9                       LEAVE
  1983 00000D85 C3                       ret
  1984                                  ; ENDP
  1985 00000D86 46756E6374696F6E20-     storefunc_0 db "Function table full",0
  1986 00000D8F 7461626C652066756C-
  1987 00000D98 6C00               
  1988                                  
  1989                                  addlocal:  ; *** PROC ***
  1990 00000D9A A1[6000]                 mov ax, [LTop]
  1991 00000D9D 3D2C01                   cmp ax, 300 ;unsigned : 1
  1992 00000DA0 0F8C0900                 jl  @@addlocal90
  1993 00000DA4 68[120E]                 push addlocal_0
  1994 00000DA7 E80544                   call error1
  1995 00000DAA 83C402                   add  sp, 2
  1996                                  
  1997                                  ;-235   if (checkName() != 0) error1("Local variable already defined");
  1998                                  
  1999                                  @@addlocal90:
  2000 00000DAD E811FD                   call checkName
  2001 00000DB0 83F800                   cmp ax, 0
  2002 00000DB3 0F840900                 je  @@addlocal91
  2003 00000DB7 68[2C0E]                 push addlocal_1
  2004 00000DBA E8F243                   call error1
  2005 00000DBD 83C402                   add  sp, 2
  2006                                  
  2007                                  ;-236   GSign[LTop]=issign; GWidth[LTop]=iswidth; GType[LTop]=istype;
  2008                                  
  2009                                  @@addlocal91:
  2010 00000DC0 A0[5800]                 mov al, [issign]
  2011 00000DC3 8B1E[6000]               mov bx, [LTop]
  2012 00000DC7 8887E383                 mov [GSign+bx], al
  2013 00000DCB A0[5D00]                 mov al, [iswidth]
  2014 00000DCE 8B1E[6000]               mov bx, [LTop]
  2015 00000DD2 88870F85                 mov [GWidth+bx], al
  2016 00000DD6 A0[5500]                 mov al, [istype]
  2017 00000DD9 8B1E[6000]               mov bx, [LTop]
  2018 00000DDD 8887B782                 mov [GType+bx], al
  2019                                  
  2020                                  ;-237   GLino [LTop]=lineno-1; GUsed[LTop]=0;
  2021                                  
  2022 00000DE1 A1[BA00]                 mov ax, [lineno]
  2023 00000DE4 83E801                   sub ax, 1
  2024 00000DE7 8B1E[6000]               mov bx, [LTop]
  2025 00000DEB D1E3                     shl bx, 1
  2026 00000DED 89873B86                 mov [GLino+bx], ax
  2027 00000DF1 66B800000000             mov eax, 0
  2028 00000DF7 8B1E[6000]               mov bx, [LTop]
  2029 00000DFB D1E3                     shl bx, 1
  2030 00000DFD 89879388                 mov [GUsed+bx], ax
  2031                                  
  2032                                  ;-238   GName[LTop]=CNameTop;
  2033                                  
  2034 00000E01 A1[B400]                 mov ax, [CNameTop]
  2035 00000E04 8B1E[6000]               mov bx, [LTop]
  2036 00000E08 D1E3                     shl bx, 1
  2037 00000E0A 89874B94                 mov [GName+bx], ax
  2038                                  
  2039                                  ;-239   storeName();
  2040                                  
  2041 00000E0E E8DFF3                   call storeName
  2042                                  
  2043                                  ;-240 }
  2044                                  
  2045                                  
  2046                                  ;-241 int checkFunction() { unsigned int i; unsigned int j; i=0;
  2047                                  
  2048 00000E11 C3                       ret
  2049                                  ; ENDP
  2050 00000E12 4C6F63616C20766172-     addlocal_0 db "Local variable table full",0
  2051 00000E1B 6961626C6520746162-
  2052 00000E24 6C652066756C6C00   
  2053 00000E2C 4C6F63616C20766172-     addlocal_1 db "Local variable already defined",0
  2054 00000E35 6961626C6520616C72-
  2055 00000E3E 656164792064656669-
  2056 00000E47 6E656400           
  2057                                  
  2058                                  checkFunction:  ; *** PROC ***
  2059                                  ;Function : checkFunction, Number of local variables: 2
  2060                                  ;   # type sign width line used address name   list of local variables
  2061                                  ;  200 var unsg word   241 NULL bp-2    i
  2062                                  ;  201 var unsg word   241 NULL bp-4    j;
  2063 00000E4B C8040000                 ENTER  4,0
  2064 00000E4F 66B800000000             mov eax, 0
  2065 00000E55 8946FE                   mov word [bp-2], ax
  2066                                  
  2067                                  ;-242   while (i < FTop) {
  2068                                  
  2069                                  @@checkFunction92:
  2070 00000E58 8B46FE                   mov ax, [bp-2]
  2071 00000E5B 3B06[6200]               cmp ax, [FTop]
  2072 00000E5F 0F8D3B00                 jge @@checkFunction93
  2073                                  
  2074                                  ;-243     j=FName[i]; from_far(NA, j);
  2075                                  
  2076 00000E63 8B5EFE                   mov bx, [bp-2]
  2077 00000E66 D1E3                     shl bx, 1
  2078 00000E68 8B877F9C                 mov ax, [FName + bx]
  2079 00000E6C 8946FC                   mov word [bp-4], ax
  2080 00000E6F FF76FC                   push word [bp-4]
  2081 00000E72 8D06[7200]               lea  ax, [NA]
  2082 00000E76 50                       push ax
  2083 00000E77 E82B50                   call from_far
  2084 00000E7A 83C404                   add  sp, 4
  2085                                  
  2086                                  ;-244     if(eqstr(symbol, NA))return i; i++;}
  2087                                  
  2088 00000E7D 8D06[7200]               lea  ax, [NA]
  2089 00000E81 50                       push ax
  2090 00000E82 8D066E81                 lea  ax, [symbol]
  2091 00000E86 50                       push ax
  2092 00000E87 E87254                   call eqstr
  2093 00000E8A 83C404                   add  sp, 4
  2094 00000E8D 08C0                     or  al, al
  2095 00000E8F 0F840600                 je @@checkFunction94
  2096 00000E93 8B46FE                   mov ax, [bp-2]
  2097 00000E96 E90E00                   jmp @@retn
  2098                                  @@checkFunction94:
  2099 00000E99 FF46FE                   inc  word [bp-2]
  2100                                  
  2101                                  ;-245   return 0;
  2102                                  
  2103 00000E9C EBBA                     jmp @@checkFunction92
  2104                                  @@checkFunction93:
  2105 00000E9E 66B800000000             mov eax, 0
  2106 00000EA4 E90000                   jmp @@retn
  2107                                  
  2108                                  ;-246 }
  2109                                  
  2110                                  
  2111                                  ;-247 void dofunc() { int nloc; int narg; int i;
  2112                                  
  2113 00000EA7 C9                      @@retn: LEAVE
  2114 00000EA8 C3                       ret
  2115                                  ; ENDP
  2116                                  
  2117                                  dofunc:  ; *** PROC ***
  2118                                  
  2119                                  ;-248   cloc=&co; 
  2120                                  
  2121                                  ;Function : dofunc, Number of local variables: 3
  2122                                  ;   # type sign width line used address name   list of local variables
  2123                                  ;  200 var sign word   247 NULL bp-2    nloc
  2124                                  ;  201 var sign word   247 NULL bp-4    narg
  2125                                  ;  202 var sign word   247 NULL bp-6    i;
  2126 00000EA9 C8060000                 ENTER  6,0
  2127 00000EAD B83075                   mov ax, co
  2128 00000EB0 A3[3000]                 mov word [cloc], ax
  2129                                  
  2130                                  ;-249   checknamelen();
  2131                                  
  2132 00000EB3 E885F2                   call checknamelen
  2133                                  
  2134                                  ;-250   strcpy(fname, symbol);
  2135                                  
  2136 00000EB6 8D066E81                 lea  ax, [symbol]
  2137 00000EBA 50                       push ax
  2138 00000EBB 8D06EE81                 lea  ax, [fname]
  2139 00000EBF 50                       push ax
  2140 00000EC0 E8E552                   call strcpy
  2141 00000EC3 83C404                   add  sp, 4
  2142                                  
  2143                                  ;-251   if (checkFunction() ) error1("Function already defined");
  2144                                  
  2145 00000EC6 E882FF                   call checkFunction
  2146 00000EC9 08C0                     or  al, al
  2147 00000ECB 0F840900                 je @@dofunc95
  2148 00000ECF 68[1411]                 push dofunc_0
  2149 00000ED2 E8DA42                   call error1
  2150 00000ED5 83C402                   add  sp, 2
  2151                                  
  2152                                  ;-252   storefunc();
  2153                                  
  2154                                  @@dofunc95:
  2155 00000ED8 E853FE                   call storefunc
  2156                                  
  2157                                  ;-253   prs("\n\n"); prs(symbol); prs(":  ; *** PROC ***");
  2158                                  
  2159 00000EDB 68[2D11]                 push dofunc_1
  2160 00000EDE E8CD3F                   call prs
  2161 00000EE1 83C402                   add  sp, 2
  2162 00000EE4 8D066E81                 lea  ax, [symbol]
  2163 00000EE8 50                       push ax
  2164 00000EE9 E8C23F                   call prs
  2165 00000EEC 83C402                   add  sp, 2
  2166 00000EEF 68[3211]                 push dofunc_2
  2167 00000EF2 E8B93F                   call prs
  2168 00000EF5 83C402                   add  sp, 2
  2169                                  
  2170                                  ;-254   expect('(');  LTop=LSTART;
  2171                                  
  2172 00000EF8 6A28                     push 40
  2173 00000EFA E8933E                   call expect
  2174 00000EFD 83C402                   add  sp, 2
  2175 00000F00 66B8C8000000             mov eax, 200
  2176 00000F06 A3[6000]                 mov word [LTop], ax
  2177                                  
  2178                                  ;-255   if (istoken(')')==0) { narg=4; // return address and old bp value
  2179                                  
  2180 00000F09 6A29                     push 41
  2181 00000F0B E85A3E                   call istoken
  2182 00000F0E 83C402                   add  sp, 2
  2183 00000F11 83F800                   cmp ax, 0
  2184 00000F14 0F855400                 jne @@dofunc96
  2185 00000F18 66B804000000             mov eax, 4
  2186 00000F1E 8946FC                   mov word [bp-4], ax
  2187                                  
  2188                                  ;-256     do { typeName();  addlocal();
  2189                                  
  2190                                  @@dofunc97:
  2191 00000F21 E832FC                   call typeName
  2192 00000F24 E873FE                   call addlocal
  2193                                  
  2194                                  ;-257          GData[LTop]=narg;
  2195                                  
  2196 00000F27 8B46FC                   mov ax, [bp-4]
  2197 00000F2A 8B1E[6000]               mov bx, [LTop]
  2198 00000F2E C1E302                   shl bx, 2
  2199 00000F31 668987EB8A               mov [GData+bx], eax
  2200                                  
  2201                                  ;-258          if (iswidth < 2) narg+=2; else narg=narg+iswidth;
  2202                                  
  2203 00000F36 A0[5D00]                 mov al, [iswidth]
  2204 00000F39 3C02                     cmp al, 2
  2205 00000F3B 0F8D0700                 jge @@dofunc98
  2206 00000F3F 8346FC02                 add  word [bp-4], 2
  2207 00000F43 E90A00                   jmp @@dofunc99
  2208                                  @@dofunc98:
  2209 00000F46 8B46FC                   mov ax, [bp-4]
  2210 00000F49 0206[5D00]               add al, [iswidth]
  2211 00000F4D 8946FC                   mov word [bp-4], ax
  2212                                  
  2213                                  ;-259          LTop++; }
  2214                                  
  2215                                  @@dofunc99:
  2216 00000F50 FF06[6000]               inc  word [LTop]
  2217                                  
  2218                                  ;-260     while (istoken(','));  expect(')'); }
  2219                                  
  2220 00000F54 6A2C                     push 44
  2221 00000F56 E80F3E                   call istoken
  2222 00000F59 83C402                   add  sp, 2
  2223 00000F5C 08C0                     or  al, al
  2224 00000F5E 0F840200                 je @@dofunc100
  2225 00000F62 EBBD                     jmp @@dofunc97
  2226                                  @@dofunc100:
  2227 00000F64 6A29                     push 41
  2228 00000F66 E8273E                   call expect
  2229 00000F69 83C402                   add  sp, 2
  2230                                  
  2231                                  ;-261     
  2232                                  
  2233                                  
  2234                                  ;-262   expect('{'); /*body*/
  2235                                  
  2236                                  @@dofunc96:
  2237 00000F6C 6A7B                     push 123
  2238 00000F6E E81F3E                   call expect
  2239 00000F71 83C402                   add  sp, 2
  2240                                  
  2241                                  ;-263   nloc=0; nreturn=0; nconst=0;
  2242                                  
  2243 00000F74 66B800000000             mov eax, 0
  2244 00000F7A 8946FE                   mov word [bp-2], ax
  2245 00000F7D 66B800000000             mov eax, 0
  2246 00000F83 A3[4700]                 mov word [nreturn], ax
  2247 00000F86 66B800000000             mov eax, 0
  2248 00000F8C A3[4500]                 mov word [nconst], ax
  2249                                  
  2250                                  ;-264   while(isvariable()) {
  2251                                  
  2252                                  @@dofunc101:
  2253 00000F8F E8E201                   call isvariable
  2254 00000F92 08C0                     or  al, al
  2255 00000F94 0F849400                 je @@dofunc102
  2256                                  
  2257                                  ;-265     do {typeName(); checknamelen(); addlocal();
  2258                                  
  2259                                  @@dofunc103:
  2260 00000F98 E8BBFB                   call typeName
  2261 00000F9B E89DF1                   call checknamelen
  2262 00000F9E E8F9FD                   call addlocal
  2263                                  
  2264                                  ;-266         _ i= 2; if(_ iswidth > 2)  { ax=iswidth; /*cast b2w*/ _ i=ax; }
  2265                                  
  2266 00000FA1 C746FA0200              mov word [bp-6], 2; i
  2267 00000FA6 803E[5D00]02            cmp byte [iswidth], 2
  2268 00000FAB 0F8E0800                 jle @@dofunc104
  2269 00000FAF 0FBE06[5D00]             movsx  ax, byte [iswidth]
  2270 00000FB4 8946FA                  mov [bp-6], ax
  2271                                  
  2272                                  ;-267         if (istoken('[')){istype='&';GType[LTop]='&';expect(T_CONST);
  2273                                  
  2274                                  @@dofunc104:
  2275 00000FB7 6A5B                     push 91
  2276 00000FB9 E8AC3D                   call istoken
  2277 00000FBC 83C402                   add  sp, 2
  2278 00000FBF 08C0                     or  al, al
  2279 00000FC1 0F842F00                 je @@dofunc105
  2280 00000FC5 66B826000000             mov eax, 38
  2281 00000FCB A2[5500]                 mov byte [istype], al
  2282 00000FCE 66B826000000             mov eax, 38
  2283 00000FD4 8B1E[6000]               mov bx, [LTop]
  2284 00000FD8 8887B782                 mov [GType+bx], al
  2285 00000FDC 680101                   push 257
  2286 00000FDF E8AE3D                   call expect
  2287 00000FE2 83C402                   add  sp, 2
  2288                                  
  2289                                  ;-268             expect(']'); i=lexvalL; }
  2290                                  
  2291 00000FE5 6A5D                     push 93
  2292 00000FE7 E8A63D                   call expect
  2293 00000FEA 83C402                   add  sp, 2
  2294 00000FED 66A1[4D00]               mov eax, [lexvalL]
  2295 00000FF1 8946FA                   mov word [bp-6], ax
  2296                                  
  2297                                  ;-269         nloc=nloc - i;  GData[LTop]=nloc;
  2298                                  
  2299                                  @@dofunc105:
  2300 00000FF4 8B46FE                   mov ax, [bp-2]
  2301 00000FF7 2B46FA                   sub ax, [bp-6]
  2302 00000FFA 8946FE                   mov word [bp-2], ax
  2303 00000FFD 8B46FE                   mov ax, [bp-2]
  2304 00001000 8B1E[6000]               mov bx, [LTop]
  2305 00001004 C1E302                   shl bx, 2
  2306 00001007 668987EB8A               mov [GData+bx], eax
  2307                                  
  2308                                  ;-270         LTop++;
  2309                                  
  2310 0000100C FF06[6000]               inc  word [LTop]
  2311                                  
  2312                                  ;-271       } while (istoken(',')); expect(';'); }
  2313                                  
  2314 00001010 6A2C                     push 44
  2315 00001012 E8533D                   call istoken
  2316 00001015 83C402                   add  sp, 2
  2317 00001018 08C0                     or  al, al
  2318 0000101A 0F840300                 je @@dofunc106
  2319 0000101E E977FF                   jmp @@dofunc103
  2320                                  @@dofunc106:
  2321 00001021 6A3B                     push 59
  2322 00001023 E86A3D                   call expect
  2323 00001026 83C402                   add  sp, 2
  2324                                  
  2325                                  ;-272   listproc(); 
  2326                                  
  2327 00001029 E963FF                   jmp @@dofunc101
  2328                                  @@dofunc102:
  2329 0000102C E88B42                   call listproc
  2330                                  
  2331                                  ;-273   if (LTop>LSTART){prs(";\n ENTER  "); 
  2332                                  
  2333 0000102F A1[6000]                 mov ax, [LTop]
  2334 00001032 3DC800                   cmp ax, 200
  2335 00001035 0F8E2700                 jle @@dofunc107
  2336 00001039 68[4411]                 push dofunc_3
  2337 0000103C E86F3E                   call prs
  2338 0000103F 83C402                   add  sp, 2
  2339                                  
  2340                                  ;-274     nloc=mkneg(nloc); pint1 (nloc); prs(",0"); }
  2341                                  
  2342 00001042 FF76FE                   push word [bp-2]
  2343 00001045 E88450                   call mkneg
  2344 00001048 83C402                   add  sp, 2
  2345 0000104B 8946FE                   mov word [bp-2], ax
  2346 0000104E FF76FE                   push word [bp-2]
  2347 00001051 E8603F                   call pint1
  2348 00001054 83C402                   add  sp, 2
  2349 00001057 68[5011]                 push dofunc_4
  2350 0000105A E8513E                   call prs
  2351 0000105D 83C402                   add  sp, 2
  2352                                  
  2353                                  ;-275   while(istoken('}')==0)   stmt();
  2354                                  
  2355                                  @@dofunc107:
  2356                                  @@dofunc108:
  2357 00001060 6A7D                     push 125
  2358 00001062 E8033D                   call istoken
  2359 00001065 83C402                   add  sp, 2
  2360 00001068 83F800                   cmp ax, 0
  2361 0000106B 0F850500                 jne @@dofunc109
  2362 0000106F E8EA2D                   call stmt
  2363                                  
  2364                                  ;-276   if (nreturn) { prs("\n@@retn:");}
  2365                                  
  2366 00001072 EBEC                     jmp @@dofunc108
  2367                                  @@dofunc109:
  2368 00001074 A1[4700]                 mov ax, [nreturn]
  2369 00001077 08C0                     or  al, al
  2370 00001079 0F840900                 je @@dofunc110
  2371 0000107D 68[5311]                 push dofunc_5
  2372 00001080 E82B3E                   call prs
  2373 00001083 83C402                   add  sp, 2
  2374                                  
  2375                                  ;-277   if (LTop > LSTART) prs(" LEAVE");
  2376                                  
  2377                                  @@dofunc110:
  2378 00001086 A1[6000]                 mov ax, [LTop]
  2379 00001089 3DC800                   cmp ax, 200
  2380 0000108C 0F8E0900                 jle @@dofunc111
  2381 00001090 68[5D11]                 push dofunc_6
  2382 00001093 E8183E                   call prs
  2383 00001096 83C402                   add  sp, 2
  2384                                  
  2385                                  ;-278   prs("\n ret"); prs("\n; ENDP"); 
  2386                                  
  2387                                  @@dofunc111:
  2388 00001099 68[6411]                 push dofunc_7
  2389 0000109C E80F3E                   call prs
  2390 0000109F 83C402                   add  sp, 2
  2391 000010A2 68[6B11]                 push dofunc_8
  2392 000010A5 E8063E                   call prs
  2393 000010A8 83C402                   add  sp, 2
  2394                                  
  2395                                  ;-279   *cloc=0; prs(co); maxco1=strlen(co);
  2396                                  
  2397 000010AB 66B800000000             mov eax, 0
  2398 000010B1 8B1E[3000]               mov  bx, [cloc]
  2399 000010B5 8807                     mov  [bx], al
  2400 000010B7 8D063075                 lea  ax, [co]
  2401 000010BB 50                       push ax
  2402 000010BC E8EF3D                   call prs
  2403 000010BF 83C402                   add  sp, 2
  2404 000010C2 8D063075                 lea  ax, [co]
  2405 000010C6 50                       push ax
  2406 000010C7 E8B350                   call strlen
  2407 000010CA 83C402                   add  sp, 2
  2408 000010CD A3[2E00]                 mov word [maxco1], ax
  2409                                  
  2410                                  ;-280   if (maxco1 > maxco) {maxco=maxco1; strcpy(coname, fname); }
  2411                                  
  2412 000010D0 A1[2E00]                 mov ax, [maxco1]
  2413 000010D3 3B06[2C00]               cmp ax, [maxco]
  2414 000010D7 0F8E1600                 jle @@dofunc112
  2415 000010DB A1[2E00]                 mov ax, [maxco1]
  2416 000010DE A3[2C00]                 mov word [maxco], ax
  2417 000010E1 8D06EE81                 lea  ax, [fname]
  2418 000010E5 50                       push ax
  2419 000010E6 8D06E880                 lea  ax, [coname]
  2420 000010EA 50                       push ax
  2421 000010EB E8BA50                   call strcpy
  2422 000010EE 83C404                   add  sp, 4
  2423                                  
  2424                                  ;-281   if (LTop  > maxloc) {maxloc=LTop; strcpy(locname, fname); }
  2425                                  
  2426                                  @@dofunc112:
  2427 000010F1 A1[6000]                 mov ax, [LTop]
  2428 000010F4 3B06[3200]               cmp ax, [maxloc]
  2429 000010F8 0F8E1600                 jle @@dofunc113
  2430 000010FC A1[6000]                 mov ax, [LTop]
  2431 000010FF A3[3200]                 mov word [maxloc], ax
  2432 00001102 8D06EE81                 lea  ax, [fname]
  2433 00001106 50                       push ax
  2434 00001107 8D062B81                 lea  ax, [locname]
  2435 0000110B 50                       push ax
  2436 0000110C E89950                   call strcpy
  2437 0000110F 83C404                   add  sp, 4
  2438                                  
  2439                                  ;-282 }
  2440                                  
  2441                                  @@dofunc113:
  2442                                  
  2443                                  ;-283 int isvariable() {
  2444 00001112 C9                       LEAVE
  2445 00001113 C3                       ret
  2446                                  ; ENDP
  2447 00001114 46756E6374696F6E20-     dofunc_0 db "Function already defined",0
  2448 0000111D 616C72656164792064-
  2449 00001126 6566696E656400     
  2450 0000112D 5C6E5C6E00              dofunc_1 db "\n\n",0
  2451 00001132 3A20203B202A2A2A20-     dofunc_2 db ":  ; *** PROC ***",0
  2452 0000113B 50524F43202A2A2A00 
  2453 00001144 3B5C6E20454E544552-     dofunc_3 db ";\n ENTER  ",0
  2454 0000114D 202000             
  2455 00001150 2C3000                  dofunc_4 db ",0",0
  2456 00001153 5C6E40407265746E3A-     dofunc_5 db "\n@@retn:",0
  2457 0000115C 00                 
  2458 0000115D 204C4541564500          dofunc_6 db " LEAVE",0
  2459 00001164 5C6E2072657400          dofunc_7 db "\n ret",0
  2460 0000116B 5C6E3B20454E445000      dofunc_8 db "\n; ENDP",0
  2461                                  
  2462                                  isvariable:  ; *** PROC ***
  2463                                  
  2464                                  ;-284   if(token==T_SIGNED) goto v1;   if(token==T_UNSIGNED) goto v1;
  2465                                  
  2466 00001174 A1[3D00]                 mov ax, [token]
  2467 00001177 3D1302                   cmp ax, 531
  2468 0000117A 0F850300                 jne @@isvariable114
  2469 0000117E E95700                   jmp @@v1
  2470                                  @@isvariable114:
  2471 00001181 A1[3D00]                 mov ax, [token]
  2472 00001184 3D1402                   cmp ax, 532
  2473 00001187 0F850300                 jne @@isvariable115
  2474 0000118B E94A00                   jmp @@v1
  2475                                  
  2476                                  ;-285   if(token==T_CHAR)   goto v1;   if(token==T_INT)      goto v1;
  2477                                  
  2478                                  @@isvariable115:
  2479 0000118E A1[3D00]                 mov ax, [token]
  2480 00001191 3D1202                   cmp ax, 530
  2481 00001194 0F850300                 jne @@isvariable116
  2482 00001198 E93D00                   jmp @@v1
  2483                                  @@isvariable116:
  2484 0000119B A1[3D00]                 mov ax, [token]
  2485 0000119E 3D0502                   cmp ax, 517
  2486 000011A1 0F850300                 jne @@isvariable117
  2487 000011A5 E93000                   jmp @@v1
  2488                                  
  2489                                  ;-286   if(token==T_SHORT)  goto v1;   if(token==T_LONG)     goto v1;
  2490                                  
  2491                                  @@isvariable117:
  2492 000011A8 A1[3D00]                 mov ax, [token]
  2493 000011AB 3D1602                   cmp ax, 534
  2494 000011AE 0F850300                 jne @@isvariable118
  2495 000011B2 E92300                   jmp @@v1
  2496                                  @@isvariable118:
  2497 000011B5 A1[3D00]                 mov ax, [token]
  2498 000011B8 3D1502                   cmp ax, 533
  2499 000011BB 0F850300                 jne @@isvariable119
  2500 000011BF E91600                   jmp @@v1
  2501                                  
  2502                                  ;-287   if(token==T_UINT32) goto v1;   return 0;  v1: return 1;
  2503                                  
  2504                                  @@isvariable119:
  2505 000011C2 A1[3D00]                 mov ax, [token]
  2506 000011C5 3D2102                   cmp ax, 545
  2507 000011C8 0F850300                 jne @@isvariable120
  2508 000011CC E90900                   jmp @@v1
  2509                                  @@isvariable120:
  2510 000011CF 66B800000000             mov eax, 0
  2511 000011D5 E90900                   jmp @@retn
  2512                                  @@v1:
  2513 000011D8 66B801000000             mov eax, 1
  2514 000011DE E90000                   jmp @@retn
  2515                                  
  2516                                  ;-288 }
  2517                                  
  2518                                  
  2519                                  ;-289 int sd; //side: 0=left, 1=middle, 2=rigth
  2520                                  
  2521                                  @@retn:
  2522 000011E1 C3                       ret
  2523                                  ; ENDP
  2524 000011E2 0000                    sd dw 0
  2525                                  
  2526                                  ;-290 char un; //1=unary, 2=binary, 3=assign, 4=mul, 5=mod, 6=div
  2527                                  
  2528 000011E4 00                      un db 0
  2529                                  
  2530                                  ;-291 char ty; // 1const, 2call, 3reg, 4var, 5arr
  2531                                  
  2532 000011E5 00                      ty db 0
  2533                                  
  2534                                  ;-292 char md[3];  int mod1; int mod2; //typename       issign,iswidth  0=m, 1=*,2=&
  2535                                  
  2536                                  section .bss
  2537                                  absolute 46807
  2538 0000B6D7 <res 00000003>          md resb 3
  2539                                  section .text
  2540 000011E6 0000                    mod1 dw 0
  2541 000011E8 0000                    mod2 dw 0
  2542                                  
  2543                                  ;-293 int  ir[3];  int irg1; int irg2; //checkreg       0=noreg, reg-nr
  2544                                  
  2545                                  section .bss
  2546                                  absolute 46810
  2547 0000B6DA <res 00000006>          ir resw 3
  2548                                  section .text
  2549 000011EA 0000                    irg1 dw 0
  2550 000011EC 0000                    irg2 dw 0
  2551                                  
  2552                                  ;-294 int  ix[3];  int idx1; int idx2; //searchname     var-nr
  2553                                  
  2554                                  section .bss
  2555                                  absolute 46816
  2556 0000B6E0 <res 00000006>          ix resw 3
  2557                                  section .text
  2558 000011EE 0000                    idx1 dw 0
  2559 000011F0 0000                    idx2 dw 0
  2560                                  
  2561                                  ;-295 char is[3];  int ids1; int ids2; //gettypes(idx1) signi: 0=U, 1=S
  2562                                  
  2563                                  section .bss
  2564                                  absolute 46822
  2565 0000B6E6 <res 00000003>          is resb 3
  2566                                  section .text
  2567 000011F2 0000                    ids1 dw 0
  2568 000011F4 0000                    ids2 dw 0
  2569                                  
  2570                                  ;-296 char iw[3];  int idw1; int idw2; //gettypes(idx1) wi   : 1,2,4
  2571                                  
  2572                                  section .bss
  2573                                  absolute 46825
  2574 0000B6E9 <res 00000003>          iw resb 3
  2575                                  section .text
  2576 000011F6 0000                    idw1 dw 0
  2577 000011F8 0000                    idw2 dw 0
  2578                                  
  2579                                  ;-297 char it[3];  int idt1; int idt2; //gettypes(idx1) typei: 0=mem, 1=*, 2=&
  2580                                  
  2581                                  section .bss
  2582                                  absolute 46828
  2583 0000B6EC <res 00000003>          it resb 3
  2584                                  section .text
  2585 000011FA 0000                    idt1 dw 0
  2586 000011FC 0000                    idt2 dw 0
  2587                                  
  2588                                  ;-298 long ia[3];  int ida1; int ida2; //array const or varnr
  2589                                  
  2590                                  section .bss
  2591                                  absolute 46831
  2592 0000B6EF <res 0000000C>          ia resd 3
  2593                                  section .text
  2594 000011FE 0000                    ida1 dw 0
  2595 00001200 0000                    ida2 dw 0
  2596                                  
  2597                                  ;-299 char ic[3];  int idac1;int idac2;//array is const
  2598                                  
  2599                                  section .bss
  2600                                  absolute 46843
  2601 0000B6FB <res 00000003>          ic resb 3
  2602                                  section .text
  2603 00001202 0000                    idac1 dw 0
  2604 00001204 0000                    idac2 dw 0
  2605                                  
  2606                                  ;-300 long iv[3];  long val1;long val2;// = lexvalL
  2607                                  
  2608                                  section .bss
  2609                                  absolute 46846
  2610 0000B6FE <res 0000000C>          iv resd 3
  2611                                  section .text
  2612 00001206 00000000                val1 dd 0
  2613 0000120A 00000000                val2 dd 0
  2614                                  
  2615                                  ;-301 
  2616                                  
  2617                                  
  2618                                  ;-302 
  2619                                  
  2620                                  
  2621                                  ;-303 int pexpr() {expect('('); iscmp=0; 
  2622                                  
  2623                                  
  2624                                  pexpr:  ; *** PROC ***
  2625 0000120E 6A28                     push 40
  2626 00001210 E87D3B                   call expect
  2627 00001213 83C402                   add  sp, 2
  2628 00001216 66B800000000             mov eax, 0
  2629 0000121C A3[4300]                 mov word [iscmp], ax
  2630                                  
  2631                                  ;-304   if (token==T_NAME) {if (eqstr(symbol, "_")) {constantexpr(); return;}
  2632                                  
  2633 0000121F A1[3D00]                 mov ax, [token]
  2634 00001222 3D0001                   cmp ax, 256
  2635 00001225 0F853400                 jne @@pexpr121
  2636 00001229 68[8712]                 push pexpr_0
  2637 0000122C 8D066E81                 lea  ax, [symbol]
  2638 00001230 50                       push ax
  2639 00001231 E8C850                   call eqstr
  2640 00001234 83C404                   add  sp, 4
  2641 00001237 08C0                     or  al, al
  2642 00001239 0F840600                 je @@pexpr122
  2643 0000123D E85F00                   call constantexpr
  2644 00001240 E94300                   jmp @@retn
  2645                                  
  2646                                  ;-305     irg1=checkreg();
  2647                                  
  2648                                  @@pexpr122:
  2649 00001243 E88B08                   call checkreg
  2650 00001246 A3[EA11]                 mov word [irg1], ax
  2651                                  
  2652                                  ;-306     if (irg1) { doreg1(1); return; }  }
  2653                                  
  2654 00001249 A1[EA11]                 mov ax, [irg1]
  2655 0000124C 08C0                     or  al, al
  2656 0000124E 0F840B00                 je @@pexpr123
  2657 00001252 6A01                     push 1
  2658 00001254 E8A506                   call doreg1
  2659 00001257 83C402                   add  sp, 2
  2660 0000125A E92900                   jmp @@retn
  2661                                  @@pexpr123:
  2662                                  
  2663                                  ;-307   exprstart(); if (iscmp==0) prs("\n or  al, al\n je @@");  prs(fname);
  2664                                  
  2665                                  @@pexpr121:
  2666 0000125D E80001                   call exprstart
  2667 00001260 A1[4300]                 mov ax, [iscmp]
  2668 00001263 83F800                   cmp ax, 0
  2669 00001266 0F850900                 jne @@pexpr124
  2670 0000126A 68[8912]                 push pexpr_1
  2671 0000126D E83E3C                   call prs
  2672 00001270 83C402                   add  sp, 2
  2673                                  @@pexpr124:
  2674 00001273 8D06EE81                 lea  ax, [fname]
  2675 00001277 50                       push ax
  2676 00001278 E8333C                   call prs
  2677 0000127B 83C402                   add  sp, 2
  2678                                  
  2679                                  ;-308   expect(')'); }
  2680                                  
  2681 0000127E 6A29                     push 41
  2682 00001280 E80D3B                   call expect
  2683 00001283 83C402                   add  sp, 2
  2684                                  
  2685                                  ;-309 
  2686                                  
  2687                                  
  2688                                  ;-310 void constantexpr() { int mode; int id1;int ids;
  2689                                  
  2690                                  @@retn:
  2691 00001286 C3                       ret
  2692                                  ; ENDP
  2693 00001287 5F00                    pexpr_0 db "_",0
  2694 00001289 5C6E206F722020616C-     pexpr_1 db "\n or  al, al\n je @@",0
  2695 00001292 2C20616C5C6E206A65-
  2696 0000129B 20404000           
  2697                                  
  2698                                  constantexpr:  ; *** PROC ***
  2699                                  
  2700                                  ;-311   token=getlex();   mode=typeName();  
  2701                                  
  2702                                  ;Function : constantexpr, Number of local variables: 3
  2703                                  ;   # type sign width line used address name   list of local variables
  2704                                  ;  200 var sign word   310 NULL bp-2    mode
  2705                                  ;  201 var sign word   310 NULL bp-4    id1
  2706                                  ;  202 var sign word   310 NULL bp-6    ids;
  2707 0000129F C8060000                 ENTER  6,0
  2708 000012A3 E82232                   call getlex
  2709 000012A6 A3[3D00]                 mov word [token], ax
  2710 000012A9 E8AAF8                   call typeName
  2711 000012AC 8946FE                   mov word [bp-2], ax
  2712                                  
  2713                                  ;-312   id1=searchname(); gettypes(id1); ids=signi;
  2714                                  
  2715 000012AF E8C4F7                   call searchname
  2716 000012B2 8946FC                   mov word [bp-4], ax
  2717 000012B5 FF76FC                   push word [bp-4]
  2718 000012B8 E870F6                   call gettypes
  2719 000012BB 83C402                   add  sp, 2
  2720 000012BE A1[5600]                 mov ax, [signi]
  2721 000012C1 8946FA                   mov word [bp-6], ax
  2722                                  
  2723                                  ;-313   if (isrelational() ==0) error1("Relational expression expected");
  2724                                  
  2725 000012C4 E89431                   call isrelational
  2726 000012C7 83F800                   cmp ax, 0
  2727 000012CA 0F850900                 jne @@constantexpr125
  2728 000012CE 68[3713]                 push constantexpr_0
  2729 000012D1 E8DB3E                   call error1
  2730 000012D4 83C402                   add  sp, 2
  2731                                  
  2732                                  ;-314   expect(T_CONST);
  2733                                  
  2734                                  @@constantexpr125:
  2735 000012D7 680101                   push 257
  2736 000012DA E8B33A                   call expect
  2737 000012DD 83C402                   add  sp, 2
  2738                                  
  2739                                  ;-315   prs("\ncmp "); 
  2740                                  
  2741 000012E0 68[5613]                 push constantexpr_1
  2742 000012E3 E8C83B                   call prs
  2743 000012E6 83C402                   add  sp, 2
  2744                                  
  2745                                  ;-316   gettypes(id1);  pwi(wi);  v(id1);
  2746                                  
  2747 000012E9 FF76FC                   push word [bp-4]
  2748 000012EC E83CF6                   call gettypes
  2749 000012EF 83C402                   add  sp, 2
  2750 000012F2 FF36[5B00]               push word [wi]
  2751 000012F6 E88EEE                   call pwi
  2752 000012F9 83C402                   add  sp, 2
  2753 000012FC FF76FC                   push word [bp-4]
  2754 000012FF E8F4ED                   call v
  2755 00001302 83C402                   add  sp, 2
  2756                                  
  2757                                  ;-317   prs(", "); prL(lexvalL); cmpneg(ids);   prs(fname);
  2758                                  
  2759 00001305 68[5D13]                 push constantexpr_2
  2760 00001308 E8A33B                   call prs
  2761 0000130B 83C402                   add  sp, 2
  2762 0000130E 66FF36[4D00]             push dword [lexvalL]
  2763 00001313 E84B4C                   call prL
  2764 00001316 83C404                   add  sp, 4
  2765 00001319 FF76FA                   push word [bp-6]
  2766 0000131C E8F12D                   call cmpneg
  2767 0000131F 83C402                   add  sp, 2
  2768 00001322 8D06EE81                 lea  ax, [fname]
  2769 00001326 50                       push ax
  2770 00001327 E8843B                   call prs
  2771 0000132A 83C402                   add  sp, 2
  2772                                  
  2773                                  ;-318   expect(')');
  2774                                  
  2775 0000132D 6A29                     push 41
  2776 0000132F E85E3A                   call expect
  2777 00001332 83C402                   add  sp, 2
  2778                                  
  2779                                  ;-319 }  
  2780                                  
  2781                                  
  2782                                  ;-320 void exprstart() { if (eqstr(symbol, "_")) simplexpr(); else expr(); }
  2783 00001335 C9                       LEAVE
  2784 00001336 C3                       ret
  2785                                  ; ENDP
  2786 00001337 52656C6174696F6E61-     constantexpr_0 db "Relational expression expected",0
  2787 00001340 6C2065787072657373-
  2788 00001349 696F6E206578706563-
  2789 00001352 74656400           
  2790 00001356 5C6E636D702000          constantexpr_1 db "\ncmp ",0
  2791 0000135D 2C2000                  constantexpr_2 db ", ",0
  2792                                  
  2793                                  exprstart:  ; *** PROC ***
  2794 00001360 68[7E13]                 push exprstart_0
  2795 00001363 8D066E81                 lea  ax, [symbol]
  2796 00001367 50                       push ax
  2797 00001368 E8914F                   call eqstr
  2798 0000136B 83C404                   add  sp, 4
  2799 0000136E 08C0                     or  al, al
  2800 00001370 0F840600                 je @@exprstart126
  2801 00001374 E80900                   call simplexpr
  2802 00001377 E90300                   jmp @@exprstart127
  2803                                  @@exprstart126:
  2804 0000137A E8970C                   call expr
  2805                                  @@exprstart127:
  2806                                  
  2807                                  ;-321 // 1const, 2call, 3reg, 4var, 5arr
  2808                                  
  2809                                  
  2810                                  ;-322 int simplexpr() {  int i;
  2811                                  
  2812 0000137D C3                       ret
  2813                                  ; ENDP
  2814 0000137E 5F00                    exprstart_0 db "_",0
  2815                                  
  2816                                  simplexpr:  ; *** PROC ***
  2817                                  
  2818                                  ;-323   sd=0;
  2819                                  
  2820                                  ;Function : simplexpr, Number of local variables: 1
  2821                                  ;   # type sign width line used address name   list of local variables
  2822                                  ;  200 var sign word   322 NULL bp-2    i;
  2823 00001380 C8020000                 ENTER  2,0
  2824 00001384 66B800000000             mov eax, 0
  2825 0000138A A3[E211]                 mov word [sd], ax
  2826                                  
  2827                                  ;-324   token=getlex();
  2828                                  
  2829 0000138D E83831                   call getlex
  2830 00001390 A3[3D00]                 mov word [token], ax
  2831                                  
  2832                                  ;-325   if (istoken(T_CONST)) { prs("\n mov eax, "); prL(lexvalL); return; }//1const
  2833                                  
  2834 00001393 680101                   push 257
  2835 00001396 E8CF39                   call istoken
  2836 00001399 83C402                   add  sp, 2
  2837 0000139C 08C0                     or  al, al
  2838 0000139E 0F841700                 je @@simplexpr128
  2839 000013A2 68[2916]                 push simplexpr_0
  2840 000013A5 E8063B                   call prs
  2841 000013A8 83C402                   add  sp, 2
  2842 000013AB 66FF36[4D00]             push dword [lexvalL]
  2843 000013B0 E8AE4B                   call prL
  2844 000013B3 83C404                   add  sp, 4
  2845 000013B6 E96E02                   jmp @@retn
  2846                                  
  2847                                  ;-326   mod1=typeName();
  2848                                  
  2849                                  @@simplexpr128:
  2850 000013B9 E89AF7                   call typeName
  2851 000013BC A3[E611]                 mov word [mod1], ax
  2852                                  
  2853                                  ;-327   if (token=='(')  {ids1=issign; idw1=iswidth; docall1(); return; }   //2call
  2854                                  
  2855 000013BF A1[3D00]                 mov ax, [token]
  2856 000013C2 83F828                   cmp ax, 40
  2857 000013C5 0F851200                 jne @@simplexpr129
  2858 000013C9 A0[5800]                 mov al, [issign]
  2859 000013CC A3[F211]                 mov word [ids1], ax
  2860 000013CF A0[5D00]                 mov al, [iswidth]
  2861 000013D2 A3[F611]                 mov word [idw1], ax
  2862 000013D5 E88717                   call docall1
  2863 000013D8 E94C02                   jmp @@retn
  2864                                  
  2865                                  ;-328   if (mod1 == 2) error1(" & is not allowed in left side");
  2866                                  
  2867                                  @@simplexpr129:
  2868 000013DB A1[E611]                 mov ax, [mod1]
  2869 000013DE 83F802                   cmp ax, 2
  2870 000013E1 0F850900                 jne @@simplexpr130
  2871 000013E5 68[3616]                 push simplexpr_1
  2872 000013E8 E8C43D                   call error1
  2873 000013EB 83C402                   add  sp, 2
  2874                                  
  2875                                  ;-329   irg1=checkreg();
  2876                                  
  2877                                  @@simplexpr130:
  2878 000013EE E8E006                   call checkreg
  2879 000013F1 A3[EA11]                 mov word [irg1], ax
  2880                                  
  2881                                  ;-330   if (irg1)       {doreg1(0); return; }                               //3reg
  2882                                  
  2883 000013F4 A1[EA11]                 mov ax, [irg1]
  2884 000013F7 08C0                     or  al, al
  2885 000013F9 0F840B00                 je @@simplexpr131
  2886 000013FD 6A00                     push 0
  2887 000013FF E8FA04                   call doreg1
  2888 00001402 83C402                   add  sp, 2
  2889 00001405 E91F02                   jmp @@retn
  2890                                  
  2891                                  ;-331   if (irg1 == 0) { idx1=searchname();
  2892                                  
  2893                                  @@simplexpr131:
  2894 00001408 A1[EA11]                 mov ax, [irg1]
  2895 0000140B 83F800                   cmp ax, 0
  2896 0000140E 0F853500                 jne @@simplexpr132
  2897 00001412 E861F6                   call searchname
  2898 00001415 A3[EE11]                 mov word [idx1], ax
  2899                                  
  2900                                  ;-332     gettypes(idx1); ids1=signi; idw1=wi; idt1=typei;                  //4var
  2901                                  
  2902 00001418 FF36[EE11]               push word [idx1]
  2903 0000141C E80CF5                   call gettypes
  2904 0000141F 83C402                   add  sp, 2
  2905 00001422 A1[5600]                 mov ax, [signi]
  2906 00001425 A3[F211]                 mov word [ids1], ax
  2907 00001428 A1[5B00]                 mov ax, [wi]
  2908 0000142B A3[F611]                 mov word [idw1], ax
  2909 0000142E A1[5300]                 mov ax, [typei]
  2910 00001431 A3[FA11]                 mov word [idt1], ax
  2911                                  
  2912                                  ;-333     if (idt1==2)  error1("Array not allowed left side"); }//todo     //5arr
  2913                                  
  2914 00001434 A1[FA11]                 mov ax, [idt1]
  2915 00001437 83F802                   cmp ax, 2
  2916 0000143A 0F850900                 jne @@simplexpr133
  2917 0000143E 68[5516]                 push simplexpr_2
  2918 00001441 E86B3D                   call error1
  2919 00001444 83C402                   add  sp, 2
  2920                                  @@simplexpr133:
  2921                                  
  2922                                  ;-334 
  2923                                  
  2924                                  
  2925                                  ;-335   if (isrelational()) { error1("Relational not implemented yet"); //todo
  2926                                  
  2927                                  @@simplexpr132:
  2928 00001447 E81130                   call isrelational
  2929 0000144A 08C0                     or  al, al
  2930 0000144C 0F840900                 je @@simplexpr134
  2931 00001450 68[7116]                 push simplexpr_3
  2932 00001453 E8593D                   call error1
  2933 00001456 83C402                   add  sp, 2
  2934                                  
  2935                                  ;-336   }
  2936                                  
  2937                                  
  2938                                  ;-337   if (istoken('=') == 0) error1("Assign expected");
  2939                                  
  2940                                  @@simplexpr134:
  2941 00001459 6A3D                     push 61
  2942 0000145B E80A39                   call istoken
  2943 0000145E 83C402                   add  sp, 2
  2944 00001461 83F800                   cmp ax, 0
  2945 00001464 0F850900                 jne @@simplexpr135
  2946 00001468 68[9016]                 push simplexpr_4
  2947 0000146B E8413D                   call error1
  2948 0000146E 83C402                   add  sp, 2
  2949                                  
  2950                                  ;-338   if (istoken(T_CONST) ) { val2=lexvalL;
  2951                                  
  2952                                  @@simplexpr135:
  2953 00001471 680101                   push 257
  2954 00001474 E8F138                   call istoken
  2955 00001477 83C402                   add  sp, 2
  2956 0000147A 08C0                     or  al, al
  2957 0000147C 0F846900                 je @@simplexpr136
  2958 00001480 66A1[4D00]               mov eax, [lexvalL]
  2959 00001484 66A3[0A12]               mov dword [val2], eax
  2960                                  
  2961                                  ;-339     prs("\nmov ");
  2962                                  
  2963 00001488 68[A016]                 push simplexpr_5
  2964 0000148B E8203A                   call prs
  2965 0000148E 83C402                   add  sp, 2
  2966                                  
  2967                                  ;-340     pwi(idw1);   v(idx1);
  2968                                  
  2969 00001491 FF36[F611]               push word [idw1]
  2970 00001495 E8EFEC                   call pwi
  2971 00001498 83C402                   add  sp, 2
  2972 0000149B FF36[EE11]               push word [idx1]
  2973 0000149F E854EC                   call v
  2974 000014A2 83C402                   add  sp, 2
  2975                                  
  2976                                  ;-341     prs(", "); prL(val2);
  2977                                  
  2978 000014A5 68[A716]                 push simplexpr_6
  2979 000014A8 E8033A                   call prs
  2980 000014AB 83C402                   add  sp, 2
  2981 000014AE 66FF36[0A12]             push dword [val2]
  2982 000014B3 E8AB4A                   call prL
  2983 000014B6 83C404                   add  sp, 4
  2984                                  
  2985                                  ;-342     if (idx1 >= LSTART) { prs("; ");
  2986                                  
  2987 000014B9 A1[EE11]                 mov ax, [idx1]
  2988 000014BC 3DC800                   cmp ax, 200 ;unsigned : 1
  2989 000014BF 0F8C2300                 jl  @@simplexpr137
  2990 000014C3 68[AA16]                 push simplexpr_7
  2991 000014C6 E8E539                   call prs
  2992 000014C9 83C402                   add  sp, 2
  2993                                  
  2994                                  ;-343       loadName(NA, idx1); prs(NA); } return; }
  2995                                  
  2996 000014CC FF36[EE11]               push word [idx1]
  2997 000014D0 8D06[7200]               lea  ax, [NA]
  2998 000014D4 50                       push ax
  2999 000014D5 E88549                   call loadName
  3000 000014D8 83C404                   add  sp, 4
  3001 000014DB 8D06[7200]               lea  ax, [NA]
  3002 000014DF 50                       push ax
  3003 000014E0 E8CB39                   call prs
  3004 000014E3 83C402                   add  sp, 2
  3005                                  @@simplexpr137:
  3006 000014E6 E93E01                   jmp @@retn
  3007                                  
  3008                                  ;-344   
  3009                                  
  3010                                  
  3011                                  ;-345   mod2=typeName(); irg2=checkreg();
  3012                                  
  3013                                  @@simplexpr136:
  3014 000014E9 E86AF6                   call typeName
  3015 000014EC A3[E811]                 mov word [mod2], ax
  3016 000014EF E8DF05                   call checkreg
  3017 000014F2 A3[EC11]                 mov word [irg2], ax
  3018                                  
  3019                                  ;-346   if (irg2) { prs("\nmov ");
  3020                                  
  3021 000014F5 A1[EC11]                 mov ax, [irg2]
  3022 000014F8 08C0                     or  al, al
  3023 000014FA 0F845400                 je @@simplexpr138
  3024 000014FE 68[AD16]                 push simplexpr_8
  3025 00001501 E8AA39                   call prs
  3026 00001504 83C402                   add  sp, 2
  3027                                  
  3028                                  ;-347     if (irg1) printreg(irg1, mod1);
  3029                                  
  3030 00001507 A1[EA11]                 mov ax, [irg1]
  3031 0000150A 08C0                     or  al, al
  3032 0000150C 0F841100                 je @@simplexpr139
  3033 00001510 FF36[E611]               push word [mod1]
  3034 00001514 FF36[EA11]               push word [irg1]
  3035 00001518 E82A0A                   call printreg
  3036 0000151B 83C404                   add  sp, 4
  3037                                  
  3038                                  ;-348     else { pwi(idx1); v(idx1); }
  3039                                  
  3040 0000151E E91400                   jmp @@simplexpr140
  3041                                  @@simplexpr139:
  3042 00001521 FF36[EE11]               push word [idx1]
  3043 00001525 E85FEC                   call pwi
  3044 00001528 83C402                   add  sp, 2
  3045 0000152B FF36[EE11]               push word [idx1]
  3046 0000152F E8C4EB                   call v
  3047 00001532 83C402                   add  sp, 2
  3048                                  
  3049                                  ;-349     prs(", "); printreg(irg2, mod2);return;}
  3050                                  
  3051                                  @@simplexpr140:
  3052 00001535 68[B416]                 push simplexpr_9
  3053 00001538 E87339                   call prs
  3054 0000153B 83C402                   add  sp, 2
  3055 0000153E FF36[E811]               push word [mod2]
  3056 00001542 FF36[EC11]               push word [irg2]
  3057 00001546 E8FC09                   call printreg
  3058 00001549 83C404                   add  sp, 4
  3059 0000154C E9D800                   jmp @@retn
  3060                                  
  3061                                  ;-350   else {
  3062                                  
  3063 0000154F E9D500                   jmp @@simplexpr141
  3064                                  @@simplexpr138:
  3065                                  
  3066                                  ;-351     if (mod2 == 2) error1("& not allowed");
  3067                                  
  3068 00001552 A1[E811]                 mov ax, [mod2]
  3069 00001555 83F802                   cmp ax, 2
  3070 00001558 0F850900                 jne @@simplexpr142
  3071 0000155C 68[B716]                 push simplexpr_10
  3072 0000155F E84D3C                   call error1
  3073 00001562 83C402                   add  sp, 2
  3074                                  
  3075                                  ;-352     
  3076                                  
  3077                                  
  3078                                  ;-353     idx2=searchname();
  3079                                  
  3080                                  @@simplexpr142:
  3081 00001565 E80EF5                   call searchname
  3082 00001568 A3[F011]                 mov word [idx2], ax
  3083                                  
  3084                                  ;-354     gettypes(idx2); ids2=signi; idw2=wi; idt2=typei;
  3085                                  
  3086 0000156B FF36[F011]               push word [idx2]
  3087 0000156F E8B9F3                   call gettypes
  3088 00001572 83C402                   add  sp, 2
  3089 00001575 A1[5600]                 mov ax, [signi]
  3090 00001578 A3[F411]                 mov word [ids2], ax
  3091 0000157B A1[5B00]                 mov ax, [wi]
  3092 0000157E A3[F811]                 mov word [idw2], ax
  3093 00001581 A1[5300]                 mov ax, [typei]
  3094 00001584 A3[FC11]                 mov word [idt2], ax
  3095                                  
  3096                                  ;-355     if (idt2 == 1)  error1("Array right side not implemented"); //todo
  3097                                  
  3098 00001587 A1[FC11]                 mov ax, [idt2]
  3099 0000158A 83F801                   cmp ax, 1
  3100 0000158D 0F850900                 jne @@simplexpr143
  3101 00001591 68[C516]                 push simplexpr_11
  3102 00001594 E8183C                   call error1
  3103 00001597 83C402                   add  sp, 2
  3104                                  
  3105                                  ;-356     prs("\nmov ");
  3106                                  
  3107                                  @@simplexpr143:
  3108 0000159A 68[E616]                 push simplexpr_12
  3109 0000159D E80E39                   call prs
  3110 000015A0 83C402                   add  sp, 2
  3111                                  
  3112                                  ;-357     if (irg1) printreg(irg1, mod1);
  3113                                  
  3114 000015A3 A1[EA11]                 mov ax, [irg1]
  3115 000015A6 08C0                     or  al, al
  3116 000015A8 0F841100                 je @@simplexpr144
  3117 000015AC FF36[E611]               push word [mod1]
  3118 000015B0 FF36[EA11]               push word [irg1]
  3119 000015B4 E88E09                   call printreg
  3120 000015B7 83C404                   add  sp, 4
  3121                                  
  3122                                  ;-358     else error1("Mem to Mem not allowed by x86-CPU");
  3123                                  
  3124 000015BA E90900                   jmp @@simplexpr145
  3125                                  @@simplexpr144:
  3126 000015BD 68[ED16]                 push simplexpr_13
  3127 000015C0 E8EC3B                   call error1
  3128 000015C3 83C402                   add  sp, 2
  3129                                  
  3130                                  ;-359     prs(", ");
  3131                                  
  3132                                  @@simplexpr145:
  3133 000015C6 68[0F17]                 push simplexpr_14
  3134 000015C9 E8E238                   call prs
  3135 000015CC 83C402                   add  sp, 2
  3136                                  
  3137                                  ;-360     if (mod2 == 2) a(idx2);
  3138                                  
  3139 000015CF A1[E811]                 mov ax, [mod2]
  3140 000015D2 83F802                   cmp ax, 2
  3141 000015D5 0F850D00                 jne @@simplexpr146
  3142 000015D9 FF36[F011]               push word [idx2]
  3143 000015DD E8EDEA                   call a
  3144 000015E0 83C402                   add  sp, 2
  3145                                  
  3146                                  ;-361     else {
  3147                                  
  3148 000015E3 E94100                   jmp @@simplexpr147
  3149                                  @@simplexpr146:
  3150                                  
  3151                                  ;-362       pwi(idw2);  v(idx2);
  3152                                  
  3153 000015E6 FF36[F811]               push word [idw2]
  3154 000015EA E89AEB                   call pwi
  3155 000015ED 83C402                   add  sp, 2
  3156 000015F0 FF36[F011]               push word [idx2]
  3157 000015F4 E8FFEA                   call v
  3158 000015F7 83C402                   add  sp, 2
  3159                                  
  3160                                  ;-363       if (idx2 >= LSTART) { prs("; ");
  3161                                  
  3162 000015FA A1[F011]                 mov ax, [idx2]
  3163 000015FD 3DC800                   cmp ax, 200 ;unsigned : 1
  3164 00001600 0F8C2300                 jl  @@simplexpr148
  3165 00001604 68[1217]                 push simplexpr_15
  3166 00001607 E8A438                   call prs
  3167 0000160A 83C402                   add  sp, 2
  3168                                  
  3169                                  ;-364        loadName(NA, idx2); prs(NA); }  }
  3170                                  
  3171 0000160D FF36[F011]               push word [idx2]
  3172 00001611 8D06[7200]               lea  ax, [NA]
  3173 00001615 50                       push ax
  3174 00001616 E84448                   call loadName
  3175 00001619 83C404                   add  sp, 4
  3176 0000161C 8D06[7200]               lea  ax, [NA]
  3177 00001620 50                       push ax
  3178 00001621 E88A38                   call prs
  3179 00001624 83C402                   add  sp, 2
  3180                                  @@simplexpr148:
  3181                                  
  3182                                  ;-365   }
  3183                                  
  3184                                  @@simplexpr147:
  3185                                  
  3186                                  ;-366 }
  3187                                  
  3188                                  @@simplexpr141:
  3189                                  
  3190                                  ;-367 char ops[6];
  3191                                  
  3192 00001627 C9                      @@retn: LEAVE
  3193 00001628 C3                       ret
  3194                                  ; ENDP
  3195 00001629 5C6E206D6F76206561-     simplexpr_0 db "\n mov eax, ",0
  3196 00001632 782C2000           
  3197 00001636 2026206973206E6F74-     simplexpr_1 db " & is not allowed in left side",0
  3198 0000163F 20616C6C6F77656420-
  3199 00001648 696E206C6566742073-
  3200 00001651 69646500           
  3201 00001655 4172726179206E6F74-     simplexpr_2 db "Array not allowed left side",0
  3202 0000165E 20616C6C6F77656420-
  3203 00001667 6C6566742073696465-
  3204 00001670 00                 
  3205 00001671 52656C6174696F6E61-     simplexpr_3 db "Relational not implemented yet",0
  3206 0000167A 6C206E6F7420696D70-
  3207 00001683 6C656D656E74656420-
  3208 0000168C 79657400           
  3209 00001690 41737369676E206578-     simplexpr_4 db "Assign expected",0
  3210 00001699 70656374656400     
  3211 000016A0 5C6E6D6F762000          simplexpr_5 db "\nmov ",0
  3212 000016A7 2C2000                  simplexpr_6 db ", ",0
  3213 000016AA 3B2000                  simplexpr_7 db "; ",0
  3214 000016AD 5C6E6D6F762000          simplexpr_8 db "\nmov ",0
  3215 000016B4 2C2000                  simplexpr_9 db ", ",0
  3216 000016B7 26206E6F7420616C6C-     simplexpr_10 db "& not allowed",0
  3217 000016C0 6F77656400         
  3218 000016C5 417272617920726967-     simplexpr_11 db "Array right side not implemented",0
  3219 000016CE 68742073696465206E-
  3220 000016D7 6F7420696D706C656D-
  3221 000016E0 656E74656400       
  3222 000016E6 5C6E6D6F762000          simplexpr_12 db "\nmov ",0
  3223 000016ED 4D656D20746F204D65-     simplexpr_13 db "Mem to Mem not allowed by x86-CPU",0
  3224 000016F6 6D206E6F7420616C6C-
  3225 000016FF 6F7765642062792078-
  3226 00001708 38362D43505500     
  3227 0000170F 2C2000                  simplexpr_14 db ", ",0
  3228 00001712 3B2000                  simplexpr_15 db "; ",0
  3229                                  section .bss
  3230                                  absolute 46858
  3231 0000B70A <res 00000006>          ops resb 6
  3232                                  section .text
  3233                                  
  3234                                  ;-368 int getop() { int i;              *ops=0;       _ un=0;
  3235                                  
  3236                                  
  3237                                  getop:  ; *** PROC ***
  3238                                  ;Function : getop, Number of local variables: 1
  3239                                  ;   # type sign width line used address name   list of local variables
  3240                                  ;  200 var sign word   368 NULL bp-2    i;
  3241 00001715 C8020000                 ENTER  2,0
  3242 00001719 66B800000000             mov eax, 0
  3243 0000171F 8B1E0AB7                 mov  bx, [ops]
  3244 00001723 8807                     mov  [bx], al
  3245 00001725 C606[E411]00            mov byte [un], 0
  3246                                  
  3247                                  ;-369   if (istoken('='))         {strcpy(ops, "mov");_ un=2;}
  3248                                  
  3249 0000172A 6A3D                     push 61
  3250 0000172C E83936                   call istoken
  3251 0000172F 83C402                   add  sp, 2
  3252 00001732 08C0                     or  al, al
  3253 00001734 0F841300                 je @@getop149
  3254 00001738 68[A118]                 push getop_0
  3255 0000173B 8D060AB7                 lea  ax, [ops]
  3256 0000173F 50                       push ax
  3257 00001740 E8654A                   call strcpy
  3258 00001743 83C404                   add  sp, 4
  3259 00001746 C606[E411]02            mov byte [un], 2
  3260                                  
  3261                                  ;-370   if (istoken(T_PLUSASS))   {strcpy(ops, "add");_ un=2;}
  3262                                  
  3263                                  @@getop149:
  3264 0000174B 68CE04                   push 1230
  3265 0000174E E81736                   call istoken
  3266 00001751 83C402                   add  sp, 2
  3267 00001754 08C0                     or  al, al
  3268 00001756 0F841300                 je @@getop150
  3269 0000175A 68[A518]                 push getop_1
  3270 0000175D 8D060AB7                 lea  ax, [ops]
  3271 00001761 50                       push ax
  3272 00001762 E8434A                   call strcpy
  3273 00001765 83C404                   add  sp, 4
  3274 00001768 C606[E411]02            mov byte [un], 2
  3275                                  
  3276                                  ;-371   if (istoken(T_MINUSASS))  {strcpy(ops, "sub");_ un=2;}
  3277                                  
  3278                                  @@getop150:
  3279 0000176D 68CF04                   push 1231
  3280 00001770 E8F535                   call istoken
  3281 00001773 83C402                   add  sp, 2
  3282 00001776 08C0                     or  al, al
  3283 00001778 0F841300                 je @@getop151
  3284 0000177C 68[A918]                 push getop_2
  3285 0000177F 8D060AB7                 lea  ax, [ops]
  3286 00001783 50                       push ax
  3287 00001784 E8214A                   call strcpy
  3288 00001787 83C404                   add  sp, 4
  3289 0000178A C606[E411]02            mov byte [un], 2
  3290                                  
  3291                                  ;-372   if (istoken(T_ANDASS))    {strcpy(ops, "and");_ un=2;}
  3292                                  
  3293                                  @@getop151:
  3294 0000178F 68D204                   push 1234
  3295 00001792 E8D335                   call istoken
  3296 00001795 83C402                   add  sp, 2
  3297 00001798 08C0                     or  al, al
  3298 0000179A 0F841300                 je @@getop152
  3299 0000179E 68[AD18]                 push getop_3
  3300 000017A1 8D060AB7                 lea  ax, [ops]
  3301 000017A5 50                       push ax
  3302 000017A6 E8FF49                   call strcpy
  3303 000017A9 83C404                   add  sp, 4
  3304 000017AC C606[E411]02            mov byte [un], 2
  3305                                  
  3306                                  ;-373   if (istoken(T_ORASS))     {strcpy(ops, "or" );_ un=2;}
  3307                                  
  3308                                  @@getop152:
  3309 000017B1 68D304                   push 1235
  3310 000017B4 E8B135                   call istoken
  3311 000017B7 83C402                   add  sp, 2
  3312 000017BA 08C0                     or  al, al
  3313 000017BC 0F841300                 je @@getop153
  3314 000017C0 68[B118]                 push getop_4
  3315 000017C3 8D060AB7                 lea  ax, [ops]
  3316 000017C7 50                       push ax
  3317 000017C8 E8DD49                   call strcpy
  3318 000017CB 83C404                   add  sp, 4
  3319 000017CE C606[E411]02            mov byte [un], 2
  3320                                  
  3321                                  ;-374   if (istoken(T_LESSLESS))  {strcpy(ops, "shl");_ un=2;}
  3322                                  
  3323                                  @@getop153:
  3324 000017D3 68D804                   push 1240
  3325 000017D6 E88F35                   call istoken
  3326 000017D9 83C402                   add  sp, 2
  3327 000017DC 08C0                     or  al, al
  3328 000017DE 0F841300                 je @@getop154
  3329 000017E2 68[B418]                 push getop_5
  3330 000017E5 8D060AB7                 lea  ax, [ops]
  3331 000017E9 50                       push ax
  3332 000017EA E8BB49                   call strcpy
  3333 000017ED 83C404                   add  sp, 4
  3334 000017F0 C606[E411]02            mov byte [un], 2
  3335                                  
  3336                                  ;-375   if (istoken(T_GREATGREAT)){strcpy(ops, "shr");_ un=2;}
  3337                                  
  3338                                  @@getop154:
  3339 000017F5 68D904                   push 1241
  3340 000017F8 E86D35                   call istoken
  3341 000017FB 83C402                   add  sp, 2
  3342 000017FE 08C0                     or  al, al
  3343 00001800 0F841300                 je @@getop155
  3344 00001804 68[B818]                 push getop_6
  3345 00001807 8D060AB7                 lea  ax, [ops]
  3346 0000180B 50                       push ax
  3347 0000180C E89949                   call strcpy
  3348 0000180F 83C404                   add  sp, 4
  3349 00001812 C606[E411]02            mov byte [un], 2
  3350                                  
  3351                                  ;-376   if (istoken(T_PLUSPLUS))  {strcpy(ops, "inc");_ un=1;}
  3352                                  
  3353                                  @@getop155:
  3354 00001817 68C304                   push 1219
  3355 0000181A E84B35                   call istoken
  3356 0000181D 83C402                   add  sp, 2
  3357 00001820 08C0                     or  al, al
  3358 00001822 0F841300                 je @@getop156
  3359 00001826 68[BC18]                 push getop_7
  3360 00001829 8D060AB7                 lea  ax, [ops]
  3361 0000182D 50                       push ax
  3362 0000182E E87749                   call strcpy
  3363 00001831 83C404                   add  sp, 4
  3364 00001834 C606[E411]01            mov byte [un], 1
  3365                                  
  3366                                  ;-377   if (istoken(T_MINUSMINUS)){strcpy(ops, "dec");_ un=1;}
  3367                                  
  3368                                  @@getop156:
  3369 00001839 68C904                   push 1225
  3370 0000183C E82935                   call istoken
  3371 0000183F 83C402                   add  sp, 2
  3372 00001842 08C0                     or  al, al
  3373 00001844 0F841300                 je @@getop157
  3374 00001848 68[C018]                 push getop_8
  3375 0000184B 8D060AB7                 lea  ax, [ops]
  3376 0000184F 50                       push ax
  3377 00001850 E85549                   call strcpy
  3378 00001853 83C404                   add  sp, 4
  3379 00001856 C606[E411]01            mov byte [un], 1
  3380                                  
  3381                                  ;-378   if (istoken(T_MULASS))    {strcpy(ops, "mul");_ un=1;}//reg only
  3382                                  
  3383                                  @@getop157:
  3384 0000185B 68D004                   push 1232
  3385 0000185E E80735                   call istoken
  3386 00001861 83C402                   add  sp, 2
  3387 00001864 08C0                     or  al, al
  3388 00001866 0F841300                 je @@getop158
  3389 0000186A 68[C418]                 push getop_9
  3390 0000186D 8D060AB7                 lea  ax, [ops]
  3391 00001871 50                       push ax
  3392 00001872 E83349                   call strcpy
  3393 00001875 83C404                   add  sp, 4
  3394 00001878 C606[E411]01            mov byte [un], 1
  3395                                  
  3396                                  ;-379   if (istoken(T_DIVASS))    {strcpy(ops, "div");_ un=1;}//reg only
  3397                                  
  3398                                  @@getop158:
  3399 0000187D 68D104                   push 1233
  3400 00001880 E8E534                   call istoken
  3401 00001883 83C402                   add  sp, 2
  3402 00001886 08C0                     or  al, al
  3403 00001888 0F841300                 je @@getop159
  3404 0000188C 68[C818]                 push getop_10
  3405 0000188F 8D060AB7                 lea  ax, [ops]
  3406 00001893 50                       push ax
  3407 00001894 E81149                   call strcpy
  3408 00001897 83C404                   add  sp, 4
  3409 0000189A C606[E411]01            mov byte [un], 1
  3410                                  
  3411                                  ;-380 /*  if (istoken('+'))         {strcpy(ops, "add");_ un=3;}
  3412                                  
  3413                                  
  3414                                  ;-381   if (istoken('-'))         {strcpy(ops, "sub");_ un=3;}
  3415                                  
  3416                                  
  3417                                  ;-382   if (istoken('&'))         {strcpy(ops, "and");_ un=3;}
  3418                                  
  3419                                  
  3420                                  ;-383   if (istoken('|'))         {strcpy(ops, "or" );_ un=3;}
  3421                                  
  3422                                  
  3423                                  ;-384   if (istoken('*'))                             _ un=4;
  3424                                  
  3425                                  
  3426                                  ;-385   if (istoken('%'))                             _ un=5;
  3427                                  
  3428                                  
  3429                                  ;-386   if (istoken('/'))                             _ un=6;     */
  3430                                  
  3431                                  
  3432                                  ;-387 }
  3433                                  
  3434                                  @@getop159:
  3435                                  
  3436                                  ;-388 int prleftreg() { prnl(); prs(ops); prs("  "); printreg(irg1, mod1); }
  3437 0000189F C9                       LEAVE
  3438 000018A0 C3                       ret
  3439                                  ; ENDP
  3440 000018A1 6D6F7600                getop_0 db "mov",0
  3441 000018A5 61646400                getop_1 db "add",0
  3442 000018A9 73756200                getop_2 db "sub",0
  3443 000018AD 616E6400                getop_3 db "and",0
  3444 000018B1 6F7200                  getop_4 db "or",0
  3445 000018B4 73686C00                getop_5 db "shl",0
  3446 000018B8 73687200                getop_6 db "shr",0
  3447 000018BC 696E6300                getop_7 db "inc",0
  3448 000018C0 64656300                getop_8 db "dec",0
  3449 000018C4 6D756C00                getop_9 db "mul",0
  3450 000018C8 64697600                getop_10 db "div",0
  3451                                  
  3452                                  prleftreg:  ; *** PROC ***
  3453 000018CC E8D135                   call prnl
  3454 000018CF 8D060AB7                 lea  ax, [ops]
  3455 000018D3 50                       push ax
  3456 000018D4 E8D735                   call prs
  3457 000018D7 83C402                   add  sp, 2
  3458 000018DA 68[F218]                 push prleftreg_0
  3459 000018DD E8CE35                   call prs
  3460 000018E0 83C402                   add  sp, 2
  3461 000018E3 FF36[E611]               push word [mod1]
  3462 000018E7 FF36[EA11]               push word [irg1]
  3463 000018EB E85706                   call printreg
  3464 000018EE 83C404                   add  sp, 4
  3465                                  
  3466                                  ;-389 int prleftvar() { }
  3467                                  
  3468 000018F1 C3                       ret
  3469                                  ; ENDP
  3470 000018F2 202000                  prleftreg_0 db "  ",0
  3471                                  
  3472                                  prleftvar:  ; *** PROC ***
  3473                                  
  3474                                  ;-390 
  3475                                  
  3476                                  
  3477                                  ;-391 int printvar(int i, int mode) {  }
  3478                                  
  3479 000018F5 C3                       ret
  3480                                  ; ENDP
  3481                                  
  3482                                  printvar:  ; *** PROC ***
  3483                                  ;Function : printvar, Number of local variables: 2
  3484                                  ;   # type sign width line used address name   list of local variables
  3485                                  ;  200 var sign word   391 NULL bp+4    i
  3486                                  ;  201 var sign word   391 NULL bp+6    mode;
  3487 000018F6 C8000000                 ENTER  0,0
  3488                                  
  3489                                  ;-392 
  3490                                  
  3491                                  
  3492                                  ;-393 int doreg1(int iscmp1) { int i; char sz;
  3493 000018FA C9                       LEAVE
  3494 000018FB C3                       ret
  3495                                  ; ENDP
  3496                                  
  3497                                  doreg1:  ; *** PROC ***
  3498                                  
  3499                                  ;-394   getop();
  3500                                  
  3501                                  ;Function : doreg1, Number of local variables: 3
  3502                                  ;   # type sign width line used address name   list of local variables
  3503                                  ;  200 var sign word   393 NULL bp+4    iscmp1
  3504                                  ;  201 var sign word   393 NULL bp-2    i
  3505                                  ;  202 var sign byte   393 NULL bp-4    sz;
  3506 000018FC C8040000                 ENTER  4,0
  3507 00001900 E812FE                   call getop
  3508                                  
  3509                                  ;-395   if (iscmp1 == 1) {
  3510                                  
  3511 00001903 8B4604                   mov ax, [bp+4]
  3512 00001906 83F801                   cmp ax, 1
  3513 00001909 0F852700                 jne @@doreg1160
  3514                                  
  3515                                  ;-396       token=getlex();
  3516                                  
  3517 0000190D E8B82B                   call getlex
  3518 00001910 A3[3D00]                 mov word [token], ax
  3519                                  
  3520                                  ;-397       if (isrelational() ==0) error1("relational expected");
  3521                                  
  3522 00001913 E8452B                   call isrelational
  3523 00001916 83F800                   cmp ax, 0
  3524 00001919 0F850900                 jne @@doreg1161
  3525 0000191D 68[A01A]                 push doreg1_0
  3526 00001920 E88C38                   call error1
  3527 00001923 83C402                   add  sp, 2
  3528                                  
  3529                                  ;-398       strcpy(ops, "cmp");
  3530                                  
  3531                                  @@doreg1161:
  3532 00001926 68[B41A]                 push doreg1_1
  3533 00001929 8D060AB7                 lea  ax, [ops]
  3534 0000192D 50                       push ax
  3535 0000192E E87748                   call strcpy
  3536 00001931 83C404                   add  sp, 4
  3537                                  
  3538                                  ;-399       }
  3539                                  
  3540                                  
  3541                                  ;-400   if (un==1) { prleftreg(); return; }
  3542                                  
  3543                                  @@doreg1160:
  3544 00001934 A0[E411]                 mov al, [un]
  3545 00001937 3C01                     cmp al, 1
  3546 00001939 0F850600                 jne @@doreg1162
  3547 0000193D E88CFF                   call prleftreg
  3548 00001940 E95B01                   jmp @@retn
  3549                                  
  3550                                  ;-401 
  3551                                  
  3552                                  
  3553                                  ;-402   if (istoken(T_CONST)) {prleftreg(); prs(", "); prL(lexvalL); goto reg1;}
  3554                                  
  3555                                  @@doreg1162:
  3556 00001943 680101                   push 257
  3557 00001946 E81F34                   call istoken
  3558 00001949 83C402                   add  sp, 2
  3559 0000194C 08C0                     or  al, al
  3560 0000194E 0F841A00                 je @@doreg1163
  3561 00001952 E877FF                   call prleftreg
  3562 00001955 68[B81A]                 push doreg1_2
  3563 00001958 E85335                   call prs
  3564 0000195B 83C402                   add  sp, 2
  3565 0000195E 66FF36[4D00]             push dword [lexvalL]
  3566 00001963 E8FB45                   call prL
  3567 00001966 83C404                   add  sp, 4
  3568 00001969 E90D01                   jmp @@reg1
  3569                                  
  3570                                  ;-403   
  3571                                  
  3572                                  
  3573                                  ;-404   mod2=typeName(); irg2=checkreg();
  3574                                  
  3575                                  @@doreg1163:
  3576 0000196C E8E7F1                   call typeName
  3577 0000196F A3[E811]                 mov word [mod2], ax
  3578 00001972 E85C01                   call checkreg
  3579 00001975 A3[EC11]                 mov word [irg2], ax
  3580                                  
  3581                                  ;-405   if (irg2) {prleftreg(); prs(", "); printreg(irg2, mod2); goto reg1;}
  3582                                  
  3583 00001978 A1[EC11]                 mov ax, [irg2]
  3584 0000197B 08C0                     or  al, al
  3585 0000197D 0F841D00                 je @@doreg1164
  3586 00001981 E848FF                   call prleftreg
  3587 00001984 68[BB1A]                 push doreg1_3
  3588 00001987 E82435                   call prs
  3589 0000198A 83C402                   add  sp, 2
  3590 0000198D FF36[E811]               push word [mod2]
  3591 00001991 FF36[EC11]               push word [irg2]
  3592 00001995 E8AD05                   call printreg
  3593 00001998 83C404                   add  sp, 4
  3594 0000199B E9DB00                   jmp @@reg1
  3595                                  
  3596                                  ;-406 
  3597                                  
  3598                                  
  3599                                  ;-407   i=searchname();
  3600                                  
  3601                                  @@doreg1164:
  3602 0000199E E8D5F0                   call searchname
  3603 000019A1 8946FE                   mov word [bp-2], ax
  3604                                  
  3605                                  ;-408   gettypes(i);
  3606                                  
  3607 000019A4 FF76FE                   push word [bp-2]
  3608 000019A7 E881EF                   call gettypes
  3609 000019AA 83C402                   add  sp, 2
  3610                                  
  3611                                  ;-409   ids2=signi; idw2=wi; idt2=typei;
  3612                                  
  3613 000019AD A1[5600]                 mov ax, [signi]
  3614 000019B0 A3[F411]                 mov word [ids2], ax
  3615 000019B3 A1[5B00]                 mov ax, [wi]
  3616 000019B6 A3[F811]                 mov word [idw2], ax
  3617 000019B9 A1[5300]                 mov ax, [typei]
  3618 000019BC A3[FC11]                 mov word [idt2], ax
  3619                                  
  3620                                  ;-410   if (eqstr(ops,"mov")) {_ sz=0;
  3621                                  
  3622 000019BF 68[BE1A]                 push doreg1_4
  3623 000019C2 8D060AB7                 lea  ax, [ops]
  3624 000019C6 50                       push ax
  3625 000019C7 E83249                   call eqstr
  3626 000019CA 83C404                   add  sp, 4
  3627 000019CD 08C0                     or  al, al
  3628 000019CF 0F842E00                 je @@doreg1165
  3629 000019D3 C646FC00                mov byte [bp-4], 0; sz
  3630                                  
  3631                                  ;-411     if (_ irg1 >= 17) if (_ idw2==1) sz++;  // cast byte to word or dword
  3632                                  
  3633 000019D7 833E[EA11]11            cmp word [irg1], 17 ;unsigned : 1
  3634 000019DC 0F8C0C00                 jl  @@doreg1166
  3635 000019E0 833E[F811]01            cmp word [idw2], 1
  3636 000019E5 0F850300                 jne @@doreg1167
  3637 000019E9 FE46FC                   inc  byte [bp-4]
  3638                                  
  3639                                  ;-412     if (_ irg1 >= 47) if (_ idw2==2) sz++; }// cast word to dword
  3640                                  
  3641                                  @@doreg1167:
  3642                                  @@doreg1166:
  3643 000019EC 833E[EA11]2F            cmp word [irg1], 47 ;unsigned : 1
  3644 000019F1 0F8C0C00                 jl  @@doreg1168
  3645 000019F5 833E[F811]02            cmp word [idw2], 2
  3646 000019FA 0F850300                 jne @@doreg1169
  3647 000019FE FE46FC                   inc  byte [bp-4]
  3648                                  @@doreg1169:
  3649                                  @@doreg1168:
  3650                                  
  3651                                  ;-413   if (sz) { if (ids2) strcpy(ops,"movsx"); else strcpy(ops,"movzx"); }
  3652                                  
  3653                                  @@doreg1165:
  3654 00001A01 8A46FC                   mov al, [bp-4]
  3655 00001A04 08C0                     or  al, al
  3656 00001A06 0F842800                 je @@doreg1170
  3657 00001A0A A1[F411]                 mov ax, [ids2]
  3658 00001A0D 08C0                     or  al, al
  3659 00001A0F 0F841100                 je @@doreg1171
  3660 00001A13 68[C21A]                 push doreg1_5
  3661 00001A16 8D060AB7                 lea  ax, [ops]
  3662 00001A1A 50                       push ax
  3663 00001A1B E88A47                   call strcpy
  3664 00001A1E 83C404                   add  sp, 4
  3665 00001A21 E90E00                   jmp @@doreg1172
  3666                                  @@doreg1171:
  3667 00001A24 68[C81A]                 push doreg1_6
  3668 00001A27 8D060AB7                 lea  ax, [ops]
  3669 00001A2B 50                       push ax
  3670 00001A2C E87947                   call strcpy
  3671 00001A2F 83C404                   add  sp, 4
  3672                                  @@doreg1172:
  3673                                  
  3674                                  ;-414 
  3675                                  
  3676                                  
  3677                                  ;-415   prleftreg(); prs(", ");
  3678                                  
  3679                                  @@doreg1170:
  3680 00001A32 E897FE                   call prleftreg
  3681 00001A35 68[CE1A]                 push doreg1_7
  3682 00001A38 E87334                   call prs
  3683 00001A3B 83C402                   add  sp, 2
  3684                                  
  3685                                  ;-416   
  3686                                  
  3687                                  
  3688                                  ;-417 //  if (sz) { if (_ idw2==1) prs("byte "); else prs("word "); }
  3689                                  
  3690                                  
  3691                                  ;-418   if (sz) pwi(idw2);
  3692                                  
  3693 00001A3E 8A46FC                   mov al, [bp-4]
  3694 00001A41 08C0                     or  al, al
  3695 00001A43 0F840A00                 je @@doreg1173
  3696 00001A47 FF36[F811]               push word [idw2]
  3697 00001A4B E839E7                   call pwi
  3698 00001A4E 83C402                   add  sp, 2
  3699                                  
  3700                                  ;-419   
  3701                                  
  3702                                  
  3703                                  ;-420   if (mod2 == 2) a(i);
  3704                                  
  3705                                  @@doreg1173:
  3706 00001A51 A1[E811]                 mov ax, [mod2]
  3707 00001A54 83F802                   cmp ax, 2
  3708 00001A57 0F850C00                 jne @@doreg1174
  3709 00001A5B FF76FE                   push word [bp-2]
  3710 00001A5E E86CE6                   call a
  3711 00001A61 83C402                   add  sp, 2
  3712                                  
  3713                                  ;-421   else  {pwi(i); v(i); }
  3714                                  
  3715 00001A64 E91200                   jmp @@doreg1175
  3716                                  @@doreg1174:
  3717 00001A67 FF76FE                   push word [bp-2]
  3718 00001A6A E81AE7                   call pwi
  3719 00001A6D 83C402                   add  sp, 2
  3720 00001A70 FF76FE                   push word [bp-2]
  3721 00001A73 E880E6                   call v
  3722 00001A76 83C402                   add  sp, 2
  3723                                  
  3724                                  ;-422   reg1: if (iscmp1 == 1) {cmpneg(0); prs(fname); expect(')'); }
  3725                                  
  3726                                  @@doreg1175:
  3727                                  @@reg1:
  3728 00001A79 8B4604                   mov ax, [bp+4]
  3729 00001A7C 83F801                   cmp ax, 1
  3730 00001A7F 0F851B00                 jne @@doreg1176
  3731 00001A83 6A00                     push 0
  3732 00001A85 E88826                   call cmpneg
  3733 00001A88 83C402                   add  sp, 2
  3734 00001A8B 8D06EE81                 lea  ax, [fname]
  3735 00001A8F 50                       push ax
  3736 00001A90 E81B34                   call prs
  3737 00001A93 83C402                   add  sp, 2
  3738 00001A96 6A29                     push 41
  3739 00001A98 E8F532                   call expect
  3740 00001A9B 83C402                   add  sp, 2
  3741                                  
  3742                                  ;-423 }
  3743                                  
  3744                                  @@doreg1176:
  3745                                  
  3746                                  ;-424 int checkreg() { // >=17 = 16bit, >=47 = 32bit
  3747                                  
  3748 00001A9E C9                      @@retn: LEAVE
  3749 00001A9F C3                       ret
  3750                                  ; ENDP
  3751 00001AA0 72656C6174696F6E61-     doreg1_0 db "relational expected",0
  3752 00001AA9 6C2065787065637465-
  3753 00001AB2 6400               
  3754 00001AB4 636D7000                doreg1_1 db "cmp",0
  3755 00001AB8 2C2000                  doreg1_2 db ", ",0
  3756 00001ABB 2C2000                  doreg1_3 db ", ",0
  3757 00001ABE 6D6F7600                doreg1_4 db "mov",0
  3758 00001AC2 6D6F76737800            doreg1_5 db "movsx",0
  3759 00001AC8 6D6F767A7800            doreg1_6 db "movzx",0
  3760 00001ACE 2C2000                  doreg1_7 db ", ",0
  3761                                  
  3762                                  checkreg:  ; *** PROC ***
  3763                                  
  3764                                  ;-425   if (strlen(symbol) <  2) return 0;
  3765                                  
  3766 00001AD1 8D066E81                 lea  ax, [symbol]
  3767 00001AD5 50                       push ax
  3768 00001AD6 E8A446                   call strlen
  3769 00001AD9 83C402                   add  sp, 2
  3770 00001ADC 83F802                   cmp ax, 2
  3771 00001ADF 0F8D0900                 jge @@checkreg177
  3772 00001AE3 66B800000000             mov eax, 0
  3773 00001AE9 E9A703                   jmp @@retn
  3774                                  
  3775                                  ;-426   if (eqstr(symbol,"al")) return 1;   if (eqstr(symbol,"cl")) return 3;
  3776                                  
  3777                                  @@checkreg177:
  3778 00001AEC 68[941E]                 push checkreg_0
  3779 00001AEF 8D066E81                 lea  ax, [symbol]
  3780 00001AF3 50                       push ax
  3781 00001AF4 E80548                   call eqstr
  3782 00001AF7 83C404                   add  sp, 4
  3783 00001AFA 08C0                     or  al, al
  3784 00001AFC 0F840900                 je @@checkreg178
  3785 00001B00 66B801000000             mov eax, 1
  3786 00001B06 E98A03                   jmp @@retn
  3787                                  @@checkreg178:
  3788 00001B09 68[971E]                 push checkreg_1
  3789 00001B0C 8D066E81                 lea  ax, [symbol]
  3790 00001B10 50                       push ax
  3791 00001B11 E8E847                   call eqstr
  3792 00001B14 83C404                   add  sp, 4
  3793 00001B17 08C0                     or  al, al
  3794 00001B19 0F840900                 je @@checkreg179
  3795 00001B1D 66B803000000             mov eax, 3
  3796 00001B23 E96D03                   jmp @@retn
  3797                                  
  3798                                  ;-427   if (eqstr(symbol,"dl")) return 5;   if (eqstr(symbol,"bl")) return 7;
  3799                                  
  3800                                  @@checkreg179:
  3801 00001B26 68[9A1E]                 push checkreg_2
  3802 00001B29 8D066E81                 lea  ax, [symbol]
  3803 00001B2D 50                       push ax
  3804 00001B2E E8CB47                   call eqstr
  3805 00001B31 83C404                   add  sp, 4
  3806 00001B34 08C0                     or  al, al
  3807 00001B36 0F840900                 je @@checkreg180
  3808 00001B3A 66B805000000             mov eax, 5
  3809 00001B40 E95003                   jmp @@retn
  3810                                  @@checkreg180:
  3811 00001B43 68[9D1E]                 push checkreg_3
  3812 00001B46 8D066E81                 lea  ax, [symbol]
  3813 00001B4A 50                       push ax
  3814 00001B4B E8AE47                   call eqstr
  3815 00001B4E 83C404                   add  sp, 4
  3816 00001B51 08C0                     or  al, al
  3817 00001B53 0F840900                 je @@checkreg181
  3818 00001B57 66B807000000             mov eax, 7
  3819 00001B5D E93303                   jmp @@retn
  3820                                  
  3821                                  ;-428   if (eqstr(symbol,"ah")) return 9;   if (eqstr(symbol,"ch")) return 11;
  3822                                  
  3823                                  @@checkreg181:
  3824 00001B60 68[A01E]                 push checkreg_4
  3825 00001B63 8D066E81                 lea  ax, [symbol]
  3826 00001B67 50                       push ax
  3827 00001B68 E89147                   call eqstr
  3828 00001B6B 83C404                   add  sp, 4
  3829 00001B6E 08C0                     or  al, al
  3830 00001B70 0F840900                 je @@checkreg182
  3831 00001B74 66B809000000             mov eax, 9
  3832 00001B7A E91603                   jmp @@retn
  3833                                  @@checkreg182:
  3834 00001B7D 68[A31E]                 push checkreg_5
  3835 00001B80 8D066E81                 lea  ax, [symbol]
  3836 00001B84 50                       push ax
  3837 00001B85 E87447                   call eqstr
  3838 00001B88 83C404                   add  sp, 4
  3839 00001B8B 08C0                     or  al, al
  3840 00001B8D 0F840900                 je @@checkreg183
  3841 00001B91 66B80B000000             mov eax, 11
  3842 00001B97 E9F902                   jmp @@retn
  3843                                  
  3844                                  ;-429   if (eqstr(symbol,"dh")) return 13;  if (eqstr(symbol,"bh")) return 15;
  3845                                  
  3846                                  @@checkreg183:
  3847 00001B9A 68[A61E]                 push checkreg_6
  3848 00001B9D 8D066E81                 lea  ax, [symbol]
  3849 00001BA1 50                       push ax
  3850 00001BA2 E85747                   call eqstr
  3851 00001BA5 83C404                   add  sp, 4
  3852 00001BA8 08C0                     or  al, al
  3853 00001BAA 0F840900                 je @@checkreg184
  3854 00001BAE 66B80D000000             mov eax, 13
  3855 00001BB4 E9DC02                   jmp @@retn
  3856                                  @@checkreg184:
  3857 00001BB7 68[A91E]                 push checkreg_7
  3858 00001BBA 8D066E81                 lea  ax, [symbol]
  3859 00001BBE 50                       push ax
  3860 00001BBF E83A47                   call eqstr
  3861 00001BC2 83C404                   add  sp, 4
  3862 00001BC5 08C0                     or  al, al
  3863 00001BC7 0F840900                 je @@checkreg185
  3864 00001BCB 66B80F000000             mov eax, 15
  3865 00001BD1 E9BF02                   jmp @@retn
  3866                                  
  3867                                  ;-430   if (eqstr(symbol,"ax")) return 17;  if (eqstr(symbol,"cx")) return 19;
  3868                                  
  3869                                  @@checkreg185:
  3870 00001BD4 68[AC1E]                 push checkreg_8
  3871 00001BD7 8D066E81                 lea  ax, [symbol]
  3872 00001BDB 50                       push ax
  3873 00001BDC E81D47                   call eqstr
  3874 00001BDF 83C404                   add  sp, 4
  3875 00001BE2 08C0                     or  al, al
  3876 00001BE4 0F840900                 je @@checkreg186
  3877 00001BE8 66B811000000             mov eax, 17
  3878 00001BEE E9A202                   jmp @@retn
  3879                                  @@checkreg186:
  3880 00001BF1 68[AF1E]                 push checkreg_9
  3881 00001BF4 8D066E81                 lea  ax, [symbol]
  3882 00001BF8 50                       push ax
  3883 00001BF9 E80047                   call eqstr
  3884 00001BFC 83C404                   add  sp, 4
  3885 00001BFF 08C0                     or  al, al
  3886 00001C01 0F840900                 je @@checkreg187
  3887 00001C05 66B813000000             mov eax, 19
  3888 00001C0B E98502                   jmp @@retn
  3889                                  
  3890                                  ;-431   if (eqstr(symbol,"dx")) return 21;  if (eqstr(symbol,"bx")) return 23;
  3891                                  
  3892                                  @@checkreg187:
  3893 00001C0E 68[B21E]                 push checkreg_10
  3894 00001C11 8D066E81                 lea  ax, [symbol]
  3895 00001C15 50                       push ax
  3896 00001C16 E8E346                   call eqstr
  3897 00001C19 83C404                   add  sp, 4
  3898 00001C1C 08C0                     or  al, al
  3899 00001C1E 0F840900                 je @@checkreg188
  3900 00001C22 66B815000000             mov eax, 21
  3901 00001C28 E96802                   jmp @@retn
  3902                                  @@checkreg188:
  3903 00001C2B 68[B51E]                 push checkreg_11
  3904 00001C2E 8D066E81                 lea  ax, [symbol]
  3905 00001C32 50                       push ax
  3906 00001C33 E8C646                   call eqstr
  3907 00001C36 83C404                   add  sp, 4
  3908 00001C39 08C0                     or  al, al
  3909 00001C3B 0F840900                 je @@checkreg189
  3910 00001C3F 66B817000000             mov eax, 23
  3911 00001C45 E94B02                   jmp @@retn
  3912                                  
  3913                                  ;-432   if (eqstr(symbol,"sp")) return 25;  if (eqstr(symbol,"bp")) return 27;
  3914                                  
  3915                                  @@checkreg189:
  3916 00001C48 68[B81E]                 push checkreg_12
  3917 00001C4B 8D066E81                 lea  ax, [symbol]
  3918 00001C4F 50                       push ax
  3919 00001C50 E8A946                   call eqstr
  3920 00001C53 83C404                   add  sp, 4
  3921 00001C56 08C0                     or  al, al
  3922 00001C58 0F840900                 je @@checkreg190
  3923 00001C5C 66B819000000             mov eax, 25
  3924 00001C62 E92E02                   jmp @@retn
  3925                                  @@checkreg190:
  3926 00001C65 68[BB1E]                 push checkreg_13
  3927 00001C68 8D066E81                 lea  ax, [symbol]
  3928 00001C6C 50                       push ax
  3929 00001C6D E88C46                   call eqstr
  3930 00001C70 83C404                   add  sp, 4
  3931 00001C73 08C0                     or  al, al
  3932 00001C75 0F840900                 je @@checkreg191
  3933 00001C79 66B81B000000             mov eax, 27
  3934 00001C7F E91102                   jmp @@retn
  3935                                  
  3936                                  ;-433   if (eqstr(symbol,"si")) return 29;  if (eqstr(symbol,"di")) return 31;
  3937                                  
  3938                                  @@checkreg191:
  3939 00001C82 68[BE1E]                 push checkreg_14
  3940 00001C85 8D066E81                 lea  ax, [symbol]
  3941 00001C89 50                       push ax
  3942 00001C8A E86F46                   call eqstr
  3943 00001C8D 83C404                   add  sp, 4
  3944 00001C90 08C0                     or  al, al
  3945 00001C92 0F840900                 je @@checkreg192
  3946 00001C96 66B81D000000             mov eax, 29
  3947 00001C9C E9F401                   jmp @@retn
  3948                                  @@checkreg192:
  3949 00001C9F 68[C11E]                 push checkreg_15
  3950 00001CA2 8D066E81                 lea  ax, [symbol]
  3951 00001CA6 50                       push ax
  3952 00001CA7 E85246                   call eqstr
  3953 00001CAA 83C404                   add  sp, 4
  3954 00001CAD 08C0                     or  al, al
  3955 00001CAF 0F840900                 je @@checkreg193
  3956 00001CB3 66B81F000000             mov eax, 31
  3957 00001CB9 E9D701                   jmp @@retn
  3958                                  
  3959                                  ;-434   if (eqstr(symbol,"es")) return 33;  if (eqstr(symbol,"cs")) return 35;
  3960                                  
  3961                                  @@checkreg193:
  3962 00001CBC 68[C41E]                 push checkreg_16
  3963 00001CBF 8D066E81                 lea  ax, [symbol]
  3964 00001CC3 50                       push ax
  3965 00001CC4 E83546                   call eqstr
  3966 00001CC7 83C404                   add  sp, 4
  3967 00001CCA 08C0                     or  al, al
  3968 00001CCC 0F840900                 je @@checkreg194
  3969 00001CD0 66B821000000             mov eax, 33
  3970 00001CD6 E9BA01                   jmp @@retn
  3971                                  @@checkreg194:
  3972 00001CD9 68[C71E]                 push checkreg_17
  3973 00001CDC 8D066E81                 lea  ax, [symbol]
  3974 00001CE0 50                       push ax
  3975 00001CE1 E81846                   call eqstr
  3976 00001CE4 83C404                   add  sp, 4
  3977 00001CE7 08C0                     or  al, al
  3978 00001CE9 0F840900                 je @@checkreg195
  3979 00001CED 66B823000000             mov eax, 35
  3980 00001CF3 E99D01                   jmp @@retn
  3981                                  
  3982                                  ;-435   if (eqstr(symbol,"ss")) return 37;  if (eqstr(symbol,"ds")) return 39;
  3983                                  
  3984                                  @@checkreg195:
  3985 00001CF6 68[CA1E]                 push checkreg_18
  3986 00001CF9 8D066E81                 lea  ax, [symbol]
  3987 00001CFD 50                       push ax
  3988 00001CFE E8FB45                   call eqstr
  3989 00001D01 83C404                   add  sp, 4
  3990 00001D04 08C0                     or  al, al
  3991 00001D06 0F840900                 je @@checkreg196
  3992 00001D0A 66B825000000             mov eax, 37
  3993 00001D10 E98001                   jmp @@retn
  3994                                  @@checkreg196:
  3995 00001D13 68[CD1E]                 push checkreg_19
  3996 00001D16 8D066E81                 lea  ax, [symbol]
  3997 00001D1A 50                       push ax
  3998 00001D1B E8DE45                   call eqstr
  3999 00001D1E 83C404                   add  sp, 4
  4000 00001D21 08C0                     or  al, al
  4001 00001D23 0F840900                 je @@checkreg197
  4002 00001D27 66B827000000             mov eax, 39
  4003 00001D2D E96301                   jmp @@retn
  4004                                  
  4005                                  ;-436   if (eqstr(symbol,"fs")) return 41;  if (eqstr(symbol,"gs")) return 43;
  4006                                  
  4007                                  @@checkreg197:
  4008 00001D30 68[D01E]                 push checkreg_20
  4009 00001D33 8D066E81                 lea  ax, [symbol]
  4010 00001D37 50                       push ax
  4011 00001D38 E8C145                   call eqstr
  4012 00001D3B 83C404                   add  sp, 4
  4013 00001D3E 08C0                     or  al, al
  4014 00001D40 0F840900                 je @@checkreg198
  4015 00001D44 66B829000000             mov eax, 41
  4016 00001D4A E94601                   jmp @@retn
  4017                                  @@checkreg198:
  4018 00001D4D 68[D31E]                 push checkreg_21
  4019 00001D50 8D066E81                 lea  ax, [symbol]
  4020 00001D54 50                       push ax
  4021 00001D55 E8A445                   call eqstr
  4022 00001D58 83C404                   add  sp, 4
  4023 00001D5B 08C0                     or  al, al
  4024 00001D5D 0F840900                 je @@checkreg199
  4025 00001D61 66B82B000000             mov eax, 43
  4026 00001D67 E92901                   jmp @@retn
  4027                                  
  4028                                  ;-437   // (eqstr(symbol,"ip")) return 45;
  4029                                  
  4030                                  
  4031                                  ;-438   if (strlen(symbol) >   3) return 0;
  4032                                  
  4033                                  @@checkreg199:
  4034 00001D6A 8D066E81                 lea  ax, [symbol]
  4035 00001D6E 50                       push ax
  4036 00001D6F E80B44                   call strlen
  4037 00001D72 83C402                   add  sp, 2
  4038 00001D75 83F803                   cmp ax, 3
  4039 00001D78 0F8E0900                 jle @@checkreg200
  4040 00001D7C 66B800000000             mov eax, 0
  4041 00001D82 E90E01                   jmp @@retn
  4042                                  
  4043                                  ;-439   if (eqstr(symbol,"eax")) return 47; if (eqstr(symbol,"ecx")) return 50;
  4044                                  
  4045                                  @@checkreg200:
  4046 00001D85 68[D61E]                 push checkreg_22
  4047 00001D88 8D066E81                 lea  ax, [symbol]
  4048 00001D8C 50                       push ax
  4049 00001D8D E86C45                   call eqstr
  4050 00001D90 83C404                   add  sp, 4
  4051 00001D93 08C0                     or  al, al
  4052 00001D95 0F840900                 je @@checkreg201
  4053 00001D99 66B82F000000             mov eax, 47
  4054 00001D9F E9F100                   jmp @@retn
  4055                                  @@checkreg201:
  4056 00001DA2 68[DA1E]                 push checkreg_23
  4057 00001DA5 8D066E81                 lea  ax, [symbol]
  4058 00001DA9 50                       push ax
  4059 00001DAA E84F45                   call eqstr
  4060 00001DAD 83C404                   add  sp, 4
  4061 00001DB0 08C0                     or  al, al
  4062 00001DB2 0F840900                 je @@checkreg202
  4063 00001DB6 66B832000000             mov eax, 50
  4064 00001DBC E9D400                   jmp @@retn
  4065                                  
  4066                                  ;-440   if (eqstr(symbol,"edx")) return 53; if (eqstr(symbol,"ebx")) return 56;
  4067                                  
  4068                                  @@checkreg202:
  4069 00001DBF 68[DE1E]                 push checkreg_24
  4070 00001DC2 8D066E81                 lea  ax, [symbol]
  4071 00001DC6 50                       push ax
  4072 00001DC7 E83245                   call eqstr
  4073 00001DCA 83C404                   add  sp, 4
  4074 00001DCD 08C0                     or  al, al
  4075 00001DCF 0F840900                 je @@checkreg203
  4076 00001DD3 66B835000000             mov eax, 53
  4077 00001DD9 E9B700                   jmp @@retn
  4078                                  @@checkreg203:
  4079 00001DDC 68[E21E]                 push checkreg_25
  4080 00001DDF 8D066E81                 lea  ax, [symbol]
  4081 00001DE3 50                       push ax
  4082 00001DE4 E81545                   call eqstr
  4083 00001DE7 83C404                   add  sp, 4
  4084 00001DEA 08C0                     or  al, al
  4085 00001DEC 0F840900                 je @@checkreg204
  4086 00001DF0 66B838000000             mov eax, 56
  4087 00001DF6 E99A00                   jmp @@retn
  4088                                  
  4089                                  ;-441   if (eqstr(symbol,"esp")) return 59; if (eqstr(symbol,"ebp")) return 62;
  4090                                  
  4091                                  @@checkreg204:
  4092 00001DF9 68[E61E]                 push checkreg_26
  4093 00001DFC 8D066E81                 lea  ax, [symbol]
  4094 00001E00 50                       push ax
  4095 00001E01 E8F844                   call eqstr
  4096 00001E04 83C404                   add  sp, 4
  4097 00001E07 08C0                     or  al, al
  4098 00001E09 0F840900                 je @@checkreg205
  4099 00001E0D 66B83B000000             mov eax, 59
  4100 00001E13 E97D00                   jmp @@retn
  4101                                  @@checkreg205:
  4102 00001E16 68[EA1E]                 push checkreg_27
  4103 00001E19 8D066E81                 lea  ax, [symbol]
  4104 00001E1D 50                       push ax
  4105 00001E1E E8DB44                   call eqstr
  4106 00001E21 83C404                   add  sp, 4
  4107 00001E24 08C0                     or  al, al
  4108 00001E26 0F840900                 je @@checkreg206
  4109 00001E2A 66B83E000000             mov eax, 62
  4110 00001E30 E96000                   jmp @@retn
  4111                                  
  4112                                  ;-442   if (eqstr(symbol,"esi")) return 65; if (eqstr(symbol,"edi")) return 68;
  4113                                  
  4114                                  @@checkreg206:
  4115 00001E33 68[EE1E]                 push checkreg_28
  4116 00001E36 8D066E81                 lea  ax, [symbol]
  4117 00001E3A 50                       push ax
  4118 00001E3B E8BE44                   call eqstr
  4119 00001E3E 83C404                   add  sp, 4
  4120 00001E41 08C0                     or  al, al
  4121 00001E43 0F840900                 je @@checkreg207
  4122 00001E47 66B841000000             mov eax, 65
  4123 00001E4D E94300                   jmp @@retn
  4124                                  @@checkreg207:
  4125 00001E50 68[F21E]                 push checkreg_29
  4126 00001E53 8D066E81                 lea  ax, [symbol]
  4127 00001E57 50                       push ax
  4128 00001E58 E8A144                   call eqstr
  4129 00001E5B 83C404                   add  sp, 4
  4130 00001E5E 08C0                     or  al, al
  4131 00001E60 0F840900                 je @@checkreg208
  4132 00001E64 66B844000000             mov eax, 68
  4133 00001E6A E92600                   jmp @@retn
  4134                                  
  4135                                  ;-443   if (eqstr(symbol,"cr0")) return 71;
  4136                                  
  4137                                  @@checkreg208:
  4138 00001E6D 68[F61E]                 push checkreg_30
  4139 00001E70 8D066E81                 lea  ax, [symbol]
  4140 00001E74 50                       push ax
  4141 00001E75 E88444                   call eqstr
  4142 00001E78 83C404                   add  sp, 4
  4143 00001E7B 08C0                     or  al, al
  4144 00001E7D 0F840900                 je @@checkreg209
  4145 00001E81 66B847000000             mov eax, 71
  4146 00001E87 E90900                   jmp @@retn
  4147                                  
  4148                                  ;-444   return 0;   }
  4149                                  
  4150                                  @@checkreg209:
  4151 00001E8A 66B800000000             mov eax, 0
  4152 00001E90 E90000                   jmp @@retn
  4153                                  
  4154                                  ;-445 char printregstr[]
  4155                                  
  4156                                  @@retn:
  4157 00001E93 C3                       ret
  4158                                  ; ENDP
  4159 00001E94 616C00                  checkreg_0 db "al",0
  4160 00001E97 636C00                  checkreg_1 db "cl",0
  4161 00001E9A 646C00                  checkreg_2 db "dl",0
  4162 00001E9D 626C00                  checkreg_3 db "bl",0
  4163 00001EA0 616800                  checkreg_4 db "ah",0
  4164 00001EA3 636800                  checkreg_5 db "ch",0
  4165 00001EA6 646800                  checkreg_6 db "dh",0
  4166 00001EA9 626800                  checkreg_7 db "bh",0
  4167 00001EAC 617800                  checkreg_8 db "ax",0
  4168 00001EAF 637800                  checkreg_9 db "cx",0
  4169 00001EB2 647800                  checkreg_10 db "dx",0
  4170 00001EB5 627800                  checkreg_11 db "bx",0
  4171 00001EB8 737000                  checkreg_12 db "sp",0
  4172 00001EBB 627000                  checkreg_13 db "bp",0
  4173 00001EBE 736900                  checkreg_14 db "si",0
  4174 00001EC1 646900                  checkreg_15 db "di",0
  4175 00001EC4 657300                  checkreg_16 db "es",0
  4176 00001EC7 637300                  checkreg_17 db "cs",0
  4177 00001ECA 737300                  checkreg_18 db "ss",0
  4178 00001ECD 647300                  checkreg_19 db "ds",0
  4179 00001ED0 667300                  checkreg_20 db "fs",0
  4180 00001ED3 677300                  checkreg_21 db "gs",0
  4181 00001ED6 65617800                checkreg_22 db "eax",0
  4182 00001EDA 65637800                checkreg_23 db "ecx",0
  4183 00001EDE 65647800                checkreg_24 db "edx",0
  4184 00001EE2 65627800                checkreg_25 db "ebx",0
  4185 00001EE6 65737000                checkreg_26 db "esp",0
  4186 00001EEA 65627000                checkreg_27 db "ebp",0
  4187 00001EEE 65736900                checkreg_28 db "esi",0
  4188 00001EF2 65646900                checkreg_29 db "edi",0
  4189 00001EF6 63723000                checkreg_30 db "cr0",0
  4190                                  
  4191                                  ;-446 ="*alcldlblahchdhbhaxcxdxbxspbpsidiescsssdsfsgsipeaxecxedxebxespebpesiedicr0";
  4192                                  
  4193 00001EFA 2A616C636C646C626C-     printregstr db "*alcldlblahchdhbhaxcxdxbxspbpsidiescsssdsfsgsipeaxecxedxebxespebpesiedicr0",0
  4194 00001F03 616863686468626861-
  4195 00001F0C 786378647862787370-
  4196 00001F15 627073696469657363-
  4197 00001F1E 737373647366736773-
  4198 00001F27 697065617865637865-
  4199 00001F30 647865627865737065-
  4200 00001F39 627065736965646963-
  4201 00001F42 723000             
  4202                                  
  4203                                  ;-447 //          1         2         3         4         5         6         7
  4204                                  
  4205                                  
  4206                                  ;-448 // 1 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3
  4207                                  
  4208                                  
  4209                                  ;-449 void printreg(int i, int mode) {  unsigned int k; unsigned char c;
  4210                                  
  4211                                  
  4212                                  printreg:  ; *** PROC ***
  4213                                  
  4214                                  ;-450   if (_ mode == 1) prc('[');
  4215                                  
  4216                                  ;Function : printreg, Number of local variables: 4
  4217                                  ;   # type sign width line used address name   list of local variables
  4218                                  ;  200 var sign word   449 NULL bp+4    i
  4219                                  ;  201 var sign word   449 NULL bp+6    mode
  4220                                  ;  202 var unsg word   449 NULL bp-2    k
  4221                                  ;  203 var unsg byte   449 NULL bp-4    c;
  4222 00001F45 C8040000                 ENTER  4,0
  4223 00001F49 837E0601                cmp word [bp+6], 1
  4224 00001F4D 0F850800                 jne @@printreg210
  4225 00001F51 6A5B                     push 91
  4226 00001F53 E8E92E                   call prc
  4227 00001F56 83C402                   add  sp, 2
  4228                                  
  4229                                  ;-451   k = &printregstr + i; c=*k; prc(c); i++;
  4230                                  
  4231                                  @@printreg210:
  4232 00001F59 B8[FA1E]                 mov ax, printregstr
  4233 00001F5C 034604                   add ax, [bp+4]
  4234 00001F5F 8946FE                   mov word [bp-2], ax
  4235 00001F62 8B5EFE                   mov bx, [bp-2]
  4236 00001F65 8B07                     mov ax, [bx]
  4237 00001F67 8846FC                   mov byte [bp-4], al
  4238 00001F6A 8A46FC                   mov al, byte [bp-4]
  4239 00001F6D B400                     mov ah, 0
  4240 00001F6F 50                       push ax
  4241 00001F70 E8CC2E                   call prc
  4242 00001F73 83C402                   add  sp, 2
  4243 00001F76 FF4604                   inc  word [bp+4]
  4244                                  
  4245                                  ;-452   k = &printregstr + i; c=*k; prc(c);
  4246                                  
  4247 00001F79 B8[FA1E]                 mov ax, printregstr
  4248 00001F7C 034604                   add ax, [bp+4]
  4249 00001F7F 8946FE                   mov word [bp-2], ax
  4250 00001F82 8B5EFE                   mov bx, [bp-2]
  4251 00001F85 8B07                     mov ax, [bx]
  4252 00001F87 8846FC                   mov byte [bp-4], al
  4253 00001F8A 8A46FC                   mov al, byte [bp-4]
  4254 00001F8D B400                     mov ah, 0
  4255 00001F8F 50                       push ax
  4256 00001F90 E8AC2E                   call prc
  4257 00001F93 83C402                   add  sp, 2
  4258                                  
  4259                                  ;-453   if (i > 47) { i++; k = &printregstr + i; c=*k; prc(c); }
  4260                                  
  4261 00001F96 8B4604                   mov ax, [bp+4]
  4262 00001F99 83F82F                   cmp ax, 47
  4263 00001F9C 0F8E2000                 jle @@printreg211
  4264 00001FA0 FF4604                   inc  word [bp+4]
  4265 00001FA3 B8[FA1E]                 mov ax, printregstr
  4266 00001FA6 034604                   add ax, [bp+4]
  4267 00001FA9 8946FE                   mov word [bp-2], ax
  4268 00001FAC 8B5EFE                   mov bx, [bp-2]
  4269 00001FAF 8B07                     mov ax, [bx]
  4270 00001FB1 8846FC                   mov byte [bp-4], al
  4271 00001FB4 8A46FC                   mov al, byte [bp-4]
  4272 00001FB7 B400                     mov ah, 0
  4273 00001FB9 50                       push ax
  4274 00001FBA E8822E                   call prc
  4275 00001FBD 83C402                   add  sp, 2
  4276                                  
  4277                                  ;-454   if (_ mode == 1) prc(']');
  4278                                  
  4279                                  @@printreg211:
  4280 00001FC0 837E0601                cmp word [bp+6], 1
  4281 00001FC4 0F850800                 jne @@printreg212
  4282 00001FC8 6A5D                     push 93
  4283 00001FCA E8722E                   call prc
  4284 00001FCD 83C402                   add  sp, 2
  4285                                  
  4286                                  ;-455 }
  4287                                  
  4288                                  @@printreg212:
  4289                                  
  4290                                  ;-456 printpri(int w) { if (w == 1) printreg(1, 0); if (w == 2) printreg(17, 0);
  4291 00001FD0 C9                       LEAVE
  4292 00001FD1 C3                       ret
  4293                                  ; ENDP
  4294                                  
  4295                                  printpri:  ; *** PROC ***
  4296                                  ;Function : printpri, Number of local variables: 1
  4297                                  ;   # type sign width line used address name   list of local variables
  4298                                  ;  200 var sign word   456 NULL bp+4    w;
  4299 00001FD2 C8000000                 ENTER  0,0
  4300 00001FD6 8B4604                   mov ax, [bp+4]
  4301 00001FD9 83F801                   cmp ax, 1
  4302 00001FDC 0F850A00                 jne @@printpri213
  4303 00001FE0 6A00                     push 0
  4304 00001FE2 6A01                     push 1
  4305 00001FE4 E85EFF                   call printreg
  4306 00001FE7 83C404                   add  sp, 4
  4307                                  @@printpri213:
  4308 00001FEA 8B4604                   mov ax, [bp+4]
  4309 00001FED 83F802                   cmp ax, 2
  4310 00001FF0 0F850A00                 jne @@printpri214
  4311 00001FF4 6A00                     push 0
  4312 00001FF6 6A11                     push 17
  4313 00001FF8 E84AFF                   call printreg
  4314 00001FFB 83C404                   add  sp, 4
  4315                                  
  4316                                  ;-457   if (wi == 4) printreg (47, 0);
  4317                                  
  4318                                  @@printpri214:
  4319 00001FFE A1[5B00]                 mov ax, [wi]
  4320 00002001 83F804                   cmp ax, 4
  4321 00002004 0F850A00                 jne @@printpri215
  4322 00002008 6A00                     push 0
  4323 0000200A 6A2F                     push 47
  4324 0000200C E836FF                   call printreg
  4325 0000200F 83C404                   add  sp, 4
  4326                                  
  4327                                  ;-458 }
  4328                                  
  4329                                  @@printpri215:
  4330                                  
  4331                                  ;-459 
  4332                                  
  4333                                  
  4334                                  ;-460 
  4335                                  
  4336                                  
  4337                                  ;-461 
  4338                                  
  4339                                  
  4340                                  ;-462 int expr()
  4341 00002012 C9                       LEAVE
  4342 00002013 C3                       ret
  4343                                  ; ENDP
  4344                                  
  4345                                  expr:  ; *** PROC ***
  4346                                  
  4347                                  ;-463 { int mode; int id1;     int ixarr; int ixconst;
  4348                                  
  4349                                  
  4350                                  ;-464   int ids;  int isCONST; int i;     unsigned char *p;
  4351                                  
  4352                                  
  4353                                  ;-465   if (istoken(T_CONST)) { prs("\n mov eax, "); prL(lexvalL); return; }
  4354                                  
  4355                                  ;Function : expr, Number of local variables: 8
  4356                                  ;   # type sign width line used address name   list of local variables
  4357                                  ;  200 var sign word   463 NULL bp-2    mode
  4358                                  ;  201 var sign word   463 NULL bp-4    id1
  4359                                  ;  202 var sign word   463 NULL bp-6    ixarr
  4360                                  ;  203 var sign word   463 NULL bp-8    ixconst
  4361                                  ;  204 var sign word   464 NULL bp-10    ids
  4362                                  ;  205 var sign word   464 NULL bp-12    isCONST
  4363                                  ;  206 var sign word   464 NULL bp-14    i
  4364                                  ;  207 ptr unsg byte   464 NULL bp-16    p;
  4365 00002014 C8100000                 ENTER  16,0
  4366 00002018 680101                   push 257
  4367 0000201B E84A2D                   call istoken
  4368 0000201E 83C402                   add  sp, 2
  4369 00002021 08C0                     or  al, al
  4370 00002023 0F841700                 je @@expr216
  4371 00002027 68[8123]                 push expr_0
  4372 0000202A E8812E                   call prs
  4373 0000202D 83C402                   add  sp, 2
  4374 00002030 66FF36[4D00]             push dword [lexvalL]
  4375 00002035 E8293F                   call prL
  4376 00002038 83C404                   add  sp, 4
  4377 0000203B E94103                   jmp @@retn
  4378                                  
  4379                                  ;-466   mode=typeName(); /*0=V,1=*,2=&*/
  4380                                  
  4381                                  @@expr216:
  4382 0000203E E815EB                   call typeName
  4383 00002041 8946FE                   mov word [bp-2], ax
  4384                                  
  4385                                  ;-467   mod1=mode;
  4386                                  
  4387 00002044 8B46FE                   mov ax, [bp-2]
  4388 00002047 A3[E611]                 mov word [mod1], ax
  4389                                  
  4390                                  ;-468   irg1=checkreg();
  4391                                  
  4392 0000204A E884FA                   call checkreg
  4393 0000204D A3[EA11]                 mov word [irg1], ax
  4394                                  
  4395                                  ;-469   if (irg1) { doreg1(0); return; }
  4396                                  
  4397 00002050 A1[EA11]                 mov ax, [irg1]
  4398 00002053 08C0                     or  al, al
  4399 00002055 0F840B00                 je @@expr217
  4400 00002059 6A00                     push 0
  4401 0000205B E89EF8                   call doreg1
  4402 0000205E 83C402                   add  sp, 2
  4403 00002061 E91B03                   jmp @@retn
  4404                                  
  4405                                  ;-470   if (token=='(')  {docall1(); goto e1; }
  4406                                  
  4407                                  @@expr217:
  4408 00002064 A1[3D00]                 mov ax, [token]
  4409 00002067 83F828                   cmp ax, 40
  4410 0000206A 0F850600                 jne @@expr218
  4411 0000206E E8EE0A                   call docall1
  4412 00002071 E9FE01                   jmp @@e1
  4413                                  
  4414                                  ;-471 
  4415                                  
  4416                                  
  4417                                  ;-472   id1=searchname(); gettypes(id1); ids=signi;  ixarr=0;  ixconst=0;
  4418                                  
  4419                                  @@expr218:
  4420 00002074 E8FFE9                   call searchname
  4421 00002077 8946FC                   mov word [bp-4], ax
  4422 0000207A FF76FC                   push word [bp-4]
  4423 0000207D E8ABE8                   call gettypes
  4424 00002080 83C402                   add  sp, 2
  4425 00002083 A1[5600]                 mov ax, [signi]
  4426 00002086 8946F6                   mov word [bp-10], ax
  4427 00002089 66B800000000             mov eax, 0
  4428 0000208F 8946FA                   mov word [bp-6], ax
  4429 00002092 66B800000000             mov eax, 0
  4430 00002098 8946F8                   mov word [bp-8], ax
  4431                                  
  4432                                  ;-473     if (istoken('[')) { if (istoken(T_CONST)) {
  4433                                  
  4434 0000209B 6A5B                     push 91
  4435 0000209D E8C82C                   call istoken
  4436 000020A0 83C402                   add  sp, 2
  4437 000020A3 08C0                     or  al, al
  4438 000020A5 0F845D00                 je @@expr219
  4439 000020A9 680101                   push 257
  4440 000020AC E8B92C                   call istoken
  4441 000020AF 83C402                   add  sp, 2
  4442 000020B2 08C0                     or  al, al
  4443 000020B4 0F841B00                 je @@expr220
  4444                                  
  4445                                  ;-474       ixconst=1; ixarr=lexvalL; expect(']');  }
  4446                                  
  4447 000020B8 66B801000000             mov eax, 1
  4448 000020BE 8946F8                   mov word [bp-8], ax
  4449 000020C1 66A1[4D00]               mov eax, [lexvalL]
  4450 000020C5 8946FA                   mov word [bp-6], ax
  4451 000020C8 6A5D                     push 93
  4452 000020CA E8C32C                   call expect
  4453 000020CD 83C402                   add  sp, 2
  4454                                  
  4455                                  ;-475     else {ixarr=searchname(); expect(T_NAME); expect(']');
  4456                                  
  4457 000020D0 E93300                   jmp @@expr221
  4458                                  @@expr220:
  4459 000020D3 E8A0E9                   call searchname
  4460 000020D6 8946FA                   mov word [bp-6], ax
  4461 000020D9 680001                   push 256
  4462 000020DC E8B12C                   call expect
  4463 000020DF 83C402                   add  sp, 2
  4464 000020E2 6A5D                     push 93
  4465 000020E4 E8A92C                   call expect
  4466 000020E7 83C402                   add  sp, 2
  4467                                  
  4468                                  ;-476     gettypes(ixarr);
  4469                                  
  4470 000020EA FF76FA                   push word [bp-6]
  4471 000020ED E83BE8                   call gettypes
  4472 000020F0 83C402                   add  sp, 2
  4473                                  
  4474                                  ;-477     if (widthi != 2) error1("Array index must be number or int"); } }
  4475                                  
  4476 000020F3 A1[5900]                 mov ax, [widthi]
  4477 000020F6 83F802                   cmp ax, 2
  4478 000020F9 0F840900                 je  @@expr222
  4479 000020FD 68[8E23]                 push expr_1
  4480 00002100 E8AC30                   call error1
  4481 00002103 83C402                   add  sp, 2
  4482                                  @@expr222:
  4483                                  @@expr221:
  4484                                  
  4485                                  ;-478   if (istoken(T_PLUSPLUS  )) {if(mode)error1("Only var allowed");
  4486                                  
  4487                                  @@expr219:
  4488 00002106 68C304                   push 1219
  4489 00002109 E85C2C                   call istoken
  4490 0000210C 83C402                   add  sp, 2
  4491 0000210F 08C0                     or  al, al
  4492 00002111 0F843100                 je @@expr223
  4493 00002115 8B46FE                   mov ax, [bp-2]
  4494 00002118 08C0                     or  al, al
  4495 0000211A 0F840900                 je @@expr224
  4496 0000211E 68[B023]                 push expr_2
  4497 00002121 E88B30                   call error1
  4498 00002124 83C402                   add  sp, 2
  4499                                  
  4500                                  ;-479      prs("\n inc  ");  pwi(wi); v(id1); goto e1;}
  4501                                  
  4502                                  @@expr224:
  4503 00002127 68[C123]                 push expr_3
  4504 0000212A E8812D                   call prs
  4505 0000212D 83C402                   add  sp, 2
  4506 00002130 FF36[5B00]               push word [wi]
  4507 00002134 E850E0                   call pwi
  4508 00002137 83C402                   add  sp, 2
  4509 0000213A FF76FC                   push word [bp-4]
  4510 0000213D E8B6DF                   call v
  4511 00002140 83C402                   add  sp, 2
  4512 00002143 E92C01                   jmp @@e1
  4513                                  
  4514                                  ;-480   if (istoken(T_MINUSMINUS)) {if(mode)error1("Only Var allowed");
  4515                                  
  4516                                  @@expr223:
  4517 00002146 68C904                   push 1225
  4518 00002149 E81C2C                   call istoken
  4519 0000214C 83C402                   add  sp, 2
  4520 0000214F 08C0                     or  al, al
  4521 00002151 0F843100                 je @@expr225
  4522 00002155 8B46FE                   mov ax, [bp-2]
  4523 00002158 08C0                     or  al, al
  4524 0000215A 0F840900                 je @@expr226
  4525 0000215E 68[CA23]                 push expr_4
  4526 00002161 E84B30                   call error1
  4527 00002164 83C402                   add  sp, 2
  4528                                  
  4529                                  ;-481      prs("\n dec  ");  pwi(wi); v(id1); goto e1;}
  4530                                  
  4531                                  @@expr226:
  4532 00002167 68[DB23]                 push expr_5
  4533 0000216A E8412D                   call prs
  4534 0000216D 83C402                   add  sp, 2
  4535 00002170 FF36[5B00]               push word [wi]
  4536 00002174 E810E0                   call pwi
  4537 00002177 83C402                   add  sp, 2
  4538 0000217A FF76FC                   push word [bp-4]
  4539 0000217D E876DF                   call v
  4540 00002180 83C402                   add  sp, 2
  4541 00002183 E9EC00                   jmp @@e1
  4542                                  
  4543                                  ;-482        
  4544                                  
  4545                                  
  4546                                  ;-483   if (istoken(T_PLUSASS   )) {compoundass("add", mode, id1); goto e1;}
  4547                                  
  4548                                  @@expr225:
  4549 00002186 68CE04                   push 1230
  4550 00002189 E8DC2B                   call istoken
  4551 0000218C 83C402                   add  sp, 2
  4552 0000218F 08C0                     or  al, al
  4553 00002191 0F841200                 je @@expr227
  4554 00002195 FF76FC                   push word [bp-4]
  4555 00002198 FF76FE                   push word [bp-2]
  4556 0000219B 68[E423]                 push expr_6
  4557 0000219E E89102                   call compoundass
  4558 000021A1 83C406                   add  sp, 6
  4559 000021A4 E9CB00                   jmp @@e1
  4560                                  
  4561                                  ;-484   if (istoken(T_MINUSASS  )) {compoundass("sub", mode, id1); goto e1;}
  4562                                  
  4563                                  @@expr227:
  4564 000021A7 68CF04                   push 1231
  4565 000021AA E8BB2B                   call istoken
  4566 000021AD 83C402                   add  sp, 2
  4567 000021B0 08C0                     or  al, al
  4568 000021B2 0F841200                 je @@expr228
  4569 000021B6 FF76FC                   push word [bp-4]
  4570 000021B9 FF76FE                   push word [bp-2]
  4571 000021BC 68[E823]                 push expr_7
  4572 000021BF E87002                   call compoundass
  4573 000021C2 83C406                   add  sp, 6
  4574 000021C5 E9AA00                   jmp @@e1
  4575                                  
  4576                                  ;-485   if (istoken(T_ANDASS    )) {compoundass("and", mode, id1); goto e1;}
  4577                                  
  4578                                  @@expr228:
  4579 000021C8 68D204                   push 1234
  4580 000021CB E89A2B                   call istoken
  4581 000021CE 83C402                   add  sp, 2
  4582 000021D1 08C0                     or  al, al
  4583 000021D3 0F841200                 je @@expr229
  4584 000021D7 FF76FC                   push word [bp-4]
  4585 000021DA FF76FE                   push word [bp-2]
  4586 000021DD 68[EC23]                 push expr_8
  4587 000021E0 E84F02                   call compoundass
  4588 000021E3 83C406                   add  sp, 6
  4589 000021E6 E98900                   jmp @@e1
  4590                                  
  4591                                  ;-486   if (istoken(T_ORASS     )) {compoundass("or" , mode, id1); goto e1;}    
  4592                                  
  4593                                  @@expr229:
  4594 000021E9 68D304                   push 1235
  4595 000021EC E8792B                   call istoken
  4596 000021EF 83C402                   add  sp, 2
  4597 000021F2 08C0                     or  al, al
  4598 000021F4 0F841200                 je @@expr230
  4599 000021F8 FF76FC                   push word [bp-4]
  4600 000021FB FF76FE                   push word [bp-2]
  4601 000021FE 68[F023]                 push expr_9
  4602 00002201 E82E02                   call compoundass
  4603 00002204 83C406                   add  sp, 6
  4604 00002207 E96800                   jmp @@e1
  4605                                  
  4606                                  ;-487   if (istoken(T_MULASS    )) {error1("not implemented");}
  4607                                  
  4608                                  @@expr230:
  4609 0000220A 68D004                   push 1232
  4610 0000220D E8582B                   call istoken
  4611 00002210 83C402                   add  sp, 2
  4612 00002213 08C0                     or  al, al
  4613 00002215 0F840900                 je @@expr231
  4614 00002219 68[F323]                 push expr_10
  4615 0000221C E8902F                   call error1
  4616 0000221F 83C402                   add  sp, 2
  4617                                  
  4618                                  ;-488   if (istoken(T_DIVASS    )) {error1("not implemented");}
  4619                                  
  4620                                  @@expr231:
  4621 00002222 68D104                   push 1233
  4622 00002225 E8402B                   call istoken
  4623 00002228 83C402                   add  sp, 2
  4624 0000222B 08C0                     or  al, al
  4625 0000222D 0F840900                 je @@expr232
  4626 00002231 68[0324]                 push expr_11
  4627 00002234 E8782F                   call error1
  4628 00002237 83C402                   add  sp, 2
  4629                                  
  4630                                  ;-489 
  4631                                  
  4632                                  
  4633                                  ;-490   if (istoken('=')) { expr();
  4634                                  
  4635                                  @@expr232:
  4636 0000223A 6A3D                     push 61
  4637 0000223C E8292B                   call istoken
  4638 0000223F 83C402                   add  sp, 2
  4639 00002242 08C0                     or  al, al
  4640 00002244 0F841800                 je @@expr233
  4641 00002248 E8C9FD                   call expr
  4642                                  
  4643                                  ;-491   doassign(mode, id1, ixarr, ixconst); goto e1;  }
  4644                                  
  4645 0000224B FF76F8                   push word [bp-8]
  4646 0000224E FF76FA                   push word [bp-6]
  4647 00002251 FF76FC                   push word [bp-4]
  4648 00002254 FF76FE                   push word [bp-2]
  4649 00002257 E81605                   call doassign
  4650 0000225A 83C408                   add  sp, 8
  4651 0000225D E91200                   jmp @@e1
  4652                                  
  4653                                  ;-492   dovar1(mode, "mov", ixarr, id1);
  4654                                  
  4655                                  @@expr233:
  4656 00002260 FF76FC                   push word [bp-4]
  4657 00002263 FF76FA                   push word [bp-6]
  4658 00002266 68[1324]                 push expr_12
  4659 00002269 FF76FE                   push word [bp-2]
  4660 0000226C E84702                   call dovar1
  4661 0000226F 83C408                   add  sp, 8
  4662                                  
  4663                                  ;-493   
  4664                                  
  4665                                  
  4666                                  ;-494 e1:    if (istoken('+')) rterm("add");
  4667                                  
  4668                                  @@e1:
  4669 00002272 6A2B                     push 43
  4670 00002274 E8F12A                   call istoken
  4671 00002277 83C402                   add  sp, 2
  4672 0000227A 08C0                     or  al, al
  4673 0000227C 0F840C00                 je @@expr234
  4674 00002280 68[1724]                 push expr_13
  4675 00002283 E8FD03                   call rterm
  4676 00002286 83C402                   add  sp, 2
  4677                                  
  4678                                  ;-495   else if (istoken('-')) rterm("sub" );
  4679                                  
  4680 00002289 E9CF00                   jmp @@expr235
  4681                                  @@expr234:
  4682 0000228C 6A2D                     push 45
  4683 0000228E E8D72A                   call istoken
  4684 00002291 83C402                   add  sp, 2
  4685 00002294 08C0                     or  al, al
  4686 00002296 0F840C00                 je @@expr236
  4687 0000229A 68[1B24]                 push expr_14
  4688 0000229D E8E303                   call rterm
  4689 000022A0 83C402                   add  sp, 2
  4690                                  
  4691                                  ;-496   else if (istoken('&')) rterm("and" );
  4692                                  
  4693 000022A3 E9B500                   jmp @@expr237
  4694                                  @@expr236:
  4695 000022A6 6A26                     push 38
  4696 000022A8 E8BD2A                   call istoken
  4697 000022AB 83C402                   add  sp, 2
  4698 000022AE 08C0                     or  al, al
  4699 000022B0 0F840C00                 je @@expr238
  4700 000022B4 68[1F24]                 push expr_15
  4701 000022B7 E8C903                   call rterm
  4702 000022BA 83C402                   add  sp, 2
  4703                                  
  4704                                  ;-497   else if (istoken('|')) rterm("or" );  
  4705                                  
  4706 000022BD E99B00                   jmp @@expr239
  4707                                  @@expr238:
  4708 000022C0 6A7C                     push 124
  4709 000022C2 E8A32A                   call istoken
  4710 000022C5 83C402                   add  sp, 2
  4711 000022C8 08C0                     or  al, al
  4712 000022CA 0F840C00                 je @@expr240
  4713 000022CE 68[2324]                 push expr_16
  4714 000022D1 E8AF03                   call rterm
  4715 000022D4 83C402                   add  sp, 2
  4716                                  
  4717                                  ;-498   else if (istoken(T_LESSLESS)) rterm("shl");
  4718                                  
  4719 000022D7 E98100                   jmp @@expr241
  4720                                  @@expr240:
  4721 000022DA 68D804                   push 1240
  4722 000022DD E8882A                   call istoken
  4723 000022E0 83C402                   add  sp, 2
  4724 000022E3 08C0                     or  al, al
  4725 000022E5 0F840C00                 je @@expr242
  4726 000022E9 68[2624]                 push expr_17
  4727 000022EC E89403                   call rterm
  4728 000022EF 83C402                   add  sp, 2
  4729                                  
  4730                                  ;-499   else if (istoken(T_GREATGREAT)) rterm("shr");  
  4731                                  
  4732 000022F2 E96600                   jmp @@expr243
  4733                                  @@expr242:
  4734 000022F5 68D904                   push 1241
  4735 000022F8 E86D2A                   call istoken
  4736 000022FB 83C402                   add  sp, 2
  4737 000022FE 08C0                     or  al, al
  4738 00002300 0F840C00                 je @@expr244
  4739 00002304 68[2A24]                 push expr_18
  4740 00002307 E87903                   call rterm
  4741 0000230A 83C402                   add  sp, 2
  4742                                  
  4743                                  ;-500   else if (istoken('*')) domul (ids);
  4744                                  
  4745 0000230D E94B00                   jmp @@expr245
  4746                                  @@expr244:
  4747 00002310 6A2A                     push 42
  4748 00002312 E8532A                   call istoken
  4749 00002315 83C402                   add  sp, 2
  4750 00002318 08C0                     or  al, al
  4751 0000231A 0F840C00                 je @@expr246
  4752 0000231E FF76F6                   push word [bp-10]
  4753 00002321 E8CD05                   call domul
  4754 00002324 83C402                   add  sp, 2
  4755                                  
  4756                                  ;-501   else if (istoken('/')) doidiv(ids);
  4757                                  
  4758 00002327 E93100                   jmp @@expr247
  4759                                  @@expr246:
  4760 0000232A 6A2F                     push 47
  4761 0000232C E8392A                   call istoken
  4762 0000232F 83C402                   add  sp, 2
  4763 00002332 08C0                     or  al, al
  4764 00002334 0F840C00                 je @@expr248
  4765 00002338 FF76F6                   push word [bp-10]
  4766 0000233B E85706                   call doidiv
  4767 0000233E 83C402                   add  sp, 2
  4768                                  
  4769                                  ;-502   else if (istoken('%')) domod (ids);
  4770                                  
  4771 00002341 E91700                   jmp @@expr249
  4772                                  @@expr248:
  4773 00002344 6A25                     push 37
  4774 00002346 E81F2A                   call istoken
  4775 00002349 83C402                   add  sp, 2
  4776 0000234C 08C0                     or  al, al
  4777 0000234E 0F840900                 je @@expr250
  4778 00002352 FF76F6                   push word [bp-10]
  4779 00002355 E8E107                   call domod
  4780 00002358 83C402                   add  sp, 2
  4781                                  
  4782                                  ;-503   if (isrelational()) { rterm("cmp"); cmpneg(ids);}
  4783                                  
  4784                                  @@expr250:
  4785                                  @@expr249:
  4786                                  @@expr247:
  4787                                  @@expr245:
  4788                                  @@expr243:
  4789                                  @@expr241:
  4790                                  @@expr239:
  4791                                  @@expr237:
  4792                                  @@expr235:
  4793 0000235B E8FD20                   call isrelational
  4794 0000235E 08C0                     or  al, al
  4795 00002360 0F841200                 je @@expr251
  4796 00002364 68[2E24]                 push expr_19
  4797 00002367 E81903                   call rterm
  4798 0000236A 83C402                   add  sp, 2
  4799 0000236D FF76F6                   push word [bp-10]
  4800 00002370 E89D1D                   call cmpneg
  4801 00002373 83C402                   add  sp, 2
  4802                                  
  4803                                  ;-504   return 0;
  4804                                  
  4805                                  @@expr251:
  4806 00002376 66B800000000             mov eax, 0
  4807 0000237C E90000                   jmp @@retn
  4808                                  
  4809                                  ;-505 }
  4810                                  
  4811                                  
  4812                                  ;-506 
  4813                                  
  4814                                  
  4815                                  ;-507 int compoundass(char *op, int mode, int id1) {
  4816                                  
  4817 0000237F C9                      @@retn: LEAVE
  4818 00002380 C3                       ret
  4819                                  ; ENDP
  4820 00002381 5C6E206D6F76206561-     expr_0 db "\n mov eax, ",0
  4821 0000238A 782C2000           
  4822 0000238E 417272617920696E64-     expr_1 db "Array index must be number or int",0
  4823 00002397 6578206D7573742062-
  4824 000023A0 65206E756D62657220-
  4825 000023A9 6F7220696E7400     
  4826 000023B0 4F6E6C792076617220-     expr_2 db "Only var allowed",0
  4827 000023B9 616C6C6F77656400   
  4828 000023C1 5C6E20696E63202000      expr_3 db "\n inc  ",0
  4829 000023CA 4F6E6C792056617220-     expr_4 db "Only Var allowed",0
  4830 000023D3 616C6C6F77656400   
  4831 000023DB 5C6E20646563202000      expr_5 db "\n dec  ",0
  4832 000023E4 61646400                expr_6 db "add",0
  4833 000023E8 73756200                expr_7 db "sub",0
  4834 000023EC 616E6400                expr_8 db "and",0
  4835 000023F0 6F7200                  expr_9 db "or",0
  4836 000023F3 6E6F7420696D706C65-     expr_10 db "not implemented",0
  4837 000023FC 6D656E74656400     
  4838 00002403 6E6F7420696D706C65-     expr_11 db "not implemented",0
  4839 0000240C 6D656E74656400     
  4840 00002413 6D6F7600                expr_12 db "mov",0
  4841 00002417 61646400                expr_13 db "add",0
  4842 0000241B 73756200                expr_14 db "sub",0
  4843 0000241F 616E6400                expr_15 db "and",0
  4844 00002423 6F7200                  expr_16 db "or",0
  4845 00002426 73686C00                expr_17 db "shl",0
  4846 0000242A 73687200                expr_18 db "shr",0
  4847 0000242E 636D7000                expr_19 db "cmp",0
  4848                                  
  4849                                  compoundass:  ; *** PROC ***
  4850                                  
  4851                                  ;-508   if(mode) error1("only scalar Var allowed");
  4852                                  
  4853                                  ;Function : compoundass, Number of local variables: 3
  4854                                  ;   # type sign width line used address name   list of local variables
  4855                                  ;  200 ptr sign byte   507 NULL bp+4    op
  4856                                  ;  201 var sign word   507 NULL bp+6    mode
  4857                                  ;  202 var sign word   507 NULL bp+8    id1;
  4858 00002432 C8000000                 ENTER  0,0
  4859 00002436 8B4606                   mov ax, [bp+6]
  4860 00002439 08C0                     or  al, al
  4861 0000243B 0F840900                 je @@compoundass252
  4862 0000243F 68[9824]                 push compoundass_0
  4863 00002442 E86A2D                   call error1
  4864 00002445 83C402                   add  sp, 2
  4865                                  
  4866                                  ;-509   prnl(); prs(op); prs("  "); 
  4867                                  
  4868                                  @@compoundass252:
  4869 00002448 E8552A                   call prnl
  4870 0000244B FF7604                   push word [bp+4]
  4871 0000244E E85D2A                   call prs
  4872 00002451 83C402                   add  sp, 2
  4873 00002454 68[B024]                 push compoundass_1
  4874 00002457 E8542A                   call prs
  4875 0000245A 83C402                   add  sp, 2
  4876                                  
  4877                                  ;-510   gettypes(id1); pwi(wi); v(id1); prs(", ");
  4878                                  
  4879 0000245D FF7608                   push word [bp+8]
  4880 00002460 E8C8E4                   call gettypes
  4881 00002463 83C402                   add  sp, 2
  4882 00002466 FF36[5B00]               push word [wi]
  4883 0000246A E81ADD                   call pwi
  4884 0000246D 83C402                   add  sp, 2
  4885 00002470 FF7608                   push word [bp+8]
  4886 00002473 E880DC                   call v
  4887 00002476 83C402                   add  sp, 2
  4888 00002479 68[B324]                 push compoundass_2
  4889 0000247C E82F2A                   call prs
  4890 0000247F 83C402                   add  sp, 2
  4891                                  
  4892                                  ;-511   expect(T_CONST); prL(lexvalL);
  4893                                  
  4894 00002482 680101                   push 257
  4895 00002485 E80829                   call expect
  4896 00002488 83C402                   add  sp, 2
  4897 0000248B 66FF36[4D00]             push dword [lexvalL]
  4898 00002490 E8CE3A                   call prL
  4899 00002493 83C404                   add  sp, 4
  4900                                  
  4901                                  ;-512 }
  4902                                  
  4903                                  
  4904                                  ;-513 int dovar1(int mode, int op, int ixarr, int id1) { 
  4905 00002496 C9                       LEAVE
  4906 00002497 C3                       ret
  4907                                  ; ENDP
  4908 00002498 6F6E6C79207363616C-     compoundass_0 db "only scalar Var allowed",0
  4909 000024A1 61722056617220616C-
  4910 000024AA 6C6F77656400       
  4911 000024B0 202000                  compoundass_1 db "  ",0
  4912 000024B3 2C2000                  compoundass_2 db ", ",0
  4913                                  
  4914                                  dovar1:  ; *** PROC ***
  4915                                  
  4916                                  ;-514   gettypes(id1);
  4917                                  
  4918                                  ;Function : dovar1, Number of local variables: 4
  4919                                  ;   # type sign width line used address name   list of local variables
  4920                                  ;  200 var sign word   513 NULL bp+4    mode
  4921                                  ;  201 var sign word   513 NULL bp+6    op
  4922                                  ;  202 var sign word   513 NULL bp+8    ixarr
  4923                                  ;  203 var sign word   513 NULL bp+10    id1;
  4924 000024B6 C8000000                 ENTER  0,0
  4925 000024BA FF760A                   push word [bp+10]
  4926 000024BD E86BE4                   call gettypes
  4927 000024C0 83C402                   add  sp, 2
  4928                                  
  4929                                  ;-515   if (mode==1) {prs("\n mov bx, "); v(id1); prnl(); prs(op);
  4930                                  
  4931 000024C3 8B4604                   mov ax, [bp+4]
  4932 000024C6 83F801                   cmp ax, 1
  4933 000024C9 0F855A00                 jne @@dovar1253
  4934 000024CD 68[0F26]                 push dovar1_0
  4935 000024D0 E8DB29                   call prs
  4936 000024D3 83C402                   add  sp, 2
  4937 000024D6 FF760A                   push word [bp+10]
  4938 000024D9 E81ADC                   call v
  4939 000024DC 83C402                   add  sp, 2
  4940 000024DF E8BE29                   call prnl
  4941 000024E2 FF7606                   push word [bp+6]
  4942 000024E5 E8C629                   call prs
  4943 000024E8 83C402                   add  sp, 2
  4944                                  
  4945                                  ;-516     if(widthi == 1) prs(" al, [bx]\n mov ah, 0");
  4946                                  
  4947 000024EB A1[5900]                 mov ax, [widthi]
  4948 000024EE 83F801                   cmp ax, 1
  4949 000024F1 0F850900                 jne @@dovar1254
  4950 000024F5 68[1B26]                 push dovar1_1
  4951 000024F8 E8B329                   call prs
  4952 000024FB 83C402                   add  sp, 2
  4953                                  
  4954                                  ;-517     if(widthi == 2) prs(" ax, [bx]");
  4955                                  
  4956                                  @@dovar1254:
  4957 000024FE A1[5900]                 mov ax, [widthi]
  4958 00002501 83F802                   cmp ax, 2
  4959 00002504 0F850900                 jne @@dovar1255
  4960 00002508 68[3126]                 push dovar1_2
  4961 0000250B E8A029                   call prs
  4962 0000250E 83C402                   add  sp, 2
  4963                                  
  4964                                  ;-518     if(widthi == 4) prs(" eax, [bx]");
  4965                                  
  4966                                  @@dovar1255:
  4967 00002511 A1[5900]                 mov ax, [widthi]
  4968 00002514 83F804                   cmp ax, 4
  4969 00002517 0F850900                 jne @@dovar1256
  4970 0000251B 68[3B26]                 push dovar1_3
  4971 0000251E E88D29                   call prs
  4972 00002521 83C402                   add  sp, 2
  4973                                  
  4974                                  ;-519     return; }
  4975                                  
  4976                                  @@dovar1256:
  4977 00002524 E9E600                   jmp @@retn
  4978                                  
  4979                                  ;-520   if (mode==2){prnl();prs(op);prs(" ax, "); a(id1); return; }
  4980                                  
  4981                                  @@dovar1253:
  4982 00002527 8B4604                   mov ax, [bp+4]
  4983 0000252A 83F802                   cmp ax, 2
  4984 0000252D 0F852100                 jne @@dovar1257
  4985 00002531 E86C29                   call prnl
  4986 00002534 FF7606                   push word [bp+6]
  4987 00002537 E87429                   call prs
  4988 0000253A 83C402                   add  sp, 2
  4989 0000253D 68[4626]                 push dovar1_4
  4990 00002540 E86B29                   call prs
  4991 00002543 83C402                   add  sp, 2
  4992 00002546 FF760A                   push word [bp+10]
  4993 00002549 E881DB                   call a
  4994 0000254C 83C402                   add  sp, 2
  4995 0000254F E9BB00                   jmp @@retn
  4996                                  
  4997                                  ;-521   if (ixarr) {
  4998                                  
  4999                                  @@dovar1257:
  5000 00002552 8B4608                   mov ax, [bp+8]
  5001 00002555 08C0                     or  al, al
  5002 00002557 0F848200                 je @@dovar1258
  5003                                  
  5004                                  ;-522     prs("\n mov bx, "); v(ixarr);
  5005                                  
  5006 0000255B 68[4C26]                 push dovar1_5
  5007 0000255E E84D29                   call prs
  5008 00002561 83C402                   add  sp, 2
  5009 00002564 FF7608                   push word [bp+8]
  5010 00002567 E88CDB                   call v
  5011 0000256A 83C402                   add  sp, 2
  5012                                  
  5013                                  ;-523     if (wi==2) prs("\n shl bx, 1");
  5014                                  
  5015 0000256D A1[5B00]                 mov ax, [wi]
  5016 00002570 83F802                   cmp ax, 2
  5017 00002573 0F850900                 jne @@dovar1259
  5018 00002577 68[5826]                 push dovar1_6
  5019 0000257A E83129                   call prs
  5020 0000257D 83C402                   add  sp, 2
  5021                                  
  5022                                  ;-524     if (wi==4) prs("\n shl bx, 2");
  5023                                  
  5024                                  @@dovar1259:
  5025 00002580 A1[5B00]                 mov ax, [wi]
  5026 00002583 83F804                   cmp ax, 4
  5027 00002586 0F850900                 jne @@dovar1260
  5028 0000258A 68[6526]                 push dovar1_7
  5029 0000258D E81E29                   call prs
  5030 00002590 83C402                   add  sp, 2
  5031                                  
  5032                                  ;-525     prs("\n "); prs(op); prc(' '); printpri(wi); prs(", ");
  5033                                  
  5034                                  @@dovar1260:
  5035 00002593 68[7226]                 push dovar1_8
  5036 00002596 E81529                   call prs
  5037 00002599 83C402                   add  sp, 2
  5038 0000259C FF7606                   push word [bp+6]
  5039 0000259F E80C29                   call prs
  5040 000025A2 83C402                   add  sp, 2
  5041 000025A5 6A20                     push 32
  5042 000025A7 E89528                   call prc
  5043 000025AA 83C402                   add  sp, 2
  5044 000025AD FF36[5B00]               push word [wi]
  5045 000025B1 E81EFA                   call printpri
  5046 000025B4 83C402                   add  sp, 2
  5047 000025B7 68[7626]                 push dovar1_9
  5048 000025BA E8F128                   call prs
  5049 000025BD 83C402                   add  sp, 2
  5050                                  
  5051                                  ;-526 // v(id1); prs(" [bx]");
  5052                                  
  5053                                  
  5054                                  ;-527     prc('['); printName(id1); prs(" + bx]"); return; }
  5055                                  
  5056 000025C0 6A5B                     push 91
  5057 000025C2 E87A28                   call prc
  5058 000025C5 83C402                   add  sp, 2
  5059 000025C8 FF760A                   push word [bp+10]
  5060 000025CB E83EE4                   call printName
  5061 000025CE 83C402                   add  sp, 2
  5062 000025D1 68[7926]                 push dovar1_10
  5063 000025D4 E8D728                   call prs
  5064 000025D7 83C402                   add  sp, 2
  5065 000025DA E93000                   jmp @@retn
  5066                                  
  5067                                  ;-528   prnl();prs(op); prc(' '); printpri(wi); prs(", ");  v(id1);
  5068                                  
  5069                                  @@dovar1258:
  5070 000025DD E8C028                   call prnl
  5071 000025E0 FF7606                   push word [bp+6]
  5072 000025E3 E8C828                   call prs
  5073 000025E6 83C402                   add  sp, 2
  5074 000025E9 6A20                     push 32
  5075 000025EB E85128                   call prc
  5076 000025EE 83C402                   add  sp, 2
  5077 000025F1 FF36[5B00]               push word [wi]
  5078 000025F5 E8DAF9                   call printpri
  5079 000025F8 83C402                   add  sp, 2
  5080 000025FB 68[8026]                 push dovar1_11
  5081 000025FE E8AD28                   call prs
  5082 00002601 83C402                   add  sp, 2
  5083 00002604 FF760A                   push word [bp+10]
  5084 00002607 E8ECDA                   call v
  5085 0000260A 83C402                   add  sp, 2
  5086                                  
  5087                                  ;-529 }
  5088                                  
  5089                                  
  5090                                  ;-530 int rterm(char *op) {int mode; int opint; int ixarr; int id1;
  5091                                  
  5092 0000260D C9                      @@retn: LEAVE
  5093 0000260E C3                       ret
  5094                                  ; ENDP
  5095 0000260F 5C6E206D6F76206278-     dovar1_0 db "\n mov bx, ",0
  5096 00002618 2C2000             
  5097 0000261B 20616C2C205B62785D-     dovar1_1 db " al, [bx]\n mov ah, 0",0
  5098 00002624 5C6E206D6F76206168-
  5099 0000262D 2C203000           
  5100 00002631 2061782C205B62785D-     dovar1_2 db " ax, [bx]",0
  5101 0000263A 00                 
  5102 0000263B 206561782C205B6278-     dovar1_3 db " eax, [bx]",0
  5103 00002644 5D00               
  5104 00002646 2061782C2000            dovar1_4 db " ax, ",0
  5105 0000264C 5C6E206D6F76206278-     dovar1_5 db "\n mov bx, ",0
  5106 00002655 2C2000             
  5107 00002658 5C6E2073686C206278-     dovar1_6 db "\n shl bx, 1",0
  5108 00002661 2C203100           
  5109 00002665 5C6E2073686C206278-     dovar1_7 db "\n shl bx, 2",0
  5110 0000266E 2C203200           
  5111 00002672 5C6E2000                dovar1_8 db "\n ",0
  5112 00002676 2C2000                  dovar1_9 db ", ",0
  5113 00002679 202B2062785D00          dovar1_10 db " + bx]",0
  5114 00002680 2C2000                  dovar1_11 db ", ",0
  5115                                  
  5116                                  rterm:  ; *** PROC ***
  5117                                  
  5118                                  ;-531   if (istoken(T_CONST)) { prnl(); prs(op); prc(' '); printpri(wi); prs(", ");
  5119                                  
  5120                                  ;Function : rterm, Number of local variables: 5
  5121                                  ;   # type sign width line used address name   list of local variables
  5122                                  ;  200 ptr sign byte   530 NULL bp+4    op
  5123                                  ;  201 var sign word   530 NULL bp-2    mode
  5124                                  ;  202 var sign word   530 NULL bp-4    opint
  5125                                  ;  203 var sign word   530 NULL bp-6    ixarr
  5126                                  ;  204 var sign word   530 NULL bp-8    id1;
  5127 00002683 C8080000                 ENTER  8,0
  5128 00002687 680101                   push 257
  5129 0000268A E8DB26                   call istoken
  5130 0000268D 83C402                   add  sp, 2
  5131 00002690 08C0                     or  al, al
  5132 00002692 0F843500                 je @@rterm261
  5133 00002696 E80728                   call prnl
  5134 00002699 FF7604                   push word [bp+4]
  5135 0000269C E80F28                   call prs
  5136 0000269F 83C402                   add  sp, 2
  5137 000026A2 6A20                     push 32
  5138 000026A4 E89827                   call prc
  5139 000026A7 83C402                   add  sp, 2
  5140 000026AA FF36[5B00]               push word [wi]
  5141 000026AE E821F9                   call printpri
  5142 000026B1 83C402                   add  sp, 2
  5143 000026B4 68[5227]                 push rterm_0
  5144 000026B7 E8F427                   call prs
  5145 000026BA 83C402                   add  sp, 2
  5146                                  
  5147                                  ;-532     prL(lexvalL); return;}
  5148                                  
  5149 000026BD 66FF36[4D00]             push dword [lexvalL]
  5150 000026C2 E89C38                   call prL
  5151 000026C5 83C404                   add  sp, 4
  5152 000026C8 E98500                   jmp @@retn
  5153                                  
  5154                                  ;-533   mode=typeName(); id1=searchname(); ixarr=0;
  5155                                  
  5156                                  @@rterm261:
  5157 000026CB E888E4                   call typeName
  5158 000026CE 8946FE                   mov word [bp-2], ax
  5159 000026D1 E8A2E3                   call searchname
  5160 000026D4 8946F8                   mov word [bp-8], ax
  5161 000026D7 66B800000000             mov eax, 0
  5162 000026DD 8946FA                   mov word [bp-6], ax
  5163                                  
  5164                                  ;-534   if (istoken('[')) { ixarr=searchname(); expect(T_NAME); expect(']');  
  5165                                  
  5166 000026E0 6A5B                     push 91
  5167 000026E2 E88326                   call istoken
  5168 000026E5 83C402                   add  sp, 2
  5169 000026E8 08C0                     or  al, al
  5170 000026EA 0F843300                 je @@rterm262
  5171 000026EE E885E3                   call searchname
  5172 000026F1 8946FA                   mov word [bp-6], ax
  5173 000026F4 680001                   push 256
  5174 000026F7 E89626                   call expect
  5175 000026FA 83C402                   add  sp, 2
  5176 000026FD 6A5D                     push 93
  5177 000026FF E88E26                   call expect
  5178 00002702 83C402                   add  sp, 2
  5179                                  
  5180                                  ;-535     gettypes(ixarr);
  5181                                  
  5182 00002705 FF76FA                   push word [bp-6]
  5183 00002708 E820E2                   call gettypes
  5184 0000270B 83C402                   add  sp, 2
  5185                                  
  5186                                  ;-536     if (widthi != 2) error1("Array index must be int"); }
  5187                                  
  5188 0000270E A1[5900]                 mov ax, [widthi]
  5189 00002711 83F802                   cmp ax, 2
  5190 00002714 0F840900                 je  @@rterm263
  5191 00002718 68[5527]                 push rterm_1
  5192 0000271B E8912A                   call error1
  5193 0000271E 83C402                   add  sp, 2
  5194                                  @@rterm263:
  5195                                  
  5196                                  ;-537   if (eqstr(symbol,"ax")) return;
  5197                                  
  5198                                  @@rterm262:
  5199 00002721 68[6D27]                 push rterm_2
  5200 00002724 8D066E81                 lea  ax, [symbol]
  5201 00002728 50                       push ax
  5202 00002729 E8D03B                   call eqstr
  5203 0000272C 83C404                   add  sp, 4
  5204 0000272F 08C0                     or  al, al
  5205 00002731 0F840300                 je @@rterm264
  5206 00002735 E91800                   jmp @@retn
  5207                                  
  5208                                  ;-538   opint=op; dovar1(mode, opint, ixarr, id1);
  5209                                  
  5210                                  @@rterm264:
  5211 00002738 8B4604                   mov ax, [bp+4]
  5212 0000273B 8946FC                   mov word [bp-4], ax
  5213 0000273E FF76F8                   push word [bp-8]
  5214 00002741 FF76FA                   push word [bp-6]
  5215 00002744 FF76FC                   push word [bp-4]
  5216 00002747 FF76FE                   push word [bp-2]
  5217 0000274A E869FD                   call dovar1
  5218 0000274D 83C408                   add  sp, 8
  5219                                  
  5220                                  ;-539 }
  5221                                  
  5222                                  
  5223                                  ;-540 int doassign(int mode, int i, int ixarr, int ixconst) {
  5224                                  
  5225 00002750 C9                      @@retn: LEAVE
  5226 00002751 C3                       ret
  5227                                  ; ENDP
  5228 00002752 2C2000                  rterm_0 db ", ",0
  5229 00002755 417272617920696E64-     rterm_1 db "Array index must be int",0
  5230 0000275E 6578206D7573742062-
  5231 00002767 6520696E7400       
  5232 0000276D 617800                  rterm_2 db "ax",0
  5233                                  
  5234                                  doassign:  ; *** PROC ***
  5235                                  
  5236                                  ;-541   gettypes(i);
  5237                                  
  5238                                  ;Function : doassign, Number of local variables: 4
  5239                                  ;   # type sign width line used address name   list of local variables
  5240                                  ;  200 var sign word   540 NULL bp+4    mode
  5241                                  ;  201 var sign word   540 NULL bp+6    i
  5242                                  ;  202 var sign word   540 NULL bp+8    ixarr
  5243                                  ;  203 var sign word   540 NULL bp+10    ixconst;
  5244 00002770 C8000000                 ENTER  0,0
  5245 00002774 FF7606                   push word [bp+6]
  5246 00002777 E8B1E1                   call gettypes
  5247 0000277A 83C402                   add  sp, 2
  5248                                  
  5249                                  ;-542   if (mode==1) {prs("\n mov  bx, ");v(i);
  5250                                  
  5251 0000277D 8B4604                   mov ax, [bp+4]
  5252 00002780 83F801                   cmp ax, 1
  5253 00002783 0F852800                 jne @@doassign265
  5254 00002787 68[8628]                 push doassign_0
  5255 0000278A E82127                   call prs
  5256 0000278D 83C402                   add  sp, 2
  5257 00002790 FF7606                   push word [bp+6]
  5258 00002793 E860D9                   call v
  5259 00002796 83C402                   add  sp, 2
  5260                                  
  5261                                  ;-543     prs("\n mov  [bx], "); printpri(widthi); return;}
  5262                                  
  5263 00002799 68[9328]                 push doassign_1
  5264 0000279C E80F27                   call prs
  5265 0000279F 83C402                   add  sp, 2
  5266 000027A2 FF36[5900]               push word [widthi]
  5267 000027A6 E829F8                   call printpri
  5268 000027A9 83C402                   add  sp, 2
  5269 000027AC E9D500                   jmp @@retn
  5270                                  
  5271                                  ;-544   if (mode==2) {prs("\n mov  ");a(i); prs(", ax"); return;}
  5272                                  
  5273                                  @@doassign265:
  5274 000027AF 8B4604                   mov ax, [bp+4]
  5275 000027B2 83F802                   cmp ax, 2
  5276 000027B5 0F851E00                 jne @@doassign266
  5277 000027B9 68[A228]                 push doassign_2
  5278 000027BC E8EF26                   call prs
  5279 000027BF 83C402                   add  sp, 2
  5280 000027C2 FF7606                   push word [bp+6]
  5281 000027C5 E805D9                   call a
  5282 000027C8 83C402                   add  sp, 2
  5283 000027CB 68[AB28]                 push doassign_3
  5284 000027CE E8DD26                   call prs
  5285 000027D1 83C402                   add  sp, 2
  5286 000027D4 E9AD00                   jmp @@retn
  5287                                  
  5288                                  ;-545   if (ixarr) {  prs("\n mov bx, ");
  5289                                  
  5290                                  @@doassign266:
  5291 000027D7 8B4608                   mov ax, [bp+8]
  5292 000027DA 08C0                     or  al, al
  5293 000027DC 0F847500                 je @@doassign267
  5294 000027E0 68[B028]                 push doassign_4
  5295 000027E3 E8C826                   call prs
  5296 000027E6 83C402                   add  sp, 2
  5297                                  
  5298                                  ;-546     if(ixconst) prunsign1(ixarr); else v(ixarr);
  5299                                  
  5300 000027E9 8B460A                   mov ax, [bp+10]
  5301 000027EC 08C0                     or  al, al
  5302 000027EE 0F840C00                 je @@doassign268
  5303 000027F2 FF7608                   push word [bp+8]
  5304 000027F5 E81F28                   call prunsign1
  5305 000027F8 83C402                   add  sp, 2
  5306 000027FB E90900                   jmp @@doassign269
  5307                                  @@doassign268:
  5308 000027FE FF7608                   push word [bp+8]
  5309 00002801 E8F2D8                   call v
  5310 00002804 83C402                   add  sp, 2
  5311                                  
  5312                                  ;-547     if (wi==2) prs("\n shl bx, 1");
  5313                                  
  5314                                  @@doassign269:
  5315 00002807 A1[5B00]                 mov ax, [wi]
  5316 0000280A 83F802                   cmp ax, 2
  5317 0000280D 0F850900                 jne @@doassign270
  5318 00002811 68[BC28]                 push doassign_5
  5319 00002814 E89726                   call prs
  5320 00002817 83C402                   add  sp, 2
  5321                                  
  5322                                  ;-548     if (wi==4) prs("\n shl bx, 2");
  5323                                  
  5324                                  @@doassign270:
  5325 0000281A A1[5B00]                 mov ax, [wi]
  5326 0000281D 83F804                   cmp ax, 4
  5327 00002820 0F850900                 jne @@doassign271
  5328 00002824 68[C928]                 push doassign_6
  5329 00002827 E88426                   call prs
  5330 0000282A 83C402                   add  sp, 2
  5331                                  
  5332                                  ;-549     prs("\n mov ["); printName(i); prs("+bx], "); printpri(wi); return; }
  5333                                  
  5334                                  @@doassign271:
  5335 0000282D 68[D628]                 push doassign_7
  5336 00002830 E87B26                   call prs
  5337 00002833 83C402                   add  sp, 2
  5338 00002836 FF7606                   push word [bp+6]
  5339 00002839 E8D0E1                   call printName
  5340 0000283C 83C402                   add  sp, 2
  5341 0000283F 68[DF28]                 push doassign_8
  5342 00002842 E86926                   call prs
  5343 00002845 83C402                   add  sp, 2
  5344 00002848 FF36[5B00]               push word [wi]
  5345 0000284C E883F7                   call printpri
  5346 0000284F 83C402                   add  sp, 2
  5347 00002852 E92F00                   jmp @@retn
  5348                                  
  5349                                  ;-550   prs("\n mov "); pwi(wi); v(i); prs(", "); printpri(wi);
  5350                                  
  5351                                  @@doassign267:
  5352 00002855 68[E628]                 push doassign_9
  5353 00002858 E85326                   call prs
  5354 0000285B 83C402                   add  sp, 2
  5355 0000285E FF36[5B00]               push word [wi]
  5356 00002862 E822D9                   call pwi
  5357 00002865 83C402                   add  sp, 2
  5358 00002868 FF7606                   push word [bp+6]
  5359 0000286B E888D8                   call v
  5360 0000286E 83C402                   add  sp, 2
  5361 00002871 68[EE28]                 push doassign_10
  5362 00002874 E83726                   call prs
  5363 00002877 83C402                   add  sp, 2
  5364 0000287A FF36[5B00]               push word [wi]
  5365 0000287E E851F7                   call printpri
  5366 00002881 83C402                   add  sp, 2
  5367                                  
  5368                                  ;-551 }
  5369                                  
  5370                                  
  5371                                  ;-552 int domul(int ids) {
  5372                                  
  5373 00002884 C9                      @@retn: LEAVE
  5374 00002885 C3                       ret
  5375                                  ; ENDP
  5376 00002886 5C6E206D6F76202062-     doassign_0 db "\n mov  bx, ",0
  5377 0000288F 782C2000           
  5378 00002893 5C6E206D6F7620205B-     doassign_1 db "\n mov  [bx], ",0
  5379 0000289C 62785D2C2000       
  5380 000028A2 5C6E206D6F76202000      doassign_2 db "\n mov  ",0
  5381 000028AB 2C20617800              doassign_3 db ", ax",0
  5382 000028B0 5C6E206D6F76206278-     doassign_4 db "\n mov bx, ",0
  5383 000028B9 2C2000             
  5384 000028BC 5C6E2073686C206278-     doassign_5 db "\n shl bx, 1",0
  5385 000028C5 2C203100           
  5386 000028C9 5C6E2073686C206278-     doassign_6 db "\n shl bx, 2",0
  5387 000028D2 2C203200           
  5388 000028D6 5C6E206D6F76205B00      doassign_7 db "\n mov [",0
  5389 000028DF 2B62785D2C2000          doassign_8 db "+bx], ",0
  5390 000028E6 5C6E206D6F762000        doassign_9 db "\n mov ",0
  5391 000028EE 2C2000                  doassign_10 db ", ",0
  5392                                  
  5393                                  domul:  ; *** PROC ***
  5394                                  
  5395                                  ;-553   if (ids) rterm("imul"); else {
  5396                                  
  5397                                  ;Function : domul, Number of local variables: 1
  5398                                  ;   # type sign width line used address name   list of local variables
  5399                                  ;  200 var sign word   552 NULL bp+4    ids;
  5400 000028F1 C8000000                 ENTER  0,0
  5401 000028F5 8B4604                   mov ax, [bp+4]
  5402 000028F8 08C0                     or  al, al
  5403 000028FA 0F840C00                 je @@domul272
  5404 000028FE 68[4429]                 push domul_0
  5405 00002901 E87FFD                   call rterm
  5406 00002904 83C402                   add  sp, 2
  5407 00002907 E93800                   jmp @@domul273
  5408                                  @@domul272:
  5409                                  
  5410                                  ;-554   if (istoken(T_CONST)) {
  5411                                  
  5412 0000290A 680101                   push 257
  5413 0000290D E85824                   call istoken
  5414 00002910 83C402                   add  sp, 2
  5415 00002913 08C0                     or  al, al
  5416 00002915 0F842000                 je @@domul274
  5417                                  
  5418                                  ;-555       prs("\n mov ebx, "); prL(lexvalL); prs("\n mul ebx"); }
  5419                                  
  5420 00002919 68[4929]                 push domul_1
  5421 0000291C E88F25                   call prs
  5422 0000291F 83C402                   add  sp, 2
  5423 00002922 66FF36[4D00]             push dword [lexvalL]
  5424 00002927 E83736                   call prL
  5425 0000292A 83C404                   add  sp, 4
  5426 0000292D 68[5629]                 push domul_2
  5427 00002930 E87B25                   call prs
  5428 00002933 83C402                   add  sp, 2
  5429                                  
  5430                                  ;-556   else error1("with MUL only const number as multiplicator allowed"); } }
  5431                                  
  5432 00002936 E90900                   jmp @@domul275
  5433                                  @@domul274:
  5434 00002939 68[6129]                 push domul_3
  5435 0000293C E87028                   call error1
  5436 0000293F 83C402                   add  sp, 2
  5437                                  @@domul275:
  5438                                  @@domul273:
  5439                                  
  5440                                  ;-557 int doidiv(int ids) { int mode; int id1;
  5441 00002942 C9                       LEAVE
  5442 00002943 C3                       ret
  5443                                  ; ENDP
  5444 00002944 696D756C00              domul_0 db "imul",0
  5445 00002949 5C6E206D6F76206562-     domul_1 db "\n mov ebx, ",0
  5446 00002952 782C2000           
  5447 00002956 5C6E206D756C206562-     domul_2 db "\n mul ebx",0
  5448 0000295F 7800               
  5449 00002961 77697468204D554C20-     domul_3 db "with MUL only const number as multiplicator allowed",0
  5450 0000296A 6F6E6C7920636F6E73-
  5451 00002973 74206E756D62657220-
  5452 0000297C 6173206D756C746970-
  5453 00002985 6C696361746F722061-
  5454 0000298E 6C6C6F77656400     
  5455                                  
  5456                                  doidiv:  ; *** PROC ***
  5457                                  
  5458                                  ;-558   if (istoken(T_CONST)) {
  5459                                  
  5460                                  ;Function : doidiv, Number of local variables: 3
  5461                                  ;   # type sign width line used address name   list of local variables
  5462                                  ;  200 var sign word   557 NULL bp+4    ids
  5463                                  ;  201 var sign word   557 NULL bp-2    mode
  5464                                  ;  202 var sign word   557 NULL bp-4    id1;
  5465 00002995 C8040000                 ENTER  4,0
  5466 00002999 680101                   push 257
  5467 0000299C E8C923                   call istoken
  5468 0000299F 83C402                   add  sp, 2
  5469 000029A2 08C0                     or  al, al
  5470 000029A4 0F843500                 je @@doidiv276
  5471                                  
  5472                                  ;-559     prs("\n mov bx, "); prL(lexvalL);
  5473                                  
  5474 000029A8 68[5B2A]                 push doidiv_0
  5475 000029AB E80025                   call prs
  5476 000029AE 83C402                   add  sp, 2
  5477 000029B1 66FF36[4D00]             push dword [lexvalL]
  5478 000029B6 E8A835                   call prL
  5479 000029B9 83C404                   add  sp, 4
  5480                                  
  5481                                  ;-560     if (ids) prs("\n cwd\n idiv bx"); else prs("\n mov dx, 0\n div bx"); }
  5482                                  
  5483 000029BC 8B4604                   mov ax, [bp+4]
  5484 000029BF 08C0                     or  al, al
  5485 000029C1 0F840C00                 je @@doidiv277
  5486 000029C5 68[672A]                 push doidiv_1
  5487 000029C8 E8E324                   call prs
  5488 000029CB 83C402                   add  sp, 2
  5489 000029CE E90900                   jmp @@doidiv278
  5490                                  @@doidiv277:
  5491 000029D1 68[782A]                 push doidiv_2
  5492 000029D4 E8D724                   call prs
  5493 000029D7 83C402                   add  sp, 2
  5494                                  @@doidiv278:
  5495                                  
  5496                                  ;-561   else {
  5497                                  
  5498 000029DA E97C00                   jmp @@doidiv279
  5499                                  @@doidiv276:
  5500                                  
  5501                                  ;-562     mode=typeName(); id1=searchname();
  5502                                  
  5503 000029DD E876E1                   call typeName
  5504 000029E0 8946FE                   mov word [bp-2], ax
  5505 000029E3 E890E0                   call searchname
  5506 000029E6 8946FC                   mov word [bp-4], ax
  5507                                  
  5508                                  ;-563     if (mode) error1("only const number or int as divisor allowed");
  5509                                  
  5510 000029E9 8B46FE                   mov ax, [bp-2]
  5511 000029EC 08C0                     or  al, al
  5512 000029EE 0F840900                 je @@doidiv280
  5513 000029F2 68[8E2A]                 push doidiv_3
  5514 000029F5 E8B727                   call error1
  5515 000029F8 83C402                   add  sp, 2
  5516                                  
  5517                                  ;-564     gettypes(id1);
  5518                                  
  5519                                  @@doidiv280:
  5520 000029FB FF76FC                   push word [bp-4]
  5521 000029FE E82ADF                   call gettypes
  5522 00002A01 83C402                   add  sp, 2
  5523                                  
  5524                                  ;-565     if (typei) error1("only int as simple var divisor allowed");
  5525                                  
  5526 00002A04 A1[5300]                 mov ax, [typei]
  5527 00002A07 08C0                     or  al, al
  5528 00002A09 0F840900                 je @@doidiv281
  5529 00002A0D 68[BA2A]                 push doidiv_4
  5530 00002A10 E89C27                   call error1
  5531 00002A13 83C402                   add  sp, 2
  5532                                  
  5533                                  ;-566     if (wi!=2) error1("only int, no byte as divisor allowed");
  5534                                  
  5535                                  @@doidiv281:
  5536 00002A16 A1[5B00]                 mov ax, [wi]
  5537 00002A19 83F802                   cmp ax, 2
  5538 00002A1C 0F840900                 je  @@doidiv282
  5539 00002A20 68[E12A]                 push doidiv_5
  5540 00002A23 E88927                   call error1
  5541 00002A26 83C402                   add  sp, 2
  5542                                  
  5543                                  ;-567     prs("\n mov bx, "); v(id1);
  5544                                  
  5545                                  @@doidiv282:
  5546 00002A29 68[062B]                 push doidiv_6
  5547 00002A2C E87F24                   call prs
  5548 00002A2F 83C402                   add  sp, 2
  5549 00002A32 FF76FC                   push word [bp-4]
  5550 00002A35 E8BED6                   call v
  5551 00002A38 83C402                   add  sp, 2
  5552                                  
  5553                                  ;-568     if (ids) prs("\n cwd\n idiv bx"); else prs("\n mov dx, 0\n div bx"); }
  5554                                  
  5555 00002A3B 8B4604                   mov ax, [bp+4]
  5556 00002A3E 08C0                     or  al, al
  5557 00002A40 0F840C00                 je @@doidiv283
  5558 00002A44 68[122B]                 push doidiv_7
  5559 00002A47 E86424                   call prs
  5560 00002A4A 83C402                   add  sp, 2
  5561 00002A4D E90900                   jmp @@doidiv284
  5562                                  @@doidiv283:
  5563 00002A50 68[232B]                 push doidiv_8
  5564 00002A53 E85824                   call prs
  5565 00002A56 83C402                   add  sp, 2
  5566                                  @@doidiv284:
  5567                                  
  5568                                  ;-569 }
  5569                                  
  5570                                  @@doidiv279:
  5571                                  
  5572                                  ;-570 int domod(int ids) { doidiv(ids); prs("\n mov ax, dx"); }
  5573 00002A59 C9                       LEAVE
  5574 00002A5A C3                       ret
  5575                                  ; ENDP
  5576 00002A5B 5C6E206D6F76206278-     doidiv_0 db "\n mov bx, ",0
  5577 00002A64 2C2000             
  5578 00002A67 5C6E206377645C6E20-     doidiv_1 db "\n cwd\n idiv bx",0
  5579 00002A70 6964697620627800   
  5580 00002A78 5C6E206D6F76206478-     doidiv_2 db "\n mov dx, 0\n div bx",0
  5581 00002A81 2C20305C6E20646976-
  5582 00002A8A 20627800           
  5583 00002A8E 6F6E6C7920636F6E73-     doidiv_3 db "only const number or int as divisor allowed",0
  5584 00002A97 74206E756D62657220-
  5585 00002AA0 6F7220696E74206173-
  5586 00002AA9 2064697669736F7220-
  5587 00002AB2 616C6C6F77656400   
  5588 00002ABA 6F6E6C7920696E7420-     doidiv_4 db "only int as simple var divisor allowed",0
  5589 00002AC3 61732073696D706C65-
  5590 00002ACC 207661722064697669-
  5591 00002AD5 736F7220616C6C6F77-
  5592 00002ADE 656400             
  5593 00002AE1 6F6E6C7920696E742C-     doidiv_5 db "only int, no byte as divisor allowed",0
  5594 00002AEA 206E6F206279746520-
  5595 00002AF3 61732064697669736F-
  5596 00002AFC 7220616C6C6F776564-
  5597 00002B05 00                 
  5598 00002B06 5C6E206D6F76206278-     doidiv_6 db "\n mov bx, ",0
  5599 00002B0F 2C2000             
  5600 00002B12 5C6E206377645C6E20-     doidiv_7 db "\n cwd\n idiv bx",0
  5601 00002B1B 6964697620627800   
  5602 00002B23 5C6E206D6F76206478-     doidiv_8 db "\n mov dx, 0\n div bx",0
  5603 00002B2C 2C20305C6E20646976-
  5604 00002B35 20627800           
  5605                                  
  5606                                  domod:  ; *** PROC ***
  5607                                  ;Function : domod, Number of local variables: 1
  5608                                  ;   # type sign width line used address name   list of local variables
  5609                                  ;  200 var sign word   570 NULL bp+4    ids;
  5610 00002B39 C8000000                 ENTER  0,0
  5611 00002B3D FF7604                   push word [bp+4]
  5612 00002B40 E852FE                   call doidiv
  5613 00002B43 83C402                   add  sp, 2
  5614 00002B46 68[512B]                 push domod_0
  5615 00002B49 E86223                   call prs
  5616 00002B4C 83C402                   add  sp, 2
  5617                                  
  5618                                  ;-571 
  5619                                  
  5620                                  
  5621                                  ;-572 int docalltype[10]; int docallvalue[10];
  5622 00002B4F C9                       LEAVE
  5623 00002B50 C3                       ret
  5624                                  ; ENDP
  5625 00002B51 5C6E206D6F76206178-     domod_0 db "\n mov ax, dx",0
  5626 00002B5A 2C20647800         
  5627                                  section .bss
  5628                                  absolute 46864
  5629 0000B710 <res 00000014>          docalltype resw 10
  5630                                  section .text
  5631                                  section .bss
  5632                                  absolute 46884
  5633 0000B724 <res 00000014>          docallvalue resw 10
  5634                                  section .text
  5635                                  
  5636                                  ;-573 char procname[IDLENMAX]; // 1=CONST, 2=String, 3=&, 4=Name 5=register
  5637                                  
  5638                                  section .bss
  5639                                  absolute 46904
  5640 0000B738 <res 00000010>          procname resb 16
  5641                                  section .text
  5642                                  
  5643                                  ;-574 
  5644                                  
  5645                                  
  5646                                  ;-575 void docall1() {int i; int narg; int t0; int n0;  int sz32;
  5647                                  
  5648                                  
  5649                                  docall1:  ; *** PROC ***
  5650                                  
  5651                                  ;-576   narg=0;  sz32=0;
  5652                                  
  5653                                  ;Function : docall1, Number of local variables: 5
  5654                                  ;   # type sign width line used address name   list of local variables
  5655                                  ;  200 var sign word   575 NULL bp-2    i
  5656                                  ;  201 var sign word   575 NULL bp-4    narg
  5657                                  ;  202 var sign word   575 NULL bp-6    t0
  5658                                  ;  203 var sign word   575 NULL bp-8    n0
  5659                                  ;  204 var sign word   575 NULL bp-10    sz32;
  5660 00002B5F C80A0000                 ENTER  10,0
  5661 00002B63 66B800000000             mov eax, 0
  5662 00002B69 8946FC                   mov word [bp-4], ax
  5663 00002B6C 66B800000000             mov eax, 0
  5664 00002B72 8946F6                   mov word [bp-10], ax
  5665                                  
  5666                                  ;-577   checknamelen();
  5667                                  
  5668 00002B75 E8C3D5                   call checknamelen
  5669                                  
  5670                                  ;-578   strcpy(&procname, symbol);
  5671                                  
  5672 00002B78 8D066E81                 lea  ax, [symbol]
  5673 00002B7C 50                       push ax
  5674 00002B7D 8D0638B7                 lea  ax, [procname]
  5675 00002B81 50                       push ax
  5676 00002B82 E82336                   call strcpy
  5677 00002B85 83C404                   add  sp, 4
  5678                                  
  5679                                  ;-579   storecall();
  5680                                  
  5681 00002B88 E82FE1                   call storecall
  5682                                  
  5683                                  ;-580   expect('(');
  5684                                  
  5685 00002B8B 6A28                     push 40
  5686 00002B8D E80022                   call expect
  5687 00002B90 83C402                   add  sp, 2
  5688                                  
  5689                                  ;-581 	if (istoken(')') ==0 ) {
  5690                                  
  5691 00002B93 6A29                     push 41
  5692 00002B95 E8D021                   call istoken
  5693 00002B98 83C402                   add  sp, 2
  5694 00002B9B 83F800                   cmp ax, 0
  5695 00002B9E 0F85FB02                 jne @@docall1285
  5696                                  
  5697                                  ;-582 	  do { narg++;
  5698                                  
  5699                                  @@docall1286:
  5700 00002BA2 FF46FC                   inc  word [bp-4]
  5701                                  
  5702                                  ;-583 	    if (narg >9 ) error1("Max. 9 parameters");  t0=0;
  5703                                  
  5704 00002BA5 8B46FC                   mov ax, [bp-4]
  5705 00002BA8 83F809                   cmp ax, 9
  5706 00002BAB 0F8E0900                 jle @@docall1287
  5707 00002BAF 68[E12E]                 push docall1_0
  5708 00002BB2 E8FA25                   call error1
  5709 00002BB5 83C402                   add  sp, 2
  5710                                  @@docall1287:
  5711 00002BB8 66B800000000             mov eax, 0
  5712 00002BBE 8946FA                   mov word [bp-6], ax
  5713                                  
  5714                                  ;-584       if(istoken(T_CONST)) {t0=1; n0=lexvalL; }
  5715                                  
  5716 00002BC1 680101                   push 257
  5717 00002BC4 E8A121                   call istoken
  5718 00002BC7 83C402                   add  sp, 2
  5719 00002BCA 08C0                     or  al, al
  5720 00002BCC 0F841000                 je @@docall1288
  5721 00002BD0 66B801000000             mov eax, 1
  5722 00002BD6 8946FA                   mov word [bp-6], ax
  5723 00002BD9 66A1[4D00]               mov eax, [lexvalL]
  5724 00002BDD 8946F8                   mov word [bp-8], ax
  5725                                  
  5726                                  ;-585       if(istoken(T_STRING)){t0=2; n0=nconst;
  5727                                  
  5728                                  @@docall1288:
  5729 00002BE0 680201                   push 258
  5730 00002BE3 E88221                   call istoken
  5731 00002BE6 83C402                   add  sp, 2
  5732 00002BE9 08C0                     or  al, al
  5733 00002BEB 0F846600                 je @@docall1289
  5734 00002BEF 66B802000000             mov eax, 2
  5735 00002BF5 8946FA                   mov word [bp-6], ax
  5736 00002BF8 A1[4500]                 mov ax, [nconst]
  5737 00002BFB 8946F8                   mov word [bp-8], ax
  5738                                  
  5739                                  ;-586         eprs("\n"); eprs(fname); eprc(95);eprnum(nconst);eprs(" db ");
  5740                                  
  5741 00002BFE 68[F32E]                 push docall1_1
  5742 00002C01 E80D22                   call eprs
  5743 00002C04 83C402                   add  sp, 2
  5744 00002C07 8D06EE81                 lea  ax, [fname]
  5745 00002C0B 50                       push ax
  5746 00002C0C E80222                   call eprs
  5747 00002C0F 83C402                   add  sp, 2
  5748 00002C12 6A5F                     push 95
  5749 00002C14 E8E721                   call eprc
  5750 00002C17 83C402                   add  sp, 2
  5751 00002C1A FF36[4500]               push word [nconst]
  5752 00002C1E E83023                   call eprnum
  5753 00002C21 83C402                   add  sp, 2
  5754 00002C24 68[F62E]                 push docall1_2
  5755 00002C27 E8E721                   call eprs
  5756 00002C2A 83C402                   add  sp, 2
  5757                                  
  5758                                  ;-587         eprc(34);eprs(symbol);eprc(34);eprs(",0"); nconst++; }
  5759                                  
  5760 00002C2D 6A22                     push 34
  5761 00002C2F E8CC21                   call eprc
  5762 00002C32 83C402                   add  sp, 2
  5763 00002C35 8D066E81                 lea  ax, [symbol]
  5764 00002C39 50                       push ax
  5765 00002C3A E8D421                   call eprs
  5766 00002C3D 83C402                   add  sp, 2
  5767 00002C40 6A22                     push 34
  5768 00002C42 E8B921                   call eprc
  5769 00002C45 83C402                   add  sp, 2
  5770 00002C48 68[FB2E]                 push docall1_3
  5771 00002C4B E8C321                   call eprs
  5772 00002C4E 83C402                   add  sp, 2
  5773 00002C51 FF06[4500]               inc  word [nconst]
  5774                                  
  5775                                  ;-588       if(istoken('&'))     {t0=3; name1(); n0=searchname();}
  5776                                  
  5777                                  @@docall1289:
  5778 00002C55 6A26                     push 38
  5779 00002C57 E80E21                   call istoken
  5780 00002C5A 83C402                   add  sp, 2
  5781 00002C5D 08C0                     or  al, al
  5782 00002C5F 0F841200                 je @@docall1290
  5783 00002C63 66B803000000             mov eax, 3
  5784 00002C69 8946FA                   mov word [bp-6], ax
  5785 00002C6C E823E0                   call name1
  5786 00002C6F E804DE                   call searchname
  5787 00002C72 8946F8                   mov word [bp-8], ax
  5788                                  
  5789                                  ;-589       if(istoken(T_NAME))  { n0=checkreg();
  5790                                  
  5791                                  @@docall1290:
  5792 00002C75 680001                   push 256
  5793 00002C78 E8ED20                   call istoken
  5794 00002C7B 83C402                   add  sp, 2
  5795 00002C7E 08C0                     or  al, al
  5796 00002C80 0F845100                 je @@docall1291
  5797 00002C84 E84AEE                   call checkreg
  5798 00002C87 8946F8                   mov word [bp-8], ax
  5799                                  
  5800                                  ;-590         if (n0) t0=5;
  5801                                  
  5802 00002C8A 8B46F8                   mov ax, [bp-8]
  5803 00002C8D 08C0                     or  al, al
  5804 00002C8F 0F840C00                 je @@docall1292
  5805 00002C93 66B805000000             mov eax, 5
  5806 00002C99 8946FA                   mov word [bp-6], ax
  5807                                  
  5808                                  ;-591         else {t0=4; n0=searchname();
  5809                                  
  5810 00002C9C E93600                   jmp @@docall1293
  5811                                  @@docall1292:
  5812 00002C9F 66B804000000             mov eax, 4
  5813 00002CA5 8946FA                   mov word [bp-6], ax
  5814 00002CA8 E8CBDD                   call searchname
  5815 00002CAB 8946F8                   mov word [bp-8], ax
  5816                                  
  5817                                  ;-592           p1=&GType; p1=p1+n0; if (*p1=='&') t0=3; }  }
  5818                                  
  5819 00002CAE B8B782                   mov ax, GType
  5820 00002CB1 A3[C000]                 mov word [p1], ax
  5821 00002CB4 A1[C000]                 mov ax, [p1]
  5822 00002CB7 0346F8                   add ax, [bp-8]
  5823 00002CBA A3[C000]                 mov word [p1], ax
  5824 00002CBD 8B1E[C000]               mov bx, [p1]
  5825 00002CC1 8A07                     mov al, [bx]
  5826 00002CC3 B400                     mov ah, 0
  5827 00002CC5 83F826                   cmp ax, 38
  5828 00002CC8 0F850900                 jne @@docall1294
  5829 00002CCC 66B803000000             mov eax, 3
  5830 00002CD2 8946FA                   mov word [bp-6], ax
  5831                                  @@docall1294:
  5832                                  @@docall1293:
  5833                                  
  5834                                  ;-593       if (t0==0) error1("parameter not recognized (no * allowed)");
  5835                                  
  5836                                  @@docall1291:
  5837 00002CD5 8B46FA                   mov ax, [bp-6]
  5838 00002CD8 83F800                   cmp ax, 0
  5839 00002CDB 0F850900                 jne @@docall1295
  5840 00002CDF 68[FE2E]                 push docall1_4
  5841 00002CE2 E8CA24                   call error1
  5842 00002CE5 83C402                   add  sp, 2
  5843                                  
  5844                                  ;-594       docalltype [narg] = t0;
  5845                                  
  5846                                  @@docall1295:
  5847 00002CE8 8B46FA                   mov ax, [bp-6]
  5848 00002CEB 8B5EFC                   mov bx, [bp-4]
  5849 00002CEE D1E3                     shl bx, 1
  5850 00002CF0 898710B7                 mov [docalltype+bx], ax
  5851                                  
  5852                                  ;-595       docallvalue[narg] = n0;
  5853                                  
  5854 00002CF4 8B46F8                   mov ax, [bp-8]
  5855 00002CF7 8B5EFC                   mov bx, [bp-4]
  5856 00002CFA D1E3                     shl bx, 1
  5857 00002CFC 898724B7                 mov [docallvalue+bx], ax
  5858                                  
  5859                                  ;-596     } while (istoken(','));
  5860                                  
  5861 00002D00 6A2C                     push 44
  5862 00002D02 E86320                   call istoken
  5863 00002D05 83C402                   add  sp, 2
  5864 00002D08 08C0                     or  al, al
  5865 00002D0A 0F840300                 je @@docall1296
  5866 00002D0E E991FE                   jmp @@docall1286
  5867                                  @@docall1296:
  5868                                  
  5869                                  ;-597     
  5870                                  
  5871                                  
  5872                                  ;-598   	expect(')');  i=narg;
  5873                                  
  5874 00002D11 6A29                     push 41
  5875 00002D13 E87A20                   call expect
  5876 00002D16 83C402                   add  sp, 2
  5877 00002D19 8B46FC                   mov ax, [bp-4]
  5878 00002D1C 8946FE                   mov word [bp-2], ax
  5879                                  
  5880                                  ;-599     do {
  5881                                  
  5882                                  @@docall1297:
  5883                                  
  5884                                  ;-600       t0 = docalltype [i];
  5885                                  
  5886 00002D1F 8B5EFE                   mov bx, [bp-2]
  5887 00002D22 D1E3                     shl bx, 1
  5888 00002D24 8B8710B7                 mov ax, [docalltype + bx]
  5889 00002D28 8946FA                   mov word [bp-6], ax
  5890                                  
  5891                                  ;-601       n0 = docallvalue[i];     
  5892                                  
  5893 00002D2B 8B5EFE                   mov bx, [bp-2]
  5894 00002D2E D1E3                     shl bx, 1
  5895 00002D30 8B8724B7                 mov ax, [docallvalue + bx]
  5896 00002D34 8946F8                   mov word [bp-8], ax
  5897                                  
  5898                                  ;-602       if(t0==1){ prs("\n push "); pint1(n0);}
  5899                                  
  5900 00002D37 8B46FA                   mov ax, [bp-6]
  5901 00002D3A 83F801                   cmp ax, 1
  5902 00002D3D 0F851200                 jne @@docall1298
  5903 00002D41 68[262F]                 push docall1_5
  5904 00002D44 E86721                   call prs
  5905 00002D47 83C402                   add  sp, 2
  5906 00002D4A FF76F8                   push word [bp-8]
  5907 00002D4D E86422                   call pint1
  5908 00002D50 83C402                   add  sp, 2
  5909                                  
  5910                                  ;-603       if(t0==2){ prs("\n push "); if(NASM==0) prs("offset ");
  5911                                  
  5912                                  @@docall1298:
  5913 00002D53 8B46FA                   mov ax, [bp-6]
  5914 00002D56 83F802                   cmp ax, 2
  5915 00002D59 0F853700                 jne @@docall1299
  5916 00002D5D 68[2F2F]                 push docall1_6
  5917 00002D60 E84B21                   call prs
  5918 00002D63 83C402                   add  sp, 2
  5919 00002D66 A0[1500]                 mov al, [NASM]
  5920 00002D69 3C00                     cmp al, 0
  5921 00002D6B 0F850900                 jne @@docall1300
  5922 00002D6F 68[382F]                 push docall1_7
  5923 00002D72 E83921                   call prs
  5924 00002D75 83C402                   add  sp, 2
  5925                                  
  5926                                  ;-604         prs(fname);prc(95);pint1(n0);}
  5927                                  
  5928                                  @@docall1300:
  5929 00002D78 8D06EE81                 lea  ax, [fname]
  5930 00002D7C 50                       push ax
  5931 00002D7D E82E21                   call prs
  5932 00002D80 83C402                   add  sp, 2
  5933 00002D83 6A5F                     push 95
  5934 00002D85 E8B720                   call prc
  5935 00002D88 83C402                   add  sp, 2
  5936 00002D8B FF76F8                   push word [bp-8]
  5937 00002D8E E82322                   call pint1
  5938 00002D91 83C402                   add  sp, 2
  5939                                  
  5940                                  ;-605       if(t0==3){ prs("\n lea  ax, "); if(NASM==0)prs("word ptr ");  v(n0);
  5941                                  
  5942                                  @@docall1299:
  5943 00002D94 8B46FA                   mov ax, [bp-6]
  5944 00002D97 83F803                   cmp ax, 3
  5945 00002D9A 0F852D00                 jne @@docall1301
  5946 00002D9E 68[402F]                 push docall1_8
  5947 00002DA1 E80A21                   call prs
  5948 00002DA4 83C402                   add  sp, 2
  5949 00002DA7 A0[1500]                 mov al, [NASM]
  5950 00002DAA 3C00                     cmp al, 0
  5951 00002DAC 0F850900                 jne @@docall1302
  5952 00002DB0 68[4D2F]                 push docall1_9
  5953 00002DB3 E8F820                   call prs
  5954 00002DB6 83C402                   add  sp, 2
  5955                                  @@docall1302:
  5956 00002DB9 FF76F8                   push word [bp-8]
  5957 00002DBC E837D3                   call v
  5958 00002DBF 83C402                   add  sp, 2
  5959                                  
  5960                                  ;-606         prs("\n push ax");}
  5961                                  
  5962 00002DC2 68[572F]                 push docall1_10
  5963 00002DC5 E8E620                   call prs
  5964 00002DC8 83C402                   add  sp, 2
  5965                                  
  5966                                  ;-607       if(t0==4){ gettypes(n0);
  5967                                  
  5968                                  @@docall1301:
  5969 00002DCB 8B46FA                   mov ax, [bp-6]
  5970 00002DCE 83F804                   cmp ax, 4
  5971 00002DD1 0F858C00                 jne @@docall1303
  5972 00002DD5 FF76F8                   push word [bp-8]
  5973 00002DD8 E850DB                   call gettypes
  5974 00002DDB 83C402                   add  sp, 2
  5975                                  
  5976                                  ;-608         if(wi==4)      { prs("\n push "); pwi(wi); v(n0); sz32+=2; }
  5977                                  
  5978 00002DDE A1[5B00]                 mov ax, [wi]
  5979 00002DE1 83F804                   cmp ax, 4
  5980 00002DE4 0F852300                 jne @@docall1304
  5981 00002DE8 68[622F]                 push docall1_11
  5982 00002DEB E8C020                   call prs
  5983 00002DEE 83C402                   add  sp, 2
  5984 00002DF1 FF36[5B00]               push word [wi]
  5985 00002DF5 E88FD3                   call pwi
  5986 00002DF8 83C402                   add  sp, 2
  5987 00002DFB FF76F8                   push word [bp-8]
  5988 00002DFE E8F5D2                   call v
  5989 00002E01 83C402                   add  sp, 2
  5990 00002E04 8346F602                 add  word [bp-10], 2
  5991                                  
  5992                                  ;-609         else if(wi==2) { prs("\n push "); pwi(wi); v(n0);}
  5993                                  
  5994 00002E08 E95600                   jmp @@docall1305
  5995                                  @@docall1304:
  5996 00002E0B A1[5B00]                 mov ax, [wi]
  5997 00002E0E 83F802                   cmp ax, 2
  5998 00002E11 0F851F00                 jne @@docall1306
  5999 00002E15 68[6B2F]                 push docall1_12
  6000 00002E18 E89320                   call prs
  6001 00002E1B 83C402                   add  sp, 2
  6002 00002E1E FF36[5B00]               push word [wi]
  6003 00002E22 E862D3                   call pwi
  6004 00002E25 83C402                   add  sp, 2
  6005 00002E28 FF76F8                   push word [bp-8]
  6006 00002E2B E8C8D2                   call v
  6007 00002E2E 83C402                   add  sp, 2
  6008                                  
  6009                                  ;-610         else { prs("\n mov al, byte ");  if(NASM==0)prs("ptr "); v(n0);
  6010                                  
  6011 00002E31 E92D00                   jmp @@docall1307
  6012                                  @@docall1306:
  6013 00002E34 68[742F]                 push docall1_13
  6014 00002E37 E87420                   call prs
  6015 00002E3A 83C402                   add  sp, 2
  6016 00002E3D A0[1500]                 mov al, [NASM]
  6017 00002E40 3C00                     cmp al, 0
  6018 00002E42 0F850900                 jne @@docall1308
  6019 00002E46 68[852F]                 push docall1_14
  6020 00002E49 E86220                   call prs
  6021 00002E4C 83C402                   add  sp, 2
  6022                                  @@docall1308:
  6023 00002E4F FF76F8                   push word [bp-8]
  6024 00002E52 E8A1D2                   call v
  6025 00002E55 83C402                   add  sp, 2
  6026                                  
  6027                                  ;-611         prs("\n mov ah, 0\n push ax"); } }
  6028                                  
  6029 00002E58 68[8A2F]                 push docall1_15
  6030 00002E5B E85020                   call prs
  6031 00002E5E 83C402                   add  sp, 2
  6032                                  @@docall1307:
  6033                                  @@docall1305:
  6034                                  
  6035                                  ;-612       if(t0==5){ prs("\n push "); printreg(n0, 0); if (n0 >= 47) sz32+=2;  }
  6036                                  
  6037                                  @@docall1303:
  6038 00002E61 8B46FA                   mov ax, [bp-6]
  6039 00002E64 83F805                   cmp ax, 5
  6040 00002E67 0F852200                 jne @@docall1309
  6041 00002E6B 68[A12F]                 push docall1_16
  6042 00002E6E E83D20                   call prs
  6043 00002E71 83C402                   add  sp, 2
  6044 00002E74 6A00                     push 0
  6045 00002E76 FF76F8                   push word [bp-8]
  6046 00002E79 E8C9F0                   call printreg
  6047 00002E7C 83C404                   add  sp, 4
  6048 00002E7F 8B46F8                   mov ax, [bp-8]
  6049 00002E82 83F82F                   cmp ax, 47 ;unsigned : 1
  6050 00002E85 0F8C0400                 jl  @@docall1310
  6051 00002E89 8346F602                 add  word [bp-10], 2
  6052                                  @@docall1310:
  6053                                  
  6054                                  ;-613    i--; } while (i > 0);  }
  6055                                  
  6056                                  @@docall1309:
  6057 00002E8D FF4EFE                   dec  word [bp-2]
  6058 00002E90 8B46FE                   mov ax, [bp-2]
  6059 00002E93 83F800                   cmp ax, 0
  6060 00002E96 0F8E0300                 jle @@docall1311
  6061 00002E9A E982FE                   jmp @@docall1297
  6062                                  @@docall1311:
  6063                                  
  6064                                  ;-614 	 prs("\n call "); prs(&procname);
  6065                                  
  6066                                  @@docall1285:
  6067 00002E9D 68[AA2F]                 push docall1_17
  6068 00002EA0 E80B20                   call prs
  6069 00002EA3 83C402                   add  sp, 2
  6070 00002EA6 8D0638B7                 lea  ax, [procname]
  6071 00002EAA 50                       push ax
  6072 00002EAB E80020                   call prs
  6073 00002EAE 83C402                   add  sp, 2
  6074                                  
  6075                                  ;-615 	 if (narg>0) {prs("\n add  sp, ");
  6076                                  
  6077 00002EB1 8B46FC                   mov ax, [bp-4]
  6078 00002EB4 83F800                   cmp ax, 0
  6079 00002EB7 0F8E2400                 jle @@docall1312
  6080 00002EBB 68[B32F]                 push docall1_18
  6081 00002EBE E8ED1F                   call prs
  6082 00002EC1 83C402                   add  sp, 2
  6083                                  
  6084                                  ;-616      narg=narg+narg; narg=narg+sz32; pint1(narg); } }
  6085                                  
  6086 00002EC4 8B46FC                   mov ax, [bp-4]
  6087 00002EC7 0346FC                   add ax, [bp-4]
  6088 00002ECA 8946FC                   mov word [bp-4], ax
  6089 00002ECD 8B46FC                   mov ax, [bp-4]
  6090 00002ED0 0346F6                   add ax, [bp-10]
  6091 00002ED3 8946FC                   mov word [bp-4], ax
  6092 00002ED6 FF76FC                   push word [bp-4]
  6093 00002ED9 E8D820                   call pint1
  6094 00002EDC 83C402                   add  sp, 2
  6095                                  @@docall1312:
  6096                                  
  6097                                  ;-617 //********************************************************************
  6098                                  
  6099                                  
  6100                                  ;-618 int main() { getarg();
  6101 00002EDF C9                       LEAVE
  6102 00002EE0 C3                       ret
  6103                                  ; ENDP
  6104 00002EE1 4D61782E2039207061-     docall1_0 db "Max. 9 parameters",0
  6105 00002EEA 72616D657465727300 
  6106 00002EF3 5C6E00                  docall1_1 db "\n",0
  6107 00002EF6 2064622000              docall1_2 db " db ",0
  6108 00002EFB 2C3000                  docall1_3 db ",0",0
  6109 00002EFE 706172616D65746572-     docall1_4 db "parameter not recognized (no * allowed)",0
  6110 00002F07 206E6F74207265636F-
  6111 00002F10 676E697A656420286E-
  6112 00002F19 6F202A20616C6C6F77-
  6113 00002F22 65642900           
  6114 00002F26 5C6E20707573682000      docall1_5 db "\n push ",0
  6115 00002F2F 5C6E20707573682000      docall1_6 db "\n push ",0
  6116 00002F38 6F66667365742000        docall1_7 db "offset ",0
  6117 00002F40 5C6E206C6561202061-     docall1_8 db "\n lea  ax, ",0
  6118 00002F49 782C2000           
  6119 00002F4D 776F72642070747220-     docall1_9 db "word ptr ",0
  6120 00002F56 00                 
  6121 00002F57 5C6E20707573682061-     docall1_10 db "\n push ax",0
  6122 00002F60 7800               
  6123 00002F62 5C6E20707573682000      docall1_11 db "\n push ",0
  6124 00002F6B 5C6E20707573682000      docall1_12 db "\n push ",0
  6125 00002F74 5C6E206D6F7620616C-     docall1_13 db "\n mov al, byte ",0
  6126 00002F7D 2C20627974652000   
  6127 00002F85 7074722000              docall1_14 db "ptr ",0
  6128 00002F8A 5C6E206D6F76206168-     docall1_15 db "\n mov ah, 0\n push ax",0
  6129 00002F93 2C20305C6E20707573-
  6130 00002F9C 6820617800         
  6131 00002FA1 5C6E20707573682000      docall1_16 db "\n push ",0
  6132 00002FAA 5C6E2063616C6C2000      docall1_17 db "\n call ",0
  6133 00002FB3 5C6E20616464202073-     docall1_18 db "\n add  sp, ",0
  6134 00002FBC 702C2000           
  6135                                  
  6136                                  main:  ; *** PROC ***
  6137 00002FC0 E8B700                   call getarg
  6138                                  
  6139                                  ;-619   memresize(4096);       if (DOS_ERR) error1("memresize");
  6140                                  
  6141 00002FC3 680010                   push 4096
  6142 00002FC6 E8302E                   call memresize
  6143 00002FC9 83C402                   add  sp, 2
  6144 00002FCC A1[C200]                 mov ax, [DOS_ERR]
  6145 00002FCF 08C0                     or  al, al
  6146 00002FD1 0F840900                 je @@main313
  6147 00002FD5 68[2D30]                 push main_0
  6148 00002FD8 E8D421                   call error1
  6149 00002FDB 83C402                   add  sp, 2
  6150                                  
  6151                                  ;-620   segE=memalloc(4096);   if (DOS_ERR) error1("alloc memory");
  6152                                  
  6153                                  @@main313:
  6154 00002FDE 680010                   push 4096
  6155 00002FE1 E82E2E                   call memalloc
  6156 00002FE4 83C402                   add  sp, 2
  6157 00002FE7 A3[B800]                 mov word [segE], ax
  6158 00002FEA A1[C200]                 mov ax, [DOS_ERR]
  6159 00002FED 08C0                     or  al, al
  6160 00002FEF 0F840900                 je @@main314
  6161 00002FF3 68[3730]                 push main_1
  6162 00002FF6 E8B621                   call error1
  6163 00002FF9 83C402                   add  sp, 2
  6164                                  
  6165                                  ;-621   CNameTop=0;            getfirstchar();
  6166                                  
  6167                                  @@main314:
  6168 00002FFC 66B800000000             mov eax, 0
  6169 00003002 A3[B400]                 mov word [CNameTop], ax
  6170 00003005 E85500                   call getfirstchar
  6171                                  
  6172                                  ;-622   cputs("Compiling, ");   parse(); cputs("Check calls ");
  6173                                  
  6174 00003008 68[4430]                 push main_2
  6175 0000300B E89030                   call cputs
  6176 0000300E 83C402                   add  sp, 2
  6177 00003011 E81706                   call parse
  6178 00003014 68[5030]                 push main_3
  6179 00003017 E88430                   call cputs
  6180 0000301A 83C402                   add  sp, 2
  6181                                  
  6182                                  ;-623   callrecursive=0; checkcalls(); epilog();
  6183                                  
  6184 0000301D 66B800000000             mov eax, 0
  6185 00003023 A3[4B00]                 mov word [callrecursive], ax
  6186 00003026 E8B406                   call checkcalls
  6187 00003029 E8D828                   call epilog
  6188                                  
  6189                                  ;-624 }
  6190                                  
  6191                                  
  6192                                  ;-625 int getfirstchar() { fgetsp=&fgetsdest; *fgetsp=0; thechar=fgets1(); }
  6193                                  
  6194 0000302C C3                       ret
  6195                                  ; ENDP
  6196 0000302D 6D656D726573697A65-     main_0 db "memresize",0
  6197 00003036 00                 
  6198 00003037 616C6C6F63206D656D-     main_1 db "alloc memory",0
  6199 00003040 6F727900           
  6200 00003044 436F6D70696C696E67-     main_2 db "Compiling, ",0
  6201 0000304D 2C2000             
  6202 00003050 436865636B2063616C-     main_3 db "Check calls ",0
  6203 00003059 6C732000           
  6204                                  
  6205                                  getfirstchar:  ; *** PROC ***
  6206 0000305D B847B6                   mov ax, fgetsdest
  6207 00003060 A3[B600]                 mov word [fgetsp], ax
  6208 00003063 66B800000000             mov eax, 0
  6209 00003069 8B1E[B600]               mov  bx, [fgetsp]
  6210 0000306D 8807                     mov  [bx], al
  6211 0000306F E83E20                   call fgets1
  6212 00003072 A2[4200]                 mov byte [thechar], al
  6213                                  
  6214                                  ;-626 char *arglen=0x80; char *argv=0x82;
  6215                                  
  6216 00003075 C3                       ret
  6217                                  ; ENDP
  6218 00003076 8000                    arglen dw 128
  6219 00003078 8200                    argv dw 130
  6220                                  
  6221                                  ;-627 
  6222                                  
  6223                                  
  6224                                  ;-628 int getarg() { int arglen1; int i; char *c;
  6225                                  
  6226                                  
  6227                                  getarg:  ; *** PROC ***
  6228                                  
  6229                                  ;-629   arglen1=*arglen;                                     NASM=1; //default
  6230                                  
  6231                                  ;Function : getarg, Number of local variables: 3
  6232                                  ;   # type sign width line used address name   list of local variables
  6233                                  ;  200 var sign word   628 NULL bp-2    arglen1
  6234                                  ;  201 var sign word   628 NULL bp-4    i
  6235                                  ;  202 ptr sign byte   628 NULL bp-6    c;
  6236 0000307A C8060000                 ENTER  6,0
  6237 0000307E 8B1E[7630]               mov bx, [arglen]
  6238 00003082 8A07                     mov al, [bx]
  6239 00003084 B400                     mov ah, 0
  6240 00003086 8946FE                   mov word [bp-2], ax
  6241 00003089 66B801000000             mov eax, 1
  6242 0000308F A2[1500]                 mov byte [NASM], al
  6243                                  
  6244                                  ;-630   if (arglen1) { i=arglen1+129; *i=0; }
  6245                                  
  6246 00003092 8B46FE                   mov ax, [bp-2]
  6247 00003095 08C0                     or  al, al
  6248 00003097 0F841700                 je @@getarg315
  6249 0000309B 8B46FE                   mov ax, [bp-2]
  6250 0000309E 058100                   add ax, 129
  6251 000030A1 8946FC                   mov word [bp-4], ax
  6252 000030A4 66B800000000             mov eax, 0
  6253 000030AA 8B5EFC                   mov  bx, [bp-4]
  6254 000030AD 8907                     mov  [bx], ax
  6255                                  
  6256                                  ;-631   else { cputs(Version1);
  6257                                  
  6258 000030AF E93C00                   jmp @@getarg316
  6259                                  @@getarg315:
  6260 000030B2 8D06[0300]               lea  ax, [Version1]
  6261 000030B6 50                       push ax
  6262 000030B7 E8E42F                   call cputs
  6263 000030BA 83C402                   add  sp, 2
  6264                                  
  6265                                  ;-632     cputs(" Usage: A.COM [/N/P] in_file[.C] (/N=NASM, /P=ProtMode): ");
  6266                                  
  6267 000030BD 68[F733]                 push getarg_0
  6268 000030C0 E8DB2F                   call cputs
  6269 000030C3 83C402                   add  sp, 2
  6270                                  
  6271                                  ;-633     DOS_NoBytes=readRL(argv, 0, CMDLENMAX); c=DOS_NoBytes+128; *c=0; prnl(); }
  6272                                  
  6273 000030C6 6A43                     push 67
  6274 000030C8 6A00                     push 0
  6275 000030CA FF36[7830]               push word [argv]
  6276 000030CE E8E432                   call readRL
  6277 000030D1 83C406                   add  sp, 6
  6278 000030D4 A3[C400]                 mov word [DOS_NoBytes], ax
  6279 000030D7 A1[C400]                 mov ax, [DOS_NoBytes]
  6280 000030DA 058000                   add ax, 128
  6281 000030DD 8946FA                   mov word [bp-6], ax
  6282 000030E0 66B800000000             mov eax, 0
  6283 000030E6 8B5EFA                   mov  bx, [bp-6]
  6284 000030E9 8807                     mov  [bx], al
  6285 000030EB E8B21D                   call prnl
  6286                                  
  6287                                  ;-634   strcpy(namein, argv);
  6288                                  
  6289                                  @@getarg316:
  6290 000030EE FF36[7830]               push word [argv]
  6291 000030F2 8D063182                 lea  ax, [namein]
  6292 000030F6 50                       push ax
  6293 000030F7 E8AE30                   call strcpy
  6294 000030FA 83C404                   add  sp, 4
  6295                                  
  6296                                  ;-635   if (instr2(namein, '.') == 0) strcat1(namein, ".C");
  6297                                  
  6298 000030FD 6A2E                     push 46
  6299 000030FF 8D063182                 lea  ax, [namein]
  6300 00003103 50                       push ax
  6301 00003104 E81231                   call instr2
  6302 00003107 83C404                   add  sp, 4
  6303 0000310A 83F800                   cmp ax, 0
  6304 0000310D 0F850E00                 jne @@getarg317
  6305 00003111 68[3134]                 push getarg_1
  6306 00003114 8D063182                 lea  ax, [namein]
  6307 00003118 50                       push ax
  6308 00003119 E83532                   call strcat1
  6309 0000311C 83C404                   add  sp, 4
  6310                                  
  6311                                  ;-636   toupper(namein);
  6312                                  
  6313                                  @@getarg317:
  6314 0000311F 8D063182                 lea  ax, [namein]
  6315 00003123 50                       push ax
  6316 00003124 E81330                   call toupper
  6317 00003127 83C402                   add  sp, 2
  6318                                  
  6319                                  ;-637   c=instr2(namein, '/');
  6320                                  
  6321 0000312A 6A2F                     push 47
  6322 0000312C 8D063182                 lea  ax, [namein]
  6323 00003130 50                       push ax
  6324 00003131 E8E530                   call instr2
  6325 00003134 83C404                   add  sp, 4
  6326 00003137 8946FA                   mov word [bp-6], ax
  6327                                  
  6328                                  ;-638   while (c != 0)  { c++;   //todo: only one parameter possible
  6329                                  
  6330                                  @@getarg318:
  6331 0000313A 8B46FA                   mov ax, [bp-6]
  6332 0000313D 83F800                   cmp ax, 0
  6333 00003140 0F845500                 je  @@getarg319
  6334 00003144 FF46FA                   inc  word [bp-6]
  6335                                  
  6336                                  ;-639          if (*c == 'N') NASM=1;
  6337                                  
  6338 00003147 8B5EFA                   mov bx, [bp-6]
  6339 0000314A 8A07                     mov al, [bx]
  6340 0000314C B400                     mov ah, 0
  6341 0000314E 83F84E                   cmp ax, 78
  6342 00003151 0F850900                 jne @@getarg320
  6343 00003155 66B801000000             mov eax, 1
  6344 0000315B A2[1500]                 mov byte [NASM], al
  6345                                  
  6346                                  ;-640          if (*c == 'P') PROTECTED=1;
  6347                                  
  6348                                  @@getarg320:
  6349 0000315E 8B5EFA                   mov bx, [bp-6]
  6350 00003161 8A07                     mov al, [bx]
  6351 00003163 B400                     mov ah, 0
  6352 00003165 83F850                   cmp ax, 80
  6353 00003168 0F850900                 jne @@getarg321
  6354 0000316C 66B801000000             mov eax, 1
  6355 00003172 A2[1600]                 mov byte [PROTECTED], al
  6356                                  
  6357                                  ;-641 //    else {cputs("Parameter unknown "); exitR(3);  }
  6358                                  
  6359                                  
  6360                                  ;-642     c+=2; strcpy(namein, c);
  6361                                  
  6362                                  @@getarg321:
  6363 00003175 8346FA02                 add  word [bp-6], 2
  6364 00003179 FF76FA                   push word [bp-6]
  6365 0000317C 8D063182                 lea  ax, [namein]
  6366 00003180 50                       push ax
  6367 00003181 E82430                   call strcpy
  6368 00003184 83C404                   add  sp, 4
  6369                                  
  6370                                  ;-643     c=instr2(namein, '/'); }
  6371                                  
  6372 00003187 6A2F                     push 47
  6373 00003189 8D063182                 lea  ax, [namein]
  6374 0000318D 50                       push ax
  6375 0000318E E88830                   call instr2
  6376 00003191 83C404                   add  sp, 4
  6377 00003194 8946FA                   mov word [bp-6], ax
  6378                                  
  6379                                  ;-644   ltrim(namein);
  6380                                  
  6381 00003197 EBA1                     jmp @@getarg318
  6382                                  @@getarg319:
  6383 00003199 8D063182                 lea  ax, [namein]
  6384 0000319D 50                       push ax
  6385 0000319E E88404                   call ltrim
  6386 000031A1 83C402                   add  sp, 2
  6387                                  
  6388                                  ;-645   strcpy(namelst, namein); i=strlen(namelst); i--; c=&namelst+i; *c='S';
  6389                                  
  6390 000031A4 8D063182                 lea  ax, [namein]
  6391 000031A8 50                       push ax
  6392 000031A9 8D067482                 lea  ax, [namelst]
  6393 000031AD 50                       push ax
  6394 000031AE E8F72F                   call strcpy
  6395 000031B1 83C404                   add  sp, 4
  6396 000031B4 8D067482                 lea  ax, [namelst]
  6397 000031B8 50                       push ax
  6398 000031B9 E8C12F                   call strlen
  6399 000031BC 83C402                   add  sp, 2
  6400 000031BF 8946FC                   mov word [bp-4], ax
  6401 000031C2 FF4EFC                   dec  word [bp-4]
  6402 000031C5 B87482                   mov ax, namelst
  6403 000031C8 0346FC                   add ax, [bp-4]
  6404 000031CB 8946FA                   mov word [bp-6], ax
  6405 000031CE 66B853000000             mov eax, 83
  6406 000031D4 8B5EFA                   mov  bx, [bp-6]
  6407 000031D7 8807                     mov  [bx], al
  6408                                  
  6409                                  ;-646  
  6410                                  
  6411                                  
  6412                                  ;-647   fdin=openR (namein);
  6413                                  
  6414 000031D9 8D063182                 lea  ax, [namein]
  6415 000031DD 50                       push ax
  6416 000031DE E89E31                   call openR
  6417 000031E1 83C402                   add  sp, 2
  6418 000031E4 A3[3400]                 mov word [fdin], ax
  6419                                  
  6420                                  ;-648   if(DOS_ERR){cputs("Source file missing (.C): "); cputs(namein); exitR(1); }
  6421                                  
  6422 000031E7 A1[C200]                 mov ax, [DOS_ERR]
  6423 000031EA 08C0                     or  al, al
  6424 000031EC 0F841C00                 je @@getarg322
  6425 000031F0 68[3434]                 push getarg_2
  6426 000031F3 E8A82E                   call cputs
  6427 000031F6 83C402                   add  sp, 2
  6428 000031F9 8D063182                 lea  ax, [namein]
  6429 000031FD 50                       push ax
  6430 000031FE E89D2E                   call cputs
  6431 00003201 83C402                   add  sp, 2
  6432 00003204 6A01                     push 1
  6433 00003206 E8E431                   call exitR
  6434 00003209 83C402                   add  sp, 2
  6435                                  
  6436                                  ;-649   fdout=creatR(namelst);
  6437                                  
  6438                                  @@getarg322:
  6439 0000320C 8D067482                 lea  ax, [namelst]
  6440 00003210 50                       push ax
  6441 00003211 E87A31                   call creatR
  6442 00003214 83C402                   add  sp, 2
  6443 00003217 A3[3600]                 mov word [fdout], ax
  6444                                  
  6445                                  ;-650   if(DOS_ERR){cputs("list file not creatable: ");cputs(namelst);exitR(2);}
  6446                                  
  6447 0000321A A1[C200]                 mov ax, [DOS_ERR]
  6448 0000321D 08C0                     or  al, al
  6449 0000321F 0F841C00                 je @@getarg323
  6450 00003223 68[4F34]                 push getarg_3
  6451 00003226 E8752E                   call cputs
  6452 00003229 83C402                   add  sp, 2
  6453 0000322C 8D067482                 lea  ax, [namelst]
  6454 00003230 50                       push ax
  6455 00003231 E86A2E                   call cputs
  6456 00003234 83C402                   add  sp, 2
  6457 00003237 6A02                     push 2
  6458 00003239 E8B131                   call exitR
  6459 0000323C 83C402                   add  sp, 2
  6460                                  
  6461                                  ;-651   prs("\n; ");prs(Version1);
  6462                                  
  6463                                  @@getarg323:
  6464 0000323F 68[6934]                 push getarg_4
  6465 00003242 E8691C                   call prs
  6466 00003245 83C402                   add  sp, 2
  6467 00003248 8D06[0300]               lea  ax, [Version1]
  6468 0000324C 50                       push ax
  6469 0000324D E85E1C                   call prs
  6470 00003250 83C402                   add  sp, 2
  6471                                  
  6472                                  ;-652   prs(", Arglen: "); pint1(arglen1); if(arglen1){prs(", Argv: "); prs(argv);}
  6473                                  
  6474 00003253 68[6E34]                 push getarg_5
  6475 00003256 E8551C                   call prs
  6476 00003259 83C402                   add  sp, 2
  6477 0000325C FF76FE                   push word [bp-2]
  6478 0000325F E8521D                   call pint1
  6479 00003262 83C402                   add  sp, 2
  6480 00003265 8B46FE                   mov ax, [bp-2]
  6481 00003268 08C0                     or  al, al
  6482 0000326A 0F841300                 je @@getarg324
  6483 0000326E 68[7934]                 push getarg_6
  6484 00003271 E83A1C                   call prs
  6485 00003274 83C402                   add  sp, 2
  6486 00003277 FF36[7830]               push word [argv]
  6487 0000327B E8301C                   call prs
  6488 0000327E 83C402                   add  sp, 2
  6489                                  
  6490                                  ;-653   prs(", Source: "); prs(namein);  prs(", Output asm: "); prs(namelst);
  6491                                  
  6492                                  @@getarg324:
  6493 00003281 68[8234]                 push getarg_7
  6494 00003284 E8271C                   call prs
  6495 00003287 83C402                   add  sp, 2
  6496 0000328A 8D063182                 lea  ax, [namein]
  6497 0000328E 50                       push ax
  6498 0000328F E81C1C                   call prs
  6499 00003292 83C402                   add  sp, 2
  6500 00003295 68[8D34]                 push getarg_8
  6501 00003298 E8131C                   call prs
  6502 0000329B 83C402                   add  sp, 2
  6503 0000329E 8D067482                 lea  ax, [namelst]
  6504 000032A2 50                       push ax
  6505 000032A3 E8081C                   call prs
  6506 000032A6 83C402                   add  sp, 2
  6507                                  
  6508                                  ;-654   prs("\n;PROTECTED: "); pint1(PROTECTED);
  6509                                  
  6510 000032A9 68[9C34]                 push getarg_9
  6511 000032AC E8FF1B                   call prs
  6512 000032AF 83C402                   add  sp, 2
  6513 000032B2 A0[1600]                 mov al, byte [PROTECTED]
  6514 000032B5 B400                     mov ah, 0
  6515 000032B7 50                       push ax
  6516 000032B8 E8F91C                   call pint1
  6517 000032BB 83C402                   add  sp, 2
  6518                                  
  6519                                  ;-655   if (isvirtual86()) prs(" V86 ON. ");else prs(" V86 OFF. ");
  6520                                  
  6521 000032BE E8142C                   call isvirtual86
  6522 000032C1 08C0                     or  al, al
  6523 000032C3 0F840C00                 je @@getarg325
  6524 000032C7 68[AB34]                 push getarg_10
  6525 000032CA E8E11B                   call prs
  6526 000032CD 83C402                   add  sp, 2
  6527 000032D0 E90900                   jmp @@getarg326
  6528                                  @@getarg325:
  6529 000032D3 68[B534]                 push getarg_11
  6530 000032D6 E8D51B                   call prs
  6531 000032D9 83C402                   add  sp, 2
  6532                                  
  6533                                  ;-656   if (is32bit()) prs(" 32bit: ON. "); else prs("  32bit: OFF. ");
  6534                                  
  6535                                  @@getarg326:
  6536 000032DC E8FD2B                   call is32bit
  6537 000032DF 08C0                     or  al, al
  6538 000032E1 0F840C00                 je @@getarg327
  6539 000032E5 68[C034]                 push getarg_12
  6540 000032E8 E8C31B                   call prs
  6541 000032EB 83C402                   add  sp, 2
  6542 000032EE E90900                   jmp @@getarg328
  6543                                  @@getarg327:
  6544 000032F1 68[CD34]                 push getarg_13
  6545 000032F4 E8B71B                   call prs
  6546 000032F7 83C402                   add  sp, 2
  6547                                  
  6548                                  ;-657   if (NASM) prs("\norg  256 ; NASM ON\njmp main"); else
  6549                                  
  6550                                  @@getarg328:
  6551 000032FA A0[1500]                 mov al, [NASM]
  6552 000032FD 08C0                     or  al, al
  6553 000032FF 0F840C00                 je @@getarg329
  6554 00003303 68[DC34]                 push getarg_14
  6555 00003306 E8A51B                   call prs
  6556 00003309 83C402                   add  sp, 2
  6557                                  
  6558                                  ;-658   prs("\n.MODEL TINY,C\n.386P\n.CODE\nJUMPS\nLOCALS\nSTARTUPCODE\njmp main");
  6559                                  
  6560 0000330C E90900                   jmp @@getarg330
  6561                                  @@getarg329:
  6562 0000330F 68[FB34]                 push getarg_15
  6563 00003312 E8991B                   call prs
  6564 00003315 83C402                   add  sp, 2
  6565                                  
  6566                                  ;-659   if (PROTECTED) {prs("\n; Protected (unreal) mode ON. Ldata: "); prL(ldata);
  6567                                  
  6568                                  @@getarg330:
  6569 00003318 A0[1600]                 mov al, [PROTECTED]
  6570 0000331B 08C0                     or  al, al
  6571 0000331D 0F84D400                 je @@getarg331
  6572 00003321 68[3F35]                 push getarg_16
  6573 00003324 E8871B                   call prs
  6574 00003327 83C402                   add  sp, 2
  6575 0000332A 66FF36[1C00]             push dword [ldata]
  6576 0000332F E82F2C                   call prL
  6577 00003332 83C404                   add  sp, 4
  6578                                  
  6579                                  ;-660   if (isvirtual86()) cputs(" V86 ON. ");else cputs(" V86 OFF. ");
  6580                                  
  6581 00003335 E89D2B                   call isvirtual86
  6582 00003338 08C0                     or  al, al
  6583 0000333A 0F840C00                 je @@getarg332
  6584 0000333E 68[6735]                 push getarg_17
  6585 00003341 E85A2D                   call cputs
  6586 00003344 83C402                   add  sp, 2
  6587 00003347 E90900                   jmp @@getarg333
  6588                                  @@getarg332:
  6589 0000334A 68[7135]                 push getarg_18
  6590 0000334D E84E2D                   call cputs
  6591 00003350 83C402                   add  sp, 2
  6592                                  
  6593                                  ;-661   if (is32bit()) cputs(" 32bit: ON. "); else cputs("  32bit: OFF. ");
  6594                                  
  6595                                  @@getarg333:
  6596 00003353 E8862B                   call is32bit
  6597 00003356 08C0                     or  al, al
  6598 00003358 0F840C00                 je @@getarg334
  6599 0000335C 68[7C35]                 push getarg_19
  6600 0000335F E83C2D                   call cputs
  6601 00003362 83C402                   add  sp, 2
  6602 00003365 E90900                   jmp @@getarg335
  6603                                  @@getarg334:
  6604 00003368 68[8935]                 push getarg_20
  6605 0000336B E8302D                   call cputs
  6606 0000336E 83C402                   add  sp, 2
  6607                                  
  6608                                  ;-662   INITCPU32();
  6609                                  
  6610                                  @@getarg335:
  6611 00003371 E8872B                   call INITCPU32
  6612                                  
  6613                                  ;-663   prs("\n;After INITCPU32: ");
  6614                                  
  6615 00003374 68[9835]                 push getarg_21
  6616 00003377 E8341B                   call prs
  6617 0000337A 83C402                   add  sp, 2
  6618                                  
  6619                                  ;-664   if (isvirtual86()) cputs(" after INIT V86 ON. ");
  6620                                  
  6621 0000337D E8552B                   call isvirtual86
  6622 00003380 08C0                     or  al, al
  6623 00003382 0F840C00                 je @@getarg336
  6624 00003386 68[AD35]                 push getarg_22
  6625 00003389 E8122D                   call cputs
  6626 0000338C 83C402                   add  sp, 2
  6627                                  
  6628                                  ;-665     else cputs(" after INIT V86 OFF. ");
  6629                                  
  6630 0000338F E90900                   jmp @@getarg337
  6631                                  @@getarg336:
  6632 00003392 68[C235]                 push getarg_23
  6633 00003395 E8062D                   call cputs
  6634 00003398 83C402                   add  sp, 2
  6635                                  
  6636                                  ;-666   if (is32bit()) cputs(" 32bit: ON. "); else cputs("  32bit: OFF. ");
  6637                                  
  6638                                  @@getarg337:
  6639 0000339B E83E2B                   call is32bit
  6640 0000339E 08C0                     or  al, al
  6641 000033A0 0F840C00                 je @@getarg338
  6642 000033A4 68[D835]                 push getarg_24
  6643 000033A7 E8F42C                   call cputs
  6644 000033AA 83C402                   add  sp, 2
  6645 000033AD E90900                   jmp @@getarg339
  6646                                  @@getarg338:
  6647 000033B0 68[E535]                 push getarg_25
  6648 000033B3 E8E82C                   call cputs
  6649 000033B6 83C402                   add  sp, 2
  6650                                  
  6651                                  ;-667    if (isvirtual86()) prs(" V86 ON. ");else prs(" V86 OFF. ");
  6652                                  
  6653                                  @@getarg339:
  6654 000033B9 E8192B                   call isvirtual86
  6655 000033BC 08C0                     or  al, al
  6656 000033BE 0F840C00                 je @@getarg340
  6657 000033C2 68[F435]                 push getarg_26
  6658 000033C5 E8E61A                   call prs
  6659 000033C8 83C402                   add  sp, 2
  6660 000033CB E90900                   jmp @@getarg341
  6661                                  @@getarg340:
  6662 000033CE 68[FE35]                 push getarg_27
  6663 000033D1 E8DA1A                   call prs
  6664 000033D4 83C402                   add  sp, 2
  6665                                  
  6666                                  ;-668   if (is32bit()) prs(" 32bit: ON. "); else prs("  32bit: OFF. ");   }
  6667                                  
  6668                                  @@getarg341:
  6669 000033D7 E8022B                   call is32bit
  6670 000033DA 08C0                     or  al, al
  6671 000033DC 0F840C00                 je @@getarg342
  6672 000033E0 68[0936]                 push getarg_28
  6673 000033E3 E8C81A                   call prs
  6674 000033E6 83C402                   add  sp, 2
  6675 000033E9 E90900                   jmp @@getarg343
  6676                                  @@getarg342:
  6677 000033EC 68[1636]                 push getarg_29
  6678 000033EF E8BC1A                   call prs
  6679 000033F2 83C402                   add  sp, 2
  6680                                  @@getarg343:
  6681                                  
  6682                                  ;-669 }
  6683                                  
  6684                                  @@getarg331:
  6685                                  
  6686                                  ;-670 ltrim(char *s) {
  6687 000033F5 C9                       LEAVE
  6688 000033F6 C3                       ret
  6689                                  ; ENDP
  6690 000033F7 2055736167653A2041-     getarg_0 db " Usage: A.COM [/N/P] in_file[.C] (/N=NASM, /P=ProtMode): ",0
  6691 00003400 2E434F4D205B2F4E2F-
  6692 00003409 505D20696E5F66696C-
  6693 00003412 655B2E435D20282F4E-
  6694 0000341B 3D4E41534D2C202F50-
  6695 00003424 3D50726F744D6F6465-
  6696 0000342D 293A2000           
  6697 00003431 2E4300                  getarg_1 db ".C",0
  6698 00003434 536F75726365206669-     getarg_2 db "Source file missing (.C): ",0
  6699 0000343D 6C65206D697373696E-
  6700 00003446 6720282E43293A2000 
  6701 0000344F 6C6973742066696C65-     getarg_3 db "list file not creatable: ",0
  6702 00003458 206E6F742063726561-
  6703 00003461 7461626C653A2000   
  6704 00003469 5C6E3B2000              getarg_4 db "\n; ",0
  6705 0000346E 2C204172676C656E3A-     getarg_5 db ", Arglen: ",0
  6706 00003477 2000               
  6707 00003479 2C20417267763A2000      getarg_6 db ", Argv: ",0
  6708 00003482 2C20536F757263653A-     getarg_7 db ", Source: ",0
  6709 0000348B 2000               
  6710 0000348D 2C204F757470757420-     getarg_8 db ", Output asm: ",0
  6711 00003496 61736D3A2000       
  6712 0000349C 5C6E3B50524F544543-     getarg_9 db "\n;PROTECTED: ",0
  6713 000034A5 5445443A2000       
  6714 000034AB 20563836204F4E2E20-     getarg_10 db " V86 ON. ",0
  6715 000034B4 00                 
  6716 000034B5 20563836204F46462E-     getarg_11 db " V86 OFF. ",0
  6717 000034BE 2000               
  6718 000034C0 2033326269743A204F-     getarg_12 db " 32bit: ON. ",0
  6719 000034C9 4E2E2000           
  6720 000034CD 202033326269743A20-     getarg_13 db "  32bit: OFF. ",0
  6721 000034D6 4F46462E2000       
  6722 000034DC 5C6E6F726720203235-     getarg_14 db "\norg  256 ; NASM ON\njmp main",0
  6723 000034E5 36203B204E41534D20-
  6724 000034EE 4F4E5C6E6A6D70206D-
  6725 000034F7 61696E00           
  6726 000034FB 5C6E2E4D4F44454C20-     getarg_15 db "\n.MODEL TINY,C\n.386P\n.CODE\nJUMPS\nLOCALS\nSTARTUPCODE\njmp main",0
  6727 00003504 54494E592C435C6E2E-
  6728 0000350D 333836505C6E2E434F-
  6729 00003516 44455C6E4A554D5053-
  6730 0000351F 5C6E4C4F43414C535C-
  6731 00003528 6E5354415254555043-
  6732 00003531 4F44455C6E6A6D7020-
  6733 0000353A 6D61696E00         
  6734 0000353F 5C6E3B2050726F7465-     getarg_16 db "\n; Protected (unreal) mode ON. Ldata: ",0
  6735 00003548 637465642028756E72-
  6736 00003551 65616C29206D6F6465-
  6737 0000355A 204F4E2E204C646174-
  6738 00003563 613A2000           
  6739 00003567 20563836204F4E2E20-     getarg_17 db " V86 ON. ",0
  6740 00003570 00                 
  6741 00003571 20563836204F46462E-     getarg_18 db " V86 OFF. ",0
  6742 0000357A 2000               
  6743 0000357C 2033326269743A204F-     getarg_19 db " 32bit: ON. ",0
  6744 00003585 4E2E2000           
  6745 00003589 202033326269743A20-     getarg_20 db "  32bit: OFF. ",0
  6746 00003592 4F46462E2000       
  6747 00003598 5C6E3B416674657220-     getarg_21 db "\n;After INITCPU32: ",0
  6748 000035A1 494E49544350553332-
  6749 000035AA 3A2000             
  6750 000035AD 20616674657220494E-     getarg_22 db " after INIT V86 ON. ",0
  6751 000035B6 495420563836204F4E-
  6752 000035BF 2E2000             
  6753 000035C2 20616674657220494E-     getarg_23 db " after INIT V86 OFF. ",0
  6754 000035CB 495420563836204F46-
  6755 000035D4 462E2000           
  6756 000035D8 2033326269743A204F-     getarg_24 db " 32bit: ON. ",0
  6757 000035E1 4E2E2000           
  6758 000035E5 202033326269743A20-     getarg_25 db "  32bit: OFF. ",0
  6759 000035EE 4F46462E2000       
  6760 000035F4 20563836204F4E2E20-     getarg_26 db " V86 ON. ",0
  6761 000035FD 00                 
  6762 000035FE 20563836204F46462E-     getarg_27 db " V86 OFF. ",0
  6763 00003607 2000               
  6764 00003609 2033326269743A204F-     getarg_28 db " 32bit: ON. ",0
  6765 00003612 4E2E2000           
  6766 00003616 202033326269743A20-     getarg_29 db "  32bit: OFF. ",0
  6767 0000361F 4F46462E2000       
  6768                                  
  6769                                  ltrim:  ; *** PROC ***
  6770                                  
  6771                                  ;-671     }
  6772                                  
  6773                                  ;Function : ltrim, Number of local variables: 1
  6774                                  ;   # type sign width line used address name   list of local variables
  6775                                  ;  200 ptr sign byte   670 NULL bp+4    s;
  6776 00003625 C8000000                 ENTER  0,0
  6777                                  
  6778                                  ;-672 int parse() { token=getlex(); do {
  6779 00003629 C9                       LEAVE
  6780 0000362A C3                       ret
  6781                                  ; ENDP
  6782                                  
  6783                                  parse:  ; *** PROC ***
  6784 0000362B E89A0E                   call getlex
  6785 0000362E A3[3D00]                 mov word [token], ax
  6786                                  @@parse344:
  6787                                  
  6788                                  ;-673     if (token <= 0) return 1;
  6789                                  
  6790 00003631 A1[3D00]                 mov ax, [token]
  6791 00003634 83F800                   cmp ax, 0
  6792 00003637 0F8F0900                 jg  @@parse345
  6793 0000363B 66B801000000             mov eax, 1
  6794 00003641 E97D00                   jmp @@retn
  6795                                  
  6796                                  ;-674     if (istoken('#')) {
  6797                                  
  6798                                  @@parse345:
  6799 00003644 6A23                     push 35
  6800 00003646 E81F17                   call istoken
  6801 00003649 83C402                   add  sp, 2
  6802 0000364C 08C0                     or  al, al
  6803 0000364E 0F843600                 je @@parse346
  6804                                  
  6805                                  ;-675       if (istoken(T_DEFINE)) dodefine();
  6806                                  
  6807 00003652 68FF01                   push 511
  6808 00003655 E81017                   call istoken
  6809 00003658 83C402                   add  sp, 2
  6810 0000365B 08C0                     or  al, al
  6811 0000365D 0F840600                 je @@parse347
  6812 00003661 E8A605                   call dodefine
  6813                                  
  6814                                  ;-676       else if (istoken(T_INCLUDE)) doinclude();
  6815                                  
  6816 00003664 E91E00                   jmp @@parse348
  6817                                  @@parse347:
  6818 00003667 68FE01                   push 510
  6819 0000366A E8FB16                   call istoken
  6820 0000366D 83C402                   add  sp, 2
  6821 00003670 08C0                     or  al, al
  6822 00003672 0F840600                 je @@parse349
  6823 00003676 E88704                   call doinclude
  6824                                  
  6825                                  ;-677       else error1("define or include expected");  }
  6826                                  
  6827 00003679 E90900                   jmp @@parse350
  6828                                  @@parse349:
  6829 0000367C 68[C236]                 push parse_0
  6830 0000367F E82D1B                   call error1
  6831 00003682 83C402                   add  sp, 2
  6832                                  @@parse350:
  6833                                  @@parse348:
  6834                                  
  6835                                  ;-678     else{ typeName();
  6836                                  
  6837 00003685 E92A00                   jmp @@parse351
  6838                                  @@parse346:
  6839 00003688 E8CBD4                   call typeName
  6840                                  
  6841                                  ;-679     if (token=='(') dofunc(); else if (istoken('!')) doLdata();else doglob();}
  6842                                  
  6843 0000368B A1[3D00]                 mov ax, [token]
  6844 0000368E 83F828                   cmp ax, 40
  6845 00003691 0F850600                 jne @@parse352
  6846 00003695 E811D8                   call dofunc
  6847 00003698 E91700                   jmp @@parse353
  6848                                  @@parse352:
  6849 0000369B 6A21                     push 33
  6850 0000369D E8C816                   call istoken
  6851 000036A0 83C402                   add  sp, 2
  6852 000036A3 08C0                     or  al, al
  6853 000036A5 0F840600                 je @@parse354
  6854 000036A9 E874CB                   call doLdata
  6855 000036AC E90300                   jmp @@parse355
  6856                                  @@parse354:
  6857 000036AF E82FCD                   call doglob
  6858                                  @@parse355:
  6859                                  @@parse353:
  6860                                  
  6861                                  ;-680   } while(1);
  6862                                  
  6863                                  @@parse351:
  6864 000036B2 66B801000000             mov eax, 1
  6865 000036B8 08C0                     or  al, al
  6866 000036BA 0F840300                 je @@parse356
  6867 000036BE E970FF                   jmp @@parse344
  6868                                  @@parse356:
  6869                                  
  6870                                  ;-681 }
  6871                                  
  6872                                  
  6873                                  ;-682 int checkcalls() { int i; int j; int k;
  6874                                  
  6875                                  @@retn:
  6876 000036C1 C3                       ret
  6877                                  ; ENDP
  6878 000036C2 646566696E65206F72-     parse_0 db "define or include expected",0
  6879 000036CB 20696E636C75646520-
  6880 000036D4 657870656374656400 
  6881                                  
  6882                                  checkcalls:  ; *** PROC ***
  6883                                  
  6884                                  ;-683   prs("\n \n; missing functions: ");
  6885                                  
  6886                                  ;Function : checkcalls, Number of local variables: 3
  6887                                  ;   # type sign width line used address name   list of local variables
  6888                                  ;  200 var sign word   682 NULL bp-2    i
  6889                                  ;  201 var sign word   682 NULL bp-4    j
  6890                                  ;  202 var sign word   682 NULL bp-6    k;
  6891 000036DD C8060000                 ENTER  6,0
  6892 000036E1 68[D137]                 push checkcalls_0
  6893 000036E4 E8C717                   call prs
  6894 000036E7 83C402                   add  sp, 2
  6895                                  
  6896                                  ;-684   i=0;  k=0;
  6897                                  
  6898 000036EA 66B800000000             mov eax, 0
  6899 000036F0 8946FE                   mov word [bp-2], ax
  6900 000036F3 66B800000000             mov eax, 0
  6901 000036F9 8946FA                   mov word [bp-6], ax
  6902                                  
  6903                                  ;-685   while (i < CTop) {  pt=CName[i]; from_far(NA, pt);
  6904                                  
  6905                                  @@checkcalls357:
  6906 000036FC 8B46FE                   mov ax, [bp-2]
  6907 000036FF 3B06[6400]               cmp ax, [CTop]
  6908 00003703 0F8DA000                 jge @@checkcalls358
  6909 00003707 8B5EFE                   mov bx, [bp-2]
  6910 0000370A D1E3                     shl bx, 1
  6911 0000370C 8B87D79E                 mov ax, [CName + bx]
  6912 00003710 A3[BE00]                 mov word [pt], ax
  6913 00003713 FF36[BE00]               push word [pt]
  6914 00003717 8D06[7200]               lea  ax, [NA]
  6915 0000371B 50                       push ax
  6916 0000371C E88627                   call from_far
  6917 0000371F 83C404                   add  sp, 4
  6918                                  
  6919                                  ;-686     j=0;
  6920                                  
  6921 00003722 66B800000000             mov eax, 0
  6922 00003728 8946FC                   mov word [bp-4], ax
  6923                                  
  6924                                  ;-687     do {  p1=FName[j]; from_far(NB, p1);
  6925                                  
  6926                                  @@checkcalls359:
  6927 0000372B 8B5EFC                   mov bx, [bp-4]
  6928 0000372E D1E3                     shl bx, 1
  6929 00003730 8B877F9C                 mov ax, [FName + bx]
  6930 00003734 A3[C000]                 mov word [p1], ax
  6931 00003737 FF36[C000]               push word [p1]
  6932 0000373B 8D06[9300]               lea  ax, [NB]
  6933 0000373F 50                       push ax
  6934 00003740 E86227                   call from_far
  6935 00003743 83C404                   add  sp, 4
  6936                                  
  6937                                  ;-688       if (eqstr(NA, NB)){ CUnres[i]=1; j=FTop; }
  6938                                  
  6939 00003746 8D06[9300]               lea  ax, [NB]
  6940 0000374A 50                       push ax
  6941 0000374B 8D06[7200]               lea  ax, [NA]
  6942 0000374F 50                       push ax
  6943 00003750 E8A92B                   call eqstr
  6944 00003753 83C404                   add  sp, 4
  6945 00003756 08C0                     or  al, al
  6946 00003758 0F841300                 je @@checkcalls360
  6947 0000375C 66B801000000             mov eax, 1
  6948 00003762 8B5EFE                   mov bx, [bp-2]
  6949 00003765 888777AE                 mov [CUnres+bx], al
  6950 00003769 A1[6200]                 mov ax, [FTop]
  6951 0000376C 8946FC                   mov word [bp-4], ax
  6952                                  
  6953                                  ;-689       j++;
  6954                                  
  6955                                  @@checkcalls360:
  6956 0000376F FF46FC                   inc  word [bp-4]
  6957                                  
  6958                                  ;-690       } while (j < FTop);
  6959                                  
  6960 00003772 8B46FC                   mov ax, [bp-4]
  6961 00003775 3B06[6200]               cmp ax, [FTop]
  6962 00003779 0F8D0200                 jge @@checkcalls361
  6963 0000377D EBAC                     jmp @@checkcalls359
  6964                                  @@checkcalls361:
  6965                                  
  6966                                  ;-691     if (j == FTop) { k++; prs("\n; "); prs(NA); }
  6967                                  
  6968 0000377F 8B46FC                   mov ax, [bp-4]
  6969 00003782 3B06[6200]               cmp ax, [FTop]
  6970 00003786 0F851700                 jne @@checkcalls362
  6971 0000378A FF46FA                   inc  word [bp-6]
  6972 0000378D 68[EC37]                 push checkcalls_1
  6973 00003790 E81B17                   call prs
  6974 00003793 83C402                   add  sp, 2
  6975 00003796 8D06[7200]               lea  ax, [NA]
  6976 0000379A 50                       push ax
  6977 0000379B E81017                   call prs
  6978 0000379E 83C402                   add  sp, 2
  6979                                  
  6980                                  ;-692     i++; }
  6981                                  
  6982                                  @@checkcalls362:
  6983 000037A1 FF46FE                   inc  word [bp-2]
  6984                                  
  6985                                  ;-693   if (k!=0) doar(k); else {prs(" All FUNCTIONs in place");
  6986                                  
  6987 000037A4 E955FF                   jmp @@checkcalls357
  6988                                  @@checkcalls358:
  6989 000037A7 8B46FA                   mov ax, [bp-6]
  6990 000037AA 83F800                   cmp ax, 0
  6991 000037AD 0F840C00                 je  @@checkcalls363
  6992 000037B1 FF76FA                   push word [bp-6]
  6993 000037B4 E85900                   call doar
  6994 000037B7 83C402                   add  sp, 2
  6995 000037BA E91200                   jmp @@checkcalls364
  6996                                  @@checkcalls363:
  6997 000037BD 68[F137]                 push checkcalls_2
  6998 000037C0 E8EB16                   call prs
  6999 000037C3 83C402                   add  sp, 2
  7000                                  
  7001                                  ;-694     cputs(" OK! "); }
  7002                                  
  7003 000037C6 68[0938]                 push checkcalls_3
  7004 000037C9 E8D228                   call cputs
  7005 000037CC 83C402                   add  sp, 2
  7006                                  
  7007                                  ;-695 }
  7008                                  
  7009                                  @@checkcalls364:
  7010                                  
  7011                                  ;-696 char wasfunction;
  7012 000037CF C9                       LEAVE
  7013 000037D0 C3                       ret
  7014                                  ; ENDP
  7015 000037D1 5C6E205C6E3B206D69-     checkcalls_0 db "\n \n; missing functions: ",0
  7016 000037DA 7373696E672066756E-
  7017 000037E3 6374696F6E733A2000 
  7018 000037EC 5C6E3B2000              checkcalls_1 db "\n; ",0
  7019 000037F1 20416C6C2046554E43-     checkcalls_2 db " All FUNCTIONs in place",0
  7020 000037FA 54494F4E7320696E20-
  7021 00003803 706C61636500       
  7022 00003809 204F4B212000            checkcalls_3 db " OK! ",0
  7023 0000380F 00                      wasfunction db 0
  7024                                  
  7025                                  ;-697 int doar(int k) { int i; int fdtemp; int fdout1; int used; int found;
  7026                                  
  7027                                  
  7028                                  doar:  ; *** PROC ***
  7029                                  
  7030                                  ;-698   cputs("  Open CALLs :"); pint(k);
  7031                                  
  7032                                  ;Function : doar, Number of local variables: 6
  7033                                  ;   # type sign width line used address name   list of local variables
  7034                                  ;  200 var sign word   697 NULL bp+4    k
  7035                                  ;  201 var sign word   697 NULL bp-2    i
  7036                                  ;  202 var sign word   697 NULL bp-4    fdtemp
  7037                                  ;  203 var sign word   697 NULL bp-6    fdout1
  7038                                  ;  204 var sign word   697 NULL bp-8    used
  7039                                  ;  205 var sign word   697 NULL bp-10    found;
  7040 00003810 C80A0000                 ENTER  10,0
  7041 00003814 68[AC39]                 push doar_0
  7042 00003817 E88428                   call cputs
  7043 0000381A 83C402                   add  sp, 2
  7044 0000381D FF7604                   push word [bp+4]
  7045 00003820 E8B428                   call pint
  7046 00003823 83C402                   add  sp, 2
  7047                                  
  7048                                  ;-699   prs("\n; Number of unresolved CALLs :"); printint51(k);
  7049                                  
  7050 00003826 68[BB39]                 push doar_1
  7051 00003829 E88216                   call prs
  7052 0000382C 83C402                   add  sp, 2
  7053 0000382F FF7604                   push word [bp+4]
  7054 00003832 E82418                   call printint51
  7055 00003835 83C402                   add  sp, 2
  7056                                  
  7057                                  ;-700   fdin=openR (archivename);
  7058                                  
  7059 00003838 8D06[3800]               lea  ax, [archivename]
  7060 0000383C 50                       push ax
  7061 0000383D E83F2B                   call openR
  7062 00003840 83C402                   add  sp, 2
  7063 00003843 A3[3400]                 mov word [fdin], ax
  7064                                  
  7065                                  ;-701   if(DOS_ERR){cputs("Archive file missing: "); cputs(archivename); exitR(3);}
  7066                                  
  7067 00003846 A1[C200]                 mov ax, [DOS_ERR]
  7068 00003849 08C0                     or  al, al
  7069 0000384B 0F841C00                 je @@doar365
  7070 0000384F 68[DC39]                 push doar_2
  7071 00003852 E84928                   call cputs
  7072 00003855 83C402                   add  sp, 2
  7073 00003858 8D06[3800]               lea  ax, [archivename]
  7074 0000385C 50                       push ax
  7075 0000385D E83E28                   call cputs
  7076 00003860 83C402                   add  sp, 2
  7077 00003863 6A03                     push 3
  7078 00003865 E8852B                   call exitR
  7079 00003868 83C402                   add  sp, 2
  7080                                  
  7081                                  ;-702   prs("\n;use archive file: "); prs(archivename);
  7082                                  
  7083                                  @@doar365:
  7084 0000386B 68[F339]                 push doar_3
  7085 0000386E E83D16                   call prs
  7086 00003871 83C402                   add  sp, 2
  7087 00003874 8D06[3800]               lea  ax, [archivename]
  7088 00003878 50                       push ax
  7089 00003879 E83216                   call prs
  7090 0000387C 83C402                   add  sp, 2
  7091                                  
  7092                                  ;-703   fdtemp=fdout; wasfunction=0; getfirstchar();
  7093                                  
  7094 0000387F A1[3600]                 mov ax, [fdout]
  7095 00003882 8946FC                   mov word [bp-4], ax
  7096 00003885 66B800000000             mov eax, 0
  7097 0000388B A2[0F38]                 mov byte [wasfunction], al
  7098 0000388E E8CCF7                   call getfirstchar
  7099                                  
  7100                                  ;-704   do { fdout=0;do {found=getfunctionhead();}while (found==0); fdout=fdtemp;
  7101                                  
  7102                                  @@doar366:
  7103 00003891 66B800000000             mov eax, 0
  7104 00003897 A3[3600]                 mov word [fdout], ax
  7105                                  @@doar367:
  7106 0000389A E8F001                   call getfunctionhead
  7107 0000389D 8946F6                   mov word [bp-10], ax
  7108 000038A0 8B46F6                   mov ax, [bp-10]
  7109 000038A3 83F800                   cmp ax, 0
  7110 000038A6 0F850200                 jne @@doar368
  7111 000038AA EBEE                     jmp @@doar367
  7112                                  @@doar368:
  7113 000038AC 8B46FC                   mov ax, [bp-4]
  7114 000038AF A3[3600]                 mov word [fdout], ax
  7115                                  
  7116                                  ;-705        if (found > 0) { used=0; i=0;
  7117                                  
  7118 000038B2 8B46F6                   mov ax, [bp-10]
  7119 000038B5 83F800                   cmp ax, 0
  7120 000038B8 0F8EAB00                 jle @@doar369
  7121 000038BC 66B800000000             mov eax, 0
  7122 000038C2 8946F8                   mov word [bp-8], ax
  7123 000038C5 66B800000000             mov eax, 0
  7124 000038CB 8946FE                   mov word [bp-2], ax
  7125                                  
  7126                                  ;-706          while (i < CTop) { pt=CName[i]; from_far(NA, pt);
  7127                                  
  7128                                  @@doar370:
  7129 000038CE 8B46FE                   mov ax, [bp-2]
  7130 000038D1 3B06[6400]               cmp ax, [CTop]
  7131 000038D5 0F8D5300                 jge @@doar371
  7132 000038D9 8B5EFE                   mov bx, [bp-2]
  7133 000038DC D1E3                     shl bx, 1
  7134 000038DE 8B87D79E                 mov ax, [CName + bx]
  7135 000038E2 A3[BE00]                 mov word [pt], ax
  7136 000038E5 FF36[BE00]               push word [pt]
  7137 000038E9 8D06[7200]               lea  ax, [NA]
  7138 000038ED 50                       push ax
  7139 000038EE E8B425                   call from_far
  7140 000038F1 83C404                   add  sp, 4
  7141                                  
  7142                                  ;-707            if (eqstr(symbol, NA)) {
  7143                                  
  7144 000038F4 8D06[7200]               lea  ax, [NA]
  7145 000038F8 50                       push ax
  7146 000038F9 8D066E81                 lea  ax, [symbol]
  7147 000038FD 50                       push ax
  7148 000038FE E8FB29                   call eqstr
  7149 00003901 83C404                   add  sp, 4
  7150 00003904 08C0                     or  al, al
  7151 00003906 0F841D00                 je @@doar372
  7152                                  
  7153                                  ;-708              if (CUnres[i] == 0) {CUnres[i]=1; used++; } }       i++; }
  7154                                  
  7155 0000390A 8B5EFE                   mov bx, [bp-2]
  7156 0000390D 8A8777AE                 mov al, [CUnres + bx]
  7157 00003911 3C00                     cmp al, 0
  7158 00003913 0F851000                 jne @@doar373
  7159 00003917 66B801000000             mov eax, 1
  7160 0000391D 8B5EFE                   mov bx, [bp-2]
  7161 00003920 888777AE                 mov [CUnres+bx], al
  7162 00003924 FF46F8                   inc  word [bp-8]
  7163                                  @@doar373:
  7164                                  @@doar372:
  7165 00003927 FF46FE                   inc  word [bp-2]
  7166                                  
  7167                                  ;-709            if (used) { prs("\n;Number of CALLs:"); printint51(used);
  7168                                  
  7169 0000392A EBA2                     jmp @@doar370
  7170                                  @@doar371:
  7171 0000392C 8B46F8                   mov ax, [bp-8]
  7172 0000392F 08C0                     or  al, al
  7173 00003931 0F843200                 je @@doar374
  7174 00003935 68[093A]                 push doar_4
  7175 00003938 E87315                   call prs
  7176 0000393B 83C402                   add  sp, 2
  7177 0000393E FF76F8                   push word [bp-8]
  7178 00003941 E81517                   call printint51
  7179 00003944 83C402                   add  sp, 2
  7180                                  
  7181                                  ;-710               prs(" : "); prs(symbol); dofunc(); wasfunction=1; }  }
  7182                                  
  7183 00003947 68[1D3A]                 push doar_5
  7184 0000394A E86115                   call prs
  7185 0000394D 83C402                   add  sp, 2
  7186 00003950 8D066E81                 lea  ax, [symbol]
  7187 00003954 50                       push ax
  7188 00003955 E85615                   call prs
  7189 00003958 83C402                   add  sp, 2
  7190 0000395B E84BD5                   call dofunc
  7191 0000395E 66B801000000             mov eax, 1
  7192 00003964 A2[0F38]                 mov byte [wasfunction], al
  7193                                  @@doar374:
  7194                                  
  7195                                  ;-711      } while (token);
  7196                                  
  7197                                  @@doar369:
  7198 00003967 A1[3D00]                 mov ax, [token]
  7199 0000396A 08C0                     or  al, al
  7200 0000396C 0F840300                 je @@doar375
  7201 00003970 E91EFF                   jmp @@doar366
  7202                                  @@doar375:
  7203                                  
  7204                                  ;-712   prs("\n;End of archive file. ");
  7205                                  
  7206 00003973 68[213A]                 push doar_6
  7207 00003976 E83515                   call prs
  7208 00003979 83C402                   add  sp, 2
  7209                                  
  7210                                  ;-713   callrecursive++; if (callrecursive < 5) checkcalls();
  7211                                  
  7212 0000397C FF06[4B00]               inc  word [callrecursive]
  7213 00003980 A1[4B00]                 mov ax, [callrecursive]
  7214 00003983 83F805                   cmp ax, 5
  7215 00003986 0F8D0600                 jge @@doar376
  7216 0000398A E850FD                   call checkcalls
  7217                                  
  7218                                  ;-714     else {putch(10); cputs("***ERROR*** function(s) missing! ");
  7219                                  
  7220 0000398D E91A00                   jmp @@doar377
  7221                                  @@doar376:
  7222 00003990 6A0A                     push 10
  7223 00003992 E8F026                   call putch
  7224 00003995 83C402                   add  sp, 2
  7225 00003998 68[3A3A]                 push doar_7
  7226 0000399B E80027                   call cputs
  7227 0000399E 83C402                   add  sp, 2
  7228                                  
  7229                                  ;-715     error1("At least 1 function is missing in archive file! "); }
  7230                                  
  7231 000039A1 68[5C3A]                 push doar_8
  7232 000039A4 E80818                   call error1
  7233 000039A7 83C402                   add  sp, 2
  7234                                  
  7235                                  ;-716 }
  7236                                  
  7237                                  @@doar377:
  7238                                  
  7239                                  ;-717 int getfunctionhead() {
  7240 000039AA C9                       LEAVE
  7241 000039AB C3                       ret
  7242                                  ; ENDP
  7243 000039AC 20204F70656E204341-     doar_0 db "  Open CALLs :",0
  7244 000039B5 4C4C73203A00       
  7245 000039BB 5C6E3B204E756D6265-     doar_1 db "\n; Number of unresolved CALLs :",0
  7246 000039C4 72206F6620756E7265-
  7247 000039CD 736F6C766564204341-
  7248 000039D6 4C4C73203A00       
  7249 000039DC 417263686976652066-     doar_2 db "Archive file missing: ",0
  7250 000039E5 696C65206D69737369-
  7251 000039EE 6E673A2000         
  7252 000039F3 5C6E3B757365206172-     doar_3 db "\n;use archive file: ",0
  7253 000039FC 63686976652066696C-
  7254 00003A05 653A2000           
  7255 00003A09 5C6E3B4E756D626572-     doar_4 db "\n;Number of CALLs:",0
  7256 00003A12 206F662043414C4C73-
  7257 00003A1B 3A00               
  7258 00003A1D 203A2000                doar_5 db " : ",0
  7259 00003A21 5C6E3B456E64206F66-     doar_6 db "\n;End of archive file. ",0
  7260 00003A2A 206172636869766520-
  7261 00003A33 66696C652E2000     
  7262 00003A3A 2A2A2A4552524F522A-     doar_7 db "***ERROR*** function(s) missing! ",0
  7263 00003A43 2A2A2066756E637469-
  7264 00003A4C 6F6E287329206D6973-
  7265 00003A55 73696E67212000     
  7266 00003A5C 4174206C6561737420-     doar_8 db "At least 1 function is missing in archive file! ",0
  7267 00003A65 312066756E6374696F-
  7268 00003A6E 6E206973206D697373-
  7269 00003A77 696E6720696E206172-
  7270 00003A80 63686976652066696C-
  7271 00003A89 65212000           
  7272                                  
  7273                                  getfunctionhead:  ; *** PROC ***
  7274                                  
  7275                                  ;-718   if (wasfunction) wasfunction=0; else token=getlex();
  7276                                  
  7277 00003A8D A0[0F38]                 mov al, [wasfunction]
  7278 00003A90 08C0                     or  al, al
  7279 00003A92 0F840C00                 je @@getfunctionhead378
  7280 00003A96 66B800000000             mov eax, 0
  7281 00003A9C A2[0F38]                 mov byte [wasfunction], al
  7282 00003A9F E90600                   jmp @@getfunctionhead379
  7283                                  @@getfunctionhead378:
  7284 00003AA2 E8230A                   call getlex
  7285 00003AA5 A3[3D00]                 mov word [token], ax
  7286                                  
  7287                                  ;-719   if (token == 0) return 0xFFFF;
  7288                                  
  7289                                  @@getfunctionhead379:
  7290 00003AA8 A1[3D00]                 mov ax, [token]
  7291 00003AAB 83F800                   cmp ax, 0
  7292 00003AAE 0F850900                 jne @@getfunctionhead380
  7293 00003AB2 66B8FFFF0000             mov eax, 65535
  7294 00003AB8 E94400                   jmp @@retn
  7295                                  
  7296                                  ;-720   if(istoken(T_INT))  { if (token != T_NAME) return 0;
  7297                                  
  7298                                  @@getfunctionhead380:
  7299 00003ABB 680502                   push 517
  7300 00003ABE E8A712                   call istoken
  7301 00003AC1 83C402                   add  sp, 2
  7302 00003AC4 08C0                     or  al, al
  7303 00003AC6 0F842C00                 je @@getfunctionhead381
  7304 00003ACA A1[3D00]                 mov ax, [token]
  7305 00003ACD 3D0001                   cmp ax, 256
  7306 00003AD0 0F840900                 je  @@getfunctionhead382
  7307 00003AD4 66B800000000             mov eax, 0
  7308 00003ADA E92200                   jmp @@retn
  7309                                  
  7310                                  ;-721   token=getlex(); if (token == '(') return 1; }
  7311                                  
  7312                                  @@getfunctionhead382:
  7313 00003ADD E8E809                   call getlex
  7314 00003AE0 A3[3D00]                 mov word [token], ax
  7315 00003AE3 A1[3D00]                 mov ax, [token]
  7316 00003AE6 83F828                   cmp ax, 40
  7317 00003AE9 0F850900                 jne @@getfunctionhead383
  7318 00003AED 66B801000000             mov eax, 1
  7319 00003AF3 E90900                   jmp @@retn
  7320                                  @@getfunctionhead383:
  7321                                  
  7322                                  ;-722   return 0;
  7323                                  
  7324                                  @@getfunctionhead381:
  7325 00003AF6 66B800000000             mov eax, 0
  7326 00003AFC E90000                   jmp @@retn
  7327                                  
  7328                                  ;-723 }
  7329                                  
  7330                                  
  7331                                  ;-724 void doinclude() { int fdtemp;
  7332                                  
  7333                                  @@retn:
  7334 00003AFF C3                       ret
  7335                                  ; ENDP
  7336                                  
  7337                                  doinclude:  ; *** PROC ***
  7338                                  
  7339                                  ;-725   if (token==T_STRING) {  fdtemp=fdin;
  7340                                  
  7341                                  ;Function : doinclude, Number of local variables: 1
  7342                                  ;   # type sign width line used address name   list of local variables
  7343                                  ;  200 var sign word   724 NULL bp-2    fdtemp;
  7344 00003B00 C8020000                 ENTER  2,0
  7345 00003B04 A1[3D00]                 mov ax, [token]
  7346 00003B07 3D0201                   cmp ax, 258
  7347 00003B0A 0F859C00                 jne @@doinclude384
  7348 00003B0E A1[3400]                 mov ax, [fdin]
  7349 00003B11 8946FE                   mov word [bp-2], ax
  7350                                  
  7351                                  ;-726   prs("\n;Use include file: "); prs(symbol);
  7352                                  
  7353 00003B14 68[AC3B]                 push doinclude_0
  7354 00003B17 E89413                   call prs
  7355 00003B1A 83C402                   add  sp, 2
  7356 00003B1D 8D066E81                 lea  ax, [symbol]
  7357 00003B21 50                       push ax
  7358 00003B22 E88913                   call prs
  7359 00003B25 83C402                   add  sp, 2
  7360                                  
  7361                                  ;-727   fdin=openR(symbol);
  7362                                  
  7363 00003B28 8D066E81                 lea  ax, [symbol]
  7364 00003B2C 50                       push ax
  7365 00003B2D E84F28                   call openR
  7366 00003B30 83C402                   add  sp, 2
  7367 00003B33 A3[3400]                 mov word [fdin], ax
  7368                                  
  7369                                  ;-728   if (DOS_ERR !=0) {LIST=1;
  7370                                  
  7371 00003B36 A1[C200]                 mov ax, [DOS_ERR]
  7372 00003B39 83F800                   cmp ax, 0
  7373 00003B3C 0F842F00                 je  @@doinclude385
  7374 00003B40 66B801000000             mov eax, 1
  7375 00003B46 A2[1700]                 mov byte [LIST], al
  7376                                  
  7377                                  ;-729     prs("\n;Include file missing: "); prs(symbol);
  7378                                  
  7379 00003B49 68[C23B]                 push doinclude_1
  7380 00003B4C E85F13                   call prs
  7381 00003B4F 83C402                   add  sp, 2
  7382 00003B52 8D066E81                 lea  ax, [symbol]
  7383 00003B56 50                       push ax
  7384 00003B57 E85413                   call prs
  7385 00003B5A 83C402                   add  sp, 2
  7386                                  
  7387                                  ;-730     cputs(" STOP!!!");
  7388                                  
  7389 00003B5D 68[DC3B]                 push doinclude_2
  7390 00003B60 E83B25                   call cputs
  7391 00003B63 83C402                   add  sp, 2
  7392                                  
  7393                                  ;-731     error1("\n; Stop!!");
  7394                                  
  7395 00003B66 68[E53B]                 push doinclude_3
  7396 00003B69 E84316                   call error1
  7397 00003B6C 83C402                   add  sp, 2
  7398                                  
  7399                                  ;-732     }
  7400                                  
  7401                                  
  7402                                  ;-733   linenoinclude=lineno; lineno=1;
  7403                                  
  7404                                  @@doinclude385:
  7405 00003B6F A1[BA00]                 mov ax, [lineno]
  7406 00003B72 A3[BC00]                 mov word [linenoinclude], ax
  7407 00003B75 66B801000000             mov eax, 1
  7408 00003B7B A3[BA00]                 mov word [lineno], ax
  7409                                  
  7410                                  ;-734   parse(); lineno=linenoinclude;
  7411                                  
  7412 00003B7E E8AAFA                   call parse
  7413 00003B81 A1[BC00]                 mov ax, [linenoinclude]
  7414 00003B84 A3[BA00]                 mov word [lineno], ax
  7415                                  
  7416                                  ;-735   fdin=fdtemp; prs("\n;Back to main program: "); prs(namein);
  7417                                  
  7418 00003B87 8B46FE                   mov ax, [bp-2]
  7419 00003B8A A3[3400]                 mov word [fdin], ax
  7420 00003B8D 68[F03B]                 push doinclude_4
  7421 00003B90 E81B13                   call prs
  7422 00003B93 83C402                   add  sp, 2
  7423 00003B96 8D063182                 lea  ax, [namein]
  7424 00003B9A 50                       push ax
  7425 00003B9B E81013                   call prs
  7426 00003B9E 83C402                   add  sp, 2
  7427                                  
  7428                                  ;-736   getfirstchar(); token=getlex(); }
  7429                                  
  7430 00003BA1 E8B9F4                   call getfirstchar
  7431 00003BA4 E82109                   call getlex
  7432 00003BA7 A3[3D00]                 mov word [token], ax
  7433                                  
  7434                                  ;-737 }
  7435                                  
  7436                                  @@doinclude384:
  7437                                  
  7438                                  ;-738 int dodefine() { int i; int j; int fdtemp;
  7439 00003BAA C9                       LEAVE
  7440 00003BAB C3                       ret
  7441                                  ; ENDP
  7442 00003BAC 5C6E3B55736520696E-     doinclude_0 db "\n;Use include file: ",0
  7443 00003BB5 636C7564652066696C-
  7444 00003BBE 653A2000           
  7445 00003BC2 5C6E3B496E636C7564-     doinclude_1 db "\n;Include file missing: ",0
  7446 00003BCB 652066696C65206D69-
  7447 00003BD4 7373696E673A2000   
  7448 00003BDC 2053544F5021212100      doinclude_2 db " STOP!!!",0
  7449 00003BE5 5C6E3B2053746F7021-     doinclude_3 db "\n; Stop!!",0
  7450 00003BEE 2100               
  7451 00003BF0 5C6E3B4261636B2074-     doinclude_4 db "\n;Back to main program: ",0
  7452 00003BF9 6F206D61696E207072-
  7453 00003C02 6F6772616D3A2000   
  7454                                  
  7455                                  dodefine:  ; *** PROC ***
  7456                                  
  7457                                  ;-739   if (eqstr(symbol, "BSS"   )) {BSS =1; token=getlex(); return; }
  7458                                  
  7459                                  ;Function : dodefine, Number of local variables: 3
  7460                                  ;   # type sign width line used address name   list of local variables
  7461                                  ;  200 var sign word   738 NULL bp-2    i
  7462                                  ;  201 var sign word   738 NULL bp-4    j
  7463                                  ;  202 var sign word   738 NULL bp-6    fdtemp;
  7464 00003C0A C8060000                 ENTER  6,0
  7465 00003C0E 68[D83D]                 push dodefine_0
  7466 00003C11 8D066E81                 lea  ax, [symbol]
  7467 00003C15 50                       push ax
  7468 00003C16 E8E326                   call eqstr
  7469 00003C19 83C404                   add  sp, 4
  7470 00003C1C 08C0                     or  al, al
  7471 00003C1E 0F841200                 je @@dodefine386
  7472 00003C22 66B801000000             mov eax, 1
  7473 00003C28 A2[1400]                 mov byte [BSS], al
  7474 00003C2B E89A08                   call getlex
  7475 00003C2E A3[3D00]                 mov word [token], ax
  7476 00003C31 E9A201                   jmp @@retn
  7477                                  
  7478                                  ;-740   if (eqstr(symbol, "LIST"  )) {LIST=1; token=getlex(); return; }
  7479                                  
  7480                                  @@dodefine386:
  7481 00003C34 68[DC3D]                 push dodefine_1
  7482 00003C37 8D066E81                 lea  ax, [symbol]
  7483 00003C3B 50                       push ax
  7484 00003C3C E8BD26                   call eqstr
  7485 00003C3F 83C404                   add  sp, 4
  7486 00003C42 08C0                     or  al, al
  7487 00003C44 0F841200                 je @@dodefine387
  7488 00003C48 66B801000000             mov eax, 1
  7489 00003C4E A2[1700]                 mov byte [LIST], al
  7490 00003C51 E87408                   call getlex
  7491 00003C54 A3[3D00]                 mov word [token], ax
  7492 00003C57 E97C01                   jmp @@retn
  7493                                  
  7494                                  ;-741   if (eqstr(symbol, "NOLIST")) {LIST=0; token=getlex(); return; }
  7495                                  
  7496                                  @@dodefine387:
  7497 00003C5A 68[E13D]                 push dodefine_2
  7498 00003C5D 8D066E81                 lea  ax, [symbol]
  7499 00003C61 50                       push ax
  7500 00003C62 E89726                   call eqstr
  7501 00003C65 83C404                   add  sp, 4
  7502 00003C68 08C0                     or  al, al
  7503 00003C6A 0F841200                 je @@dodefine388
  7504 00003C6E 66B800000000             mov eax, 0
  7505 00003C74 A2[1700]                 mov byte [LIST], al
  7506 00003C77 E84E08                   call getlex
  7507 00003C7A A3[3D00]                 mov word [token], ax
  7508 00003C7D E95601                   jmp @@retn
  7509                                  
  7510                                  ;-742   if (eqstr(symbol, "ORGDATA")) {token=getlex();
  7511                                  
  7512                                  @@dodefine388:
  7513 00003C80 68[E83D]                 push dodefine_3
  7514 00003C83 8D066E81                 lea  ax, [symbol]
  7515 00003C87 50                       push ax
  7516 00003C88 E87126                   call eqstr
  7517 00003C8B 83C404                   add  sp, 4
  7518 00003C8E 08C0                     or  al, al
  7519 00003C90 0F843500                 je @@dodefine389
  7520 00003C94 E83108                   call getlex
  7521 00003C97 A3[3D00]                 mov word [token], ax
  7522                                  
  7523                                  ;-743     if (token==T_CONST)  { ORGDATAORIG=lexvalL; orgData=lexvalL; }
  7524                                  
  7525 00003C9A A1[3D00]                 mov ax, [token]
  7526 00003C9D 3D0101                   cmp ax, 257
  7527 00003CA0 0F851300                 jne @@dodefine390
  7528 00003CA4 66A1[4D00]               mov eax, [lexvalL]
  7529 00003CA8 66A3[2400]               mov dword [ORGDATAORIG], eax
  7530 00003CAC 66A1[4D00]               mov eax, [lexvalL]
  7531 00003CB0 66A3[2800]               mov dword [orgData], eax
  7532                                  
  7533                                  ;-744     else  error1("start address missing"); token=getlex(); return; }
  7534                                  
  7535 00003CB4 E90900                   jmp @@dodefine391
  7536                                  @@dodefine390:
  7537 00003CB7 68[F03D]                 push dodefine_4
  7538 00003CBA E8F214                   call error1
  7539 00003CBD 83C402                   add  sp, 2
  7540                                  @@dodefine391:
  7541 00003CC0 E80508                   call getlex
  7542 00003CC3 A3[3D00]                 mov word [token], ax
  7543 00003CC6 E90D01                   jmp @@retn
  7544                                  
  7545                                  ;-745   if (eqstr(symbol, "ARCHIVE")) {token=getlex();
  7546                                  
  7547                                  @@dodefine389:
  7548 00003CC9 68[063E]                 push dodefine_5
  7549 00003CCC 8D066E81                 lea  ax, [symbol]
  7550 00003CD0 50                       push ax
  7551 00003CD1 E82826                   call eqstr
  7552 00003CD4 83C404                   add  sp, 4
  7553 00003CD7 08C0                     or  al, al
  7554 00003CD9 0F844900                 je @@dodefine392
  7555 00003CDD E8E807                   call getlex
  7556 00003CE0 A3[3D00]                 mov word [token], ax
  7557                                  
  7558                                  ;-746     if (token==T_STRING) { prs("\n;Use archive file: ");
  7559                                  
  7560 00003CE3 A1[3D00]                 mov ax, [token]
  7561 00003CE6 3D0201                   cmp ax, 258
  7562 00003CE9 0F852700                 jne @@dodefine393
  7563 00003CED 68[0E3E]                 push dodefine_6
  7564 00003CF0 E8BB11                   call prs
  7565 00003CF3 83C402                   add  sp, 2
  7566                                  
  7567                                  ;-747     strcpy(archivename, symbol); prs(archivename);
  7568                                  
  7569 00003CF6 8D066E81                 lea  ax, [symbol]
  7570 00003CFA 50                       push ax
  7571 00003CFB 8D06[3800]               lea  ax, [archivename]
  7572 00003CFF 50                       push ax
  7573 00003D00 E8A524                   call strcpy
  7574 00003D03 83C404                   add  sp, 4
  7575 00003D06 8D06[3800]               lea  ax, [archivename]
  7576 00003D0A 50                       push ax
  7577 00003D0B E8A011                   call prs
  7578 00003D0E 83C402                   add  sp, 2
  7579                                  
  7580                                  ;-748     } else error1("Name of archive file missing"); token=getlex(); return;}
  7581                                  
  7582 00003D11 E90900                   jmp @@dodefine394
  7583                                  @@dodefine393:
  7584 00003D14 68[243E]                 push dodefine_7
  7585 00003D17 E89514                   call error1
  7586 00003D1A 83C402                   add  sp, 2
  7587                                  @@dodefine394:
  7588 00003D1D E8A807                   call getlex
  7589 00003D20 A3[3D00]                 mov word [token], ax
  7590 00003D23 E9B000                   jmp @@retn
  7591                                  
  7592                                  ;-749    expect(T_NAME);
  7593                                  
  7594                                  @@dodefine392:
  7595 00003D26 680001                   push 256
  7596 00003D29 E86410                   call expect
  7597 00003D2C 83C402                   add  sp, 2
  7598                                  
  7599                                  ;-750   if (token==T_CONST) { 
  7600                                  
  7601 00003D2F A1[3D00]                 mov ax, [token]
  7602 00003D32 3D0101                   cmp ax, 257
  7603 00003D35 0F859D00                 jne @@dodefine395
  7604                                  
  7605                                  ;-751     if (GTop >= LSTART) error1("global table (define) full");
  7606                                  
  7607 00003D39 A1[5E00]                 mov ax, [GTop]
  7608 00003D3C 3DC800                   cmp ax, 200 ;unsigned : 1
  7609 00003D3F 0F8C0900                 jl  @@dodefine396
  7610 00003D43 68[413E]                 push dodefine_8
  7611 00003D46 E86614                   call error1
  7612 00003D49 83C402                   add  sp, 2
  7613                                  
  7614                                  ;-752     checknamelen();
  7615                                  
  7616                                  @@dodefine396:
  7617 00003D4C E8ECC3                   call checknamelen
  7618                                  
  7619                                  ;-753     GSign [GTop]='U'; GWidth[GTop]=1; GType [GTop]='#';
  7620                                  
  7621 00003D4F 66B855000000             mov eax, 85
  7622 00003D55 8B1E[5E00]               mov bx, [GTop]
  7623 00003D59 8887E383                 mov [GSign+bx], al
  7624 00003D5D 66B801000000             mov eax, 1
  7625 00003D63 8B1E[5E00]               mov bx, [GTop]
  7626 00003D67 88870F85                 mov [GWidth+bx], al
  7627 00003D6B 66B823000000             mov eax, 35
  7628 00003D71 8B1E[5E00]               mov bx, [GTop]
  7629 00003D75 8887B782                 mov [GType+bx], al
  7630                                  
  7631                                  ;-754     GLino [GTop]=lineno-1; GUsed [GTop]=0;
  7632                                  
  7633 00003D79 A1[BA00]                 mov ax, [lineno]
  7634 00003D7C 83E801                   sub ax, 1
  7635 00003D7F 8B1E[5E00]               mov bx, [GTop]
  7636 00003D83 D1E3                     shl bx, 1
  7637 00003D85 89873B86                 mov [GLino+bx], ax
  7638 00003D89 66B800000000             mov eax, 0
  7639 00003D8F 8B1E[5E00]               mov bx, [GTop]
  7640 00003D93 D1E3                     shl bx, 1
  7641 00003D95 89879388                 mov [GUsed+bx], ax
  7642                                  
  7643                                  ;-755     GAdr  [GTop]=LONG0;
  7644                                  
  7645 00003D99 66A1[2000]               mov eax, [LONG0]
  7646 00003D9D 8B1E[5E00]               mov bx, [GTop]
  7647 00003DA1 C1E302                   shl bx, 2
  7648 00003DA4 6689879B8F               mov [GAdr+bx], eax
  7649                                  
  7650                                  ;-756     GName [GTop] = CNameTop; storeName();
  7651                                  
  7652 00003DA9 A1[B400]                 mov ax, [CNameTop]
  7653 00003DAC 8B1E[5E00]               mov bx, [GTop]
  7654 00003DB0 D1E3                     shl bx, 1
  7655 00003DB2 89874B94                 mov [GName+bx], ax
  7656 00003DB6 E837C4                   call storeName
  7657                                  
  7658                                  ;-757     GData[GTop]=lexvalL;
  7659                                  
  7660 00003DB9 66A1[4D00]               mov eax, [lexvalL]
  7661 00003DBD 8B1E[5E00]               mov bx, [GTop]
  7662 00003DC1 C1E302                   shl bx, 2
  7663 00003DC4 668987EB8A               mov [GData+bx], eax
  7664                                  
  7665                                  ;-758     expect(T_CONST); GTop++;  } 
  7666                                  
  7667 00003DC9 680101                   push 257
  7668 00003DCC E8C10F                   call expect
  7669 00003DCF 83C402                   add  sp, 2
  7670 00003DD2 FF06[5E00]               inc  word [GTop]
  7671                                  
  7672                                  ;-759 }
  7673                                  
  7674                                  @@dodefine395:
  7675                                  
  7676                                  ;-760 int stmt() { int c; char cha;
  7677                                  
  7678 00003DD6 C9                      @@retn: LEAVE
  7679 00003DD7 C3                       ret
  7680                                  ; ENDP
  7681 00003DD8 42535300                dodefine_0 db "BSS",0
  7682 00003DDC 4C49535400              dodefine_1 db "LIST",0
  7683 00003DE1 4E4F4C49535400          dodefine_2 db "NOLIST",0
  7684 00003DE8 4F52474441544100        dodefine_3 db "ORGDATA",0
  7685 00003DF0 737461727420616464-     dodefine_4 db "start address missing",0
  7686 00003DF9 72657373206D697373-
  7687 00003E02 696E6700           
  7688 00003E06 4152434849564500        dodefine_5 db "ARCHIVE",0
  7689 00003E0E 5C6E3B557365206172-     dodefine_6 db "\n;Use archive file: ",0
  7690 00003E17 63686976652066696C-
  7691 00003E20 653A2000           
  7692 00003E24 4E616D65206F662061-     dodefine_7 db "Name of archive file missing",0
  7693 00003E2D 726368697665206669-
  7694 00003E36 6C65206D697373696E-
  7695 00003E3F 6700               
  7696 00003E41 676C6F62616C207461-     dodefine_8 db "global table (define) full",0
  7697 00003E4A 626C65202864656669-
  7698 00003E53 6E65292066756C6C00 
  7699                                  
  7700                                  stmt:  ; *** PROC ***
  7701                                  
  7702                                  ;-761        if(istoken('{'))     {while(istoken('}')==0) stmt();}
  7703                                  
  7704                                  ;Function : stmt, Number of local variables: 2
  7705                                  ;   # type sign width line used address name   list of local variables
  7706                                  ;  200 var sign word   760 NULL bp-2    c
  7707                                  ;  201 var sign byte   760 NULL bp-4    cha;
  7708 00003E5C C8040000                 ENTER  4,0
  7709 00003E60 6A7B                     push 123
  7710 00003E62 E8030F                   call istoken
  7711 00003E65 83C402                   add  sp, 2
  7712 00003E68 08C0                     or  al, al
  7713 00003E6A 0F841700                 je @@stmt397
  7714                                  @@stmt398:
  7715 00003E6E 6A7D                     push 125
  7716 00003E70 E8F50E                   call istoken
  7717 00003E73 83C402                   add  sp, 2
  7718 00003E76 83F800                   cmp ax, 0
  7719 00003E79 0F850500                 jne @@stmt399
  7720 00003E7D E8DCFF                   call stmt
  7721 00003E80 EBEC                     jmp @@stmt398
  7722                                  @@stmt399:
  7723                                  
  7724                                  ;-762   else if(istoken(T_IF))    doif();
  7725                                  
  7726 00003E82 E90502                   jmp @@stmt400
  7727                                  @@stmt397:
  7728 00003E85 680102                   push 513
  7729 00003E88 E8DD0E                   call istoken
  7730 00003E8B 83C402                   add  sp, 2
  7731 00003E8E 08C0                     or  al, al
  7732 00003E90 0F840600                 je @@stmt401
  7733 00003E94 E83F04                   call doif
  7734                                  
  7735                                  ;-763   else if(istoken(T_DO))    dodo();
  7736                                  
  7737 00003E97 E9F001                   jmp @@stmt402
  7738                                  @@stmt401:
  7739 00003E9A 680402                   push 516
  7740 00003E9D E8C80E                   call istoken
  7741 00003EA0 83C402                   add  sp, 2
  7742 00003EA3 08C0                     or  al, al
  7743 00003EA5 0F840600                 je @@stmt403
  7744 00003EA9 E81E05                   call dodo
  7745                                  
  7746                                  ;-764   else if(istoken(T_WHILE)) dowhile();
  7747                                  
  7748 00003EAC E9DB01                   jmp @@stmt404
  7749                                  @@stmt403:
  7750 00003EAF 680302                   push 515
  7751 00003EB2 E8B30E                   call istoken
  7752 00003EB5 83C402                   add  sp, 2
  7753 00003EB8 08C0                     or  al, al
  7754 00003EBA 0F840600                 je @@stmt405
  7755 00003EBE E85605                   call dowhile
  7756                                  
  7757                                  ;-765   else if(istoken(T_GOTO))  {prs("\n jmp @@");name1();prs(symbol);expect(';');}
  7758                                  
  7759 00003EC1 E9C601                   jmp @@stmt406
  7760                                  @@stmt405:
  7761 00003EC4 680902                   push 521
  7762 00003EC7 E89E0E                   call istoken
  7763 00003ECA 83C402                   add  sp, 2
  7764 00003ECD 08C0                     or  al, al
  7765 00003ECF 0F842200                 je @@stmt407
  7766 00003ED3 68[8C40]                 push stmt_0
  7767 00003ED6 E8D50F                   call prs
  7768 00003ED9 83C402                   add  sp, 2
  7769 00003EDC E8B3CD                   call name1
  7770 00003EDF 8D066E81                 lea  ax, [symbol]
  7771 00003EE3 50                       push ax
  7772 00003EE4 E8C70F                   call prs
  7773 00003EE7 83C402                   add  sp, 2
  7774 00003EEA 6A3B                     push 59
  7775 00003EEC E8A10E                   call expect
  7776 00003EEF 83C402                   add  sp, 2
  7777                                  
  7778                                  ;-766   else if(token==T_ASM)     {prs("\n"); c=next();
  7779                                  
  7780 00003EF2 E99501                   jmp @@stmt408
  7781                                  @@stmt407:
  7782 00003EF5 A1[3D00]                 mov ax, [token]
  7783 00003EF8 3D0602                   cmp ax, 518
  7784 00003EFB 0F853300                 jne @@stmt409
  7785 00003EFF 68[9640]                 push stmt_1
  7786 00003F02 E8A90F                   call prs
  7787 00003F05 83C402                   add  sp, 2
  7788 00003F08 E83F0E                   call next
  7789 00003F0B 8946FE                   mov word [bp-2], ax
  7790                                  
  7791                                  ;-767     while(c != '\n') { prc(c);	c=next(); }; token=getlex(); }
  7792                                  
  7793                                  @@stmt410:
  7794 00003F0E 8B46FE                   mov ax, [bp-2]
  7795 00003F11 83F80A                   cmp ax, 10
  7796 00003F14 0F841100                 je  @@stmt411
  7797 00003F18 FF76FE                   push word [bp-2]
  7798 00003F1B E8210F                   call prc
  7799 00003F1E 83C402                   add  sp, 2
  7800 00003F21 E8260E                   call next
  7801 00003F24 8946FE                   mov word [bp-2], ax
  7802 00003F27 EBE5                     jmp @@stmt410
  7803                                  @@stmt411:
  7804 00003F29 E89C05                   call getlex
  7805 00003F2C A3[3D00]                 mov word [token], ax
  7806                                  
  7807                                  ;-768   else if(istoken(T_ASMBLOCK)) { if (token== '{' )  { prs("\n"); cha=next();  
  7808                                  
  7809 00003F2F E95801                   jmp @@stmt412
  7810                                  @@stmt409:
  7811 00003F32 680702                   push 519
  7812 00003F35 E8300E                   call istoken
  7813 00003F38 83C402                   add  sp, 2
  7814 00003F3B 08C0                     or  al, al
  7815 00003F3D 0F844A00                 je @@stmt413
  7816 00003F41 A1[3D00]                 mov ax, [token]
  7817 00003F44 83F87B                   cmp ax, 123
  7818 00003F47 0F853400                 jne @@stmt414
  7819 00003F4B 68[9940]                 push stmt_2
  7820 00003F4E E85D0F                   call prs
  7821 00003F51 83C402                   add  sp, 2
  7822 00003F54 E8F30D                   call next
  7823 00003F57 8846FC                   mov byte [bp-4], al
  7824                                  
  7825                                  ;-769     while(_ cha!= '}') { prc(cha); cha=next(); }
  7826                                  
  7827                                  @@stmt415:
  7828 00003F5A 807EFC7D                cmp byte [bp-4], 125
  7829 00003F5E 0F841400                 je  @@stmt416
  7830 00003F62 8A46FC                   mov al, byte [bp-4]
  7831 00003F65 B400                     mov ah, 0
  7832 00003F67 50                       push ax
  7833 00003F68 E8D40E                   call prc
  7834 00003F6B 83C402                   add  sp, 2
  7835 00003F6E E8D90D                   call next
  7836 00003F71 8846FC                   mov byte [bp-4], al
  7837                                  
  7838                                  ;-770     token=getlex(); }
  7839                                  
  7840 00003F74 EBE4                     jmp @@stmt415
  7841                                  @@stmt416:
  7842 00003F76 E84F05                   call getlex
  7843 00003F79 A3[3D00]                 mov word [token], ax
  7844                                  
  7845                                  ;-771     else error1("Curly open expected"); }
  7846                                  
  7847 00003F7C E90900                   jmp @@stmt417
  7848                                  @@stmt414:
  7849 00003F7F 68[9C40]                 push stmt_3
  7850 00003F82 E82A12                   call error1
  7851 00003F85 83C402                   add  sp, 2
  7852                                  @@stmt417:
  7853                                  
  7854                                  ;-772   else if(istoken(T_INTH))  {prs("\n int  "); expect(T_CONST);
  7855                                  
  7856 00003F88 E9FF00                   jmp @@stmt418
  7857                                  @@stmt413:
  7858 00003F8B 685802                   push 600
  7859 00003F8E E8D70D                   call istoken
  7860 00003F91 83C402                   add  sp, 2
  7861 00003F94 08C0                     or  al, al
  7862 00003F96 0F842800                 je @@stmt419
  7863 00003F9A 68[B040]                 push stmt_4
  7864 00003F9D E80E0F                   call prs
  7865 00003FA0 83C402                   add  sp, 2
  7866 00003FA3 680101                   push 257
  7867 00003FA6 E8E70D                   call expect
  7868 00003FA9 83C402                   add  sp, 2
  7869                                  
  7870                                  ;-773     prL(lexvalL); expect(';');    }
  7871                                  
  7872 00003FAC 66FF36[4D00]             push dword [lexvalL]
  7873 00003FB1 E8AD1F                   call prL
  7874 00003FB4 83C404                   add  sp, 4
  7875 00003FB7 6A3B                     push 59
  7876 00003FB9 E8D40D                   call expect
  7877 00003FBC 83C402                   add  sp, 2
  7878                                  
  7879                                  ;-774   else if(istoken(T_IFCARRY))doifcarry();
  7880                                  
  7881 00003FBF E9C800                   jmp @@stmt420
  7882                                  @@stmt419:
  7883 00003FC2 685902                   push 601
  7884 00003FC5 E8A00D                   call istoken
  7885 00003FC8 83C402                   add  sp, 2
  7886 00003FCB 08C0                     or  al, al
  7887 00003FCD 0F840600                 je @@stmt421
  7888 00003FD1 E86403                   call doifcarry
  7889                                  
  7890                                  ;-775   else if(istoken(T_IFZERO))doifzero();
  7891                                  
  7892 00003FD4 E9B300                   jmp @@stmt422
  7893                                  @@stmt421:
  7894 00003FD7 685A02                   push 602
  7895 00003FDA E88B0D                   call istoken
  7896 00003FDD 83C402                   add  sp, 2
  7897 00003FE0 08C0                     or  al, al
  7898 00003FE2 0F840600                 je @@stmt423
  7899 00003FE6 E89803                   call doifzero
  7900                                  
  7901                                  ;-776   else if(istoken(T_EMIT))   doemit();
  7902                                  
  7903 00003FE9 E99E00                   jmp @@stmt424
  7904                                  @@stmt423:
  7905 00003FEC 680802                   push 520
  7906 00003FEF E8760D                   call istoken
  7907 00003FF2 83C402                   add  sp, 2
  7908 00003FF5 08C0                     or  al, al
  7909 00003FF7 0F840600                 je @@stmt425
  7910 00003FFB E8CE00                   call doemit
  7911                                  
  7912                                  ;-777   else if(istoken(';'))      { }
  7913                                  
  7914 00003FFE E98900                   jmp @@stmt426
  7915                                  @@stmt425:
  7916 00004001 6A3B                     push 59
  7917 00004003 E8620D                   call istoken
  7918 00004006 83C402                   add  sp, 2
  7919 00004009 08C0                     or  al, al
  7920 0000400B 0F840300                 je @@stmt427
  7921                                  
  7922                                  ;-778   else if(istoken(T_RETURN)) {if (token!=';')  exprstart();
  7923                                  
  7924 0000400F E97800                   jmp @@stmt428
  7925                                  @@stmt427:
  7926 00004012 680002                   push 512
  7927 00004015 E8500D                   call istoken
  7928 00004018 83C402                   add  sp, 2
  7929 0000401B 08C0                     or  al, al
  7930 0000401D 0F842500                 je @@stmt429
  7931 00004021 A1[3D00]                 mov ax, [token]
  7932 00004024 83F83B                   cmp ax, 59
  7933 00004027 0F840300                 je  @@stmt430
  7934 0000402B E832D3                   call exprstart
  7935                                  
  7936                                  ;-779     prs("\n jmp @@retn"); nreturn++; expect(';');}
  7937                                  
  7938                                  @@stmt430:
  7939 0000402E 68[B940]                 push stmt_5
  7940 00004031 E87A0E                   call prs
  7941 00004034 83C402                   add  sp, 2
  7942 00004037 FF06[4700]               inc  word [nreturn]
  7943 0000403B 6A3B                     push 59
  7944 0000403D E8500D                   call expect
  7945 00004040 83C402                   add  sp, 2
  7946                                  
  7947                                  ;-780   else if(_ thechar==':')      {prs("\n@@"); // Label
  7948                                  
  7949 00004043 E94400                   jmp @@stmt431
  7950                                  @@stmt429:
  7951 00004046 803E[4200]3A            cmp byte [thechar], 58
  7952 0000404B 0F853000                 jne @@stmt432
  7953 0000404F 68[C740]                 push stmt_6
  7954 00004052 E8590E                   call prs
  7955 00004055 83C402                   add  sp, 2
  7956                                  
  7957                                  ;-781      prs(symbol); prc(':');  expect(T_NAME); expect(':'); }
  7958                                  
  7959 00004058 8D066E81                 lea  ax, [symbol]
  7960 0000405C 50                       push ax
  7961 0000405D E84E0E                   call prs
  7962 00004060 83C402                   add  sp, 2
  7963 00004063 6A3A                     push 58
  7964 00004065 E8D70D                   call prc
  7965 00004068 83C402                   add  sp, 2
  7966 0000406B 680001                   push 256
  7967 0000406E E81F0D                   call expect
  7968 00004071 83C402                   add  sp, 2
  7969 00004074 6A3A                     push 58
  7970 00004076 E8170D                   call expect
  7971 00004079 83C402                   add  sp, 2
  7972                                  
  7973                                  ;-782   else                       {exprstart(); expect(';'); } }
  7974                                  
  7975 0000407C E90B00                   jmp @@stmt433
  7976                                  @@stmt432:
  7977 0000407F E8DED2                   call exprstart
  7978 00004082 6A3B                     push 59
  7979 00004084 E8090D                   call expect
  7980 00004087 83C402                   add  sp, 2
  7981                                  @@stmt433:
  7982                                  @@stmt431:
  7983                                  @@stmt428:
  7984                                  @@stmt426:
  7985                                  @@stmt424:
  7986                                  @@stmt422:
  7987                                  @@stmt420:
  7988                                  @@stmt418:
  7989                                  @@stmt412:
  7990                                  @@stmt408:
  7991                                  @@stmt406:
  7992                                  @@stmt404:
  7993                                  @@stmt402:
  7994                                  @@stmt400:
  7995                                  
  7996                                  ;-783 
  7997                                  
  7998                                  
  7999                                  ;-784 int doemit() {prs("\n db ");
  8000 0000408A C9                       LEAVE
  8001 0000408B C3                       ret
  8002                                  ; ENDP
  8003 0000408C 5C6E206A6D70204040-     stmt_0 db "\n jmp @@",0
  8004 00004095 00                 
  8005 00004096 5C6E00                  stmt_1 db "\n",0
  8006 00004099 5C6E00                  stmt_2 db "\n",0
  8007 0000409C 4375726C79206F7065-     stmt_3 db "Curly open expected",0
  8008 000040A5 6E2065787065637465-
  8009 000040AE 6400               
  8010 000040B0 5C6E20696E74202000      stmt_4 db "\n int  ",0
  8011 000040B9 5C6E206A6D70204040-     stmt_5 db "\n jmp @@retn",0
  8012 000040C2 7265746E00         
  8013 000040C7 5C6E404000              stmt_6 db "\n@@",0
  8014                                  
  8015                                  doemit:  ; *** PROC ***
  8016 000040CC 68[0941]                 push doemit_0
  8017 000040CF E8DC0D                   call prs
  8018 000040D2 83C402                   add  sp, 2
  8019                                  
  8020                                  ;-785   L1: token=getlex(); prL(lexvalL); token=getlex();
  8021                                  
  8022                                  @@L1:
  8023 000040D5 E8F003                   call getlex
  8024 000040D8 A3[3D00]                 mov word [token], ax
  8025 000040DB 66FF36[4D00]             push dword [lexvalL]
  8026 000040E0 E87E1E                   call prL
  8027 000040E3 83C404                   add  sp, 4
  8028 000040E6 E8DF03                   call getlex
  8029 000040E9 A3[3D00]                 mov word [token], ax
  8030                                  
  8031                                  ;-786     if (token== ',') {prc(','); goto L1;} expect(')'); }
  8032                                  
  8033 000040EC A1[3D00]                 mov ax, [token]
  8034 000040EF 83F82C                   cmp ax, 44
  8035 000040F2 0F850A00                 jne @@doemit434
  8036 000040F6 6A2C                     push 44
  8037 000040F8 E8440D                   call prc
  8038 000040FB 83C402                   add  sp, 2
  8039 000040FE EBD5                     jmp @@L1
  8040                                  @@doemit434:
  8041 00004100 6A29                     push 41
  8042 00004102 E88B0C                   call expect
  8043 00004105 83C402                   add  sp, 2
  8044                                  
  8045                                  ;-787 
  8046                                  
  8047                                  
  8048                                  ;-788 int cmpneg(int ids) {
  8049                                  
  8050 00004108 C3                       ret
  8051                                  ; ENDP
  8052 00004109 5C6E2064622000          doemit_0 db "\n db ",0
  8053                                  
  8054                                  cmpneg:  ; *** PROC ***
  8055                                  
  8056                                  ;-789        if(iscmp==T_EQ) prs("\n jne @@");         //ZF=0
  8057                                  
  8058                                  ;Function : cmpneg, Number of local variables: 1
  8059                                  ;   # type sign width line used address name   list of local variables
  8060                                  ;  200 var sign word   788 NULL bp+4    ids;
  8061 00004110 C8000000                 ENTER  0,0
  8062 00004114 A1[4300]                 mov ax, [iscmp]
  8063 00004117 3D2603                   cmp ax, 806
  8064 0000411A 0F850C00                 jne @@cmpneg435
  8065 0000411E 68[F141]                 push cmpneg_0
  8066 00004121 E88A0D                   call prs
  8067 00004124 83C402                   add  sp, 2
  8068                                  
  8069                                  ;-790   else if(iscmp==T_NE) prs("\n je  @@");         //ZF=1
  8070                                  
  8071 00004127 E9C500                   jmp @@cmpneg436
  8072                                  @@cmpneg435:
  8073 0000412A A1[4300]                 mov ax, [iscmp]
  8074 0000412D 3D2703                   cmp ax, 807
  8075 00004130 0F850C00                 jne @@cmpneg437
  8076 00004134 68[FB41]                 push cmpneg_1
  8077 00004137 E8740D                   call prs
  8078 0000413A 83C402                   add  sp, 2
  8079                                  
  8080                                  ;-791   else if(iscmp==T_LE) if (ids) prs("\n jg  @@");//ZF=0      SF =OF
  8081                                  
  8082 0000413D E9AF00                   jmp @@cmpneg438
  8083                                  @@cmpneg437:
  8084 00004140 A1[4300]                 mov ax, [iscmp]
  8085 00004143 3D3803                   cmp ax, 824
  8086 00004146 0F852100                 jne @@cmpneg439
  8087 0000414A 8B4604                   mov ax, [bp+4]
  8088 0000414D 08C0                     or  al, al
  8089 0000414F 0F840C00                 je @@cmpneg440
  8090 00004153 68[0542]                 push cmpneg_2
  8091 00004156 E8550D                   call prs
  8092 00004159 83C402                   add  sp, 2
  8093                                  
  8094                                  ;-792                            else prs("\n ja  @@");//ZF=0 CF=0
  8095                                  
  8096 0000415C E90900                   jmp @@cmpneg441
  8097                                  @@cmpneg440:
  8098 0000415F 68[0F42]                 push cmpneg_3
  8099 00004162 E8490D                   call prs
  8100 00004165 83C402                   add  sp, 2
  8101                                  
  8102                                  ;-793   else if(iscmp==T_GE) if (ids){prs(" ;unsigned : "); prunsign1(ids);
  8103                                  
  8104                                  @@cmpneg441:
  8105 00004168 E98400                   jmp @@cmpneg442
  8106                                  @@cmpneg439:
  8107 0000416B A1[4300]                 mov ax, [iscmp]
  8108 0000416E 3D2B03                   cmp ax, 811
  8109 00004171 0F854500                 jne @@cmpneg443
  8110 00004175 8B4604                   mov ax, [bp+4]
  8111 00004178 08C0                     or  al, al
  8112 0000417A 0F841E00                 je @@cmpneg444
  8113 0000417E 68[1942]                 push cmpneg_4
  8114 00004181 E82A0D                   call prs
  8115 00004184 83C402                   add  sp, 2
  8116 00004187 FF7604                   push word [bp+4]
  8117 0000418A E88A0E                   call prunsign1
  8118 0000418D 83C402                   add  sp, 2
  8119                                  
  8120                                  ;-794                                prs("\n jl  @@");}//          SF!=OF
  8121                                  
  8122 00004190 68[2742]                 push cmpneg_5
  8123 00004193 E8180D                   call prs
  8124 00004196 83C402                   add  sp, 2
  8125                                  
  8126                                  ;-795                            else{prs(" ;unsigned : "); prunsign1(ids);
  8127                                  
  8128 00004199 E91B00                   jmp @@cmpneg445
  8129                                  @@cmpneg444:
  8130 0000419C 68[3142]                 push cmpneg_6
  8131 0000419F E80C0D                   call prs
  8132 000041A2 83C402                   add  sp, 2
  8133 000041A5 FF7604                   push word [bp+4]
  8134 000041A8 E86C0E                   call prunsign1
  8135 000041AB 83C402                   add  sp, 2
  8136                                  
  8137                                  ;-796                                prs("\n jb  @@");}//jb=jc=CF=1
  8138                                  
  8139 000041AE 68[3F42]                 push cmpneg_7
  8140 000041B1 E8FA0C                   call prs
  8141 000041B4 83C402                   add  sp, 2
  8142                                  
  8143                                  ;-797   else if(iscmp=='<' ) prs("\n jge @@");         //          SF =OF
  8144                                  
  8145                                  @@cmpneg445:
  8146 000041B7 E93500                   jmp @@cmpneg446
  8147                                  @@cmpneg443:
  8148 000041BA A1[4300]                 mov ax, [iscmp]
  8149 000041BD 83F83C                   cmp ax, 60
  8150 000041C0 0F850C00                 jne @@cmpneg447
  8151 000041C4 68[4942]                 push cmpneg_8
  8152 000041C7 E8E40C                   call prs
  8153 000041CA 83C402                   add  sp, 2
  8154                                  
  8155                                  ;-798   else if(iscmp=='>' ) prs("\n jle @@");         //ZF=1 oder SF!=OF
  8156                                  
  8157 000041CD E91F00                   jmp @@cmpneg448
  8158                                  @@cmpneg447:
  8159 000041D0 A1[4300]                 mov ax, [iscmp]
  8160 000041D3 83F83E                   cmp ax, 62
  8161 000041D6 0F850C00                 jne @@cmpneg449
  8162 000041DA 68[5342]                 push cmpneg_9
  8163 000041DD E8CE0C                   call prs
  8164 000041E0 83C402                   add  sp, 2
  8165                                  
  8166                                  ;-799   else error1("compare unknown in CMPNEG()");  }
  8167                                  
  8168 000041E3 E90900                   jmp @@cmpneg450
  8169                                  @@cmpneg449:
  8170 000041E6 68[5D42]                 push cmpneg_10
  8171 000041E9 E8C30F                   call error1
  8172 000041EC 83C402                   add  sp, 2
  8173                                  @@cmpneg450:
  8174                                  @@cmpneg448:
  8175                                  @@cmpneg446:
  8176                                  @@cmpneg442:
  8177                                  @@cmpneg438:
  8178                                  @@cmpneg436:
  8179                                  
  8180                                  ;-800 
  8181                                  
  8182                                  
  8183                                  ;-801 int prlabel(int n) {prs("\n@@"); prs(fname); pint1(n); prc(':'); }
  8184 000041EF C9                       LEAVE
  8185 000041F0 C3                       ret
  8186                                  ; ENDP
  8187 000041F1 5C6E206A6E65204040-     cmpneg_0 db "\n jne @@",0
  8188 000041FA 00                 
  8189 000041FB 5C6E206A6520204040-     cmpneg_1 db "\n je  @@",0
  8190 00004204 00                 
  8191 00004205 5C6E206A6720204040-     cmpneg_2 db "\n jg  @@",0
  8192 0000420E 00                 
  8193 0000420F 5C6E206A6120204040-     cmpneg_3 db "\n ja  @@",0
  8194 00004218 00                 
  8195 00004219 203B756E7369676E65-     cmpneg_4 db " ;unsigned : ",0
  8196 00004222 64203A2000         
  8197 00004227 5C6E206A6C20204040-     cmpneg_5 db "\n jl  @@",0
  8198 00004230 00                 
  8199 00004231 203B756E7369676E65-     cmpneg_6 db " ;unsigned : ",0
  8200 0000423A 64203A2000         
  8201 0000423F 5C6E206A6220204040-     cmpneg_7 db "\n jb  @@",0
  8202 00004248 00                 
  8203 00004249 5C6E206A6765204040-     cmpneg_8 db "\n jge @@",0
  8204 00004252 00                 
  8205 00004253 5C6E206A6C65204040-     cmpneg_9 db "\n jle @@",0
  8206 0000425C 00                 
  8207 0000425D 636F6D706172652075-     cmpneg_10 db "compare unknown in CMPNEG()",0
  8208 00004266 6E6B6E6F776E20696E-
  8209 0000426F 20434D504E45472829-
  8210 00004278 00                 
  8211                                  
  8212                                  prlabel:  ; *** PROC ***
  8213                                  ;Function : prlabel, Number of local variables: 1
  8214                                  ;   # type sign width line used address name   list of local variables
  8215                                  ;  200 var sign word   801 NULL bp+4    n;
  8216 00004279 C8000000                 ENTER  0,0
  8217 0000427D 68[A442]                 push prlabel_0
  8218 00004280 E82B0C                   call prs
  8219 00004283 83C402                   add  sp, 2
  8220 00004286 8D06EE81                 lea  ax, [fname]
  8221 0000428A 50                       push ax
  8222 0000428B E8200C                   call prs
  8223 0000428E 83C402                   add  sp, 2
  8224 00004291 FF7604                   push word [bp+4]
  8225 00004294 E81D0D                   call pint1
  8226 00004297 83C402                   add  sp, 2
  8227 0000429A 6A3A                     push 58
  8228 0000429C E8A00B                   call prc
  8229 0000429F 83C402                   add  sp, 2
  8230                                  
  8231                                  ;-802 int prjump (int n) {prs("\n jmp @@"); prs(fname); pint1(n); }
  8232 000042A2 C9                       LEAVE
  8233 000042A3 C3                       ret
  8234                                  ; ENDP
  8235 000042A4 5C6E404000              prlabel_0 db "\n@@",0
  8236                                  
  8237                                  prjump:  ; *** PROC ***
  8238                                  ;Function : prjump, Number of local variables: 1
  8239                                  ;   # type sign width line used address name   list of local variables
  8240                                  ;  200 var sign word   802 NULL bp+4    n;
  8241 000042A9 C8000000                 ENTER  0,0
  8242 000042AD 68[CC42]                 push prjump_0
  8243 000042B0 E8FB0B                   call prs
  8244 000042B3 83C402                   add  sp, 2
  8245 000042B6 8D06EE81                 lea  ax, [fname]
  8246 000042BA 50                       push ax
  8247 000042BB E8F00B                   call prs
  8248 000042BE 83C402                   add  sp, 2
  8249 000042C1 FF7604                   push word [bp+4]
  8250 000042C4 E8ED0C                   call pint1
  8251 000042C7 83C402                   add  sp, 2
  8252                                  
  8253                                  ;-803 int doif() {int jdest; int tst; pexpr(); nlabel++; jdest=nlabel;
  8254 000042CA C9                       LEAVE
  8255 000042CB C3                       ret
  8256                                  ; ENDP
  8257 000042CC 5C6E206A6D70204040-     prjump_0 db "\n jmp @@",0
  8258 000042D5 00                 
  8259                                  
  8260                                  doif:  ; *** PROC ***
  8261                                  ;Function : doif, Number of local variables: 2
  8262                                  ;   # type sign width line used address name   list of local variables
  8263                                  ;  200 var sign word   803 NULL bp-2    jdest
  8264                                  ;  201 var sign word   803 NULL bp-4    tst;
  8265 000042D6 C8040000                 ENTER  4,0
  8266 000042DA E831CF                   call pexpr
  8267 000042DD FF06[4900]               inc  word [nlabel]
  8268 000042E1 A1[4900]                 mov ax, [nlabel]
  8269 000042E4 8946FE                   mov word [bp-2], ax
  8270                                  
  8271                                  ;-804   pint1(jdest); stmt();
  8272                                  
  8273 000042E7 FF76FE                   push word [bp-2]
  8274 000042EA E8C70C                   call pint1
  8275 000042ED 83C402                   add  sp, 2
  8276 000042F0 E869FB                   call stmt
  8277                                  
  8278                                  ;-805   if (istoken(T_ELSE)) { nlabel++; tst=nlabel;
  8279                                  
  8280 000042F3 680202                   push 514
  8281 000042F6 E86F0A                   call istoken
  8282 000042F9 83C402                   add  sp, 2
  8283 000042FC 08C0                     or  al, al
  8284 000042FE 0F842B00                 je @@doif451
  8285 00004302 FF06[4900]               inc  word [nlabel]
  8286 00004306 A1[4900]                 mov ax, [nlabel]
  8287 00004309 8946FC                   mov word [bp-4], ax
  8288                                  
  8289                                  ;-806     prjump(tst); prlabel(jdest); stmt(); prlabel(tst); }
  8290                                  
  8291 0000430C FF76FC                   push word [bp-4]
  8292 0000430F E897FF                   call prjump
  8293 00004312 83C402                   add  sp, 2
  8294 00004315 FF76FE                   push word [bp-2]
  8295 00004318 E85EFF                   call prlabel
  8296 0000431B 83C402                   add  sp, 2
  8297 0000431E E83BFB                   call stmt
  8298 00004321 FF76FC                   push word [bp-4]
  8299 00004324 E852FF                   call prlabel
  8300 00004327 83C402                   add  sp, 2
  8301                                  
  8302                                  ;-807   else prlabel(jdest); }
  8303                                  
  8304 0000432A E90900                   jmp @@doif452
  8305                                  @@doif451:
  8306 0000432D FF76FE                   push word [bp-2]
  8307 00004330 E846FF                   call prlabel
  8308 00004333 83C402                   add  sp, 2
  8309                                  @@doif452:
  8310                                  
  8311                                  ;-808 int doifcarry() {int jdest;  nlabel++; jdest=nlabel;
  8312 00004336 C9                       LEAVE
  8313 00004337 C3                       ret
  8314                                  ; ENDP
  8315                                  
  8316                                  doifcarry:  ; *** PROC ***
  8317                                  ;Function : doifcarry, Number of local variables: 1
  8318                                  ;   # type sign width line used address name   list of local variables
  8319                                  ;  200 var sign word   808 NULL bp-2    jdest;
  8320 00004338 C8020000                 ENTER  2,0
  8321 0000433C FF06[4900]               inc  word [nlabel]
  8322 00004340 A1[4900]                 mov ax, [nlabel]
  8323 00004343 8946FE                   mov word [bp-2], ax
  8324                                  
  8325                                  ;-809   prs("\n jae short @@");/*jnc*/ prs(fname);  pint1(jdest);
  8326                                  
  8327 00004346 68[7143]                 push doifcarry_0
  8328 00004349 E8620B                   call prs
  8329 0000434C 83C402                   add  sp, 2
  8330 0000434F 8D06EE81                 lea  ax, [fname]
  8331 00004353 50                       push ax
  8332 00004354 E8570B                   call prs
  8333 00004357 83C402                   add  sp, 2
  8334 0000435A FF76FE                   push word [bp-2]
  8335 0000435D E8540C                   call pint1
  8336 00004360 83C402                   add  sp, 2
  8337                                  
  8338                                  ;-810   stmt(); prlabel(jdest); }
  8339                                  
  8340 00004363 E8F6FA                   call stmt
  8341 00004366 FF76FE                   push word [bp-2]
  8342 00004369 E80DFF                   call prlabel
  8343 0000436C 83C402                   add  sp, 2
  8344                                  
  8345                                  ;-811 int doifzero() {int jdest;  nlabel++; jdest=nlabel;
  8346 0000436F C9                       LEAVE
  8347 00004370 C3                       ret
  8348                                  ; ENDP
  8349 00004371 5C6E206A6165207368-     doifcarry_0 db "\n jae short @@",0
  8350 0000437A 6F727420404000     
  8351                                  
  8352                                  doifzero:  ; *** PROC ***
  8353                                  ;Function : doifzero, Number of local variables: 1
  8354                                  ;   # type sign width line used address name   list of local variables
  8355                                  ;  200 var sign word   811 NULL bp-2    jdest;
  8356 00004381 C8020000                 ENTER  2,0
  8357 00004385 FF06[4900]               inc  word [nlabel]
  8358 00004389 A1[4900]                 mov ax, [nlabel]
  8359 0000438C 8946FE                   mov word [bp-2], ax
  8360                                  
  8361                                  ;-812   prs("\n jne short @@");        prs(fname);  pint1(jdest);
  8362                                  
  8363 0000438F 68[BA43]                 push doifzero_0
  8364 00004392 E8190B                   call prs
  8365 00004395 83C402                   add  sp, 2
  8366 00004398 8D06EE81                 lea  ax, [fname]
  8367 0000439C 50                       push ax
  8368 0000439D E80E0B                   call prs
  8369 000043A0 83C402                   add  sp, 2
  8370 000043A3 FF76FE                   push word [bp-2]
  8371 000043A6 E80B0C                   call pint1
  8372 000043A9 83C402                   add  sp, 2
  8373                                  
  8374                                  ;-813   stmt(); prlabel(jdest); }
  8375                                  
  8376 000043AC E8ADFA                   call stmt
  8377 000043AF FF76FE                   push word [bp-2]
  8378 000043B2 E8C4FE                   call prlabel
  8379 000043B5 83C402                   add  sp, 2
  8380                                  
  8381                                  ;-814 int dodo() {int jdest; int jtemp;
  8382 000043B8 C9                       LEAVE
  8383 000043B9 C3                       ret
  8384                                  ; ENDP
  8385 000043BA 5C6E206A6E65207368-     doifzero_0 db "\n jne short @@",0
  8386 000043C3 6F727420404000     
  8387                                  
  8388                                  dodo:  ; *** PROC ***
  8389                                  
  8390                                  ;-815   nlabel++; jdest=nlabel; prlabel(jdest); stmt();
  8391                                  
  8392                                  ;Function : dodo, Number of local variables: 2
  8393                                  ;   # type sign width line used address name   list of local variables
  8394                                  ;  200 var sign word   814 NULL bp-2    jdest
  8395                                  ;  201 var sign word   814 NULL bp-4    jtemp;
  8396 000043CA C8040000                 ENTER  4,0
  8397 000043CE FF06[4900]               inc  word [nlabel]
  8398 000043D2 A1[4900]                 mov ax, [nlabel]
  8399 000043D5 8946FE                   mov word [bp-2], ax
  8400 000043D8 FF76FE                   push word [bp-2]
  8401 000043DB E89BFE                   call prlabel
  8402 000043DE 83C402                   add  sp, 2
  8403 000043E1 E878FA                   call stmt
  8404                                  
  8405                                  ;-816   expect(T_WHILE); pexpr(); nlabel++; jtemp=nlabel; pint1(jtemp);
  8406                                  
  8407 000043E4 680302                   push 515
  8408 000043E7 E8A609                   call expect
  8409 000043EA 83C402                   add  sp, 2
  8410 000043ED E81ECE                   call pexpr
  8411 000043F0 FF06[4900]               inc  word [nlabel]
  8412 000043F4 A1[4900]                 mov ax, [nlabel]
  8413 000043F7 8946FC                   mov word [bp-4], ax
  8414 000043FA FF76FC                   push word [bp-4]
  8415 000043FD E8B40B                   call pint1
  8416 00004400 83C402                   add  sp, 2
  8417                                  
  8418                                  ;-817   prjump(jdest); prlabel(jtemp); }
  8419                                  
  8420 00004403 FF76FE                   push word [bp-2]
  8421 00004406 E8A0FE                   call prjump
  8422 00004409 83C402                   add  sp, 2
  8423 0000440C FF76FC                   push word [bp-4]
  8424 0000440F E867FE                   call prlabel
  8425 00004412 83C402                   add  sp, 2
  8426                                  
  8427                                  ;-818 int dowhile() {int jdest; int tst; nlabel++; jdest=nlabel;
  8428 00004415 C9                       LEAVE
  8429 00004416 C3                       ret
  8430                                  ; ENDP
  8431                                  
  8432                                  dowhile:  ; *** PROC ***
  8433                                  ;Function : dowhile, Number of local variables: 2
  8434                                  ;   # type sign width line used address name   list of local variables
  8435                                  ;  200 var sign word   818 NULL bp-2    jdest
  8436                                  ;  201 var sign word   818 NULL bp-4    tst;
  8437 00004417 C8040000                 ENTER  4,0
  8438 0000441B FF06[4900]               inc  word [nlabel]
  8439 0000441F A1[4900]                 mov ax, [nlabel]
  8440 00004422 8946FE                   mov word [bp-2], ax
  8441                                  
  8442                                  ;-819   prlabel(jdest); pexpr(); nlabel++; tst=nlabel; pint1(tst);
  8443                                  
  8444 00004425 FF76FE                   push word [bp-2]
  8445 00004428 E84EFE                   call prlabel
  8446 0000442B 83C402                   add  sp, 2
  8447 0000442E E8DDCD                   call pexpr
  8448 00004431 FF06[4900]               inc  word [nlabel]
  8449 00004435 A1[4900]                 mov ax, [nlabel]
  8450 00004438 8946FC                   mov word [bp-4], ax
  8451 0000443B FF76FC                   push word [bp-4]
  8452 0000443E E8730B                   call pint1
  8453 00004441 83C402                   add  sp, 2
  8454                                  
  8455                                  ;-820   stmt(); prjump(jdest); prlabel(tst); }
  8456                                  
  8457 00004444 E815FA                   call stmt
  8458 00004447 FF76FE                   push word [bp-2]
  8459 0000444A E85CFE                   call prjump
  8460 0000444D 83C402                   add  sp, 2
  8461 00004450 FF76FC                   push word [bp-4]
  8462 00004453 E823FE                   call prlabel
  8463 00004456 83C402                   add  sp, 2
  8464                                  
  8465                                  ;-821 int isrelational() {
  8466 00004459 C9                       LEAVE
  8467 0000445A C3                       ret
  8468                                  ; ENDP
  8469                                  
  8470                                  isrelational:  ; *** PROC ***
  8471                                  
  8472                                  ;-822   if (token==T_EQ) goto w; if (token==T_NE) goto w;
  8473                                  
  8474 0000445B A1[3D00]                 mov ax, [token]
  8475 0000445E 3D2603                   cmp ax, 806
  8476 00004461 0F850300                 jne @@isrelational453
  8477 00004465 E94A00                   jmp @@w
  8478                                  @@isrelational453:
  8479 00004468 A1[3D00]                 mov ax, [token]
  8480 0000446B 3D2703                   cmp ax, 807
  8481 0000446E 0F850300                 jne @@isrelational454
  8482 00004472 E93D00                   jmp @@w
  8483                                  
  8484                                  ;-823   if (token==T_LE) goto w; if (token==T_GE) goto w;
  8485                                  
  8486                                  @@isrelational454:
  8487 00004475 A1[3D00]                 mov ax, [token]
  8488 00004478 3D3803                   cmp ax, 824
  8489 0000447B 0F850300                 jne @@isrelational455
  8490 0000447F E93000                   jmp @@w
  8491                                  @@isrelational455:
  8492 00004482 A1[3D00]                 mov ax, [token]
  8493 00004485 3D2B03                   cmp ax, 811
  8494 00004488 0F850300                 jne @@isrelational456
  8495 0000448C E92300                   jmp @@w
  8496                                  
  8497                                  ;-824   if (token=='<' ) goto w; if (token=='>' ) goto w;
  8498                                  
  8499                                  @@isrelational456:
  8500 0000448F A1[3D00]                 mov ax, [token]
  8501 00004492 83F83C                   cmp ax, 60
  8502 00004495 0F850300                 jne @@isrelational457
  8503 00004499 E91600                   jmp @@w
  8504                                  @@isrelational457:
  8505 0000449C A1[3D00]                 mov ax, [token]
  8506 0000449F 83F83E                   cmp ax, 62
  8507 000044A2 0F850300                 jne @@isrelational458
  8508 000044A6 E90900                   jmp @@w
  8509                                  
  8510                                  ;-825   return 0;  w: iscmp=token; token=getlex(); return 1;}
  8511                                  
  8512                                  @@isrelational458:
  8513 000044A9 66B800000000             mov eax, 0
  8514 000044AF E91500                   jmp @@retn
  8515                                  @@w:
  8516 000044B2 A1[3D00]                 mov ax, [token]
  8517 000044B5 A3[4300]                 mov word [iscmp], ax
  8518 000044B8 E80D00                   call getlex
  8519 000044BB A3[3D00]                 mov word [token], ax
  8520 000044BE 66B801000000             mov eax, 1
  8521 000044C4 E90000                   jmp @@retn
  8522                                  
  8523                                  ;-826  
  8524                                  
  8525                                  
  8526                                  ;-827 char symboltemp[80];    
  8527                                  
  8528                                  @@retn:
  8529 000044C7 C3                       ret
  8530                                  ; ENDP
  8531                                  section .bss
  8532                                  absolute 46920
  8533 0000B748 <res 00000050>          symboltemp resb 80
  8534                                  section .text
  8535                                  
  8536                                  ;-828 int getlex() { char c; char *p; 
  8537                                  
  8538                                  
  8539                                  getlex:  ; *** PROC ***
  8540                                  
  8541                                  ;-829 g1: c=next(); if (c == 0) return 0; if (c <= ' ') goto g1;
  8542                                  
  8543                                  ;Function : getlex, Number of local variables: 2
  8544                                  ;   # type sign width line used address name   list of local variables
  8545                                  ;  200 var sign byte   828 NULL bp-2    c
  8546                                  ;  201 ptr sign byte   828 NULL bp-4    p;
  8547 000044C8 C8040000                 ENTER  4,0
  8548                                  @@g1:
  8549 000044CC E87B08                   call next
  8550 000044CF 8846FE                   mov byte [bp-2], al
  8551 000044D2 8A46FE                   mov al, [bp-2]
  8552 000044D5 3C00                     cmp al, 0
  8553 000044D7 0F850900                 jne @@getlex459
  8554 000044DB 66B800000000             mov eax, 0
  8555 000044E1 E90406                   jmp @@retn
  8556                                  @@getlex459:
  8557 000044E4 8A46FE                   mov al, [bp-2]
  8558 000044E7 3C20                     cmp al, 32
  8559 000044E9 0F8F0200                 jg  @@getlex460
  8560 000044ED EBDD                     jmp @@g1
  8561                                  
  8562                                  ;-830   if (c=='=') {if(thechar=='=') {next(); return T_EQ; }}
  8563                                  
  8564                                  @@getlex460:
  8565 000044EF 8A46FE                   mov al, [bp-2]
  8566 000044F2 3C3D                     cmp al, 61
  8567 000044F4 0F851500                 jne @@getlex461
  8568 000044F8 A0[4200]                 mov al, [thechar]
  8569 000044FB 3C3D                     cmp al, 61
  8570 000044FD 0F850C00                 jne @@getlex462
  8571 00004501 E84608                   call next
  8572 00004504 66B826030000             mov eax, 806
  8573 0000450A E9DB05                   jmp @@retn
  8574                                  @@getlex462:
  8575                                  
  8576                                  ;-831   if (c=='!') {if(thechar=='=') {next(); return T_NE; }}
  8577                                  
  8578                                  @@getlex461:
  8579 0000450D 8A46FE                   mov al, [bp-2]
  8580 00004510 3C21                     cmp al, 33
  8581 00004512 0F851500                 jne @@getlex463
  8582 00004516 A0[4200]                 mov al, [thechar]
  8583 00004519 3C3D                     cmp al, 61
  8584 0000451B 0F850C00                 jne @@getlex464
  8585 0000451F E82808                   call next
  8586 00004522 66B827030000             mov eax, 807
  8587 00004528 E9BD05                   jmp @@retn
  8588                                  @@getlex464:
  8589                                  
  8590                                  ;-832   if (c=='<') {if(thechar=='=') {next(); return T_LE; }}
  8591                                  
  8592                                  @@getlex463:
  8593 0000452B 8A46FE                   mov al, [bp-2]
  8594 0000452E 3C3C                     cmp al, 60
  8595 00004530 0F851500                 jne @@getlex465
  8596 00004534 A0[4200]                 mov al, [thechar]
  8597 00004537 3C3D                     cmp al, 61
  8598 00004539 0F850C00                 jne @@getlex466
  8599 0000453D E80A08                   call next
  8600 00004540 66B838030000             mov eax, 824
  8601 00004546 E99F05                   jmp @@retn
  8602                                  @@getlex466:
  8603                                  
  8604                                  ;-833   if (c=='>') {if(thechar=='=') {next(); return T_GE; }}
  8605                                  
  8606                                  @@getlex465:
  8607 00004549 8A46FE                   mov al, [bp-2]
  8608 0000454C 3C3E                     cmp al, 62
  8609 0000454E 0F851500                 jne @@getlex467
  8610 00004552 A0[4200]                 mov al, [thechar]
  8611 00004555 3C3D                     cmp al, 61
  8612 00004557 0F850C00                 jne @@getlex468
  8613 0000455B E8EC07                   call next
  8614 0000455E 66B82B030000             mov eax, 811
  8615 00004564 E98105                   jmp @@retn
  8616                                  @@getlex468:
  8617                                  
  8618                                  ;-834   if (c=='<') {if(thechar=='<') {next(); return T_LESSLESS;  }}
  8619                                  
  8620                                  @@getlex467:
  8621 00004567 8A46FE                   mov al, [bp-2]
  8622 0000456A 3C3C                     cmp al, 60
  8623 0000456C 0F851500                 jne @@getlex469
  8624 00004570 A0[4200]                 mov al, [thechar]
  8625 00004573 3C3C                     cmp al, 60
  8626 00004575 0F850C00                 jne @@getlex470
  8627 00004579 E8CE07                   call next
  8628 0000457C 66B8D8040000             mov eax, 1240
  8629 00004582 E96305                   jmp @@retn
  8630                                  @@getlex470:
  8631                                  
  8632                                  ;-835   if (c=='>') {if(thechar=='>') {next(); return T_GREATGREAT;}}
  8633                                  
  8634                                  @@getlex469:
  8635 00004585 8A46FE                   mov al, [bp-2]
  8636 00004588 3C3E                     cmp al, 62
  8637 0000458A 0F851500                 jne @@getlex471
  8638 0000458E A0[4200]                 mov al, [thechar]
  8639 00004591 3C3E                     cmp al, 62
  8640 00004593 0F850C00                 jne @@getlex472
  8641 00004597 E8B007                   call next
  8642 0000459A 66B8D9040000             mov eax, 1241
  8643 000045A0 E94505                   jmp @@retn
  8644                                  @@getlex472:
  8645                                  
  8646                                  ;-836   if (c=='+') {if(thechar=='+') {next(); return T_PLUSPLUS;  }}
  8647                                  
  8648                                  @@getlex471:
  8649 000045A3 8A46FE                   mov al, [bp-2]
  8650 000045A6 3C2B                     cmp al, 43
  8651 000045A8 0F851500                 jne @@getlex473
  8652 000045AC A0[4200]                 mov al, [thechar]
  8653 000045AF 3C2B                     cmp al, 43
  8654 000045B1 0F850C00                 jne @@getlex474
  8655 000045B5 E89207                   call next
  8656 000045B8 66B8C3040000             mov eax, 1219
  8657 000045BE E92705                   jmp @@retn
  8658                                  @@getlex474:
  8659                                  
  8660                                  ;-837   if (c=='-') {if(thechar=='-') {next(); return T_MINUSMINUS;}}
  8661                                  
  8662                                  @@getlex473:
  8663 000045C1 8A46FE                   mov al, [bp-2]
  8664 000045C4 3C2D                     cmp al, 45
  8665 000045C6 0F851500                 jne @@getlex475
  8666 000045CA A0[4200]                 mov al, [thechar]
  8667 000045CD 3C2D                     cmp al, 45
  8668 000045CF 0F850C00                 jne @@getlex476
  8669 000045D3 E87407                   call next
  8670 000045D6 66B8C9040000             mov eax, 1225
  8671 000045DC E90905                   jmp @@retn
  8672                                  @@getlex476:
  8673                                  
  8674                                  ;-838   if (c=='+') {if(thechar=='=') {next(); return T_PLUSASS;   }}
  8675                                  
  8676                                  @@getlex475:
  8677 000045DF 8A46FE                   mov al, [bp-2]
  8678 000045E2 3C2B                     cmp al, 43
  8679 000045E4 0F851500                 jne @@getlex477
  8680 000045E8 A0[4200]                 mov al, [thechar]
  8681 000045EB 3C3D                     cmp al, 61
  8682 000045ED 0F850C00                 jne @@getlex478
  8683 000045F1 E85607                   call next
  8684 000045F4 66B8CE040000             mov eax, 1230
  8685 000045FA E9EB04                   jmp @@retn
  8686                                  @@getlex478:
  8687                                  
  8688                                  ;-839   if (c=='-') {if(thechar=='=') {next(); return T_MINUSASS;  }}
  8689                                  
  8690                                  @@getlex477:
  8691 000045FD 8A46FE                   mov al, [bp-2]
  8692 00004600 3C2D                     cmp al, 45
  8693 00004602 0F851500                 jne @@getlex479
  8694 00004606 A0[4200]                 mov al, [thechar]
  8695 00004609 3C3D                     cmp al, 61
  8696 0000460B 0F850C00                 jne @@getlex480
  8697 0000460F E83807                   call next
  8698 00004612 66B8CF040000             mov eax, 1231
  8699 00004618 E9CD04                   jmp @@retn
  8700                                  @@getlex480:
  8701                                  
  8702                                  ;-840   if (c=='&') {if(thechar=='=') {next(); return T_ANDASS;    }}
  8703                                  
  8704                                  @@getlex479:
  8705 0000461B 8A46FE                   mov al, [bp-2]
  8706 0000461E 3C26                     cmp al, 38
  8707 00004620 0F851500                 jne @@getlex481
  8708 00004624 A0[4200]                 mov al, [thechar]
  8709 00004627 3C3D                     cmp al, 61
  8710 00004629 0F850C00                 jne @@getlex482
  8711 0000462D E81A07                   call next
  8712 00004630 66B8D2040000             mov eax, 1234
  8713 00004636 E9AF04                   jmp @@retn
  8714                                  @@getlex482:
  8715                                  
  8716                                  ;-841   if (c=='|') {if(thechar=='=') {next(); return T_ORASS;     }}    
  8717                                  
  8718                                  @@getlex481:
  8719 00004639 8A46FE                   mov al, [bp-2]
  8720 0000463C 3C7C                     cmp al, 124
  8721 0000463E 0F851500                 jne @@getlex483
  8722 00004642 A0[4200]                 mov al, [thechar]
  8723 00004645 3C3D                     cmp al, 61
  8724 00004647 0F850C00                 jne @@getlex484
  8725 0000464B E8FC06                   call next
  8726 0000464E 66B8D3040000             mov eax, 1235
  8727 00004654 E99104                   jmp @@retn
  8728                                  @@getlex484:
  8729                                  
  8730                                  ;-842   if (c=='*') {if(thechar=='=') {next(); return T_MULASS;    }}
  8731                                  
  8732                                  @@getlex483:
  8733 00004657 8A46FE                   mov al, [bp-2]
  8734 0000465A 3C2A                     cmp al, 42
  8735 0000465C 0F851500                 jne @@getlex485
  8736 00004660 A0[4200]                 mov al, [thechar]
  8737 00004663 3C3D                     cmp al, 61
  8738 00004665 0F850C00                 jne @@getlex486
  8739 00004669 E8DE06                   call next
  8740 0000466C 66B8D0040000             mov eax, 1232
  8741 00004672 E97304                   jmp @@retn
  8742                                  @@getlex486:
  8743                                  
  8744                                  ;-843   if (c=='/') {if(thechar=='=') {next(); return T_DIVASS;    }}        
  8745                                  
  8746                                  @@getlex485:
  8747 00004675 8A46FE                   mov al, [bp-2]
  8748 00004678 3C2F                     cmp al, 47
  8749 0000467A 0F851500                 jne @@getlex487
  8750 0000467E A0[4200]                 mov al, [thechar]
  8751 00004681 3C3D                     cmp al, 61
  8752 00004683 0F850C00                 jne @@getlex488
  8753 00004687 E8C006                   call next
  8754 0000468A 66B8D1040000             mov eax, 1233
  8755 00004690 E95504                   jmp @@retn
  8756                                  @@getlex488:
  8757                                  
  8758                                  ;-844   if (instr1("()[]{},;*:%-><=+!&|#?", c)) return c ;
  8759                                  
  8760                                  @@getlex487:
  8761 00004693 8A46FE                   mov al, byte [bp-2]
  8762 00004696 B400                     mov ah, 0
  8763 00004698 50                       push ax
  8764 00004699 68[EA4A]                 push getlex_0
  8765 0000469C E8421B                   call instr1
  8766 0000469F 83C404                   add  sp, 4
  8767 000046A2 08C0                     or  al, al
  8768 000046A4 0F840600                 je @@getlex489
  8769 000046A8 8A46FE                   mov al, [bp-2]
  8770 000046AB E93A04                   jmp @@retn
  8771                                  
  8772                                  ;-845   if (c == '/') { if (thechar == '/') {
  8773                                  
  8774                                  @@getlex489:
  8775 000046AE 8A46FE                   mov al, [bp-2]
  8776 000046B1 3C2F                     cmp al, 47
  8777 000046B3 0F852000                 jne @@getlex490
  8778 000046B7 A0[4200]                 mov al, [thechar]
  8779 000046BA 3C2F                     cmp al, 47
  8780 000046BC 0F851700                 jne @@getlex491
  8781                                  
  8782                                  ;-846       do c=next(); while(c != 13); /* c=next(); */ return getlex(); } }
  8783                                  
  8784                                  @@getlex492:
  8785 000046C0 E88706                   call next
  8786 000046C3 8846FE                   mov byte [bp-2], al
  8787 000046C6 8A46FE                   mov al, [bp-2]
  8788 000046C9 3C0D                     cmp al, 13
  8789 000046CB 0F840200                 je  @@getlex493
  8790 000046CF EBEF                     jmp @@getlex492
  8791                                  @@getlex493:
  8792 000046D1 E8F4FD                   call getlex
  8793 000046D4 E91104                   jmp @@retn
  8794                                  @@getlex491:
  8795                                  
  8796                                  ;-847   if (c == '/') { if (thechar == '*') {
  8797                                  
  8798                                  @@getlex490:
  8799 000046D7 8A46FE                   mov al, [bp-2]
  8800 000046DA 3C2F                     cmp al, 47
  8801 000046DC 0F853D00                 jne @@getlex494
  8802 000046E0 A0[4200]                 mov al, [thechar]
  8803 000046E3 3C2A                     cmp al, 42
  8804 000046E5 0F852B00                 jne @@getlex495
  8805                                  
  8806                                  ;-848       g2: c=next(); if (c != '*') goto g2; if (thechar != '/') goto g2;
  8807                                  
  8808                                  @@g2:
  8809 000046E9 E85E06                   call next
  8810 000046EC 8846FE                   mov byte [bp-2], al
  8811 000046EF 8A46FE                   mov al, [bp-2]
  8812 000046F2 3C2A                     cmp al, 42
  8813 000046F4 0F840200                 je  @@getlex496
  8814 000046F8 EBEF                     jmp @@g2
  8815                                  @@getlex496:
  8816 000046FA A0[4200]                 mov al, [thechar]
  8817 000046FD 3C2F                     cmp al, 47
  8818 000046FF 0F840200                 je  @@getlex497
  8819 00004703 EBE4                     jmp @@g2
  8820                                  
  8821                                  ;-849       c=next(); return getlex(); } else  return '/'; }
  8822                                  
  8823                                  @@getlex497:
  8824 00004705 E84206                   call next
  8825 00004708 8846FE                   mov byte [bp-2], al
  8826 0000470B E8BAFD                   call getlex
  8827 0000470E E9D703                   jmp @@retn
  8828 00004711 E90900                   jmp @@getlex498
  8829                                  @@getlex495:
  8830 00004714 66B82F000000             mov eax, 47
  8831 0000471A E9CB03                   jmp @@retn
  8832                                  @@getlex498:
  8833                                  
  8834                                  ;-850   if (c == '"') {getstring(c); return T_STRING;}
  8835                                  
  8836                                  @@getlex494:
  8837 0000471D 8A46FE                   mov al, [bp-2]
  8838 00004720 3C22                     cmp al, 34
  8839 00004722 0F851500                 jne @@getlex499
  8840 00004726 8A46FE                   mov al, byte [bp-2]
  8841 00004729 B400                     mov ah, 0
  8842 0000472B 50                       push ax
  8843 0000472C E8E105                   call getstring
  8844 0000472F 83C402                   add  sp, 2
  8845 00004732 66B802010000             mov eax, 258
  8846 00004738 E9AD03                   jmp @@retn
  8847                                  
  8848                                  ;-851   if (digit(c)) { getdigit(c); return T_CONST; }
  8849                                  
  8850                                  @@getlex499:
  8851 0000473B 8A46FE                   mov al, byte [bp-2]
  8852 0000473E B400                     mov ah, 0
  8853 00004740 50                       push ax
  8854 00004741 E80A1B                   call digit
  8855 00004744 83C402                   add  sp, 2
  8856 00004747 08C0                     or  al, al
  8857 00004749 0F841500                 je @@getlex500
  8858 0000474D 8A46FE                   mov al, byte [bp-2]
  8859 00004750 B400                     mov ah, 0
  8860 00004752 50                       push ax
  8861 00004753 E8CC04                   call getdigit
  8862 00004756 83C402                   add  sp, 2
  8863 00004759 66B801010000             mov eax, 257
  8864 0000475F E98603                   jmp @@retn
  8865                                  
  8866                                  ;-852   if (c==39) { lexvalL=next();
  8867                                  
  8868                                  @@getlex500:
  8869 00004762 8A46FE                   mov al, [bp-2]
  8870 00004765 3C27                     cmp al, 39
  8871 00004767 0F856800                 jne @@getlex501
  8872 0000476B E8DC05                   call next
  8873 0000476E 66A3[4D00]               mov dword [lexvalL], eax
  8874                                  
  8875                                  ;-853     if (lexvalL==92) {lexvalL=next();
  8876                                  
  8877 00004772 66A1[4D00]               mov eax, [lexvalL]
  8878 00004776 6683F85C                 cmp eax, 92
  8879 0000477A 0F854900                 jne @@getlex502
  8880 0000477E E8C905                   call next
  8881 00004781 66A3[4D00]               mov dword [lexvalL], eax
  8882                                  
  8883                                  ;-854       if (lexvalL=='n') lexvalL=10; if (lexvalL=='t') lexvalL= 9;
  8884                                  
  8885 00004785 66A1[4D00]               mov eax, [lexvalL]
  8886 00004789 6683F86E                 cmp eax, 110
  8887 0000478D 0F850A00                 jne @@getlex503
  8888 00004791 66B80A000000             mov eax, 10
  8889 00004797 66A3[4D00]               mov dword [lexvalL], eax
  8890                                  @@getlex503:
  8891 0000479B 66A1[4D00]               mov eax, [lexvalL]
  8892 0000479F 6683F874                 cmp eax, 116
  8893 000047A3 0F850A00                 jne @@getlex504
  8894 000047A7 66B809000000             mov eax, 9
  8895 000047AD 66A3[4D00]               mov dword [lexvalL], eax
  8896                                  
  8897                                  ;-855       if (lexvalL=='0') lexvalL= 0; } next(); return T_CONST; }
  8898                                  
  8899                                  @@getlex504:
  8900 000047B1 66A1[4D00]               mov eax, [lexvalL]
  8901 000047B5 6683F830                 cmp eax, 48
  8902 000047B9 0F850A00                 jne @@getlex505
  8903 000047BD 66B800000000             mov eax, 0
  8904 000047C3 66A3[4D00]               mov dword [lexvalL], eax
  8905                                  @@getlex505:
  8906                                  @@getlex502:
  8907 000047C7 E88005                   call next
  8908 000047CA 66B801010000             mov eax, 257
  8909 000047D0 E91503                   jmp @@retn
  8910                                  
  8911                                  ;-856   if (letter(c)) { 
  8912                                  
  8913                                  @@getlex501:
  8914 000047D3 8A46FE                   mov al, byte [bp-2]
  8915 000047D6 B400                     mov ah, 0
  8916 000047D8 50                       push ax
  8917 000047D9 E8A51A                   call letter
  8918 000047DC 83C402                   add  sp, 2
  8919 000047DF 08C0                     or  al, al
  8920 000047E1 0F84FA02                 je @@getlex506
  8921                                  
  8922                                  ;-857     strcpy(symboltemp, symbol); p=&symbol;  *p=c;  p++;
  8923                                  
  8924 000047E5 8D066E81                 lea  ax, [symbol]
  8925 000047E9 50                       push ax
  8926 000047EA 8D0648B7                 lea  ax, [symboltemp]
  8927 000047EE 50                       push ax
  8928 000047EF E8B619                   call strcpy
  8929 000047F2 83C404                   add  sp, 4
  8930 000047F5 B86E81                   mov ax, symbol
  8931 000047F8 8946FC                   mov word [bp-4], ax
  8932 000047FB 8A46FE                   mov al, [bp-2]
  8933 000047FE 8B5EFC                   mov  bx, [bp-4]
  8934 00004801 8807                     mov  [bx], al
  8935 00004803 FF46FC                   inc  word [bp-4]
  8936                                  
  8937                                  ;-858     while(letter(thechar)) {c=next(); *p=c;  p++; } 
  8938                                  
  8939                                  @@getlex507:
  8940 00004806 A0[4200]                 mov al, byte [thechar]
  8941 00004809 B400                     mov ah, 0
  8942 0000480B 50                       push ax
  8943 0000480C E8721A                   call letter
  8944 0000480F 83C402                   add  sp, 2
  8945 00004812 08C0                     or  al, al
  8946 00004814 0F841300                 je @@getlex508
  8947 00004818 E82F05                   call next
  8948 0000481B 8846FE                   mov byte [bp-2], al
  8949 0000481E 8A46FE                   mov al, [bp-2]
  8950 00004821 8B5EFC                   mov  bx, [bp-4]
  8951 00004824 8807                     mov  [bx], al
  8952 00004826 FF46FC                   inc  word [bp-4]
  8953                                  
  8954                                  ;-859       *p=0;
  8955                                  
  8956 00004829 EBDB                     jmp @@getlex507
  8957                                  @@getlex508:
  8958 0000482B 66B800000000             mov eax, 0
  8959 00004831 8B5EFC                   mov  bx, [bp-4]
  8960 00004834 8807                     mov  [bx], al
  8961                                  
  8962                                  ;-860     if (eqstr(symbol,"signed"  )) return T_SIGNED;
  8963                                  
  8964 00004836 68[004B]                 push getlex_1
  8965 00004839 8D066E81                 lea  ax, [symbol]
  8966 0000483D 50                       push ax
  8967 0000483E E8BB1A                   call eqstr
  8968 00004841 83C404                   add  sp, 4
  8969 00004844 08C0                     or  al, al
  8970 00004846 0F840900                 je @@getlex509
  8971 0000484A 66B813020000             mov eax, 531
  8972 00004850 E99502                   jmp @@retn
  8973                                  
  8974                                  ;-861     if (eqstr(symbol,"unsigned")) return T_UNSIGNED;
  8975                                  
  8976                                  @@getlex509:
  8977 00004853 68[074B]                 push getlex_2
  8978 00004856 8D066E81                 lea  ax, [symbol]
  8979 0000485A 50                       push ax
  8980 0000485B E89E1A                   call eqstr
  8981 0000485E 83C404                   add  sp, 4
  8982 00004861 08C0                     or  al, al
  8983 00004863 0F840900                 je @@getlex510
  8984 00004867 66B814020000             mov eax, 532
  8985 0000486D E97802                   jmp @@retn
  8986                                  
  8987                                  ;-862     if (eqstr(symbol,"void"    )) return T_VOID;
  8988                                  
  8989                                  @@getlex510:
  8990 00004870 68[104B]                 push getlex_3
  8991 00004873 8D066E81                 lea  ax, [symbol]
  8992 00004877 50                       push ax
  8993 00004878 E8811A                   call eqstr
  8994 0000487B 83C404                   add  sp, 4
  8995 0000487E 08C0                     or  al, al
  8996 00004880 0F840900                 je @@getlex511
  8997 00004884 66B811020000             mov eax, 529
  8998 0000488A E95B02                   jmp @@retn
  8999                                  
  9000                                  ;-863     if (eqstr(symbol,"int"     )) return T_INT;
  9001                                  
  9002                                  @@getlex511:
  9003 0000488D 68[154B]                 push getlex_4
  9004 00004890 8D066E81                 lea  ax, [symbol]
  9005 00004894 50                       push ax
  9006 00004895 E8641A                   call eqstr
  9007 00004898 83C404                   add  sp, 4
  9008 0000489B 08C0                     or  al, al
  9009 0000489D 0F840900                 je @@getlex512
  9010 000048A1 66B805020000             mov eax, 517
  9011 000048A7 E93E02                   jmp @@retn
  9012                                  
  9013                                  ;-864     if (eqstr(symbol,"short"   )) return T_SHORT;
  9014                                  
  9015                                  @@getlex512:
  9016 000048AA 68[194B]                 push getlex_5
  9017 000048AD 8D066E81                 lea  ax, [symbol]
  9018 000048B1 50                       push ax
  9019 000048B2 E8471A                   call eqstr
  9020 000048B5 83C404                   add  sp, 4
  9021 000048B8 08C0                     or  al, al
  9022 000048BA 0F840900                 je @@getlex513
  9023 000048BE 66B816020000             mov eax, 534
  9024 000048C4 E92102                   jmp @@retn
  9025                                  
  9026                                  ;-865     if (eqstr(symbol,"long"    )) return T_LONG;
  9027                                  
  9028                                  @@getlex513:
  9029 000048C7 68[1F4B]                 push getlex_6
  9030 000048CA 8D066E81                 lea  ax, [symbol]
  9031 000048CE 50                       push ax
  9032 000048CF E82A1A                   call eqstr
  9033 000048D2 83C404                   add  sp, 4
  9034 000048D5 08C0                     or  al, al
  9035 000048D7 0F840900                 je @@getlex514
  9036 000048DB 66B815020000             mov eax, 533
  9037 000048E1 E90402                   jmp @@retn
  9038                                  
  9039                                  ;-866     if (eqstr(symbol,"uint32"  )) return T_UINT32;
  9040                                  
  9041                                  @@getlex514:
  9042 000048E4 68[244B]                 push getlex_7
  9043 000048E7 8D066E81                 lea  ax, [symbol]
  9044 000048EB 50                       push ax
  9045 000048EC E80D1A                   call eqstr
  9046 000048EF 83C404                   add  sp, 4
  9047 000048F2 08C0                     or  al, al
  9048 000048F4 0F840900                 je @@getlex515
  9049 000048F8 66B821020000             mov eax, 545
  9050 000048FE E9E701                   jmp @@retn
  9051                                  
  9052                                  ;-867     if (eqstr(symbol,"inth"    )) return T_INTH;
  9053                                  
  9054                                  @@getlex515:
  9055 00004901 68[2B4B]                 push getlex_8
  9056 00004904 8D066E81                 lea  ax, [symbol]
  9057 00004908 50                       push ax
  9058 00004909 E8F019                   call eqstr
  9059 0000490C 83C404                   add  sp, 4
  9060 0000490F 08C0                     or  al, al
  9061 00004911 0F840900                 je @@getlex516
  9062 00004915 66B858020000             mov eax, 600
  9063 0000491B E9CA01                   jmp @@retn
  9064                                  
  9065                                  ;-868     if (eqstr(symbol,"char"    )) return T_CHAR;
  9066                                  
  9067                                  @@getlex516:
  9068 0000491E 68[304B]                 push getlex_9
  9069 00004921 8D066E81                 lea  ax, [symbol]
  9070 00004925 50                       push ax
  9071 00004926 E8D319                   call eqstr
  9072 00004929 83C404                   add  sp, 4
  9073 0000492C 08C0                     or  al, al
  9074 0000492E 0F840900                 je @@getlex517
  9075 00004932 66B812020000             mov eax, 530
  9076 00004938 E9AD01                   jmp @@retn
  9077                                  
  9078                                  ;-869     if (eqstr(symbol,"asm"     )) return T_ASM;
  9079                                  
  9080                                  @@getlex517:
  9081 0000493B 68[354B]                 push getlex_10
  9082 0000493E 8D066E81                 lea  ax, [symbol]
  9083 00004942 50                       push ax
  9084 00004943 E8B619                   call eqstr
  9085 00004946 83C404                   add  sp, 4
  9086 00004949 08C0                     or  al, al
  9087 0000494B 0F840900                 je @@getlex518
  9088 0000494F 66B806020000             mov eax, 518
  9089 00004955 E99001                   jmp @@retn
  9090                                  
  9091                                  ;-870     if (eqstr(symbol,"__asm"   )) return T_ASMBLOCK;
  9092                                  
  9093                                  @@getlex518:
  9094 00004958 68[394B]                 push getlex_11
  9095 0000495B 8D066E81                 lea  ax, [symbol]
  9096 0000495F 50                       push ax
  9097 00004960 E89919                   call eqstr
  9098 00004963 83C404                   add  sp, 4
  9099 00004966 08C0                     or  al, al
  9100 00004968 0F840900                 je @@getlex519
  9101 0000496C 66B807020000             mov eax, 519
  9102 00004972 E97301                   jmp @@retn
  9103                                  
  9104                                  ;-871     if (eqstr(symbol,"__emit__")) return T_EMIT;
  9105                                  
  9106                                  @@getlex519:
  9107 00004975 68[3F4B]                 push getlex_12
  9108 00004978 8D066E81                 lea  ax, [symbol]
  9109 0000497C 50                       push ax
  9110 0000497D E87C19                   call eqstr
  9111 00004980 83C404                   add  sp, 4
  9112 00004983 08C0                     or  al, al
  9113 00004985 0F840900                 je @@getlex520
  9114 00004989 66B808020000             mov eax, 520
  9115 0000498F E95601                   jmp @@retn
  9116                                  
  9117                                  ;-872     if (eqstr(symbol,"return"  )) return T_RETURN;
  9118                                  
  9119                                  @@getlex520:
  9120 00004992 68[484B]                 push getlex_13
  9121 00004995 8D066E81                 lea  ax, [symbol]
  9122 00004999 50                       push ax
  9123 0000499A E85F19                   call eqstr
  9124 0000499D 83C404                   add  sp, 4
  9125 000049A0 08C0                     or  al, al
  9126 000049A2 0F840900                 je @@getlex521
  9127 000049A6 66B800020000             mov eax, 512
  9128 000049AC E93901                   jmp @@retn
  9129                                  
  9130                                  ;-873     if (eqstr(symbol,"if"      )) return T_IF;
  9131                                  
  9132                                  @@getlex521:
  9133 000049AF 68[4F4B]                 push getlex_14
  9134 000049B2 8D066E81                 lea  ax, [symbol]
  9135 000049B6 50                       push ax
  9136 000049B7 E84219                   call eqstr
  9137 000049BA 83C404                   add  sp, 4
  9138 000049BD 08C0                     or  al, al
  9139 000049BF 0F840900                 je @@getlex522
  9140 000049C3 66B801020000             mov eax, 513
  9141 000049C9 E91C01                   jmp @@retn
  9142                                  
  9143                                  ;-874     if (eqstr(symbol,"ifcarry" )) return T_IFCARRY;
  9144                                  
  9145                                  @@getlex522:
  9146 000049CC 68[524B]                 push getlex_15
  9147 000049CF 8D066E81                 lea  ax, [symbol]
  9148 000049D3 50                       push ax
  9149 000049D4 E82519                   call eqstr
  9150 000049D7 83C404                   add  sp, 4
  9151 000049DA 08C0                     or  al, al
  9152 000049DC 0F840900                 je @@getlex523
  9153 000049E0 66B859020000             mov eax, 601
  9154 000049E6 E9FF00                   jmp @@retn
  9155                                  
  9156                                  ;-875     if (eqstr(symbol,"ifzero"  )) return T_IFZERO;
  9157                                  
  9158                                  @@getlex523:
  9159 000049E9 68[5A4B]                 push getlex_16
  9160 000049EC 8D066E81                 lea  ax, [symbol]
  9161 000049F0 50                       push ax
  9162 000049F1 E80819                   call eqstr
  9163 000049F4 83C404                   add  sp, 4
  9164 000049F7 08C0                     or  al, al
  9165 000049F9 0F840900                 je @@getlex524
  9166 000049FD 66B85A020000             mov eax, 602
  9167 00004A03 E9E200                   jmp @@retn
  9168                                  
  9169                                  ;-876     if (eqstr(symbol,"else"    )) return T_ELSE;
  9170                                  
  9171                                  @@getlex524:
  9172 00004A06 68[614B]                 push getlex_17
  9173 00004A09 8D066E81                 lea  ax, [symbol]
  9174 00004A0D 50                       push ax
  9175 00004A0E E8EB18                   call eqstr
  9176 00004A11 83C404                   add  sp, 4
  9177 00004A14 08C0                     or  al, al
  9178 00004A16 0F840900                 je @@getlex525
  9179 00004A1A 66B802020000             mov eax, 514
  9180 00004A20 E9C500                   jmp @@retn
  9181                                  
  9182                                  ;-877     if (eqstr(symbol,"while"   )) return T_WHILE;
  9183                                  
  9184                                  @@getlex525:
  9185 00004A23 68[664B]                 push getlex_18
  9186 00004A26 8D066E81                 lea  ax, [symbol]
  9187 00004A2A 50                       push ax
  9188 00004A2B E8CE18                   call eqstr
  9189 00004A2E 83C404                   add  sp, 4
  9190 00004A31 08C0                     or  al, al
  9191 00004A33 0F840900                 je @@getlex526
  9192 00004A37 66B803020000             mov eax, 515
  9193 00004A3D E9A800                   jmp @@retn
  9194                                  
  9195                                  ;-878     if (eqstr(symbol,"do"      )) return T_DO;
  9196                                  
  9197                                  @@getlex526:
  9198 00004A40 68[6C4B]                 push getlex_19
  9199 00004A43 8D066E81                 lea  ax, [symbol]
  9200 00004A47 50                       push ax
  9201 00004A48 E8B118                   call eqstr
  9202 00004A4B 83C404                   add  sp, 4
  9203 00004A4E 08C0                     or  al, al
  9204 00004A50 0F840900                 je @@getlex527
  9205 00004A54 66B804020000             mov eax, 516
  9206 00004A5A E98B00                   jmp @@retn
  9207                                  
  9208                                  ;-879     if (eqstr(symbol,"goto"    )) return T_GOTO;
  9209                                  
  9210                                  @@getlex527:
  9211 00004A5D 68[6F4B]                 push getlex_20
  9212 00004A60 8D066E81                 lea  ax, [symbol]
  9213 00004A64 50                       push ax
  9214 00004A65 E89418                   call eqstr
  9215 00004A68 83C404                   add  sp, 4
  9216 00004A6B 08C0                     or  al, al
  9217 00004A6D 0F840900                 je @@getlex528
  9218 00004A71 66B809020000             mov eax, 521
  9219 00004A77 E96E00                   jmp @@retn
  9220                                  
  9221                                  ;-880     if (eqstr(symbol,"define"  )) return T_DEFINE;   
  9222                                  
  9223                                  @@getlex528:
  9224 00004A7A 68[744B]                 push getlex_21
  9225 00004A7D 8D066E81                 lea  ax, [symbol]
  9226 00004A81 50                       push ax
  9227 00004A82 E87718                   call eqstr
  9228 00004A85 83C404                   add  sp, 4
  9229 00004A88 08C0                     or  al, al
  9230 00004A8A 0F840900                 je @@getlex529
  9231 00004A8E 66B8FF010000             mov eax, 511
  9232 00004A94 E95100                   jmp @@retn
  9233                                  
  9234                                  ;-881     if (eqstr(symbol,"include" )) return T_INCLUDE;   
  9235                                  
  9236                                  @@getlex529:
  9237 00004A97 68[7B4B]                 push getlex_22
  9238 00004A9A 8D066E81                 lea  ax, [symbol]
  9239 00004A9E 50                       push ax
  9240 00004A9F E85A18                   call eqstr
  9241 00004AA2 83C404                   add  sp, 4
  9242 00004AA5 08C0                     or  al, al
  9243 00004AA7 0F840900                 je @@getlex530
  9244 00004AAB 66B8FE010000             mov eax, 510
  9245 00004AB1 E93400                   jmp @@retn
  9246                                  
  9247                                  ;-882     if (convertdefine() ) {strcpy(symbol, symboltemp); return T_CONST;}
  9248                                  
  9249                                  @@getlex530:
  9250 00004AB4 E8E600                   call convertdefine
  9251 00004AB7 08C0                     or  al, al
  9252 00004AB9 0F841900                 je @@getlex531
  9253 00004ABD 8D0648B7                 lea  ax, [symboltemp]
  9254 00004AC1 50                       push ax
  9255 00004AC2 8D066E81                 lea  ax, [symbol]
  9256 00004AC6 50                       push ax
  9257 00004AC7 E8DE16                   call strcpy
  9258 00004ACA 83C404                   add  sp, 4
  9259 00004ACD 66B801010000             mov eax, 257
  9260 00004AD3 E91200                   jmp @@retn
  9261                                  
  9262                                  ;-883     return T_NAME; } error1("Input item not recognized"); }
  9263                                  
  9264                                  @@getlex531:
  9265 00004AD6 66B800010000             mov eax, 256
  9266 00004ADC E90900                   jmp @@retn
  9267                                  @@getlex506:
  9268 00004ADF 68[834B]                 push getlex_23
  9269 00004AE2 E8CA06                   call error1
  9270 00004AE5 83C402                   add  sp, 2
  9271                                  
  9272                                  ;-884 
  9273                                  
  9274                                  
  9275                                  ;-885 int convertdefine() { int i; int j;   i=0;
  9276                                  
  9277 00004AE8 C9                      @@retn: LEAVE
  9278 00004AE9 C3                       ret
  9279                                  ; ENDP
  9280 00004AEA 28295B5D7B7D2C3B2A-     getlex_0 db "()[]{},;*:%-><=+!&|#?",0
  9281 00004AF3 3A252D3E3C3D2B2126-
  9282 00004AFC 7C233F00           
  9283 00004B00 7369676E656400          getlex_1 db "signed",0
  9284 00004B07 756E7369676E656400      getlex_2 db "unsigned",0
  9285 00004B10 766F696400              getlex_3 db "void",0
  9286 00004B15 696E7400                getlex_4 db "int",0
  9287 00004B19 73686F727400            getlex_5 db "short",0
  9288 00004B1F 6C6F6E6700              getlex_6 db "long",0
  9289 00004B24 75696E74333200          getlex_7 db "uint32",0
  9290 00004B2B 696E746800              getlex_8 db "inth",0
  9291 00004B30 6368617200              getlex_9 db "char",0
  9292 00004B35 61736D00                getlex_10 db "asm",0
  9293 00004B39 5F5F61736D00            getlex_11 db "__asm",0
  9294 00004B3F 5F5F656D69745F5F00      getlex_12 db "__emit__",0
  9295 00004B48 72657475726E00          getlex_13 db "return",0
  9296 00004B4F 696600                  getlex_14 db "if",0
  9297 00004B52 6966636172727900        getlex_15 db "ifcarry",0
  9298 00004B5A 69667A65726F00          getlex_16 db "ifzero",0
  9299 00004B61 656C736500              getlex_17 db "else",0
  9300 00004B66 7768696C6500            getlex_18 db "while",0
  9301 00004B6C 646F00                  getlex_19 db "do",0
  9302 00004B6F 676F746F00              getlex_20 db "goto",0
  9303 00004B74 646566696E6500          getlex_21 db "define",0
  9304 00004B7B 696E636C75646500        getlex_22 db "include",0
  9305 00004B83 496E70757420697465-     getlex_23 db "Input item not recognized",0
  9306 00004B8C 6D206E6F7420726563-
  9307 00004B95 6F676E697A656400   
  9308                                  
  9309                                  convertdefine:  ; *** PROC ***
  9310                                  ;Function : convertdefine, Number of local variables: 2
  9311                                  ;   # type sign width line used address name   list of local variables
  9312                                  ;  200 var sign word   885 NULL bp-2    i
  9313                                  ;  201 var sign word   885 NULL bp-4    j;
  9314 00004B9D C8040000                 ENTER  4,0
  9315 00004BA1 66B800000000             mov eax, 0
  9316 00004BA7 8946FE                   mov word [bp-2], ax
  9317                                  
  9318                                  ;-886   while (i < GTop) {  j=GName[i]; from_far(NA, j);
  9319                                  
  9320                                  @@convertdefine532:
  9321 00004BAA 8B46FE                   mov ax, [bp-2]
  9322 00004BAD 3B06[5E00]               cmp ax, [GTop]
  9323 00004BB1 0F8D6200                 jge @@convertdefine533
  9324 00004BB5 8B5EFE                   mov bx, [bp-2]
  9325 00004BB8 D1E3                     shl bx, 1
  9326 00004BBA 8B874B94                 mov ax, [GName + bx]
  9327 00004BBE 8946FC                   mov word [bp-4], ax
  9328 00004BC1 FF76FC                   push word [bp-4]
  9329 00004BC4 8D06[7200]               lea  ax, [NA]
  9330 00004BC8 50                       push ax
  9331 00004BC9 E8D912                   call from_far
  9332 00004BCC 83C404                   add  sp, 4
  9333                                  
  9334                                  ;-887    if (eqstr(symbol, NA)) { if (GType[i]=='#') { lexvalL=GData[i];
  9335                                  
  9336 00004BCF 8D06[7200]               lea  ax, [NA]
  9337 00004BD3 50                       push ax
  9338 00004BD4 8D066E81                 lea  ax, [symbol]
  9339 00004BD8 50                       push ax
  9340 00004BD9 E82017                   call eqstr
  9341 00004BDC 83C404                   add  sp, 4
  9342 00004BDF 08C0                     or  al, al
  9343 00004BE1 0F842D00                 je @@convertdefine534
  9344 00004BE5 8B5EFE                   mov bx, [bp-2]
  9345 00004BE8 8A87B782                 mov al, [GType + bx]
  9346 00004BEC 3C23                     cmp al, 35
  9347 00004BEE 0F852000                 jne @@convertdefine535
  9348 00004BF2 8B5EFE                   mov bx, [bp-2]
  9349 00004BF5 C1E302                   shl bx, 2
  9350 00004BF8 668B87EB8A               mov eax, [GData + bx]
  9351 00004BFD 66A3[4D00]               mov dword [lexvalL], eax
  9352                                  
  9353                                  ;-888      eax=lexvalL; _ lexvalL=eax;   return T_CONST; } }      i++; }
  9354                                  
  9355 00004C01 66A1[4D00]               mov  eax, [lexvalL]
  9356 00004C05 66A3[4D00]              mov [lexvalL], eax
  9357 00004C09 66B801010000             mov eax, 257
  9358 00004C0F E90E00                   jmp @@retn
  9359                                  @@convertdefine535:
  9360                                  @@convertdefine534:
  9361 00004C12 FF46FE                   inc  word [bp-2]
  9362                                  
  9363                                  ;-889    return 0;
  9364                                  
  9365 00004C15 EB93                     jmp @@convertdefine532
  9366                                  @@convertdefine533:
  9367 00004C17 66B800000000             mov eax, 0
  9368 00004C1D E90000                   jmp @@retn
  9369                                  
  9370                                  ;-890 }
  9371                                  
  9372                                  
  9373                                  ;-891 long getdigit(unsigned char c) { unsigned long L;
  9374                                  
  9375 00004C20 C9                      @@retn: LEAVE
  9376 00004C21 C3                       ret
  9377                                  ; ENDP
  9378                                  
  9379                                  getdigit:  ; *** PROC ***
  9380                                  
  9381                                  ;-892     _ lexvalL=0;    c-='0';
  9382                                  
  9383                                  ;Function : getdigit, Number of local variables: 2
  9384                                  ;   # type sign width line used address name   list of local variables
  9385                                  ;  200 var unsg byte   891 NULL bp+4    c
  9386                                  ;  201 var unsg dwrd   891 NULL bp-4    L;
  9387 00004C22 C8040000                 ENTER  4,0
  9388 00004C26 66C706[4D00]000000-     mov dword [lexvalL], 0
  9389 00004C2E 00                 
  9390 00004C2F 806E0430                 sub  byte [bp+4], 48
  9391                                  
  9392                                  ;-893     eax=c;/* cast B2L */  _ lexvalL=eax;
  9393                                  
  9394 00004C33 660FB64604               movzx  eax, byte [bp+4]
  9395 00004C38 66A3[4D00]              mov [lexvalL], eax
  9396                                  
  9397                                  ;-894     if (thechar=='x') thechar='X';
  9398                                  
  9399 00004C3C A0[4200]                 mov al, [thechar]
  9400 00004C3F 3C78                     cmp al, 120
  9401 00004C41 0F850900                 jne @@getdigit536
  9402 00004C45 66B858000000             mov eax, 88
  9403 00004C4B A2[4200]                 mov byte [thechar], al
  9404                                  
  9405                                  ;-895     if (thechar=='X') { next();
  9406                                  
  9407                                  @@getdigit536:
  9408 00004C4E A0[4200]                 mov al, [thechar]
  9409 00004C51 3C58                     cmp al, 88
  9410 00004C53 0F855D00                 jne @@getdigit537
  9411 00004C57 E8F000                   call next
  9412                                  
  9413                                  ;-896       while(letter(thechar)) { c=next(); if(_ c>96) c-=39;
  9414                                  
  9415                                  @@getdigit538:
  9416 00004C5A A0[4200]                 mov al, byte [thechar]
  9417 00004C5D B400                     mov ah, 0
  9418 00004C5F 50                       push ax
  9419 00004C60 E81E16                   call letter
  9420 00004C63 83C402                   add  sp, 2
  9421 00004C66 08C0                     or  al, al
  9422 00004C68 0F844500                 je @@getdigit539
  9423 00004C6C E8DB00                   call next
  9424 00004C6F 884604                   mov byte [bp+4], al
  9425 00004C72 807E0460                cmp byte [bp+4], 96
  9426 00004C76 0F8E0400                 jle @@getdigit540
  9427 00004C7A 806E0427                 sub  byte [bp+4], 39
  9428                                  
  9429                                  ;-897 	      if (_ c>64) c-=7; c-=48; lexvalL=lexvalL << 4; // * 16
  9430                                  
  9431                                  @@getdigit540:
  9432 00004C7E 807E0440                cmp byte [bp+4], 64
  9433 00004C82 0F8E0400                 jle @@getdigit541
  9434 00004C86 806E0407                 sub  byte [bp+4], 7
  9435                                  @@getdigit541:
  9436 00004C8A 806E0430                 sub  byte [bp+4], 48
  9437 00004C8E 66A1[4D00]               mov eax, [lexvalL]
  9438 00004C92 66C1E004                 shl eax, 4
  9439 00004C96 66A3[4D00]               mov dword [lexvalL], eax
  9440                                  
  9441                                  ;-898     eax=c;/* cast B2L */  _ L=eax;  lexvalL=lexvalL+L; } }
  9442                                  
  9443 00004C9A 660FB64604               movzx  eax, byte [bp+4]
  9444 00004C9F 668946FC                mov [bp-4], eax
  9445 00004CA3 66A1[4D00]               mov eax, [lexvalL]
  9446 00004CA7 660346FC                 add eax, [bp-4]
  9447 00004CAB 66A3[4D00]               mov dword [lexvalL], eax
  9448 00004CAF EBA9                     jmp @@getdigit538
  9449                                  @@getdigit539:
  9450                                  
  9451                                  ;-899     else
  9452                                  
  9453                                  
  9454                                  ;-900     { while(digit(thechar )) { c=next(); c-='0'; lexvalL=lexvalL*10;
  9455                                  
  9456 00004CB1 E94400                   jmp @@getdigit542
  9457                                  @@getdigit537:
  9458                                  @@getdigit543:
  9459 00004CB4 A0[4200]                 mov al, byte [thechar]
  9460 00004CB7 B400                     mov ah, 0
  9461 00004CB9 50                       push ax
  9462 00004CBA E89115                   call digit
  9463 00004CBD 83C402                   add  sp, 2
  9464 00004CC0 08C0                     or  al, al
  9465 00004CC2 0F843200                 je @@getdigit544
  9466 00004CC6 E88100                   call next
  9467 00004CC9 884604                   mov byte [bp+4], al
  9468 00004CCC 806E0430                 sub  byte [bp+4], 48
  9469 00004CD0 66A1[4D00]               mov eax, [lexvalL]
  9470 00004CD4 66BB0A000000             mov ebx, 10
  9471 00004CDA 66F7E3                   mul ebx
  9472 00004CDD 66A3[4D00]               mov dword [lexvalL], eax
  9473                                  
  9474                                  ;-901     eax=c;/* cast B2L */  _ L=eax;  lexvalL=lexvalL+L; } }
  9475                                  
  9476 00004CE1 660FB64604               movzx  eax, byte [bp+4]
  9477 00004CE6 668946FC                mov [bp-4], eax
  9478 00004CEA 66A1[4D00]               mov eax, [lexvalL]
  9479 00004CEE 660346FC                 add eax, [bp-4]
  9480 00004CF2 66A3[4D00]               mov dword [lexvalL], eax
  9481 00004CF6 EBBC                     jmp @@getdigit543
  9482                                  @@getdigit544:
  9483                                  
  9484                                  ;-902     _ islong=0; if (_ lexvalL > 0xFFFF) islong++;
  9485                                  
  9486                                  @@getdigit542:
  9487 00004CF8 C606[5100]00            mov byte [islong], 0
  9488 00004CFD 66813E[4D00]FFFF00-     cmp dword [lexvalL], 65535
  9489 00004D05 00                 
  9490 00004D06 0F8E0400                 jle @@getdigit545
  9491 00004D0A FE06[5100]               inc  byte [islong]
  9492                                  
  9493                                  ;-903 }
  9494                                  
  9495                                  @@getdigit545:
  9496                                  
  9497                                  ;-904 int getstring(int delim) {int c; char *p;  p=&symbol; c=next();
  9498 00004D0E C9                       LEAVE
  9499 00004D0F C3                       ret
  9500                                  ; ENDP
  9501                                  
  9502                                  getstring:  ; *** PROC ***
  9503                                  ;Function : getstring, Number of local variables: 3
  9504                                  ;   # type sign width line used address name   list of local variables
  9505                                  ;  200 var sign word   904 NULL bp+4    delim
  9506                                  ;  201 var sign word   904 NULL bp-2    c
  9507                                  ;  202 ptr sign byte   904 NULL bp-4    p;
  9508 00004D10 C8040000                 ENTER  4,0
  9509 00004D14 B86E81                   mov ax, symbol
  9510 00004D17 8946FC                   mov word [bp-4], ax
  9511 00004D1A E82D00                   call next
  9512 00004D1D 8946FE                   mov word [bp-2], ax
  9513                                  
  9514                                  ;-905   while (c != delim) {*p=c; p++; c=next(); } *p=0; }
  9515                                  
  9516                                  @@getstring546:
  9517 00004D20 8B46FE                   mov ax, [bp-2]
  9518 00004D23 3B4604                   cmp ax, [bp+4]
  9519 00004D26 0F841300                 je  @@getstring547
  9520 00004D2A 8B46FE                   mov ax, [bp-2]
  9521 00004D2D 8B5EFC                   mov  bx, [bp-4]
  9522 00004D30 8807                     mov  [bx], al
  9523 00004D32 FF46FC                   inc  word [bp-4]
  9524 00004D35 E81200                   call next
  9525 00004D38 8946FE                   mov word [bp-2], ax
  9526 00004D3B EBE3                     jmp @@getstring546
  9527                                  @@getstring547:
  9528 00004D3D 66B800000000             mov eax, 0
  9529 00004D43 8B5EFC                   mov  bx, [bp-4]
  9530 00004D46 8807                     mov  [bx], al
  9531                                  
  9532                                  ;-906 
  9533                                  
  9534                                  
  9535                                  ;-907 int next() {char r; r = thechar; globC=r; thechar = fgets1(); return r; }
  9536 00004D48 C9                       LEAVE
  9537 00004D49 C3                       ret
  9538                                  ; ENDP
  9539                                  
  9540                                  next:  ; *** PROC ***
  9541                                  ;Function : next, Number of local variables: 1
  9542                                  ;   # type sign width line used address name   list of local variables
  9543                                  ;  200 var sign byte   907 NULL bp-2    r;
  9544 00004D4A C8020000                 ENTER  2,0
  9545 00004D4E A0[4200]                 mov al, [thechar]
  9546 00004D51 8846FE                   mov byte [bp-2], al
  9547 00004D54 8A46FE                   mov al, [bp-2]
  9548 00004D57 A2[3F00]                 mov byte [globC], al
  9549 00004D5A E85303                   call fgets1
  9550 00004D5D A2[4200]                 mov byte [thechar], al
  9551 00004D60 8A46FE                   mov al, [bp-2]
  9552 00004D63 E90000                   jmp @@retn
  9553                                  
  9554                                  ;-908 int istoken(int t) {if (token == t) { token=getlex(); return 1; } return 0;}
  9555                                  
  9556 00004D66 C9                      @@retn: LEAVE
  9557 00004D67 C3                       ret
  9558                                  ; ENDP
  9559                                  
  9560                                  istoken:  ; *** PROC ***
  9561                                  ;Function : istoken, Number of local variables: 1
  9562                                  ;   # type sign width line used address name   list of local variables
  9563                                  ;  200 var sign word   908 NULL bp+4    t;
  9564 00004D68 C8000000                 ENTER  0,0
  9565 00004D6C A1[3D00]                 mov ax, [token]
  9566 00004D6F 3B4604                   cmp ax, [bp+4]
  9567 00004D72 0F850F00                 jne @@istoken548
  9568 00004D76 E84FF7                   call getlex
  9569 00004D79 A3[3D00]                 mov word [token], ax
  9570 00004D7C 66B801000000             mov eax, 1
  9571 00004D82 E90900                   jmp @@retn
  9572                                  @@istoken548:
  9573 00004D85 66B800000000             mov eax, 0
  9574 00004D8B E90000                   jmp @@retn
  9575                                  
  9576                                  ;-909 int expect(int t) {if (istoken(t)==0) { *cloc=0; prs(co); listproc();
  9577                                  
  9578 00004D8E C9                      @@retn: LEAVE
  9579 00004D8F C3                       ret
  9580                                  ; ENDP
  9581                                  
  9582                                  expect:  ; *** PROC ***
  9583                                  ;Function : expect, Number of local variables: 1
  9584                                  ;   # type sign width line used address name   list of local variables
  9585                                  ;  200 var sign word   909 NULL bp+4    t;
  9586 00004D90 C8000000                 ENTER  0,0
  9587 00004D94 FF7604                   push word [bp+4]
  9588 00004D97 E8CEFF                   call istoken
  9589 00004D9A 83C402                   add  sp, 2
  9590 00004D9D 83F800                   cmp ax, 0
  9591 00004DA0 0F853500                 jne @@expect549
  9592 00004DA4 66B800000000             mov eax, 0
  9593 00004DAA 8B1E[3000]               mov  bx, [cloc]
  9594 00004DAE 8807                     mov  [bx], al
  9595 00004DB0 8D063075                 lea  ax, [co]
  9596 00004DB4 50                       push ax
  9597 00004DB5 E8F600                   call prs
  9598 00004DB8 83C402                   add  sp, 2
  9599 00004DBB E8FC04                   call listproc
  9600                                  
  9601                                  ;-910   prs("\nExpected ASCII(dez): "); pint1(t); error1(" not found"); } }
  9602                                  
  9603 00004DBE 68[DB4D]                 push expect_0
  9604 00004DC1 E8EA00                   call prs
  9605 00004DC4 83C402                   add  sp, 2
  9606 00004DC7 FF7604                   push word [bp+4]
  9607 00004DCA E8E701                   call pint1
  9608 00004DCD 83C402                   add  sp, 2
  9609 00004DD0 68[F34D]                 push expect_1
  9610 00004DD3 E8D903                   call error1
  9611 00004DD6 83C402                   add  sp, 2
  9612                                  @@expect549:
  9613                                  
  9614                                  ;-911 
  9615                                  
  9616                                  
  9617                                  ;-912 int eprc(char c)  {*cloc=c; cloc++; }
  9618 00004DD9 C9                       LEAVE
  9619 00004DDA C3                       ret
  9620                                  ; ENDP
  9621 00004DDB 5C6E45787065637465-     expect_0 db "\nExpected ASCII(dez): ",0
  9622 00004DE4 642041534349492864-
  9623 00004DED 657A293A2000       
  9624 00004DF3 206E6F7420666F756E-     expect_1 db " not found",0
  9625 00004DFC 6400               
  9626                                  
  9627                                  eprc:  ; *** PROC ***
  9628                                  ;Function : eprc, Number of local variables: 1
  9629                                  ;   # type sign width line used address name   list of local variables
  9630                                  ;  200 var sign byte   912 NULL bp+4    c;
  9631 00004DFE C8000000                 ENTER  0,0
  9632 00004E02 8A4604                   mov al, [bp+4]
  9633 00004E05 8B1E[3000]               mov  bx, [cloc]
  9634 00004E09 8807                     mov  [bx], al
  9635 00004E0B FF06[3000]               inc  word [cloc]
  9636                                  
  9637                                  ;-913 int eprs(char *s) {char c;  while(*s) { c=*s; eprc(c); s++; } }
  9638 00004E0F C9                       LEAVE
  9639 00004E10 C3                       ret
  9640                                  ; ENDP
  9641                                  
  9642                                  eprs:  ; *** PROC ***
  9643                                  ;Function : eprs, Number of local variables: 2
  9644                                  ;   # type sign width line used address name   list of local variables
  9645                                  ;  200 ptr sign byte   913 NULL bp+4    s
  9646                                  ;  201 var sign byte   913 NULL bp-2    c;
  9647 00004E11 C8020000                 ENTER  2,0
  9648                                  @@eprs550:
  9649 00004E15 8B5E04                   mov bx, [bp+4]
  9650 00004E18 8A07                     mov al, [bx]
  9651 00004E1A B400                     mov ah, 0
  9652 00004E1C 08C0                     or  al, al
  9653 00004E1E 0F841B00                 je @@eprs551
  9654 00004E22 8B5E04                   mov bx, [bp+4]
  9655 00004E25 8A07                     mov al, [bx]
  9656 00004E27 B400                     mov ah, 0
  9657 00004E29 8846FE                   mov byte [bp-2], al
  9658 00004E2C 8A46FE                   mov al, byte [bp-2]
  9659 00004E2F B400                     mov ah, 0
  9660 00004E31 50                       push ax
  9661 00004E32 E8C9FF                   call eprc
  9662 00004E35 83C402                   add  sp, 2
  9663 00004E38 FF4604                   inc  word [bp+4]
  9664 00004E3B EBD8                     jmp @@eprs550
  9665                                  @@eprs551:
  9666                                  
  9667                                  ;-914 int prc(unsigned char c) { if (LIST) { if (_ c==10) {ax=13; writetty(); }
  9668 00004E3D C9                       LEAVE
  9669 00004E3E C3                       ret
  9670                                  ; ENDP
  9671                                  
  9672                                  prc:  ; *** PROC ***
  9673                                  ;Function : prc, Number of local variables: 1
  9674                                  ;   # type sign width line used address name   list of local variables
  9675                                  ;  200 var unsg byte   914 NULL bp+4    c;
  9676 00004E3F C8000000                 ENTER  0,0
  9677 00004E43 A0[1700]                 mov al, [LIST]
  9678 00004E46 08C0                     or  al, al
  9679 00004E48 0F841400                 je @@prc552
  9680 00004E4C 807E040A                cmp byte [bp+4], 10
  9681 00004E50 0F850600                 jne @@prc553
  9682 00004E54 B80D00                   mov  ax, 13
  9683 00004E57 E82312                   call writetty
  9684                                  
  9685                                  ;-915    al=c; writetty(); } fputcR(c, fdout); }
  9686                                  
  9687                                  @@prc553:
  9688 00004E5A 8A4604                   mov  al, [bp+4]
  9689 00004E5D E81D12                   call writetty
  9690                                  @@prc552:
  9691 00004E60 FF36[3600]               push word [fdout]
  9692 00004E64 8A4604                   mov al, byte [bp+4]
  9693 00004E67 B400                     mov ah, 0
  9694 00004E69 50                       push ax
  9695 00004E6A E85D15                   call fputcR
  9696 00004E6D 83C404                   add  sp, 4
  9697                                  
  9698                                  ;-916 int prscomment(unsigned char *s) {unsigned char c;
  9699 00004E70 C9                       LEAVE
  9700 00004E71 C3                       ret
  9701                                  ; ENDP
  9702                                  
  9703                                  prscomment:  ; *** PROC ***
  9704                                  
  9705                                  ;-917   while(*s){c=*s;prc(c);s++;} }
  9706                                  
  9707                                  ;Function : prscomment, Number of local variables: 2
  9708                                  ;   # type sign width line used address name   list of local variables
  9709                                  ;  200 ptr unsg byte   916 NULL bp+4    s
  9710                                  ;  201 var unsg byte   916 NULL bp-2    c;
  9711 00004E72 C8020000                 ENTER  2,0
  9712                                  @@prscomment554:
  9713 00004E76 8B5E04                   mov bx, [bp+4]
  9714 00004E79 8A07                     mov al, [bx]
  9715 00004E7B B400                     mov ah, 0
  9716 00004E7D 08C0                     or  al, al
  9717 00004E7F 0F841B00                 je @@prscomment555
  9718 00004E83 8B5E04                   mov bx, [bp+4]
  9719 00004E86 8A07                     mov al, [bx]
  9720 00004E88 B400                     mov ah, 0
  9721 00004E8A 8846FE                   mov byte [bp-2], al
  9722 00004E8D 8A46FE                   mov al, byte [bp-2]
  9723 00004E90 B400                     mov ah, 0
  9724 00004E92 50                       push ax
  9725 00004E93 E8A9FF                   call prc
  9726 00004E96 83C402                   add  sp, 2
  9727 00004E99 FF4604                   inc  word [bp+4]
  9728 00004E9C EBD8                     jmp @@prscomment554
  9729                                  @@prscomment555:
  9730                                  
  9731                                  ;-918 int prnl() { prs("\n ");}
  9732 00004E9E C9                       LEAVE
  9733 00004E9F C3                       ret
  9734                                  ; ENDP
  9735                                  
  9736                                  prnl:  ; *** PROC ***
  9737 00004EA0 68[AA4E]                 push prnl_0
  9738 00004EA3 E80800                   call prs
  9739 00004EA6 83C402                   add  sp, 2
  9740                                  
  9741                                  ;-919 
  9742                                  
  9743                                  
  9744                                  ;-920 int prs(unsigned char *s) {unsigned char c; int com; com=0;
  9745                                  
  9746 00004EA9 C3                       ret
  9747                                  ; ENDP
  9748 00004EAA 5C6E2000                prnl_0 db "\n ",0
  9749                                  
  9750                                  prs:  ; *** PROC ***
  9751                                  ;Function : prs, Number of local variables: 3
  9752                                  ;   # type sign width line used address name   list of local variables
  9753                                  ;  200 ptr unsg byte   920 NULL bp+4    s
  9754                                  ;  201 var unsg byte   920 NULL bp-2    c
  9755                                  ;  202 var sign word   920 NULL bp-4    com;
  9756 00004EAE C8040000                 ENTER  4,0
  9757 00004EB2 66B800000000             mov eax, 0
  9758 00004EB8 8946FC                   mov word [bp-4], ax
  9759                                  
  9760                                  ;-921   while(*s) { c=*s; if (c==34) if (com) com=0; else com=1;
  9761                                  
  9762                                  @@prs556:
  9763 00004EBB 8B5E04                   mov bx, [bp+4]
  9764 00004EBE 8A07                     mov al, [bx]
  9765 00004EC0 B400                     mov ah, 0
  9766 00004EC2 08C0                     or  al, al
  9767 00004EC4 0F848700                 je @@prs557
  9768 00004EC8 8B5E04                   mov bx, [bp+4]
  9769 00004ECB 8A07                     mov al, [bx]
  9770 00004ECD B400                     mov ah, 0
  9771 00004ECF 8846FE                   mov byte [bp-2], al
  9772 00004ED2 8A46FE                   mov al, [bp-2]
  9773 00004ED5 3C22                     cmp al, 34
  9774 00004ED7 0F851E00                 jne @@prs558
  9775 00004EDB 8B46FC                   mov ax, [bp-4]
  9776 00004EDE 08C0                     or  al, al
  9777 00004EE0 0F840C00                 je @@prs559
  9778 00004EE4 66B800000000             mov eax, 0
  9779 00004EEA 8946FC                   mov word [bp-4], ax
  9780 00004EED E90900                   jmp @@prs560
  9781                                  @@prs559:
  9782 00004EF0 66B801000000             mov eax, 1
  9783 00004EF6 8946FC                   mov word [bp-4], ax
  9784                                  
  9785                                  ;-922     if (c==92) { if (com==0) { s++; c=*s;
  9786                                  
  9787                                  @@prs560:
  9788                                  @@prs558:
  9789 00004EF9 8A46FE                   mov al, [bp-2]
  9790 00004EFC 3C5C                     cmp al, 92
  9791 00004EFE 0F853B00                 jne @@prs561
  9792 00004F02 8B46FC                   mov ax, [bp-4]
  9793 00004F05 83F800                   cmp ax, 0
  9794 00004F08 0F853100                 jne @@prs562
  9795 00004F0C FF4604                   inc  word [bp+4]
  9796 00004F0F 8B5E04                   mov bx, [bp+4]
  9797 00004F12 8A07                     mov al, [bx]
  9798 00004F14 B400                     mov ah, 0
  9799 00004F16 8846FE                   mov byte [bp-2], al
  9800                                  
  9801                                  ;-923           if (c=='n') c=10; if (c=='t') c= 9; } } prc(c); s++;  } }
  9802                                  
  9803 00004F19 8A46FE                   mov al, [bp-2]
  9804 00004F1C 3C6E                     cmp al, 110
  9805 00004F1E 0F850900                 jne @@prs563
  9806 00004F22 66B80A000000             mov eax, 10
  9807 00004F28 8846FE                   mov byte [bp-2], al
  9808                                  @@prs563:
  9809 00004F2B 8A46FE                   mov al, [bp-2]
  9810 00004F2E 3C74                     cmp al, 116
  9811 00004F30 0F850900                 jne @@prs564
  9812 00004F34 66B809000000             mov eax, 9
  9813 00004F3A 8846FE                   mov byte [bp-2], al
  9814                                  @@prs564:
  9815                                  @@prs562:
  9816                                  @@prs561:
  9817 00004F3D 8A46FE                   mov al, byte [bp-2]
  9818 00004F40 B400                     mov ah, 0
  9819 00004F42 50                       push ax
  9820 00004F43 E8F9FE                   call prc
  9821 00004F46 83C402                   add  sp, 2
  9822 00004F49 FF4604                   inc  word [bp+4]
  9823 00004F4C E96CFF                   jmp @@prs556
  9824                                  @@prs557:
  9825                                  
  9826                                  ;-924 int eprnum(int n){int e; if(n<0) { eprc('-'); n=mkneg(n); }
  9827 00004F4F C9                       LEAVE
  9828 00004F50 C3                       ret
  9829                                  ; ENDP
  9830                                  
  9831                                  eprnum:  ; *** PROC ***
  9832                                  ;Function : eprnum, Number of local variables: 2
  9833                                  ;   # type sign width line used address name   list of local variables
  9834                                  ;  200 var sign word   924 NULL bp+4    n
  9835                                  ;  201 var sign word   924 NULL bp-2    e;
  9836 00004F51 C8020000                 ENTER  2,0
  9837 00004F55 8B4604                   mov ax, [bp+4]
  9838 00004F58 83F800                   cmp ax, 0
  9839 00004F5B 0F8D1400                 jge @@eprnum565
  9840 00004F5F 6A2D                     push 45
  9841 00004F61 E89AFE                   call eprc
  9842 00004F64 83C402                   add  sp, 2
  9843 00004F67 FF7604                   push word [bp+4]
  9844 00004F6A E85F11                   call mkneg
  9845 00004F6D 83C402                   add  sp, 2
  9846 00004F70 894604                   mov word [bp+4], ax
  9847                                  
  9848                                  ;-925   if (n >= 10) {e=n/10; eprnum(e);}  n=n%10; n=n+'0'; eprc(n); }
  9849                                  
  9850                                  @@eprnum565:
  9851 00004F73 8B4604                   mov ax, [bp+4]
  9852 00004F76 83F80A                   cmp ax, 10 ;unsigned : 1
  9853 00004F79 0F8C1500                 jl  @@eprnum566
  9854 00004F7D 8B4604                   mov ax, [bp+4]
  9855 00004F80 BB0A00                   mov bx, 10
  9856 00004F83 99                       cwd
  9857 00004F84 F7FB                     idiv bx
  9858 00004F86 8946FE                   mov word [bp-2], ax
  9859 00004F89 FF76FE                   push word [bp-2]
  9860 00004F8C E8C2FF                   call eprnum
  9861 00004F8F 83C402                   add  sp, 2
  9862                                  @@eprnum566:
  9863 00004F92 8B4604                   mov ax, [bp+4]
  9864 00004F95 BB0A00                   mov bx, 10
  9865 00004F98 99                       cwd
  9866 00004F99 F7FB                     idiv bx
  9867 00004F9B 89D0                     mov ax, dx
  9868 00004F9D 894604                   mov word [bp+4], ax
  9869 00004FA0 8B4604                   mov ax, [bp+4]
  9870 00004FA3 83C030                   add ax, 48
  9871 00004FA6 894604                   mov word [bp+4], ax
  9872 00004FA9 FF7604                   push word [bp+4]
  9873 00004FAC E84FFE                   call eprc
  9874 00004FAF 83C402                   add  sp, 2
  9875                                  
  9876                                  ;-926 int pint1 (int n){int e; if(n<0) {  prc('-');  n=mkneg(n); }
  9877 00004FB2 C9                       LEAVE
  9878 00004FB3 C3                       ret
  9879                                  ; ENDP
  9880                                  
  9881                                  pint1:  ; *** PROC ***
  9882                                  ;Function : pint1, Number of local variables: 2
  9883                                  ;   # type sign width line used address name   list of local variables
  9884                                  ;  200 var sign word   926 NULL bp+4    n
  9885                                  ;  201 var sign word   926 NULL bp-2    e;
  9886 00004FB4 C8020000                 ENTER  2,0
  9887 00004FB8 8B4604                   mov ax, [bp+4]
  9888 00004FBB 83F800                   cmp ax, 0
  9889 00004FBE 0F8D1400                 jge @@pint1567
  9890 00004FC2 6A2D                     push 45
  9891 00004FC4 E878FE                   call prc
  9892 00004FC7 83C402                   add  sp, 2
  9893 00004FCA FF7604                   push word [bp+4]
  9894 00004FCD E8FC10                   call mkneg
  9895 00004FD0 83C402                   add  sp, 2
  9896 00004FD3 894604                   mov word [bp+4], ax
  9897                                  
  9898                                  ;-927   if (n >= 10) {e=n/10;  pint1(e);}  n=n%10; n=n+'0'; prc(n); }
  9899                                  
  9900                                  @@pint1567:
  9901 00004FD6 8B4604                   mov ax, [bp+4]
  9902 00004FD9 83F80A                   cmp ax, 10 ;unsigned : 1
  9903 00004FDC 0F8C1500                 jl  @@pint1568
  9904 00004FE0 8B4604                   mov ax, [bp+4]
  9905 00004FE3 BB0A00                   mov bx, 10
  9906 00004FE6 99                       cwd
  9907 00004FE7 F7FB                     idiv bx
  9908 00004FE9 8946FE                   mov word [bp-2], ax
  9909 00004FEC FF76FE                   push word [bp-2]
  9910 00004FEF E8C2FF                   call pint1
  9911 00004FF2 83C402                   add  sp, 2
  9912                                  @@pint1568:
  9913 00004FF5 8B4604                   mov ax, [bp+4]
  9914 00004FF8 BB0A00                   mov bx, 10
  9915 00004FFB 99                       cwd
  9916 00004FFC F7FB                     idiv bx
  9917 00004FFE 89D0                     mov ax, dx
  9918 00005000 894604                   mov word [bp+4], ax
  9919 00005003 8B4604                   mov ax, [bp+4]
  9920 00005006 83C030                   add ax, 48
  9921 00005009 894604                   mov word [bp+4], ax
  9922 0000500C FF7604                   push word [bp+4]
  9923 0000500F E82DFE                   call prc
  9924 00005012 83C402                   add  sp, 2
  9925                                  
  9926                                  ;-928 int prunsign1(unsigned int n) { unsigned int e;
  9927 00005015 C9                       LEAVE
  9928 00005016 C3                       ret
  9929                                  ; ENDP
  9930                                  
  9931                                  prunsign1:  ; *** PROC ***
  9932                                  
  9933                                  ;-929   if ( _ n >= 10) {  e=n/10; /*DIV*/ prunsign1(e); }
  9934                                  
  9935                                  ;Function : prunsign1, Number of local variables: 2
  9936                                  ;   # type sign width line used address name   list of local variables
  9937                                  ;  200 var unsg word   928 NULL bp+4    n
  9938                                  ;  201 var unsg word   928 NULL bp-2    e;
  9939 00005017 C8020000                 ENTER  2,0
  9940 0000501B 837E040A                cmp word [bp+4], 10 ;unsigned : 0
  9941 0000501F 0F821700                 jb  @@prunsign1569
  9942 00005023 8B4604                   mov ax, [bp+4]
  9943 00005026 BB0A00                   mov bx, 10
  9944 00005029 BA0000                   mov dx, 0
  9945 0000502C F7F3                     div bx
  9946 0000502E 8946FE                   mov word [bp-2], ax
  9947 00005031 FF76FE                   push word [bp-2]
  9948 00005034 E8E0FF                   call prunsign1
  9949 00005037 83C402                   add  sp, 2
  9950                                  
  9951                                  ;-930     n = n % 10; /*unsigned mod*/   n += '0'; prc(n); }
  9952                                  
  9953                                  @@prunsign1569:
  9954 0000503A 8B4604                   mov ax, [bp+4]
  9955 0000503D BB0A00                   mov bx, 10
  9956 00005040 BA0000                   mov dx, 0
  9957 00005043 F7F3                     div bx
  9958 00005045 89D0                     mov ax, dx
  9959 00005047 894604                   mov word [bp+4], ax
  9960 0000504A 83460430                 add  word [bp+4], 48
  9961 0000504E FF7604                   push word [bp+4]
  9962 00005051 E8EBFD                   call prc
  9963 00005054 83C402                   add  sp, 2
  9964                                  
  9965                                  ;-931 int printint51(unsigned int j)  {
  9966 00005057 C9                       LEAVE
  9967 00005058 C3                       ret
  9968                                  ; ENDP
  9969                                  
  9970                                  printint51:  ; *** PROC ***
  9971                                  
  9972                                  ;-932   if (j<10000) prc(32); if (j<1000) prc(32);  if (j<100) prc(32);
  9973                                  
  9974                                  ;Function : printint51, Number of local variables: 1
  9975                                  ;   # type sign width line used address name   list of local variables
  9976                                  ;  200 var unsg word   931 NULL bp+4    j;
  9977 00005059 C8000000                 ENTER  0,0
  9978 0000505D 8B4604                   mov ax, [bp+4]
  9979 00005060 3D1027                   cmp ax, 10000
  9980 00005063 0F8D0800                 jge @@printint51570
  9981 00005067 6A20                     push 32
  9982 00005069 E8D3FD                   call prc
  9983 0000506C 83C402                   add  sp, 2
  9984                                  @@printint51570:
  9985 0000506F 8B4604                   mov ax, [bp+4]
  9986 00005072 3DE803                   cmp ax, 1000
  9987 00005075 0F8D0800                 jge @@printint51571
  9988 00005079 6A20                     push 32
  9989 0000507B E8C1FD                   call prc
  9990 0000507E 83C402                   add  sp, 2
  9991                                  @@printint51571:
  9992 00005081 8B4604                   mov ax, [bp+4]
  9993 00005084 83F864                   cmp ax, 100
  9994 00005087 0F8D0800                 jge @@printint51572
  9995 0000508B 6A20                     push 32
  9996 0000508D E8AFFD                   call prc
  9997 00005090 83C402                   add  sp, 2
  9998                                  
  9999                                  ;-933    if (j<10) prc(32);  prunsign1(j); }
 10000                                  
 10001                                  @@printint51572:
 10002 00005093 8B4604                   mov ax, [bp+4]
 10003 00005096 83F80A                   cmp ax, 10
 10004 00005099 0F8D0800                 jge @@printint51573
 10005 0000509D 6A20                     push 32
 10006 0000509F E89DFD                   call prc
 10007 000050A2 83C402                   add  sp, 2
 10008                                  @@printint51573:
 10009 000050A5 FF7604                   push word [bp+4]
 10010 000050A8 E86CFF                   call prunsign1
 10011 000050AB 83C402                   add  sp, 2
 10012                                  
 10013                                  ;-934 
 10014                                  
 10015                                  
 10016                                  ;-935 int fgets1() { char c; c=*fgetsp;
 10017 000050AE C9                       LEAVE
 10018 000050AF C3                       ret
 10019                                  ; ENDP
 10020                                  
 10021                                  fgets1:  ; *** PROC ***
 10022                                  ;Function : fgets1, Number of local variables: 1
 10023                                  ;   # type sign width line used address name   list of local variables
 10024                                  ;  200 var sign byte   935 NULL bp-2    c;
 10025 000050B0 C8020000                 ENTER  2,0
 10026 000050B4 8B1E[B600]               mov bx, [fgetsp]
 10027 000050B8 8A07                     mov al, [bx]
 10028 000050BA B400                     mov ah, 0
 10029 000050BC 8846FE                   mov byte [bp-2], al
 10030                                  
 10031                                  ;-936   if (c==0) { printinputline(); if (DOS_NoBytes == 0) return 0;
 10032                                  
 10033 000050BF 8A46FE                   mov al, [bp-2]
 10034 000050C2 3C00                     cmp al, 0
 10035 000050C4 0F853000                 jne @@fgets1574
 10036 000050C8 E83D00                   call printinputline
 10037 000050CB A1[C400]                 mov ax, [DOS_NoBytes]
 10038 000050CE 83F800                   cmp ax, 0
 10039 000050D1 0F850900                 jne @@fgets1575
 10040 000050D5 66B800000000             mov eax, 0
 10041 000050DB E92800                   jmp @@retn
 10042                                  
 10043                                  ;-937     fgetsp=&fgetsdest; c=*fgetsp; spalte=0; }
 10044                                  
 10045                                  @@fgets1575:
 10046 000050DE B847B6                   mov ax, fgetsdest
 10047 000050E1 A3[B600]                 mov word [fgetsp], ax
 10048 000050E4 8B1E[B600]               mov bx, [fgetsp]
 10049 000050E8 8A07                     mov al, [bx]
 10050 000050EA B400                     mov ah, 0
 10051 000050EC 8846FE                   mov byte [bp-2], al
 10052 000050EF 66B800000000             mov eax, 0
 10053 000050F5 A3[4000]                 mov word [spalte], ax
 10054                                  
 10055                                  ;-938   fgetsp++; spalte++;  return c; }
 10056                                  
 10057                                  @@fgets1574:
 10058 000050F8 FF06[B600]               inc  word [fgetsp]
 10059 000050FC FF06[4000]               inc  word [spalte]
 10060 00005100 8A46FE                   mov al, [bp-2]
 10061 00005103 E90000                   jmp @@retn
 10062                                  
 10063                                  ;-939 int printinputline() { fgetsp=&fgetsdest;
 10064                                  
 10065 00005106 C9                      @@retn: LEAVE
 10066 00005107 C3                       ret
 10067                                  ; ENDP
 10068                                  
 10069                                  printinputline:  ; *** PROC ***
 10070 00005108 B847B6                   mov ax, fgetsdest
 10071 0000510B A3[B600]                 mov word [fgetsp], ax
 10072                                  
 10073                                  ;-940   do {DOS_NoBytes=readR(&DOS_ByteRead, fdin);
 10074                                  
 10075                                  @@printinputline576:
 10076 0000510E FF36[3400]               push word [fdin]
 10077 00005112 8D06[C600]               lea  ax, [DOS_ByteRead]
 10078 00005116 50                       push ax
 10079 00005117 E88612                   call readR
 10080 0000511A 83C404                   add  sp, 4
 10081 0000511D A3[C400]                 mov word [DOS_NoBytes], ax
 10082                                  
 10083                                  ;-941   if (DOS_NoBytes == 0) return; 
 10084                                  
 10085 00005120 A1[C400]                 mov ax, [DOS_NoBytes]
 10086 00005123 83F800                   cmp ax, 0
 10087 00005126 0F850300                 jne @@printinputline577
 10088 0000512A E95700                   jmp @@retn
 10089                                  
 10090                                  ;-942     *fgetsp=DOS_ByteRead; fgetsp++;} 
 10091                                  
 10092                                  @@printinputline577:
 10093 0000512D A0[C600]                 mov al, [DOS_ByteRead]
 10094 00005130 8B1E[B600]               mov  bx, [fgetsp]
 10095 00005134 8807                     mov  [bx], al
 10096 00005136 FF06[B600]               inc  word [fgetsp]
 10097                                  
 10098                                  ;-943   while (DOS_ByteRead != 10); *fgetsp=0;
 10099                                  
 10100 0000513A A0[C600]                 mov al, [DOS_ByteRead]
 10101 0000513D 3C0A                     cmp al, 10
 10102 0000513F 0F840200                 je  @@printinputline578
 10103 00005143 EBC9                     jmp @@printinputline576
 10104                                  @@printinputline578:
 10105 00005145 66B800000000             mov eax, 0
 10106 0000514B 8B1E[B600]               mov  bx, [fgetsp]
 10107 0000514F 8807                     mov  [bx], al
 10108                                  
 10109                                  ;-944     if (fdout) { prs("\n\n;-"); prunsign1(lineno); prc(' '); lineno++;
 10110                                  
 10111 00005151 A1[3600]                 mov ax, [fdout]
 10112 00005154 08C0                     or  al, al
 10113 00005156 0F842A00                 je @@printinputline579
 10114 0000515A 68[8551]                 push printinputline_0
 10115 0000515D E84EFD                   call prs
 10116 00005160 83C402                   add  sp, 2
 10117 00005163 FF36[BA00]               push word [lineno]
 10118 00005167 E8ADFE                   call prunsign1
 10119 0000516A 83C402                   add  sp, 2
 10120 0000516D 6A20                     push 32
 10121 0000516F E8CDFC                   call prc
 10122 00005172 83C402                   add  sp, 2
 10123 00005175 FF06[BA00]               inc  word [lineno]
 10124                                  
 10125                                  ;-945       prscomment(&fgetsdest);}
 10126                                  
 10127 00005179 8D0647B6                 lea  ax, [fgetsdest]
 10128 0000517D 50                       push ax
 10129 0000517E E8F1FC                   call prscomment
 10130 00005181 83C402                   add  sp, 2
 10131                                  
 10132                                  ;-946 }
 10133                                  
 10134                                  @@printinputline579:
 10135                                  
 10136                                  ;-947 int end1(int n) {fcloseR(fdin); fcloseR(fdout); exitR(n); }
 10137                                  
 10138                                  @@retn:
 10139 00005184 C3                       ret
 10140                                  ; ENDP
 10141 00005185 5C6E5C6E3B2D00          printinputline_0 db "\n\n;-",0
 10142                                  
 10143                                  end1:  ; *** PROC ***
 10144                                  ;Function : end1, Number of local variables: 1
 10145                                  ;   # type sign width line used address name   list of local variables
 10146                                  ;  200 var sign word   947 NULL bp+4    n;
 10147 0000518C C8000000                 ENTER  0,0
 10148 00005190 FF36[3400]               push word [fdin]
 10149 00005194 E84812                   call fcloseR
 10150 00005197 83C402                   add  sp, 2
 10151 0000519A FF36[3600]               push word [fdout]
 10152 0000519E E83E12                   call fcloseR
 10153 000051A1 83C402                   add  sp, 2
 10154 000051A4 FF7604                   push word [bp+4]
 10155 000051A7 E84312                   call exitR
 10156 000051AA 83C402                   add  sp, 2
 10157                                  
 10158                                  ;-948 int error1(char *s) { LIST=1;
 10159 000051AD C9                       LEAVE
 10160 000051AE C3                       ret
 10161                                  ; ENDP
 10162                                  
 10163                                  error1:  ; *** PROC ***
 10164                                  ;Function : error1, Number of local variables: 1
 10165                                  ;   # type sign width line used address name   list of local variables
 10166                                  ;  200 ptr sign byte   948 NULL bp+4    s;
 10167 000051AF C8000000                 ENTER  0,0
 10168 000051B3 66B801000000             mov eax, 1
 10169 000051B9 A2[1700]                 mov byte [LIST], al
 10170                                  
 10171                                  ;-949   lineno--;
 10172                                  
 10173 000051BC FF0E[BA00]               dec  word [lineno]
 10174                                  
 10175                                  ;-950   prnl(); prscomment(&fgetsdest);
 10176                                  
 10177 000051C0 E8DDFC                   call prnl
 10178 000051C3 8D0647B6                 lea  ax, [fgetsdest]
 10179 000051C7 50                       push ax
 10180 000051C8 E8A7FC                   call prscomment
 10181 000051CB 83C402                   add  sp, 2
 10182                                  
 10183                                  ;-951   prs(";Line: "); prunsign1(lineno);
 10184                                  
 10185 000051CE 68[6152]                 push error1_0
 10186 000051D1 E8DAFC                   call prs
 10187 000051D4 83C402                   add  sp, 2
 10188 000051D7 FF36[BA00]               push word [lineno]
 10189 000051DB E839FE                   call prunsign1
 10190 000051DE 83C402                   add  sp, 2
 10191                                  
 10192                                  ;-952   prs(" ************** ERROR: "); prs(s);
 10193                                  
 10194 000051E1 68[6952]                 push error1_1
 10195 000051E4 E8C7FC                   call prs
 10196 000051E7 83C402                   add  sp, 2
 10197 000051EA FF7604                   push word [bp+4]
 10198 000051ED E8BEFC                   call prs
 10199 000051F0 83C402                   add  sp, 2
 10200                                  
 10201                                  ;-953   prs("  in column: "); pint1(spalte);
 10202                                  
 10203 000051F3 68[8152]                 push error1_2
 10204 000051F6 E8B5FC                   call prs
 10205 000051F9 83C402                   add  sp, 2
 10206 000051FC FF36[4000]               push word [spalte]
 10207 00005200 E8B1FD                   call pint1
 10208 00005203 83C402                   add  sp, 2
 10209                                  
 10210                                  ;-954   prs("\nToken: "); prunsign1(token); prs(", globC: "); prc(globC);
 10211                                  
 10212 00005206 68[8F52]                 push error1_3
 10213 00005209 E8A2FC                   call prs
 10214 0000520C 83C402                   add  sp, 2
 10215 0000520F FF36[3D00]               push word [token]
 10216 00005213 E801FE                   call prunsign1
 10217 00005216 83C402                   add  sp, 2
 10218 00005219 68[9952]                 push error1_4
 10219 0000521C E88FFC                   call prs
 10220 0000521F 83C402                   add  sp, 2
 10221 00005222 A0[3F00]                 mov al, byte [globC]
 10222 00005225 B400                     mov ah, 0
 10223 00005227 50                       push ax
 10224 00005228 E814FC                   call prc
 10225 0000522B 83C402                   add  sp, 2
 10226                                  
 10227                                  ;-955   prs(", thechar: "); pint1(thechar); prs(", symbol: "); prs(symbol);
 10228                                  
 10229 0000522E 68[A352]                 push error1_5
 10230 00005231 E87AFC                   call prs
 10231 00005234 83C402                   add  sp, 2
 10232 00005237 A0[4200]                 mov al, byte [thechar]
 10233 0000523A B400                     mov ah, 0
 10234 0000523C 50                       push ax
 10235 0000523D E874FD                   call pint1
 10236 00005240 83C402                   add  sp, 2
 10237 00005243 68[AF52]                 push error1_6
 10238 00005246 E865FC                   call prs
 10239 00005249 83C402                   add  sp, 2
 10240 0000524C 8D066E81                 lea  ax, [symbol]
 10241 00005250 50                       push ax
 10242 00005251 E85AFC                   call prs
 10243 00005254 83C402                   add  sp, 2
 10244                                  
 10245                                  ;-956   end1(1); }
 10246                                  
 10247 00005257 6A01                     push 1
 10248 00005259 E830FF                   call end1
 10249 0000525C 83C402                   add  sp, 2
 10250                                  
 10251                                  ;-957 int listproc() {int i; 
 10252 0000525F C9                       LEAVE
 10253 00005260 C3                       ret
 10254                                  ; ENDP
 10255 00005261 3B4C696E653A2000        error1_0 db ";Line: ",0
 10256 00005269 202A2A2A2A2A2A2A2A-     error1_1 db " ************** ERROR: ",0
 10257 00005272 2A2A2A2A2A2A204552-
 10258 0000527B 524F523A2000       
 10259 00005281 2020696E20636F6C75-     error1_2 db "  in column: ",0
 10260 0000528A 6D6E3A2000         
 10261 0000528F 5C6E546F6B656E3A20-     error1_3 db "\nToken: ",0
 10262 00005298 00                 
 10263 00005299 2C20676C6F62433A20-     error1_4 db ", globC: ",0
 10264 000052A2 00                 
 10265 000052A3 2C2074686563686172-     error1_5 db ", thechar: ",0
 10266 000052AC 3A2000             
 10267 000052AF 2C2073796D626F6C3A-     error1_6 db ", symbol: ",0
 10268 000052B8 2000               
 10269                                  
 10270                                  listproc:  ; *** PROC ***
 10271                                  
 10272                                  ;-958   if (LTop > LSTART) {
 10273                                  
 10274                                  ;Function : listproc, Number of local variables: 1
 10275                                  ;   # type sign width line used address name   list of local variables
 10276                                  ;  200 var sign word   957 NULL bp-2    i;
 10277 000052BA C8020000                 ENTER  2,0
 10278 000052BE A1[6000]                 mov ax, [LTop]
 10279 000052C1 3DC800                   cmp ax, 200
 10280 000052C4 0F8E5A00                 jle @@listproc580
 10281                                  
 10282                                  ;-959   prs("\n;Function : "); prs(fname);
 10283                                  
 10284 000052C8 68[2453]                 push listproc_0
 10285 000052CB E8E0FB                   call prs
 10286 000052CE 83C402                   add  sp, 2
 10287 000052D1 8D06EE81                 lea  ax, [fname]
 10288 000052D5 50                       push ax
 10289 000052D6 E8D5FB                   call prs
 10290 000052D9 83C402                   add  sp, 2
 10291                                  
 10292                                  ;-960   prs(", Number of local variables: "); i=LTop - LSTART; prunsign1(i);
 10293                                  
 10294 000052DC 68[3353]                 push listproc_1
 10295 000052DF E8CCFB                   call prs
 10296 000052E2 83C402                   add  sp, 2
 10297 000052E5 A1[6000]                 mov ax, [LTop]
 10298 000052E8 2DC800                   sub ax, 200
 10299 000052EB 8946FE                   mov word [bp-2], ax
 10300 000052EE FF76FE                   push word [bp-2]
 10301 000052F1 E823FD                   call prunsign1
 10302 000052F4 83C402                   add  sp, 2
 10303                                  
 10304                                  ;-961   prs("\n;   # type sign width line used address name   list of local variables");
 10305                                  
 10306 000052F7 68[5153]                 push listproc_2
 10307 000052FA E8B1FB                   call prs
 10308 000052FD 83C402                   add  sp, 2
 10309                                  
 10310                                  ;-962     i=LSTART; 
 10311                                  
 10312 00005300 66B8C8000000             mov eax, 200
 10313 00005306 8946FE                   mov word [bp-2], ax
 10314                                  
 10315                                  ;-963     while (i < LTop) { listvar(i); i++; } } 
 10316                                  
 10317                                  @@listproc581:
 10318 00005309 8B46FE                   mov ax, [bp-2]
 10319 0000530C 3B06[6000]               cmp ax, [LTop]
 10320 00005310 0F8D0E00                 jge @@listproc582
 10321 00005314 FF76FE                   push word [bp-2]
 10322 00005317 E88000                   call listvar
 10323 0000531A 83C402                   add  sp, 2
 10324 0000531D FF46FE                   inc  word [bp-2]
 10325 00005320 EBE7                     jmp @@listproc581
 10326                                  @@listproc582:
 10327                                  
 10328                                  ;-964 }
 10329                                  
 10330                                  @@listproc580:
 10331                                  
 10332                                  ;-965 int listvar(unsigned int i) {unsigned int j; char c;  long L;
 10333 00005322 C9                       LEAVE
 10334 00005323 C3                       ret
 10335                                  ; ENDP
 10336 00005324 5C6E3B46756E637469-     listproc_0 db "\n;Function : ",0
 10337 0000532D 6F6E203A2000       
 10338 00005333 2C204E756D62657220-     listproc_1 db ", Number of local variables: ",0
 10339 0000533C 6F66206C6F63616C20-
 10340 00005345 7661726961626C6573-
 10341 0000534E 3A2000             
 10342 00005351 5C6E3B202020232074-     listproc_2 db "\n;   # type sign width line used address name   list of local variables",0
 10343 0000535A 797065207369676E20-
 10344 00005363 7769647468206C696E-
 10345 0000536C 652075736564206164-
 10346 00005375 6472657373206E616D-
 10347 0000537E 652020206C69737420-
 10348 00005387 6F66206C6F63616C20-
 10349 00005390 7661726961626C6573-
 10350 00005399 00                 
 10351                                  
 10352                                  listvar:  ; *** PROC ***
 10353                                  
 10354                                  ;-966   prs("\n;"); printint51(i); prc(32);
 10355                                  
 10356                                  ;Function : listvar, Number of local variables: 4
 10357                                  ;   # type sign width line used address name   list of local variables
 10358                                  ;  200 var unsg word   965 NULL bp+4    i
 10359                                  ;  201 var unsg word   965 NULL bp-2    j
 10360                                  ;  202 var sign byte   965 NULL bp-4    c
 10361                                  ;  203 var sign dwrd   965 NULL bp-8    L;
 10362 0000539A C8080000                 ENTER  8,0
 10363 0000539E 68[CE55]                 push listvar_0
 10364 000053A1 E80AFB                   call prs
 10365 000053A4 83C402                   add  sp, 2
 10366 000053A7 FF7604                   push word [bp+4]
 10367 000053AA E8ACFC                   call printint51
 10368 000053AD 83C402                   add  sp, 2
 10369 000053B0 6A20                     push 32
 10370 000053B2 E88AFA                   call prc
 10371 000053B5 83C402                   add  sp, 2
 10372                                  
 10373                                  ;-967   c=GType [i]; if(c=='V')prs("var ");   if(c=='*')prs("ptr ");
 10374                                  
 10375 000053B8 8B5E04                   mov bx, [bp+4]
 10376 000053BB 8A87B782                 mov al, [GType + bx]
 10377 000053BF 8846FC                   mov byte [bp-4], al
 10378 000053C2 8A46FC                   mov al, [bp-4]
 10379 000053C5 3C56                     cmp al, 86
 10380 000053C7 0F850900                 jne @@listvar583
 10381 000053CB 68[D255]                 push listvar_1
 10382 000053CE E8DDFA                   call prs
 10383 000053D1 83C402                   add  sp, 2
 10384                                  @@listvar583:
 10385 000053D4 8A46FC                   mov al, [bp-4]
 10386 000053D7 3C2A                     cmp al, 42
 10387 000053D9 0F850900                 jne @@listvar584
 10388 000053DD 68[D755]                 push listvar_2
 10389 000053E0 E8CBFA                   call prs
 10390 000053E3 83C402                   add  sp, 2
 10391                                  
 10392                                  ;-968                if(c=='&')prs("arr ");   if(c=='#')prs("def ");
 10393                                  
 10394                                  @@listvar584:
 10395 000053E6 8A46FC                   mov al, [bp-4]
 10396 000053E9 3C26                     cmp al, 38
 10397 000053EB 0F850900                 jne @@listvar585
 10398 000053EF 68[DC55]                 push listvar_3
 10399 000053F2 E8B9FA                   call prs
 10400 000053F5 83C402                   add  sp, 2
 10401                                  @@listvar585:
 10402 000053F8 8A46FC                   mov al, [bp-4]
 10403 000053FB 3C23                     cmp al, 35
 10404 000053FD 0F850900                 jne @@listvar586
 10405 00005401 68[E155]                 push listvar_4
 10406 00005404 E8A7FA                   call prs
 10407 00005407 83C402                   add  sp, 2
 10408                                  
 10409                                  ;-969   c=GSign [i]; if(c=='S')prs("sign ");  if(c=='U')prs("unsg ");
 10410                                  
 10411                                  @@listvar586:
 10412 0000540A 8B5E04                   mov bx, [bp+4]
 10413 0000540D 8A87E383                 mov al, [GSign + bx]
 10414 00005411 8846FC                   mov byte [bp-4], al
 10415 00005414 8A46FC                   mov al, [bp-4]
 10416 00005417 3C53                     cmp al, 83
 10417 00005419 0F850900                 jne @@listvar587
 10418 0000541D 68[E655]                 push listvar_5
 10419 00005420 E88BFA                   call prs
 10420 00005423 83C402                   add  sp, 2
 10421                                  @@listvar587:
 10422 00005426 8A46FC                   mov al, [bp-4]
 10423 00005429 3C55                     cmp al, 85
 10424 0000542B 0F850900                 jne @@listvar588
 10425 0000542F 68[EC55]                 push listvar_6
 10426 00005432 E879FA                   call prs
 10427 00005435 83C402                   add  sp, 2
 10428                                  
 10429                                  ;-970   c=GWidth[i]; if(c==  1)prs("byte " ); if(c==  2)prs("word " );
 10430                                  
 10431                                  @@listvar588:
 10432 00005438 8B5E04                   mov bx, [bp+4]
 10433 0000543B 8A870F85                 mov al, [GWidth + bx]
 10434 0000543F 8846FC                   mov byte [bp-4], al
 10435 00005442 8A46FC                   mov al, [bp-4]
 10436 00005445 3C01                     cmp al, 1
 10437 00005447 0F850900                 jne @@listvar589
 10438 0000544B 68[F255]                 push listvar_7
 10439 0000544E E85DFA                   call prs
 10440 00005451 83C402                   add  sp, 2
 10441                                  @@listvar589:
 10442 00005454 8A46FC                   mov al, [bp-4]
 10443 00005457 3C02                     cmp al, 2
 10444 00005459 0F850900                 jne @@listvar590
 10445 0000545D 68[F855]                 push listvar_8
 10446 00005460 E84BFA                   call prs
 10447 00005463 83C402                   add  sp, 2
 10448                                  
 10449                                  ;-971                if(c==  4)prs("dwrd " );
 10450                                  
 10451                                  @@listvar590:
 10452 00005466 8A46FC                   mov al, [bp-4]
 10453 00005469 3C04                     cmp al, 4
 10454 0000546B 0F850900                 jne @@listvar591
 10455 0000546F 68[FE55]                 push listvar_9
 10456 00005472 E839FA                   call prs
 10457 00005475 83C402                   add  sp, 2
 10458                                  
 10459                                  ;-972   j=GLino[i]; printint51(j);
 10460                                  
 10461                                  @@listvar591:
 10462 00005478 8B5E04                   mov bx, [bp+4]
 10463 0000547B D1E3                     shl bx, 1
 10464 0000547D 8B873B86                 mov ax, [GLino + bx]
 10465 00005481 8946FE                   mov word [bp-2], ax
 10466 00005484 FF76FE                   push word [bp-2]
 10467 00005487 E8CFFB                   call printint51
 10468 0000548A 83C402                   add  sp, 2
 10469                                  
 10470                                  ;-973   j=GUsed[i]; if (j) printint51(j);
 10471                                  
 10472 0000548D 8B5E04                   mov bx, [bp+4]
 10473 00005490 D1E3                     shl bx, 1
 10474 00005492 8B879388                 mov ax, [GUsed + bx]
 10475 00005496 8946FE                   mov word [bp-2], ax
 10476 00005499 8B46FE                   mov ax, [bp-2]
 10477 0000549C 08C0                     or  al, al
 10478 0000549E 0F840C00                 je @@listvar592
 10479 000054A2 FF76FE                   push word [bp-2]
 10480 000054A5 E8B1FB                   call printint51
 10481 000054A8 83C402                   add  sp, 2
 10482                                  
 10483                                  ;-974   else {if(GType[i]=='#') prs("    -"); else prs(" NULL");}
 10484                                  
 10485 000054AB E92200                   jmp @@listvar593
 10486                                  @@listvar592:
 10487 000054AE 8B5E04                   mov bx, [bp+4]
 10488 000054B1 8A87B782                 mov al, [GType + bx]
 10489 000054B5 3C23                     cmp al, 35
 10490 000054B7 0F850C00                 jne @@listvar594
 10491 000054BB 68[0456]                 push listvar_10
 10492 000054BE E8EDF9                   call prs
 10493 000054C1 83C402                   add  sp, 2
 10494 000054C4 E90900                   jmp @@listvar595
 10495                                  @@listvar594:
 10496 000054C7 68[0A56]                 push listvar_11
 10497 000054CA E8E1F9                   call prs
 10498 000054CD 83C402                   add  sp, 2
 10499                                  @@listvar595:
 10500                                  
 10501                                  ;-975   prc(32);  L=GAdr[i];
 10502                                  
 10503                                  @@listvar593:
 10504 000054D0 6A20                     push 32
 10505 000054D2 E86AF9                   call prc
 10506 000054D5 83C402                   add  sp, 2
 10507 000054D8 8B5E04                   mov bx, [bp+4]
 10508 000054DB C1E302                   shl bx, 2
 10509 000054DE 668B879B8F               mov eax, [GAdr + bx]
 10510 000054E3 668946F8                 mov dword [bp-8], eax
 10511                                  
 10512                                  ;-976   if (i < LSTART) { /*if (L == 0) prs("       0"); else */ prf(L, 8); }
 10513                                  
 10514 000054E7 8B4604                   mov ax, [bp+4]
 10515 000054EA 3DC800                   cmp ax, 200
 10516 000054ED 0F8D0F00                 jge @@listvar596
 10517 000054F1 6A08                     push 8
 10518 000054F3 66FF76F8                 push dword [bp-8]
 10519 000054F7 E8880A                   call prf
 10520 000054FA 83C406                   add  sp, 6
 10521                                  
 10522                                  ;-977   else  { prs("bp"); j=GData[i];
 10523                                  
 10524 000054FD E93B00                   jmp @@listvar597
 10525                                  @@listvar596:
 10526 00005500 68[1056]                 push listvar_12
 10527 00005503 E8A8F9                   call prs
 10528 00005506 83C402                   add  sp, 2
 10529 00005509 8B5E04                   mov bx, [bp+4]
 10530 0000550C C1E302                   shl bx, 2
 10531 0000550F 668B87EB8A               mov eax, [GData + bx]
 10532 00005514 8946FE                   mov word [bp-2], ax
 10533                                  
 10534                                  ;-978     if (j > 0) prc('+'); pint1(j); prs("   "); }
 10535                                  
 10536 00005517 8B46FE                   mov ax, [bp-2]
 10537 0000551A 83F800                   cmp ax, 0
 10538 0000551D 0F8E0800                 jle @@listvar598
 10539 00005521 6A2B                     push 43
 10540 00005523 E819F9                   call prc
 10541 00005526 83C402                   add  sp, 2
 10542                                  @@listvar598:
 10543 00005529 FF76FE                   push word [bp-2]
 10544 0000552C E885FA                   call pint1
 10545 0000552F 83C402                   add  sp, 2
 10546 00005532 68[1356]                 push listvar_13
 10547 00005535 E876F9                   call prs
 10548 00005538 83C402                   add  sp, 2
 10549                                  
 10550                                  ;-979   prc(32);  j=GName[i]; from_far(NA, j); prs(NA);
 10551                                  
 10552                                  @@listvar597:
 10553 0000553B 6A20                     push 32
 10554 0000553D E8FFF8                   call prc
 10555 00005540 83C402                   add  sp, 2
 10556 00005543 8B5E04                   mov bx, [bp+4]
 10557 00005546 D1E3                     shl bx, 1
 10558 00005548 8B874B94                 mov ax, [GName + bx]
 10559 0000554C 8946FE                   mov word [bp-2], ax
 10560 0000554F FF76FE                   push word [bp-2]
 10561 00005552 8D06[7200]               lea  ax, [NA]
 10562 00005556 50                       push ax
 10563 00005557 E84B09                   call from_far
 10564 0000555A 83C404                   add  sp, 4
 10565 0000555D 8D06[7200]               lea  ax, [NA]
 10566 00005561 50                       push ax
 10567 00005562 E849F9                   call prs
 10568 00005565 83C402                   add  sp, 2
 10569                                  
 10570                                  ;-980   if(GType[i]=='#') { prc('='); L=GData[i]; prL(L); }
 10571                                  
 10572 00005568 8B5E04                   mov bx, [bp+4]
 10573 0000556B 8A87B782                 mov al, [GType + bx]
 10574 0000556F 3C23                     cmp al, 35
 10575 00005571 0F852100                 jne @@listvar599
 10576 00005575 6A3D                     push 61
 10577 00005577 E8C5F8                   call prc
 10578 0000557A 83C402                   add  sp, 2
 10579 0000557D 8B5E04                   mov bx, [bp+4]
 10580 00005580 C1E302                   shl bx, 2
 10581 00005583 668B87EB8A               mov eax, [GData + bx]
 10582 00005588 668946F8                 mov dword [bp-8], eax
 10583 0000558C 66FF76F8                 push dword [bp-8]
 10584 00005590 E8CE09                   call prL
 10585 00005593 83C404                   add  sp, 4
 10586                                  
 10587                                  ;-981   if(GType[i]=='&') { prc('['); L=GData[i]; prL(L); prc(']');}
 10588                                  
 10589                                  @@listvar599:
 10590 00005596 8B5E04                   mov bx, [bp+4]
 10591 00005599 8A87B782                 mov al, [GType + bx]
 10592 0000559D 3C26                     cmp al, 38
 10593 0000559F 0F852900                 jne @@listvar600
 10594 000055A3 6A5B                     push 91
 10595 000055A5 E897F8                   call prc
 10596 000055A8 83C402                   add  sp, 2
 10597 000055AB 8B5E04                   mov bx, [bp+4]
 10598 000055AE C1E302                   shl bx, 2
 10599 000055B1 668B87EB8A               mov eax, [GData + bx]
 10600 000055B6 668946F8                 mov dword [bp-8], eax
 10601 000055BA 66FF76F8                 push dword [bp-8]
 10602 000055BE E8A009                   call prL
 10603 000055C1 83C404                   add  sp, 4
 10604 000055C4 6A5D                     push 93
 10605 000055C6 E876F8                   call prc
 10606 000055C9 83C402                   add  sp, 2
 10607                                  
 10608                                  ;-982 }
 10609                                  
 10610                                  @@listvar600:
 10611                                  
 10612                                  ;-983 int listcall() { int i;  prs("\n\n;    #  addr name   list of CALLs\n");
 10613 000055CC C9                       LEAVE
 10614 000055CD C3                       ret
 10615                                  ; ENDP
 10616 000055CE 5C6E3B00                listvar_0 db "\n;",0
 10617 000055D2 7661722000              listvar_1 db "var ",0
 10618 000055D7 7074722000              listvar_2 db "ptr ",0
 10619 000055DC 6172722000              listvar_3 db "arr ",0
 10620 000055E1 6465662000              listvar_4 db "def ",0
 10621 000055E6 7369676E2000            listvar_5 db "sign ",0
 10622 000055EC 756E73672000            listvar_6 db "unsg ",0
 10623 000055F2 627974652000            listvar_7 db "byte ",0
 10624 000055F8 776F72642000            listvar_8 db "word ",0
 10625 000055FE 647772642000            listvar_9 db "dwrd ",0
 10626 00005604 202020202D00            listvar_10 db "    -",0
 10627 0000560A 204E554C4C00            listvar_11 db " NULL",0
 10628 00005610 627000                  listvar_12 db "bp",0
 10629 00005613 20202000                listvar_13 db "   ",0
 10630                                  
 10631                                  listcall:  ; *** PROC ***
 10632                                  ;Function : listcall, Number of local variables: 1
 10633                                  ;   # type sign width line used address name   list of local variables
 10634                                  ;  200 var sign word   983 NULL bp-2    i;
 10635 00005617 C8020000                 ENTER  2,0
 10636 0000561B 68[4856]                 push listcall_0
 10637 0000561E E88DF8                   call prs
 10638 00005621 83C402                   add  sp, 2
 10639                                  
 10640                                  ;-984   i=0;  while (i< CTop) { calllisting(i); i++; } }
 10641                                  
 10642 00005624 66B800000000             mov eax, 0
 10643 0000562A 8946FE                   mov word [bp-2], ax
 10644                                  @@listcall601:
 10645 0000562D 8B46FE                   mov ax, [bp-2]
 10646 00005630 3B06[6400]               cmp ax, [CTop]
 10647 00005634 0F8D0E00                 jge @@listcall602
 10648 00005638 FF76FE                   push word [bp-2]
 10649 0000563B E83200                   call calllisting
 10650 0000563E 83C402                   add  sp, 2
 10651 00005641 FF46FE                   inc  word [bp-2]
 10652 00005644 EBE7                     jmp @@listcall601
 10653                                  @@listcall602:
 10654                                  
 10655                                  ;-985 int calllisting(int i) {char c; int j;
 10656 00005646 C9                       LEAVE
 10657 00005647 C3                       ret
 10658                                  ; ENDP
 10659 00005648 5C6E5C6E3B20202020-     listcall_0 db "\n\n;    #  addr name   list of CALLs\n",0
 10660 00005651 23202061646472206E-
 10661 0000565A 616D652020206C6973-
 10662 00005663 74206F662043414C4C-
 10663 0000566C 735C6E00           
 10664                                  
 10665                                  calllisting:  ; *** PROC ***
 10666                                  
 10667                                  ;-986   prs("\n;"); printint51(i); prc(32);
 10668                                  
 10669                                  ;Function : calllisting, Number of local variables: 3
 10670                                  ;   # type sign width line used address name   list of local variables
 10671                                  ;  200 var sign word   985 NULL bp+4    i
 10672                                  ;  201 var sign byte   985 NULL bp-2    c
 10673                                  ;  202 var sign word   985 NULL bp-4    j;
 10674 00005670 C8040000                 ENTER  4,0
 10675 00005674 68[E256]                 push calllisting_0
 10676 00005677 E834F8                   call prs
 10677 0000567A 83C402                   add  sp, 2
 10678 0000567D FF7604                   push word [bp+4]
 10679 00005680 E8D6F9                   call printint51
 10680 00005683 83C402                   add  sp, 2
 10681 00005686 6A20                     push 32
 10682 00005688 E8B4F7                   call prc
 10683 0000568B 83C402                   add  sp, 2
 10684                                  
 10685                                  ;-987   c=CUnres [i]; if(c==0)prs("unresolved ");
 10686                                  
 10687 0000568E 8B5E04                   mov bx, [bp+4]
 10688 00005691 8A8777AE                 mov al, [CUnres + bx]
 10689 00005695 8846FE                   mov byte [bp-2], al
 10690 00005698 8A46FE                   mov al, [bp-2]
 10691 0000569B 3C00                     cmp al, 0
 10692 0000569D 0F850900                 jne @@calllisting603
 10693 000056A1 68[E656]                 push calllisting_1
 10694 000056A4 E807F8                   call prs
 10695 000056A7 83C402                   add  sp, 2
 10696                                  
 10697                                  ;-988   j=CName[i];            printint51(j); prc(32);
 10698                                  
 10699                                  @@calllisting603:
 10700 000056AA 8B5E04                   mov bx, [bp+4]
 10701 000056AD D1E3                     shl bx, 1
 10702 000056AF 8B87D79E                 mov ax, [CName + bx]
 10703 000056B3 8946FC                   mov word [bp-4], ax
 10704 000056B6 FF76FC                   push word [bp-4]
 10705 000056B9 E89DF9                   call printint51
 10706 000056BC 83C402                   add  sp, 2
 10707 000056BF 6A20                     push 32
 10708 000056C1 E87BF7                   call prc
 10709 000056C4 83C402                   add  sp, 2
 10710                                  
 10711                                  ;-989   from_far(NA, j);   prs(NA);
 10712                                  
 10713 000056C7 FF76FC                   push word [bp-4]
 10714 000056CA 8D06[7200]               lea  ax, [NA]
 10715 000056CE 50                       push ax
 10716 000056CF E8D307                   call from_far
 10717 000056D2 83C404                   add  sp, 4
 10718 000056D5 8D06[7200]               lea  ax, [NA]
 10719 000056D9 50                       push ax
 10720 000056DA E8D1F7                   call prs
 10721 000056DD 83C402                   add  sp, 2
 10722                                  
 10723                                  ;-990 }
 10724                                  
 10725                                  
 10726                                  ;-991 int countcalls(int f) { unsigned int i;
 10727 000056E0 C9                       LEAVE
 10728 000056E1 C3                       ret
 10729                                  ; ENDP
 10730 000056E2 5C6E3B00                calllisting_0 db "\n;",0
 10731 000056E6 756E7265736F6C7665-     calllisting_1 db "unresolved ",0
 10732 000056EF 642000             
 10733                                  
 10734                                  countcalls:  ; *** PROC ***
 10735                                  
 10736                                  ;-992   pt=FName[f]; from_far(NA, pt);
 10737                                  
 10738                                  ;Function : countcalls, Number of local variables: 2
 10739                                  ;   # type sign width line used address name   list of local variables
 10740                                  ;  200 var sign word   991 NULL bp+4    f
 10741                                  ;  201 var unsg word   991 NULL bp-2    i;
 10742 000056F2 C8020000                 ENTER  2,0
 10743 000056F6 8B5E04                   mov bx, [bp+4]
 10744 000056F9 D1E3                     shl bx, 1
 10745 000056FB 8B877F9C                 mov ax, [FName + bx]
 10746 000056FF A3[BE00]                 mov word [pt], ax
 10747 00005702 FF36[BE00]               push word [pt]
 10748 00005706 8D06[7200]               lea  ax, [NA]
 10749 0000570A 50                       push ax
 10750 0000570B E89707                   call from_far
 10751 0000570E 83C404                   add  sp, 4
 10752                                  
 10753                                  ;-993   i=0;  while (i < CTop) {  p1=CName[i]; from_far(NB, p1);
 10754                                  
 10755 00005711 66B800000000             mov eax, 0
 10756 00005717 8946FE                   mov word [bp-2], ax
 10757                                  @@countcalls604:
 10758 0000571A 8B46FE                   mov ax, [bp-2]
 10759 0000571D 3B06[6400]               cmp ax, [CTop]
 10760 00005721 0F8D4B00                 jge @@countcalls605
 10761 00005725 8B5EFE                   mov bx, [bp-2]
 10762 00005728 D1E3                     shl bx, 1
 10763 0000572A 8B87D79E                 mov ax, [CName + bx]
 10764 0000572E A3[C000]                 mov word [p1], ax
 10765 00005731 FF36[C000]               push word [p1]
 10766 00005735 8D06[9300]               lea  ax, [NB]
 10767 00005739 50                       push ax
 10768 0000573A E86807                   call from_far
 10769 0000573D 83C404                   add  sp, 4
 10770                                  
 10771                                  ;-994     if (eqstr(NA, NB))  FCalls[f] = FCalls[f] + 1;         i++; }
 10772                                  
 10773 00005740 8D06[9300]               lea  ax, [NB]
 10774 00005744 50                       push ax
 10775 00005745 8D06[7200]               lea  ax, [NA]
 10776 00005749 50                       push ax
 10777 0000574A E8AF0B                   call eqstr
 10778 0000574D 83C404                   add  sp, 4
 10779 00005750 08C0                     or  al, al
 10780 00005752 0F841500                 je @@countcalls606
 10781 00005756 8B5E04                   mov bx, [bp+4]
 10782 00005759 D1E3                     shl bx, 1
 10783 0000575B 8B87279A                 mov ax, [FCalls + bx]
 10784 0000575F 83C001                   add ax, 1
 10785 00005762 8B5E04                   mov bx, [bp+4]
 10786 00005765 D1E3                     shl bx, 1
 10787 00005767 8987279A                 mov [FCalls+bx], ax
 10788                                  @@countcalls606:
 10789 0000576B FF46FE                   inc  word [bp-2]
 10790                                  
 10791                                  ;-995 }
 10792                                  
 10793 0000576E EBAA                     jmp @@countcalls604
 10794                                  @@countcalls605:
 10795                                  
 10796                                  ;-996 int listfunc() { int i;
 10797 00005770 C9                       LEAVE
 10798 00005771 C3                       ret
 10799                                  ; ENDP
 10800                                  
 10801                                  listfunc:  ; *** PROC ***
 10802                                  
 10803                                  ;-997   prs("\n\n\n;   # Calls Line Width  Name   list of functions\n");
 10804                                  
 10805                                  ;Function : listfunc, Number of local variables: 1
 10806                                  ;   # type sign width line used address name   list of local variables
 10807                                  ;  200 var sign word   996 NULL bp-2    i;
 10808 00005772 C8020000                 ENTER  2,0
 10809 00005776 68[C557]                 push listfunc_0
 10810 00005779 E832F7                   call prs
 10811 0000577C 83C402                   add  sp, 2
 10812                                  
 10813                                  ;-998   i=0;  while (i < FTop) { countcalls (i); i++; } 
 10814                                  
 10815 0000577F 66B800000000             mov eax, 0
 10816 00005785 8946FE                   mov word [bp-2], ax
 10817                                  @@listfunc607:
 10818 00005788 8B46FE                   mov ax, [bp-2]
 10819 0000578B 3B06[6200]               cmp ax, [FTop]
 10820 0000578F 0F8D0E00                 jge @@listfunc608
 10821 00005793 FF76FE                   push word [bp-2]
 10822 00005796 E859FF                   call countcalls
 10823 00005799 83C402                   add  sp, 2
 10824 0000579C FF46FE                   inc  word [bp-2]
 10825                                  
 10826                                  ;-999   i=0;  while (i < FTop) { funclisting(i); i++; } }
 10827                                  
 10828 0000579F EBE7                     jmp @@listfunc607
 10829                                  @@listfunc608:
 10830 000057A1 66B800000000             mov eax, 0
 10831 000057A7 8946FE                   mov word [bp-2], ax
 10832                                  @@listfunc609:
 10833 000057AA 8B46FE                   mov ax, [bp-2]
 10834 000057AD 3B06[6200]               cmp ax, [FTop]
 10835 000057B1 0F8D0E00                 jge @@listfunc610
 10836 000057B5 FF76FE                   push word [bp-2]
 10837 000057B8 E84300                   call funclisting
 10838 000057BB 83C402                   add  sp, 2
 10839 000057BE FF46FE                   inc  word [bp-2]
 10840 000057C1 EBE7                     jmp @@listfunc609
 10841                                  @@listfunc610:
 10842                                  
 10843                                  ;-1000 int funclisting(int i) {int j;  char c;
 10844 000057C3 C9                       LEAVE
 10845 000057C4 C3                       ret
 10846                                  ; ENDP
 10847 000057C5 5C6E5C6E5C6E3B2020-     listfunc_0 db "\n\n\n;   # Calls Line Width  Name   list of functions\n",0
 10848 000057CE 20232043616C6C7320-
 10849 000057D7 4C696E652057696474-
 10850 000057E0 6820204E616D652020-
 10851 000057E9 206C697374206F6620-
 10852 000057F2 66756E6374696F6E73-
 10853 000057FB 5C6E00             
 10854                                  
 10855                                  funclisting:  ; *** PROC ***
 10856                                  
 10857                                  ;-1001   prs("\n;");    printint51(i);
 10858                                  
 10859                                  ;Function : funclisting, Number of local variables: 3
 10860                                  ;   # type sign width line used address name   list of local variables
 10861                                  ;  200 var sign word  1000 NULL bp+4    i
 10862                                  ;  201 var sign word  1000 NULL bp-2    j
 10863                                  ;  202 var sign byte  1000 NULL bp-4    c;
 10864 000057FE C8040000                 ENTER  4,0
 10865 00005802 68[E058]                 push funclisting_0
 10866 00005805 E8A6F6                   call prs
 10867 00005808 83C402                   add  sp, 2
 10868 0000580B FF7604                   push word [bp+4]
 10869 0000580E E848F8                   call printint51
 10870 00005811 83C402                   add  sp, 2
 10871                                  
 10872                                  ;-1002   j = FCalls[i]; if (j) printint51(j); else prs(" NULL");
 10873                                  
 10874 00005814 8B5E04                   mov bx, [bp+4]
 10875 00005817 D1E3                     shl bx, 1
 10876 00005819 8B87279A                 mov ax, [FCalls + bx]
 10877 0000581D 8946FE                   mov word [bp-2], ax
 10878 00005820 8B46FE                   mov ax, [bp-2]
 10879 00005823 08C0                     or  al, al
 10880 00005825 0F840C00                 je @@funclisting611
 10881 00005829 FF76FE                   push word [bp-2]
 10882 0000582C E82AF8                   call printint51
 10883 0000582F 83C402                   add  sp, 2
 10884 00005832 E90900                   jmp @@funclisting612
 10885                                  @@funclisting611:
 10886 00005835 68[E458]                 push funclisting_1
 10887 00005838 E873F6                   call prs
 10888 0000583B 83C402                   add  sp, 2
 10889                                  
 10890                                  ;-1003   j = FLino[i];   printint51(j); prc(32);
 10891                                  
 10892                                  @@funclisting612:
 10893 0000583E 8B5E04                   mov bx, [bp+4]
 10894 00005841 D1E3                     shl bx, 1
 10895 00005843 8B87CF97                 mov ax, [FLino + bx]
 10896 00005847 8946FE                   mov word [bp-2], ax
 10897 0000584A FF76FE                   push word [bp-2]
 10898 0000584D E809F8                   call printint51
 10899 00005850 83C402                   add  sp, 2
 10900 00005853 6A20                     push 32
 10901 00005855 E8E7F5                   call prc
 10902 00005858 83C402                   add  sp, 2
 10903                                  
 10904                                  ;-1004   c=FWidth[i];
 10905                                  
 10906 0000585B 8B5E04                   mov bx, [bp+4]
 10907 0000585E 8A87A396                 mov al, [FWidth + bx]
 10908 00005862 8846FC                   mov byte [bp-4], al
 10909                                  
 10910                                  ;-1005   if(_ c==0)prs("void " );    if(_ c==1)prs("byte " );
 10911                                  
 10912 00005865 807EFC00                cmp byte [bp-4], 0
 10913 00005869 0F850900                 jne @@funclisting613
 10914 0000586D 68[EA58]                 push funclisting_2
 10915 00005870 E83BF6                   call prs
 10916 00005873 83C402                   add  sp, 2
 10917                                  @@funclisting613:
 10918 00005876 807EFC01                cmp byte [bp-4], 1
 10919 0000587A 0F850900                 jne @@funclisting614
 10920 0000587E 68[F058]                 push funclisting_3
 10921 00005881 E82AF6                   call prs
 10922 00005884 83C402                   add  sp, 2
 10923                                  
 10924                                  ;-1006   if(_ c==2)prs("word " );    if(_ c==4)prs("dwrd " );
 10925                                  
 10926                                  @@funclisting614:
 10927 00005887 807EFC02                cmp byte [bp-4], 2
 10928 0000588B 0F850900                 jne @@funclisting615
 10929 0000588F 68[F658]                 push funclisting_4
 10930 00005892 E819F6                   call prs
 10931 00005895 83C402                   add  sp, 2
 10932                                  @@funclisting615:
 10933 00005898 807EFC04                cmp byte [bp-4], 4
 10934 0000589C 0F850900                 jne @@funclisting616
 10935 000058A0 68[FC58]                 push funclisting_5
 10936 000058A3 E808F6                   call prs
 10937 000058A6 83C402                   add  sp, 2
 10938                                  
 10939                                  ;-1007   prc(32); prc(32);
 10940                                  
 10941                                  @@funclisting616:
 10942 000058A9 6A20                     push 32
 10943 000058AB E891F5                   call prc
 10944 000058AE 83C402                   add  sp, 2
 10945 000058B1 6A20                     push 32
 10946 000058B3 E889F5                   call prc
 10947 000058B6 83C402                   add  sp, 2
 10948                                  
 10949                                  ;-1008   j=FName[i]; from_far(NA, j); prs(NA);
 10950                                  
 10951 000058B9 8B5E04                   mov bx, [bp+4]
 10952 000058BC D1E3                     shl bx, 1
 10953 000058BE 8B877F9C                 mov ax, [FName + bx]
 10954 000058C2 8946FE                   mov word [bp-2], ax
 10955 000058C5 FF76FE                   push word [bp-2]
 10956 000058C8 8D06[7200]               lea  ax, [NA]
 10957 000058CC 50                       push ax
 10958 000058CD E8D505                   call from_far
 10959 000058D0 83C404                   add  sp, 4
 10960 000058D3 8D06[7200]               lea  ax, [NA]
 10961 000058D7 50                       push ax
 10962 000058D8 E8D3F5                   call prs
 10963 000058DB 83C402                   add  sp, 2
 10964                                  
 10965                                  ;-1009 }
 10966                                  
 10967                                  
 10968                                  ;-1010 unsigned int MAXUI=65535;
 10969 000058DE C9                       LEAVE
 10970 000058DF C3                       ret
 10971                                  ; ENDP
 10972 000058E0 5C6E3B00                funclisting_0 db "\n;",0
 10973 000058E4 204E554C4C00            funclisting_1 db " NULL",0
 10974 000058EA 766F69642000            funclisting_2 db "void ",0
 10975 000058F0 627974652000            funclisting_3 db "byte ",0
 10976 000058F6 776F72642000            funclisting_4 db "word ",0
 10977 000058FC 647772642000            funclisting_5 db "dwrd ",0
 10978 00005902 FFFF                    MAXUI dw 65535
 10979                                  
 10980                                  ;-1011 int epilog() {unsigned int i; 
 10981                                  
 10982                                  
 10983                                  epilog:  ; *** PROC ***
 10984                                  
 10985                                  ;-1012   strcpy(symbol, "LastFunctionByt");  storefunc();
 10986                                  
 10987                                  ;Function : epilog, Number of local variables: 1
 10988                                  ;   # type sign width line used address name   list of local variables
 10989                                  ;  200 var unsg word  1011 NULL bp-2    i;
 10990 00005904 C8020000                 ENTER  2,0
 10991 00005908 68[C45B]                 push epilog_0
 10992 0000590B 8D066E81                 lea  ax, [symbol]
 10993 0000590F 50                       push ax
 10994 00005910 E89508                   call strcpy
 10995 00005913 83C404                   add  sp, 4
 10996 00005916 E815B4                   call storefunc
 10997                                  
 10998                                  ;-1013   prs("\nLastFunctionByt:db 0E8h, 0, 0\npop ax\nret");
 10999                                  
 11000 00005919 68[D45B]                 push epilog_1
 11001 0000591C E88FF5                   call prs
 11002 0000591F 83C402                   add  sp, 2
 11003                                  
 11004                                  ;-1014   prs("\n \n;   # type sign width line used  address name   list of global variables\n");
 11005                                  
 11006 00005922 68[015C]                 push epilog_2
 11007 00005925 E886F5                   call prs
 11008 00005928 83C402                   add  sp, 2
 11009                                  
 11010                                  ;-1015   i=1;      while (i< GTop) { listvar(i); i++; }
 11011                                  
 11012 0000592B 66B801000000             mov eax, 1
 11013 00005931 8946FE                   mov word [bp-2], ax
 11014                                  @@epilog617:
 11015 00005934 8B46FE                   mov ax, [bp-2]
 11016 00005937 3B06[5E00]               cmp ax, [GTop]
 11017 0000593B 0F8D0E00                 jge @@epilog618
 11018 0000593F FF76FE                   push word [bp-2]
 11019 00005942 E855FA                   call listvar
 11020 00005945 83C402                   add  sp, 2
 11021 00005948 FF46FE                   inc  word [bp-2]
 11022                                  
 11023                                  ;-1016   listfunc();   listcall();   LIST=1;
 11024                                  
 11025 0000594B EBE7                     jmp @@epilog617
 11026                                  @@epilog618:
 11027 0000594D E822FE                   call listfunc
 11028 00005950 E8C4FC                   call listcall
 11029 00005953 66B801000000             mov eax, 1
 11030 00005959 A2[1700]                 mov byte [LIST], al
 11031                                  
 11032                                  ;-1017   prs("\n;Input: "); prs(&namein);
 11033                                  
 11034 0000595C 68[515C]                 push epilog_3
 11035 0000595F E84CF5                   call prs
 11036 00005962 83C402                   add  sp, 2
 11037 00005965 8D063182                 lea  ax, [namein]
 11038 00005969 50                       push ax
 11039 0000596A E841F5                   call prs
 11040 0000596D 83C402                   add  sp, 2
 11041                                  
 11042                                  ;-1018   prs(", List: ");   prs(&namelst);
 11043                                  
 11044 00005970 68[5C5C]                 push epilog_4
 11045 00005973 E838F5                   call prs
 11046 00005976 83C402                   add  sp, 2
 11047 00005979 8D067482                 lea  ax, [namelst]
 11048 0000597D 50                       push ax
 11049 0000597E E82DF5                   call prs
 11050 00005981 83C402                   add  sp, 2
 11051                                  
 11052                                  ;-1019   prs(",  Lines:"); printint51(lineno);
 11053                                  
 11054 00005984 68[655C]                 push epilog_5
 11055 00005987 E824F5                   call prs
 11056 0000598A 83C402                   add  sp, 2
 11057 0000598D FF36[BA00]               push word [lineno]
 11058 00005991 E8C5F6                   call printint51
 11059 00005994 83C402                   add  sp, 2
 11060                                  
 11061                                  ;-1020   prs("\n;Glob. variables:"); GTop--; printint51(GTop);
 11062                                  
 11063 00005997 68[6F5C]                 push epilog_6
 11064 0000599A E811F5                   call prs
 11065 0000599D 83C402                   add  sp, 2
 11066 000059A0 FF0E[5E00]               dec  word [GTop]
 11067 000059A4 FF36[5E00]               push word [GTop]
 11068 000059A8 E8AEF6                   call printint51
 11069 000059AB 83C402                   add  sp, 2
 11070                                  
 11071                                  ;-1021   prs(" max.:"); printint51(LSTART);
 11072                                  
 11073 000059AE 68[835C]                 push epilog_7
 11074 000059B1 E8FAF4                   call prs
 11075 000059B4 83C402                   add  sp, 2
 11076 000059B7 68C800                   push 200
 11077 000059BA E89CF6                   call printint51
 11078 000059BD 83C402                   add  sp, 2
 11079                                  
 11080                                  ;-1022   prs("\n;Local variables:"); i=maxloc-LSTART; printint51(i);
 11081                                  
 11082 000059C0 68[8A5C]                 push epilog_8
 11083 000059C3 E8E8F4                   call prs
 11084 000059C6 83C402                   add  sp, 2
 11085 000059C9 A1[3200]                 mov ax, [maxloc]
 11086 000059CC 2DC800                   sub ax, 200
 11087 000059CF 8946FE                   mov word [bp-2], ax
 11088 000059D2 FF76FE                   push word [bp-2]
 11089 000059D5 E881F6                   call printint51
 11090 000059D8 83C402                   add  sp, 2
 11091                                  
 11092                                  ;-1023   prs(" max.:"); _ i=VARMAX; i-=LSTART; printint51(i);
 11093                                  
 11094 000059DB 68[9E5C]                 push epilog_9
 11095 000059DE E8CDF4                   call prs
 11096 000059E1 83C402                   add  sp, 2
 11097 000059E4 C746FE2C01              mov word [bp-2], 300; i
 11098 000059E9 816EFEC800               sub  word [bp-2], 200
 11099 000059EE FF76FE                   push word [bp-2]
 11100 000059F1 E865F6                   call printint51
 11101 000059F4 83C402                   add  sp, 2
 11102                                  
 11103                                  ;-1024   prs(", in '"); prs(locname); prs("'");
 11104                                  
 11105 000059F7 68[A55C]                 push epilog_10
 11106 000059FA E8B1F4                   call prs
 11107 000059FD 83C402                   add  sp, 2
 11108 00005A00 8D062B81                 lea  ax, [locname]
 11109 00005A04 50                       push ax
 11110 00005A05 E8A6F4                   call prs
 11111 00005A08 83C402                   add  sp, 2
 11112 00005A0B 68[AC5C]                 push epilog_11
 11113 00005A0E E89DF4                   call prs
 11114 00005A11 83C402                   add  sp, 2
 11115                                  
 11116                                  ;-1025   prs("\n;Functions      :"); printint51(FTop);
 11117                                  
 11118 00005A14 68[AE5C]                 push epilog_12
 11119 00005A17 E894F4                   call prs
 11120 00005A1A 83C402                   add  sp, 2
 11121 00005A1D FF36[6200]               push word [FTop]
 11122 00005A21 E835F6                   call printint51
 11123 00005A24 83C402                   add  sp, 2
 11124                                  
 11125                                  ;-1026   prs(" max.:"); printint51(FUNCMAX);
 11126                                  
 11127 00005A27 68[C25C]                 push epilog_13
 11128 00005A2A E881F4                   call prs
 11129 00005A2D 83C402                   add  sp, 2
 11130 00005A30 682C01                   push 300
 11131 00005A33 E823F6                   call printint51
 11132 00005A36 83C402                   add  sp, 2
 11133                                  
 11134                                  ;-1027   prs("\n;Calls          :"); printint51(CTop);
 11135                                  
 11136 00005A39 68[C95C]                 push epilog_14
 11137 00005A3C E86FF4                   call prs
 11138 00005A3F 83C402                   add  sp, 2
 11139 00005A42 FF36[6400]               push word [CTop]
 11140 00005A46 E810F6                   call printint51
 11141 00005A49 83C402                   add  sp, 2
 11142                                  
 11143                                  ;-1028   prs(" max.:"); printint51(CALLMAX);
 11144                                  
 11145 00005A4C 68[DD5C]                 push epilog_15
 11146 00005A4F E85CF4                   call prs
 11147 00005A52 83C402                   add  sp, 2
 11148 00005A55 68D007                   push 2000
 11149 00005A58 E8FEF5                   call printint51
 11150 00005A5B 83C402                   add  sp, 2
 11151                                  
 11152                                  ;-1029   prs(", NameField:"); printint51(CNameTop);
 11153                                  
 11154 00005A5E 68[E45C]                 push epilog_16
 11155 00005A61 E84AF4                   call prs
 11156 00005A64 83C402                   add  sp, 2
 11157 00005A67 FF36[B400]               push word [CNameTop]
 11158 00005A6B E8EBF5                   call printint51
 11159 00005A6E 83C402                   add  sp, 2
 11160                                  
 11161                                  ;-1030   prs(" max.:"); printint51(MAXUI);
 11162                                  
 11163 00005A71 68[F15C]                 push epilog_17
 11164 00005A74 E837F4                   call prs
 11165 00005A77 83C402                   add  sp, 2
 11166 00005A7A FF36[0259]               push word [MAXUI]
 11167 00005A7E E8D8F5                   call printint51
 11168 00005A81 83C402                   add  sp, 2
 11169                                  
 11170                                  ;-1031   __asm{call LastFunctionByt}  _ i=ax;
 11171                                  
 11172 00005A84 E87309                  call LastFunctionByt
 11173 00005A87 8946FE                  mov [bp-2], ax
 11174                                  
 11175                                  ;-1032   prs("\n;Code until     :"); printint51(i);
 11176                                  
 11177 00005A8A 68[F85C]                 push epilog_18
 11178 00005A8D E81EF4                   call prs
 11179 00005A90 83C402                   add  sp, 2
 11180 00005A93 FF76FE                   push word [bp-2]
 11181 00005A96 E8C0F5                   call printint51
 11182 00005A99 83C402                   add  sp, 2
 11183                                  
 11184                                  ;-1033   prs(" max.: "); printint51(ORGDATAORIG); i=ORGDATAORIG-i; prs(", free:");
 11185                                  
 11186 00005A9C 68[0C5D]                 push epilog_19
 11187 00005A9F E80CF4                   call prs
 11188 00005AA2 83C402                   add  sp, 2
 11189 00005AA5 66FF36[2400]             push dword [ORGDATAORIG]
 11190 00005AAA E8ACF5                   call printint51
 11191 00005AAD 83C404                   add  sp, 4
 11192 00005AB0 66A1[2400]               mov eax, [ORGDATAORIG]
 11193 00005AB4 2B46FE                   sub ax, [bp-2]
 11194 00005AB7 8946FE                   mov word [bp-2], ax
 11195 00005ABA 68[145D]                 push epilog_20
 11196 00005ABD E8EEF3                   call prs
 11197 00005AC0 83C402                   add  sp, 2
 11198                                  
 11199                                  ;-1034   printint51(i); if (i <= 1000) {prs(" *** Warning *** Code area too small");
 11200                                  
 11201 00005AC3 FF76FE                   push word [bp-2]
 11202 00005AC6 E890F5                   call printint51
 11203 00005AC9 83C402                   add  sp, 2
 11204 00005ACC 8B46FE                   mov ax, [bp-2]
 11205 00005ACF 3DE803                   cmp ax, 1000
 11206 00005AD2 0F871D00                 ja  @@epilog619
 11207 00005AD6 68[1C5D]                 push epilog_21
 11208 00005AD9 E8D2F3                   call prs
 11209 00005ADC 83C402                   add  sp, 2
 11210                                  
 11211                                  ;-1035   prs("\nuse #define ORGDATA > "); printint51(ORGDATAORIG); }
 11212                                  
 11213 00005ADF 68[415D]                 push epilog_22
 11214 00005AE2 E8C9F3                   call prs
 11215 00005AE5 83C402                   add  sp, 2
 11216 00005AE8 66FF36[2400]             push dword [ORGDATAORIG]
 11217 00005AED E869F5                   call printint51
 11218 00005AF0 83C404                   add  sp, 4
 11219                                  
 11220                                  ;-1036   prs("\n;Data (HeapEnd) :"); prunsign1(orgData); i=MAXUI-orgData;
 11221                                  
 11222                                  @@epilog619:
 11223 00005AF3 68[5A5D]                 push epilog_23
 11224 00005AF6 E8B5F3                   call prs
 11225 00005AF9 83C402                   add  sp, 2
 11226 00005AFC 66FF36[2800]             push dword [orgData]
 11227 00005B01 E813F5                   call prunsign1
 11228 00005B04 83C404                   add  sp, 4
 11229 00005B07 A1[0259]                 mov ax, [MAXUI]
 11230 00005B0A 662B06[2800]             sub eax, [orgData]
 11231 00005B0F 8946FE                   mov word [bp-2], ax
 11232                                  
 11233                                  ;-1037   prs(", resting stacksize: ");printint51(i);
 11234                                  
 11235 00005B12 68[6E5D]                 push epilog_24
 11236 00005B15 E896F3                   call prs
 11237 00005B18 83C402                   add  sp, 2
 11238 00005B1B FF76FE                   push word [bp-2]
 11239 00005B1E E838F5                   call printint51
 11240 00005B21 83C402                   add  sp, 2
 11241                                  
 11242                                  ;-1038   if (i <= 5000) prs(" *** Warning *** Stack too small");
 11243                                  
 11244 00005B24 8B46FE                   mov ax, [bp-2]
 11245 00005B27 3D8813                   cmp ax, 5000
 11246 00005B2A 0F870900                 ja  @@epilog620
 11247 00005B2E 68[845D]                 push epilog_25
 11248 00005B31 E87AF3                   call prs
 11249 00005B34 83C402                   add  sp, 2
 11250                                  
 11251                                  ;-1039   prs("\n;Max. Const in '"); prs(coname); prs("' :"); printint51(maxco);
 11252                                  
 11253                                  @@epilog620:
 11254 00005B37 68[A55D]                 push epilog_26
 11255 00005B3A E871F3                   call prs
 11256 00005B3D 83C402                   add  sp, 2
 11257 00005B40 8D06E880                 lea  ax, [coname]
 11258 00005B44 50                       push ax
 11259 00005B45 E866F3                   call prs
 11260 00005B48 83C402                   add  sp, 2
 11261 00005B4B 68[B85D]                 push epilog_27
 11262 00005B4E E85DF3                   call prs
 11263 00005B51 83C402                   add  sp, 2
 11264 00005B54 FF36[2C00]               push word [maxco]
 11265 00005B58 E8FEF4                   call printint51
 11266 00005B5B 83C402                   add  sp, 2
 11267                                  
 11268                                  ;-1040   prs(" max."); printint51(COMAX); i=COMAX; i=i-maxco; prs(", free:");
 11269                                  
 11270 00005B5E 68[BC5D]                 push epilog_28
 11271 00005B61 E84AF3                   call prs
 11272 00005B64 83C402                   add  sp, 2
 11273 00005B67 68B80B                   push 3000
 11274 00005B6A E8ECF4                   call printint51
 11275 00005B6D 83C402                   add  sp, 2
 11276 00005B70 66B8B80B0000             mov eax, 3000
 11277 00005B76 8946FE                   mov word [bp-2], ax
 11278 00005B79 8B46FE                   mov ax, [bp-2]
 11279 00005B7C 2B06[2C00]               sub ax, [maxco]
 11280 00005B80 8946FE                   mov word [bp-2], ax
 11281 00005B83 68[C25D]                 push epilog_29
 11282 00005B86 E825F3                   call prs
 11283 00005B89 83C402                   add  sp, 2
 11284                                  
 11285                                  ;-1041   printint51(i);if (i <= 1000)prs(" *** Warning *** constant area too small");
 11286                                  
 11287 00005B8C FF76FE                   push word [bp-2]
 11288 00005B8F E8C7F4                   call printint51
 11289 00005B92 83C402                   add  sp, 2
 11290 00005B95 8B46FE                   mov ax, [bp-2]
 11291 00005B98 3DE803                   cmp ax, 1000
 11292 00005B9B 0F870900                 ja  @@epilog621
 11293 00005B9F 68[CA5D]                 push epilog_30
 11294 00005BA2 E809F3                   call prs
 11295 00005BA5 83C402                   add  sp, 2
 11296                                  
 11297                                  ;-1042   if(NASM==0)prs("\nEND");end1(0);}
 11298                                  
 11299                                  @@epilog621:
 11300 00005BA8 A0[1500]                 mov al, [NASM]
 11301 00005BAB 3C00                     cmp al, 0
 11302 00005BAD 0F850900                 jne @@epilog622
 11303 00005BB1 68[F35D]                 push epilog_31
 11304 00005BB4 E8F7F2                   call prs
 11305 00005BB7 83C402                   add  sp, 2
 11306                                  @@epilog622:
 11307 00005BBA 6A00                     push 0
 11308 00005BBC E8CDF5                   call end1
 11309 00005BBF 83C402                   add  sp, 2
 11310                                  
 11311                                  ;-1043 
 11312                                  
 11313                                  
 11314                                  ;-1044 int memresize(unsigned int i) {
 11315 00005BC2 C9                       LEAVE
 11316 00005BC3 C3                       ret
 11317                                  ; ENDP
 11318 00005BC4 4C61737446756E6374-     epilog_0 db "LastFunctionByt",0
 11319 00005BCD 696F6E42797400     
 11320 00005BD4 5C6E4C61737446756E-     epilog_1 db "\nLastFunctionByt:db 0E8h, 0, 0\npop ax\nret",0
 11321 00005BDD 6374696F6E4279743A-
 11322 00005BE6 646220304538682C20-
 11323 00005BEF 302C20305C6E706F70-
 11324 00005BF8 2061785C6E72657400 
 11325 00005C01 5C6E205C6E3B202020-     epilog_2 db "\n \n;   # type sign width line used  address name   list of global variables\n",0
 11326 00005C0A 232074797065207369-
 11327 00005C13 676E20776964746820-
 11328 00005C1C 6C696E652075736564-
 11329 00005C25 202061646472657373-
 11330 00005C2E 206E616D652020206C-
 11331 00005C37 697374206F6620676C-
 11332 00005C40 6F62616C2076617269-
 11333 00005C49 61626C65735C6E00   
 11334 00005C51 5C6E3B496E7075743A-     epilog_3 db "\n;Input: ",0
 11335 00005C5A 2000               
 11336 00005C5C 2C204C6973743A2000      epilog_4 db ", List: ",0
 11337 00005C65 2C20204C696E65733A-     epilog_5 db ",  Lines:",0
 11338 00005C6E 00                 
 11339 00005C6F 5C6E3B476C6F622E20-     epilog_6 db "\n;Glob. variables:",0
 11340 00005C78 7661726961626C6573-
 11341 00005C81 3A00               
 11342 00005C83 206D61782E3A00          epilog_7 db " max.:",0
 11343 00005C8A 5C6E3B4C6F63616C20-     epilog_8 db "\n;Local variables:",0
 11344 00005C93 7661726961626C6573-
 11345 00005C9C 3A00               
 11346 00005C9E 206D61782E3A00          epilog_9 db " max.:",0
 11347 00005CA5 2C20696E202700          epilog_10 db ", in '",0
 11348 00005CAC 2700                    epilog_11 db "'",0
 11349 00005CAE 5C6E3B46756E637469-     epilog_12 db "\n;Functions      :",0
 11350 00005CB7 6F6E73202020202020-
 11351 00005CC0 3A00               
 11352 00005CC2 206D61782E3A00          epilog_13 db " max.:",0
 11353 00005CC9 5C6E3B43616C6C7320-     epilog_14 db "\n;Calls          :",0
 11354 00005CD2 202020202020202020-
 11355 00005CDB 3A00               
 11356 00005CDD 206D61782E3A00          epilog_15 db " max.:",0
 11357 00005CE4 2C204E616D65466965-     epilog_16 db ", NameField:",0
 11358 00005CED 6C643A00           
 11359 00005CF1 206D61782E3A00          epilog_17 db " max.:",0
 11360 00005CF8 5C6E3B436F64652075-     epilog_18 db "\n;Code until     :",0
 11361 00005D01 6E74696C2020202020-
 11362 00005D0A 3A00               
 11363 00005D0C 206D61782E3A2000        epilog_19 db " max.: ",0
 11364 00005D14 2C20667265653A00        epilog_20 db ", free:",0
 11365 00005D1C 202A2A2A205761726E-     epilog_21 db " *** Warning *** Code area too small",0
 11366 00005D25 696E67202A2A2A2043-
 11367 00005D2E 6F6465206172656120-
 11368 00005D37 746F6F20736D616C6C-
 11369 00005D40 00                 
 11370 00005D41 5C6E75736520236465-     epilog_22 db "\nuse #define ORGDATA > ",0
 11371 00005D4A 66696E65204F524744-
 11372 00005D53 415441203E2000     
 11373 00005D5A 5C6E3B446174612028-     epilog_23 db "\n;Data (HeapEnd) :",0
 11374 00005D63 48656170456E642920-
 11375 00005D6C 3A00               
 11376 00005D6E 2C2072657374696E67-     epilog_24 db ", resting stacksize: ",0
 11377 00005D77 20737461636B73697A-
 11378 00005D80 653A2000           
 11379 00005D84 202A2A2A205761726E-     epilog_25 db " *** Warning *** Stack too small",0
 11380 00005D8D 696E67202A2A2A2053-
 11381 00005D96 7461636B20746F6F20-
 11382 00005D9F 736D616C6C00       
 11383 00005DA5 5C6E3B4D61782E2043-     epilog_26 db "\n;Max. Const in '",0
 11384 00005DAE 6F6E737420696E2027-
 11385 00005DB7 00                 
 11386 00005DB8 27203A00                epilog_27 db "' :",0
 11387 00005DBC 206D61782E00            epilog_28 db " max.",0
 11388 00005DC2 2C20667265653A00        epilog_29 db ", free:",0
 11389 00005DCA 202A2A2A205761726E-     epilog_30 db " *** Warning *** constant area too small",0
 11390 00005DD3 696E67202A2A2A2063-
 11391 00005DDC 6F6E7374616E742061-
 11392 00005DE5 72656120746F6F2073-
 11393 00005DEE 6D616C6C00         
 11394 00005DF3 5C6E454E4400            epilog_31 db "\nEND",0
 11395                                  
 11396                                  memresize:  ; *** PROC ***
 11397                                  
 11398                                  ;-1045   _ DOS_ERR=0; bx=i; _ ax=cs; es=ax; ax=0x4A00; DosInt(); }
 11399                                  
 11400                                  ;Function : memresize, Number of local variables: 1
 11401                                  ;   # type sign width line used address name   list of local variables
 11402                                  ;  200 var unsg word  1044 NULL bp+4    i;
 11403 00005DF9 C8000000                 ENTER  0,0
 11404 00005DFD C706[C200]0000          mov word [DOS_ERR], 0
 11405 00005E03 8B5E04                   mov  bx, [bp+4]
 11406 00005E06 8CC8                     mov  ax, cs
 11407 00005E08 8EC0                     mov  es, ax
 11408 00005E0A B8004A                   mov  ax, 18944
 11409 00005E0D E86605                   call DosInt
 11410                                  
 11411                                  ;-1046 int memalloc(unsigned int i) { unsigned int vAX; unsigned int vBX;
 11412 00005E10 C9                       LEAVE
 11413 00005E11 C3                       ret
 11414                                  ; ENDP
 11415                                  
 11416                                  memalloc:  ; *** PROC ***
 11417                                  
 11418                                  ;-1047   _ DOS_ERR=0; bx=i;  ax=0x4800; DosInt(); _ vAX=ax; _ vBX=bx;
 11419                                  
 11420                                  ;Function : memalloc, Number of local variables: 3
 11421                                  ;   # type sign width line used address name   list of local variables
 11422                                  ;  200 var unsg word  1046 NULL bp+4    i
 11423                                  ;  201 var unsg word  1046 NULL bp-2    vAX
 11424                                  ;  202 var unsg word  1046 NULL bp-4    vBX;
 11425 00005E12 C8040000                 ENTER  4,0
 11426 00005E16 C706[C200]0000          mov word [DOS_ERR], 0
 11427 00005E1C 8B5E04                   mov  bx, [bp+4]
 11428 00005E1F B80048                   mov  ax, 18432
 11429 00005E22 E85105                   call DosInt
 11430 00005E25 8946FE                  mov [bp-2], ax
 11431 00005E28 895EFC                  mov [bp-4], bx
 11432                                  
 11433                                  ;-1048   if(DOS_ERR) return vBX;   return vAX;  }
 11434                                  
 11435 00005E2B A1[C200]                 mov ax, [DOS_ERR]
 11436 00005E2E 08C0                     or  al, al
 11437 00005E30 0F840600                 je @@memalloc623
 11438 00005E34 8B46FC                   mov ax, [bp-4]
 11439 00005E37 E90600                   jmp @@retn
 11440                                  @@memalloc623:
 11441 00005E3A 8B46FE                   mov ax, [bp-2]
 11442 00005E3D E90000                   jmp @@retn
 11443                                  
 11444                                  ;-1049 int copyF(char *dest, char *src, unsigned int sz) {
 11445                                  
 11446 00005E40 C9                      @@retn: LEAVE
 11447 00005E41 C3                       ret
 11448                                  ; ENDP
 11449                                  
 11450                                  copyF:  ; *** PROC ***
 11451                                  
 11452                                  ;-1050   segE;  _ es=ax;  _ si=src;  _ di=dest; _ cx=sz;  // ds:si   es:di
 11453                                  
 11454                                  ;Function : copyF, Number of local variables: 3
 11455                                  ;   # type sign width line used address name   list of local variables
 11456                                  ;  200 ptr sign byte  1049 NULL bp+4    dest
 11457                                  ;  201 ptr sign byte  1049 NULL bp+6    src
 11458                                  ;  202 var unsg word  1049 NULL bp+8    sz;
 11459 00005E42 C8000000                 ENTER  0,0
 11460 00005E46 A1[B800]                 mov ax, [segE]
 11461 00005E49 8EC0                     mov  es, ax
 11462 00005E4B 8B7606                   mov  si, [bp+6]
 11463 00005E4E 8B7E04                   mov  di, [bp+4]
 11464 00005E51 8B4E08                   mov  cx, [bp+8]
 11465                                  
 11466                                  ;-1051   __asm{cld} __asm{rep movsb} __asm{mov byte [es:di], 0}   }
 11467                                  
 11468 00005E54 FC                      cld
 11469 00005E55 F3A4                    rep movsb
 11470 00005E57 26C60500                mov byte [es:di], 0
 11471                                  
 11472                                  ;-1052 int loadName(char *dest, int i) {
 11473 00005E5B C9                       LEAVE
 11474 00005E5C C3                       ret
 11475                                  ; ENDP
 11476                                  
 11477                                  loadName:  ; *** PROC ***
 11478                                  
 11479                                  ;-1053   segE;  _ es=ax; _ di=dest;  GName[i]; _ si=ax;
 11480                                  
 11481                                  ;Function : loadName, Number of local variables: 2
 11482                                  ;   # type sign width line used address name   list of local variables
 11483                                  ;  200 ptr sign byte  1052 NULL bp+4    dest
 11484                                  ;  201 var sign word  1052 NULL bp+6    i;
 11485 00005E5D C8000000                 ENTER  0,0
 11486 00005E61 A1[B800]                 mov ax, [segE]
 11487 00005E64 8EC0                     mov  es, ax
 11488 00005E66 8B7E04                   mov  di, [bp+4]
 11489 00005E69 8B5E06                   mov bx, [bp+6]
 11490 00005E6C D1E3                     shl bx, 1
 11491 00005E6E 8B874B94                 mov ax, [GName + bx]
 11492 00005E72 89C6                     mov  si, ax
 11493                                  
 11494                                  ;-1054   do{ __asm{mov al, [es:si]} si++; *di=al;  di++; } while (al != 0); }
 11495                                  
 11496                                  @@loadName624:
 11497 00005E74 268A04                  mov al, [es:si]
 11498 00005E77 46                       inc  si
 11499 00005E78 8805                     mov  [di], al
 11500 00005E7A 47                       inc  di
 11501 00005E7B 3C00                     cmp  al, 0
 11502 00005E7D 0F840200                 je  @@loadName625
 11503 00005E81 EBF1                     jmp @@loadName624
 11504                                  @@loadName625:
 11505                                  
 11506                                  ;-1055 int to_far(char *dest, char *src) {
 11507 00005E83 C9                       LEAVE
 11508 00005E84 C3                       ret
 11509                                  ; ENDP
 11510                                  
 11511                                  to_far:  ; *** PROC ***
 11512                                  
 11513                                  ;-1056   segE;  _ es=ax;  _ si=src;  _ di=dest;  // ds:si   es:di
 11514                                  
 11515                                  ;Function : to_far, Number of local variables: 2
 11516                                  ;   # type sign width line used address name   list of local variables
 11517                                  ;  200 ptr sign byte  1055 NULL bp+4    dest
 11518                                  ;  201 ptr sign byte  1055 NULL bp+6    src;
 11519 00005E85 C8000000                 ENTER  0,0
 11520 00005E89 A1[B800]                 mov ax, [segE]
 11521 00005E8C 8EC0                     mov  es, ax
 11522 00005E8E 8B7606                   mov  si, [bp+6]
 11523 00005E91 8B7E04                   mov  di, [bp+4]
 11524                                  
 11525                                  ;-1057   do{ al= *si; si++; __asm{mov [es:di], al} di++; } while (al != 0); }
 11526                                  
 11527                                  @@to_far626:
 11528 00005E94 8A04                     mov  al, [si]
 11529 00005E96 46                       inc  si
 11530 00005E97 268805                  mov [es:di], al
 11531 00005E9A 47                       inc  di
 11532 00005E9B 3C00                     cmp  al, 0
 11533 00005E9D 0F840200                 je  @@to_far627
 11534 00005EA1 EBF1                     jmp @@to_far626
 11535                                  @@to_far627:
 11536                                  
 11537                                  ;-1058 int from_far(char *dest, char *src) {
 11538 00005EA3 C9                       LEAVE
 11539 00005EA4 C3                       ret
 11540                                  ; ENDP
 11541                                  
 11542                                  from_far:  ; *** PROC ***
 11543                                  
 11544                                  ;-1059   segE;  _ es=ax;  _ si=src;  _ di=dest;  // ds:si   es:di
 11545                                  
 11546                                  ;Function : from_far, Number of local variables: 2
 11547                                  ;   # type sign width line used address name   list of local variables
 11548                                  ;  200 ptr sign byte  1058 NULL bp+4    dest
 11549                                  ;  201 ptr sign byte  1058 NULL bp+6    src;
 11550 00005EA5 C8000000                 ENTER  0,0
 11551 00005EA9 A1[B800]                 mov ax, [segE]
 11552 00005EAC 8EC0                     mov  es, ax
 11553 00005EAE 8B7606                   mov  si, [bp+6]
 11554 00005EB1 8B7E04                   mov  di, [bp+4]
 11555                                  
 11556                                  ;-1060   do{ __asm{mov al, [es:si]} si++; *di=al;  di++; } while (al != 0); }
 11557                                  
 11558                                  @@from_far628:
 11559 00005EB4 268A04                  mov al, [es:si]
 11560 00005EB7 46                       inc  si
 11561 00005EB8 8805                     mov  [di], al
 11562 00005EBA 47                       inc  di
 11563 00005EBB 3C00                     cmp  al, 0
 11564 00005EBD 0F840200                 je  @@from_far629
 11565 00005EC1 EBF1                     jmp @@from_far628
 11566                                  @@from_far629:
 11567                                  
 11568                                  ;-1061 
 11569                                  
 11570                                  
 11571                                  ;-1062 unsigned char GDT1[]={15,0,0,0,0,0,0,0, 0xFF,0xFF,0x00,0x00,0x00,0x92,0xCF,0};
 11572 00005EC3 C9                       LEAVE
 11573 00005EC4 C3                       ret
 11574                                  ; ENDP
 11575 00005EC5 0F00000000000000FF-     GDT1 db 15,0,0,0,0,0,0,0,255,255,0,0,0,146,207,0
 11576 00005ECE FF00000092CF00     
 11577                                  
 11578                                  ;-1063 int isvirtual86() { eax=cr0;  ax &= 1; }
 11579                                  
 11580                                  
 11581                                  isvirtual86:  ; *** PROC ***
 11582 00005ED5 0F20C0                   mov  eax, cr0
 11583 00005ED8 83E001                   and  ax, 1
 11584                                  
 11585                                  ;-1064 int is32bit() { ecx=0xFFFF; __asm{jmp $ + 2;} ecx++; ifzero return 0; return 1;}
 11586                                  
 11587 00005EDB C3                       ret
 11588                                  ; ENDP
 11589                                  
 11590                                  is32bit:  ; *** PROC ***
 11591 00005EDC 66B9FFFF0000             mov  ecx, 65535
 11592 00005EE2 EB00                    jmp $ + 2;
 11593 00005EE4 6641                     inc  ecx
 11594 00005EE6 7509                     jne short @@is32bit630
 11595 00005EE8 66B800000000             mov eax, 0
 11596 00005EEE E90900                   jmp @@retn
 11597                                  @@is32bit630:
 11598 00005EF1 66B801000000             mov eax, 1
 11599 00005EF7 E90000                   jmp @@retn
 11600                                  
 11601                                  ;-1065 int INITCPU32() { eax=0;	ax=ds; eax << 4;
 11602                                  
 11603                                  @@retn:
 11604 00005EFA C3                       ret
 11605                                  ; ENDP
 11606                                  
 11607                                  INITCPU32:  ; *** PROC ***
 11608 00005EFB 66B800000000             mov  eax, 0
 11609 00005F01 8CD8                     mov  ax, ds
 11610 00005F03 66C1E004                 shl  eax, 4
 11611                                  
 11612                                  ;-1066 	asm add eax, GDT1       ;//Offset GDT
 11613                                  
 11614 00005F07 6605[C55E0000]           add eax, GDT1       ;//Offset GDT
 11615                                  
 11616                                  ;-1067 	asm mov [GDT1+2], eax
 11617                                  
 11618 00005F0D 66A3[C75E]               mov [GDT1+2], eax
 11619                                  
 11620                                  ;-1068 	asm lgdt [GDT1]
 11621                                  
 11622 00005F11 0F0116[C55E]             lgdt [GDT1]
 11623                                  
 11624                                  ;-1069 	bx=8;
 11625                                  
 11626 00005F16 BB0800                   mov  bx, 8
 11627                                  
 11628                                  ;-1070 	asm push ds
 11629                                  
 11630 00005F19 1E                       push ds
 11631                                  
 11632                                  ;-1071 	asm cli
 11633                                  
 11634 00005F1A FA                       cli
 11635                                  
 11636                                  ;-1072 	eax=cr0; al++; cr0=eax;
 11637                                  
 11638 00005F1B 0F20C0                   mov  eax, cr0
 11639 00005F1E FEC0                     inc  al
 11640 00005F20 0F22C0                   mov  cr0, eax
 11641                                  
 11642                                  ;-1073 	asm use32
 11643                                  
 11644                                   use32
 11645                                  
 11646                                  ;-1074 	__asm{jmp dword PROT_EN}   __asm{PROT_EN:}
 11647                                  
 11648 00005F23 E900000000              jmp dword PROT_EN
 11649                                  PROT_EN:
 11650                                  
 11651                                  ;-1075 	fs=bx;	al--;	cr0=eax;
 11652                                  
 11653 00005F28 8EE3                     mov  fs, bx
 11654 00005F2A FEC8                     dec  al
 11655 00005F2C 0F22C0                   mov  cr0, eax
 11656                                  
 11657                                  ;-1076 	asm use16
 11658                                  
 11659                                   use16
 11660                                  
 11661                                  ;-1077 	__asm{jmp word PROT_DI} __asm{PROT_DI:}
 11662                                  
 11663 00005F2F E90000                  jmp word PROT_DI
 11664                                  PROT_DI:
 11665                                  
 11666                                  ;-1078 	asm sti
 11667                                  
 11668 00005F32 FB                       sti
 11669                                  
 11670                                  ;-1079 	asm pop ds
 11671                                  
 11672 00005F33 1F                       pop ds
 11673                                  
 11674                                  ;-1080 }
 11675                                  
 11676                                  
 11677                                  ;-1081 
 11678                                  
 11679                                  
 11680                                  ;-1082 void to32  (long L,  char *src) { }
 11681                                  
 11682 00005F34 C3                       ret
 11683                                  ; ENDP
 11684                                  
 11685                                  to32:  ; *** PROC ***
 11686                                  ;Function : to32, Number of local variables: 2
 11687                                  ;   # type sign width line used address name   list of local variables
 11688                                  ;  200 var sign dwrd  1082 NULL bp+4    L
 11689                                  ;  201 ptr sign byte  1082 NULL bp+8    src;
 11690 00005F35 C8000000                 ENTER  0,0
 11691                                  
 11692                                  ;-1083 void from32(char *dest, long L) { }
 11693 00005F39 C9                       LEAVE
 11694 00005F3A C3                       ret
 11695                                  ; ENDP
 11696                                  
 11697                                  from32:  ; *** PROC ***
 11698                                  ;Function : from32, Number of local variables: 2
 11699                                  ;   # type sign width line used address name   list of local variables
 11700                                  ;  200 ptr sign byte  1083 NULL bp+4    dest
 11701                                  ;  201 var sign dwrd  1083 NULL bp+6    L;
 11702 00005F3B C8000000                 ENTER  0,0
 11703                                  
 11704                                  ;-1084 void prLr(unsigned long L) {           ultoar(L, Ls); prs(Ls); }//right
 11705 00005F3F C9                       LEAVE
 11706 00005F40 C3                       ret
 11707                                  ; ENDP
 11708                                  
 11709                                  prLr:  ; *** PROC ***
 11710                                  ;Function : prLr, Number of local variables: 1
 11711                                  ;   # type sign width line used address name   list of local variables
 11712                                  ;  200 var unsg dwrd  1084 NULL bp+4    L;
 11713 00005F41 C8000000                 ENTER  0,0
 11714 00005F45 8D06[6600]               lea  ax, [Ls]
 11715 00005F49 50                       push ax
 11716 00005F4A 66FF7604                 push dword [bp+4]
 11717 00005F4E E87F00                   call ultoar
 11718 00005F51 83C406                   add  sp, 6
 11719 00005F54 8D06[6600]               lea  ax, [Ls]
 11720 00005F58 50                       push ax
 11721 00005F59 E852EF                   call prs
 11722 00005F5C 83C402                   add  sp, 2
 11723                                  
 11724                                  ;-1085 void prL (unsigned long L) {char *p; p=ultoaL(L, Ls); prs(p ); }//left
 11725 00005F5F C9                       LEAVE
 11726 00005F60 C3                       ret
 11727                                  ; ENDP
 11728                                  
 11729                                  prL:  ; *** PROC ***
 11730                                  ;Function : prL, Number of local variables: 2
 11731                                  ;   # type sign width line used address name   list of local variables
 11732                                  ;  200 var unsg dwrd  1085 NULL bp+4    L
 11733                                  ;  201 ptr sign byte  1085 NULL bp-2    p;
 11734 00005F61 C8020000                 ENTER  2,0
 11735 00005F65 8D06[6600]               lea  ax, [Ls]
 11736 00005F69 50                       push ax
 11737 00005F6A 66FF7604                 push dword [bp+4]
 11738 00005F6E E8C100                   call ultoaL
 11739 00005F71 83C406                   add  sp, 6
 11740 00005F74 8946FE                   mov word [bp-2], ax
 11741 00005F77 FF76FE                   push word [bp-2]
 11742 00005F7A E831EF                   call prs
 11743 00005F7D 83C402                   add  sp, 2
 11744                                  
 11745                                  ;-1086 void prf(unsigned long L, int w) {char len; char *p;            //format width
 11746 00005F80 C9                       LEAVE
 11747 00005F81 C3                       ret
 11748                                  ; ENDP
 11749                                  
 11750                                  prf:  ; *** PROC ***
 11751                                  
 11752                                  ;-1087   p=ultoaL(L, Ls); len=strlen(p); if (w > len) do {prc(32); w--;} while (w>len);
 11753                                  
 11754                                  ;Function : prf, Number of local variables: 4
 11755                                  ;   # type sign width line used address name   list of local variables
 11756                                  ;  200 var unsg dwrd  1086 NULL bp+4    L
 11757                                  ;  201 var sign word  1086 NULL bp+8    w
 11758                                  ;  202 var sign byte  1086 NULL bp-2    len
 11759                                  ;  203 ptr sign byte  1086 NULL bp-4    p;
 11760 00005F82 C8040000                 ENTER  4,0
 11761 00005F86 8D06[6600]               lea  ax, [Ls]
 11762 00005F8A 50                       push ax
 11763 00005F8B 66FF7604                 push dword [bp+4]
 11764 00005F8F E8A000                   call ultoaL
 11765 00005F92 83C406                   add  sp, 6
 11766 00005F95 8946FC                   mov word [bp-4], ax
 11767 00005F98 FF76FC                   push word [bp-4]
 11768 00005F9B E8DF01                   call strlen
 11769 00005F9E 83C402                   add  sp, 2
 11770 00005FA1 8846FE                   mov byte [bp-2], al
 11771 00005FA4 8B4608                   mov ax, [bp+8]
 11772 00005FA7 3A46FE                   cmp al, [bp-2]
 11773 00005FAA 0F8E1700                 jle @@prf631
 11774                                  @@prf632:
 11775 00005FAE 6A20                     push 32
 11776 00005FB0 E88CEE                   call prc
 11777 00005FB3 83C402                   add  sp, 2
 11778 00005FB6 FF4E08                   dec  word [bp+8]
 11779 00005FB9 8B4608                   mov ax, [bp+8]
 11780 00005FBC 3A46FE                   cmp al, [bp-2]
 11781 00005FBF 0F8E0200                 jle @@prf633
 11782 00005FC3 EBE9                     jmp @@prf632
 11783                                  @@prf633:
 11784                                  @@prf631:
 11785                                  
 11786                                  ;-1088   prs(p); }
 11787                                  
 11788 00005FC5 FF76FC                   push word [bp-4]
 11789 00005FC8 E8E3EE                   call prs
 11790 00005FCB 83C402                   add  sp, 2
 11791                                  
 11792                                  ;-1089 void ultoar(unsigned long L, char *s) { int i;//edx:eax DIV ebx = eax Modulo edx
 11793 00005FCE C9                       LEAVE
 11794 00005FCF C3                       ret
 11795                                  ; ENDP
 11796                                  
 11797                                  ultoar:  ; *** PROC ***
 11798                                  
 11799                                  ;-1090   i=0;  while(i<10) { *s = '0'; s++; i++; }   *s = 0;   s--;  eax=L;
 11800                                  
 11801                                  ;Function : ultoar, Number of local variables: 3
 11802                                  ;   # type sign width line used address name   list of local variables
 11803                                  ;  200 var unsg dwrd  1089 NULL bp+4    L
 11804                                  ;  201 ptr sign byte  1089 NULL bp+8    s
 11805                                  ;  202 var sign word  1089 NULL bp-2    i;
 11806 00005FD0 C8020000                 ENTER  2,0
 11807 00005FD4 66B800000000             mov eax, 0
 11808 00005FDA 8946FE                   mov word [bp-2], ax
 11809                                  @@ultoar634:
 11810 00005FDD 8B46FE                   mov ax, [bp-2]
 11811 00005FE0 83F80A                   cmp ax, 10
 11812 00005FE3 0F8D1300                 jge @@ultoar635
 11813 00005FE7 66B830000000             mov eax, 48
 11814 00005FED 8B5E08                   mov  bx, [bp+8]
 11815 00005FF0 8807                     mov  [bx], al
 11816 00005FF2 FF4608                   inc  word [bp+8]
 11817 00005FF5 FF46FE                   inc  word [bp-2]
 11818 00005FF8 EBE3                     jmp @@ultoar634
 11819                                  @@ultoar635:
 11820 00005FFA 66B800000000             mov eax, 0
 11821 00006000 8B5E08                   mov  bx, [bp+8]
 11822 00006003 8807                     mov  [bx], al
 11823 00006005 FF4E08                   dec  word [bp+8]
 11824 00006008 668B4604                 mov  eax, [bp+4]
 11825                                  
 11826                                  ;-1091   do { edx=0;  ebx=10; ebx /= ;
 11827                                  
 11828                                  @@ultoar636:
 11829 0000600C 66BA00000000             mov  edx, 0
 11830 00006012 66BB0A000000             mov  ebx, 10
 11831 00006018 66F7F3                   div  ebx
 11832                                  
 11833                                  ;-1092        dl+=48; bx=s;   *bx=dl;  s--; } while (eax != 0);  }
 11834                                  
 11835 0000601B 80C230                   add  dl, 48
 11836 0000601E 8B5E08                   mov  bx, [bp+8]
 11837 00006021 8817                     mov  [bx], dl
 11838 00006023 FF4E08                   dec  word [bp+8]
 11839 00006026 6683F800                 cmp  eax, 0
 11840 0000602A 0F840200                 je  @@ultoar637
 11841 0000602E EBDC                     jmp @@ultoar636
 11842                                  @@ultoar637:
 11843                                  
 11844                                  ;-1093 int ultoaL(unsigned long L, char *s) { // edx:eax DIV ebx = eax Modulo edx
 11845 00006030 C9                       LEAVE
 11846 00006031 C3                       ret
 11847                                  ; ENDP
 11848                                  
 11849                                  ultoaL:  ; *** PROC ***
 11850                                  
 11851                                  ;-1094   s=s+10;  *s = 0;   s--;  eax=L;
 11852                                  
 11853                                  ;Function : ultoaL, Number of local variables: 2
 11854                                  ;   # type sign width line used address name   list of local variables
 11855                                  ;  200 var unsg dwrd  1093 NULL bp+4    L
 11856                                  ;  201 ptr sign byte  1093 NULL bp+8    s;
 11857 00006032 C8000000                 ENTER  0,0
 11858 00006036 8B4608                   mov ax, [bp+8]
 11859 00006039 83C00A                   add ax, 10
 11860 0000603C 894608                   mov word [bp+8], ax
 11861 0000603F 66B800000000             mov eax, 0
 11862 00006045 8B5E08                   mov  bx, [bp+8]
 11863 00006048 8807                     mov  [bx], al
 11864 0000604A FF4E08                   dec  word [bp+8]
 11865 0000604D 668B4604                 mov  eax, [bp+4]
 11866                                  
 11867                                  ;-1095   do { edx=0;  ebx=10; ebx /= ;
 11868                                  
 11869                                  @@ultoaL638:
 11870 00006051 66BA00000000             mov  edx, 0
 11871 00006057 66BB0A000000             mov  ebx, 10
 11872 0000605D 66F7F3                   div  ebx
 11873                                  
 11874                                  ;-1096        dl+=48; bx=s;   *bx=dl;  s--; } while (eax != 0);   s++; ax=s;
 11875                                  
 11876 00006060 80C230                   add  dl, 48
 11877 00006063 8B5E08                   mov  bx, [bp+8]
 11878 00006066 8817                     mov  [bx], dl
 11879 00006068 FF4E08                   dec  word [bp+8]
 11880 0000606B 6683F800                 cmp  eax, 0
 11881 0000606F 0F840200                 je  @@ultoaL639
 11882 00006073 EBDC                     jmp @@ultoaL638
 11883                                  @@ultoaL639:
 11884 00006075 FF4608                   inc  word [bp+8]
 11885 00006078 8B4608                   mov  ax, [bp+8]
 11886                                  
 11887                                  ;-1097 }
 11888 0000607B C9                       LEAVE
 11889 0000607C C3                       ret
 11890                                  ; ENDP
 11891                                   
 11892                                  ; missing functions: 
 11893                                  ; strlen
 11894                                  ; strlen
 11895                                  ; strcpy
 11896                                  ; strlen
 11897                                  ; strcpy
 11898                                  ; eqstr
 11899                                  ; eqstr
 11900                                  ; eqstr
 11901                                  ; strcpy
 11902                                  ; mkneg
 11903                                  ; strlen
 11904                                  ; strcpy
 11905                                  ; strcpy
 11906                                  ; eqstr
 11907                                  ; eqstr
 11908                                  ; strcpy
 11909                                  ; strcpy
 11910                                  ; strcpy
 11911                                  ; strcpy
 11912                                  ; strcpy
 11913                                  ; strcpy
 11914                                  ; strcpy
 11915                                  ; strcpy
 11916                                  ; strcpy
 11917                                  ; strcpy
 11918                                  ; strcpy
 11919                                  ; strcpy
 11920                                  ; eqstr
 11921                                  ; strcpy
 11922                                  ; strcpy
 11923                                  ; strlen
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
 11942                                  ; eqstr
 11943                                  ; eqstr
 11944                                  ; eqstr
 11945                                  ; eqstr
 11946                                  ; strlen
 11947                                  ; eqstr
 11948                                  ; eqstr
 11949                                  ; eqstr
 11950                                  ; eqstr
 11951                                  ; eqstr
 11952                                  ; eqstr
 11953                                  ; eqstr
 11954                                  ; eqstr
 11955                                  ; eqstr
 11956                                  ; eqstr
 11957                                  ; strcpy
 11958                                  ; cputs
 11959                                  ; cputs
 11960                                  ; cputs
 11961                                  ; cputs
 11962                                  ; readRL
 11963                                  ; strcpy
 11964                                  ; instr2
 11965                                  ; strcat1
 11966                                  ; toupper
 11967                                  ; instr2
 11968                                  ; strcpy
 11969                                  ; instr2
 11970                                  ; strcpy
 11971                                  ; strlen
 11972                                  ; openR
 11973                                  ; cputs
 11974                                  ; cputs
 11975                                  ; exitR
 11976                                  ; creatR
 11977                                  ; cputs
 11978                                  ; cputs
 11979                                  ; exitR
 11980                                  ; cputs
 11981                                  ; cputs
 11982                                  ; cputs
 11983                                  ; cputs
 11984                                  ; cputs
 11985                                  ; cputs
 11986                                  ; cputs
 11987                                  ; cputs
 11988                                  ; eqstr
 11989                                  ; cputs
 11990                                  ; cputs
 11991                                  ; pint
 11992                                  ; openR
 11993                                  ; cputs
 11994                                  ; cputs
 11995                                  ; exitR
 11996                                  ; eqstr
 11997                                  ; putch
 11998                                  ; cputs
 11999                                  ; openR
 12000                                  ; cputs
 12001                                  ; eqstr
 12002                                  ; eqstr
 12003                                  ; eqstr
 12004                                  ; eqstr
 12005                                  ; eqstr
 12006                                  ; strcpy
 12007                                  ; instr1
 12008                                  ; digit
 12009                                  ; letter
 12010                                  ; strcpy
 12011                                  ; letter
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
 12030                                  ; eqstr
 12031                                  ; eqstr
 12032                                  ; eqstr
 12033                                  ; eqstr
 12034                                  ; strcpy
 12035                                  ; eqstr
 12036                                  ; letter
 12037                                  ; digit
 12038                                  ; writetty
 12039                                  ; writetty
 12040                                  ; fputcR
 12041                                  ; mkneg
 12042                                  ; mkneg
 12043                                  ; readR
 12044                                  ; fcloseR
 12045                                  ; fcloseR
 12046                                  ; exitR
 12047                                  ; eqstr
 12048                                  ; strcpy
 12049                                  ; DosInt
 12050                                  ; DosInt
 12051                                  ; strlen
 12052                                  ; Number of unresolved CALLs :  159
 12053                                  ;use archive file: AR.C
 12054                                  
 12055                                  ;-1098 // AR.C Archive file for PLA.DE The MIT License (MIT) starting 1.1.2015  (c) 2015 Helmut Guenther
 12056                                  
 12057                                  ;Number of CALLs:    2 : writetty
 12058                                  
 12059                                  writetty:  ; *** PROC ***
 12060 0000607D B40E                     mov  ah, 14
 12061 0000607F BB0000                   mov  bx, 0
 12062 00006082 CD10                     int  16
 12063                                  
 12064                                  ;-1099 int putch(char c)  {if (_ c==10) {al=13; writetty();} al=c; writetty(); }
 12065                                  
 12066 00006084 C3                       ret
 12067                                  ; ENDP
 12068                                  ;Number of CALLs:    1 : putch
 12069                                  
 12070                                  putch:  ; *** PROC ***
 12071                                  ;Function : putch, Number of local variables: 1
 12072                                  ;   # type sign width line used address name   list of local variables
 12073                                  ;  200 var sign byte  1099 NULL bp+4    c;
 12074 00006085 C8000000                 ENTER  0,0
 12075 00006089 807E040A                cmp byte [bp+4], 10
 12076 0000608D 0F850500                 jne @@putch640
 12077 00006091 B00D                     mov  al, 13
 12078 00006093 E8E7FF                   call writetty
 12079                                  @@putch640:
 12080 00006096 8A4604                   mov  al, [bp+4]
 12081 00006099 E8E1FF                   call writetty
 12082                                  
 12083                                  ;-1100 int cputs(char *s) {char c;  while(*s) { c=*s; putch(c); s++; } }
 12084 0000609C C9                       LEAVE
 12085 0000609D C3                       ret
 12086                                  ; ENDP
 12087                                  ;Number of CALLs:   22 : cputs
 12088                                  
 12089                                  cputs:  ; *** PROC ***
 12090                                  ;Function : cputs, Number of local variables: 2
 12091                                  ;   # type sign width line used address name   list of local variables
 12092                                  ;  200 ptr sign byte  1100 NULL bp+4    s
 12093                                  ;  201 var sign byte  1100 NULL bp-2    c;
 12094 0000609E C8020000                 ENTER  2,0
 12095                                  @@cputs641:
 12096 000060A2 8B5E04                   mov bx, [bp+4]
 12097 000060A5 8A07                     mov al, [bx]
 12098 000060A7 B400                     mov ah, 0
 12099 000060A9 08C0                     or  al, al
 12100 000060AB 0F841B00                 je @@cputs642
 12101 000060AF 8B5E04                   mov bx, [bp+4]
 12102 000060B2 8A07                     mov al, [bx]
 12103 000060B4 B400                     mov ah, 0
 12104 000060B6 8846FE                   mov byte [bp-2], al
 12105 000060B9 8A46FE                   mov al, byte [bp-2]
 12106 000060BC B400                     mov ah, 0
 12107 000060BE 50                       push ax
 12108 000060BF E8C3FF                   call putch
 12109 000060C2 83C402                   add  sp, 2
 12110 000060C5 FF4604                   inc  word [bp+4]
 12111 000060C8 EBD8                     jmp @@cputs641
 12112                                  @@cputs642:
 12113                                  
 12114                                  ;-1101 int mkneg(int n) { n; __asm {neg ax} }
 12115 000060CA C9                       LEAVE
 12116 000060CB C3                       ret
 12117                                  ; ENDP
 12118                                  ;Number of CALLs:    3 : mkneg
 12119                                  
 12120                                  mkneg:  ; *** PROC ***
 12121                                  ;Function : mkneg, Number of local variables: 1
 12122                                  ;   # type sign width line used address name   list of local variables
 12123                                  ;  200 var sign word  1101 NULL bp+4    n;
 12124 000060CC C8000000                 ENTER  0,0
 12125 000060D0 8B4604                   mov ax, [bp+4]
 12126 000060D3 F7D8                    neg ax
 12127                                  
 12128                                  ;-1102 int prunsign(unsigned int n) { unsigned int e;
 12129 000060D5 C9                       LEAVE
 12130 000060D6 C3                       ret
 12131                                  ; ENDP
 12132                                  ;Number of CALLs:    1 : pint
 12133                                  
 12134                                  pint:  ; *** PROC ***
 12135                                  ;Function : pint, Number of local variables: 2
 12136                                  ;   # type sign width line used address name   list of local variables
 12137                                  ;  200 var sign word  1102 NULL bp+4    n
 12138                                  ;  201 var sign word  1102 NULL bp-2    e;
 12139 000060D7 C8020000                 ENTER  2,0
 12140 000060DB 8B4604                   mov ax, [bp+4]
 12141 000060DE 83F800                   cmp ax, 0
 12142 000060E1 0F8D1400                 jge @@pint643
 12143 000060E5 6A2D                     push 45
 12144 000060E7 E855ED                   call prc
 12145 000060EA 83C402                   add  sp, 2
 12146 000060ED FF7604                   push word [bp+4]
 12147 000060F0 E8D9FF                   call mkneg
 12148 000060F3 83C402                   add  sp, 2
 12149 000060F6 894604                   mov word [bp+4], ax
 12150                                  
 12151                                  ;-1103   if (n >= 10) {e=n/10;  pint(e);}  n=n%10; n=n+'0'; putch(n); }
 12152                                  
 12153                                  @@pint643:
 12154 000060F9 8B4604                   mov ax, [bp+4]
 12155 000060FC 83F80A                   cmp ax, 10 ;unsigned : 1
 12156 000060FF 0F8C1500                 jl  @@pint644
 12157 00006103 8B4604                   mov ax, [bp+4]
 12158 00006106 BB0A00                   mov bx, 10
 12159 00006109 99                       cwd
 12160 0000610A F7FB                     idiv bx
 12161 0000610C 8946FE                   mov word [bp-2], ax
 12162 0000610F FF76FE                   push word [bp-2]
 12163 00006112 E8C2FF                   call pint
 12164 00006115 83C402                   add  sp, 2
 12165                                  @@pint644:
 12166 00006118 8B4604                   mov ax, [bp+4]
 12167 0000611B BB0A00                   mov bx, 10
 12168 0000611E 99                       cwd
 12169 0000611F F7FB                     idiv bx
 12170 00006121 89D0                     mov ax, dx
 12171 00006123 894604                   mov word [bp+4], ax
 12172 00006126 8B4604                   mov ax, [bp+4]
 12173 00006129 83C030                   add ax, 48
 12174 0000612C 894604                   mov word [bp+4], ax
 12175 0000612F FF7604                   push word [bp+4]
 12176 00006132 E850FF                   call putch
 12177 00006135 83C402                   add  sp, 2
 12178                                  
 12179                                  ;-1104 int printint5(unsigned int j)  {
 12180 00006138 C9                       LEAVE
 12181 00006139 C3                       ret
 12182                                  ; ENDP
 12183                                  ;Number of CALLs:    1 : toupper
 12184                                  
 12185                                  toupper:  ; *** PROC ***
 12186                                  ;Function : toupper, Number of local variables: 1
 12187                                  ;   # type sign width line used address name   list of local variables
 12188                                  ;  200 ptr sign byte  1104 NULL bp+4    s;
 12189 0000613A C8000000                 ENTER  0,0
 12190                                  @@toupper645:
 12191 0000613E 8B5E04                   mov bx, [bp+4]
 12192 00006141 8A07                     mov al, [bx]
 12193 00006143 B400                     mov ah, 0
 12194 00006145 08C0                     or  al, al
 12195 00006147 0F843000                 je @@toupper646
 12196 0000614B 8B5E04                   mov bx, [bp+4]
 12197 0000614E 8A07                     mov al, [bx]
 12198 00006150 B400                     mov ah, 0
 12199 00006152 83F861                   cmp ax, 97 ;unsigned : 1
 12200 00006155 0F8C1D00                 jl  @@toupper647
 12201 00006159 8B5E04                   mov bx, [bp+4]
 12202 0000615C 8A07                     mov al, [bx]
 12203 0000615E B400                     mov ah, 0
 12204 00006160 83F87A                   cmp ax, 122
 12205 00006163 0F8F0F00                 jg  @@toupper648
 12206 00006167 8B5E04                   mov bx, [bp+4]
 12207 0000616A 8A07                     mov al, [bx]
 12208 0000616C B400                     mov ah, 0
 12209 0000616E 83E820                   sub ax, 32
 12210 00006171 8B5E04                   mov  bx, [bp+4]
 12211 00006174 8807                     mov  [bx], al
 12212                                  @@toupper648:
 12213                                  @@toupper647:
 12214 00006176 FF4604                   inc  word [bp+4]
 12215 00006179 EBC3                     jmp @@toupper645
 12216                                  @@toupper646:
 12217                                  
 12218                                  ;-1105 //int head1  (char *s) {char c; do{c=*s; c=letter(c); s++; }while(c) *s=0; }
 12219                                  
 12220                                  
 12221                                  ;-1106 int strlen(char *s) { int c; c=0; while (*s!=0) {s++; c++;} return c; }
 12222 0000617B C9                       LEAVE
 12223 0000617C C3                       ret
 12224                                  ; ENDP
 12225                                  ;Number of CALLs:    8 : strlen
 12226                                  
 12227                                  strlen:  ; *** PROC ***
 12228                                  ;Function : strlen, Number of local variables: 2
 12229                                  ;   # type sign width line used address name   list of local variables
 12230                                  ;  200 ptr sign byte  1106 NULL bp+4    s
 12231                                  ;  201 var sign word  1106 NULL bp-2    c;
 12232 0000617D C8020000                 ENTER  2,0
 12233 00006181 66B800000000             mov eax, 0
 12234 00006187 8946FE                   mov word [bp-2], ax
 12235                                  @@strlen649:
 12236 0000618A 8B5E04                   mov bx, [bp+4]
 12237 0000618D 8A07                     mov al, [bx]
 12238 0000618F B400                     mov ah, 0
 12239 00006191 83F800                   cmp ax, 0
 12240 00006194 0F840800                 je  @@strlen650
 12241 00006198 FF4604                   inc  word [bp+4]
 12242 0000619B FF46FE                   inc  word [bp-2]
 12243 0000619E EBEA                     jmp @@strlen649
 12244                                  @@strlen650:
 12245 000061A0 8B46FE                   mov ax, [bp-2]
 12246 000061A3 E90000                   jmp @@retn
 12247                                  
 12248                                  ;-1107 int strcpy1(char *s, char *t) {do { *s=*t; s++; t++; } while (*t!=0); *s=0; }
 12249                                  
 12250 000061A6 C9                      @@retn: LEAVE
 12251 000061A7 C3                       ret
 12252                                  ; ENDP
 12253                                  ;Number of CALLs:   27 : strcpy
 12254                                  
 12255                                  strcpy:  ; *** PROC ***
 12256                                  ;Function : strcpy, Number of local variables: 2
 12257                                  ;   # type sign width line used address name   list of local variables
 12258                                  ;  200 ptr sign byte  1107 NULL bp+4    s
 12259                                  ;  201 ptr sign byte  1107 NULL bp+6    t;
 12260 000061A8 C8000000                 ENTER  0,0
 12261                                  @@strcpy651:
 12262 000061AC 8B5E06                   mov bx, [bp+6]
 12263 000061AF 8A07                     mov al, [bx]
 12264 000061B1 B400                     mov ah, 0
 12265 000061B3 8B5E04                   mov  bx, [bp+4]
 12266 000061B6 8807                     mov  [bx], al
 12267 000061B8 FF4604                   inc  word [bp+4]
 12268 000061BB FF4606                   inc  word [bp+6]
 12269                                  
 12270                                  ;-1108   while (*t!=0); *s=0; return s; }
 12271                                  
 12272 000061BE 8B5E06                   mov bx, [bp+6]
 12273 000061C1 8A07                     mov al, [bx]
 12274 000061C3 B400                     mov ah, 0
 12275 000061C5 83F800                   cmp ax, 0
 12276 000061C8 0F840200                 je  @@strcpy652
 12277 000061CC EBDE                     jmp @@strcpy651
 12278                                  @@strcpy652:
 12279 000061CE 66B800000000             mov eax, 0
 12280 000061D4 8B5E04                   mov  bx, [bp+4]
 12281 000061D7 8807                     mov  [bx], al
 12282 000061D9 8B4604                   mov ax, [bp+4]
 12283 000061DC E90000                   jmp @@retn
 12284                                  
 12285                                  ;-1109 int strncpy(char *s, char *t, int n) { if (_ n==0) return;
 12286                                  
 12287 000061DF C9                      @@retn: LEAVE
 12288 000061E0 C3                       ret
 12289                                  ; ENDP
 12290                                  ;Number of CALLs:    1 : instr1
 12291                                  
 12292                                  instr1:  ; *** PROC ***
 12293                                  ;Function : instr1, Number of local variables: 2
 12294                                  ;   # type sign width line used address name   list of local variables
 12295                                  ;  200 ptr sign byte  1109 NULL bp+4    s
 12296                                  ;  201 var sign byte  1109 NULL bp+6    c;
 12297 000061E1 C8000000                 ENTER  0,0
 12298                                  @@instr1653:
 12299 000061E5 8B5E04                   mov bx, [bp+4]
 12300 000061E8 8A07                     mov al, [bx]
 12301 000061EA B400                     mov ah, 0
 12302 000061EC 08C0                     or  al, al
 12303 000061EE 0F841C00                 je @@instr1654
 12304 000061F2 8B5E04                   mov bx, [bp+4]
 12305 000061F5 8A07                     mov al, [bx]
 12306 000061F7 B400                     mov ah, 0
 12307 000061F9 3A4606                   cmp al, [bp+6]
 12308 000061FC 0F850900                 jne @@instr1655
 12309 00006200 66B801000000             mov eax, 1
 12310 00006206 E90E00                   jmp @@retn
 12311                                  @@instr1655:
 12312 00006209 FF4604                   inc  word [bp+4]
 12313 0000620C EBD7                     jmp @@instr1653
 12314                                  @@instr1654:
 12315 0000620E 66B800000000             mov eax, 0
 12316 00006214 E90000                   jmp @@retn
 12317                                  
 12318                                  ;-1110 int instr2(char *s, char c) { while(*s) { if (*s==c) return &s; s++;} return 0;}
 12319                                  
 12320 00006217 C9                      @@retn: LEAVE
 12321 00006218 C3                       ret
 12322                                  ; ENDP
 12323                                  ;Number of CALLs:    3 : instr2
 12324                                  
 12325                                  instr2:  ; *** PROC ***
 12326                                  ;Function : instr2, Number of local variables: 2
 12327                                  ;   # type sign width line used address name   list of local variables
 12328                                  ;  200 ptr sign byte  1110 NULL bp+4    s
 12329                                  ;  201 var sign byte  1110 NULL bp+6    c;
 12330 00006219 C8000000                 ENTER  0,0
 12331                                  @@instr2656:
 12332 0000621D 8B5E04                   mov bx, [bp+4]
 12333 00006220 8A07                     mov al, [bx]
 12334 00006222 B400                     mov ah, 0
 12335 00006224 08C0                     or  al, al
 12336 00006226 0F841900                 je @@instr2657
 12337 0000622A 8B5E04                   mov bx, [bp+4]
 12338 0000622D 8A07                     mov al, [bx]
 12339 0000622F B400                     mov ah, 0
 12340 00006231 3A4606                   cmp al, [bp+6]
 12341 00006234 0F850600                 jne @@instr2658
 12342 00006238 8B4604                   mov ax, [bp+4]
 12343 0000623B E90E00                   jmp @@retn
 12344                                  @@instr2658:
 12345 0000623E FF4604                   inc  word [bp+4]
 12346 00006241 EBDA                     jmp @@instr2656
 12347                                  @@instr2657:
 12348 00006243 66B800000000             mov eax, 0
 12349 00006249 E90000                   jmp @@retn
 12350                                  
 12351                                  ;-1111 int digit(char c){ if(c<'0') return 0; if(c>'9') return 0; return 1; }
 12352                                  
 12353 0000624C C9                      @@retn: LEAVE
 12354 0000624D C3                       ret
 12355                                  ; ENDP
 12356                                  ;Number of CALLs:    2 : digit
 12357                                  
 12358                                  digit:  ; *** PROC ***
 12359                                  ;Function : digit, Number of local variables: 1
 12360                                  ;   # type sign width line used address name   list of local variables
 12361                                  ;  200 var sign byte  1111 NULL bp+4    c;
 12362 0000624E C8000000                 ENTER  0,0
 12363 00006252 8A4604                   mov al, [bp+4]
 12364 00006255 3C30                     cmp al, 48
 12365 00006257 0F8D0900                 jge @@digit659
 12366 0000625B 66B800000000             mov eax, 0
 12367 00006261 E91B00                   jmp @@retn
 12368                                  @@digit659:
 12369 00006264 8A4604                   mov al, [bp+4]
 12370 00006267 3C39                     cmp al, 57
 12371 00006269 0F8E0900                 jle @@digit660
 12372 0000626D 66B800000000             mov eax, 0
 12373 00006273 E90900                   jmp @@retn
 12374                                  @@digit660:
 12375 00006276 66B801000000             mov eax, 1
 12376 0000627C E90000                   jmp @@retn
 12377                                  
 12378                                  ;-1112 int letter(char c) { if (digit(c)) return 1; if (c=='_') return 1;
 12379                                  
 12380 0000627F C9                      @@retn: LEAVE
 12381 00006280 C3                       ret
 12382                                  ; ENDP
 12383                                  ;Number of CALLs:    3 : letter
 12384                                  
 12385                                  letter:  ; *** PROC ***
 12386                                  ;Function : letter, Number of local variables: 1
 12387                                  ;   # type sign width line used address name   list of local variables
 12388                                  ;  200 var sign byte  1112 NULL bp+4    c;
 12389 00006281 C8000000                 ENTER  0,0
 12390 00006285 8A4604                   mov al, byte [bp+4]
 12391 00006288 B400                     mov ah, 0
 12392 0000628A 50                       push ax
 12393 0000628B E8C0FF                   call digit
 12394 0000628E 83C402                   add  sp, 2
 12395 00006291 08C0                     or  al, al
 12396 00006293 0F840900                 je @@letter661
 12397 00006297 66B801000000             mov eax, 1
 12398 0000629D E95A00                   jmp @@retn
 12399                                  @@letter661:
 12400 000062A0 8A4604                   mov al, [bp+4]
 12401 000062A3 3C5F                     cmp al, 95
 12402 000062A5 0F850900                 jne @@letter662
 12403 000062A9 66B801000000             mov eax, 1
 12404 000062AF E94800                   jmp @@retn
 12405                                  
 12406                                  ;-1113   if (c> 'z') return 0; if (c< '@') return 0;
 12407                                  
 12408                                  @@letter662:
 12409 000062B2 8A4604                   mov al, [bp+4]
 12410 000062B5 3C7A                     cmp al, 122
 12411 000062B7 0F8E0900                 jle @@letter663
 12412 000062BB 66B800000000             mov eax, 0
 12413 000062C1 E93600                   jmp @@retn
 12414                                  @@letter663:
 12415 000062C4 8A4604                   mov al, [bp+4]
 12416 000062C7 3C40                     cmp al, 64
 12417 000062C9 0F8D0900                 jge @@letter664
 12418 000062CD 66B800000000             mov eax, 0
 12419 000062D3 E92400                   jmp @@retn
 12420                                  
 12421                                  ;-1114   if (c> 'Z') { if (c< 'a') return 0; }  return 1; }
 12422                                  
 12423                                  @@letter664:
 12424 000062D6 8A4604                   mov al, [bp+4]
 12425 000062D9 3C5A                     cmp al, 90
 12426 000062DB 0F8E1200                 jle @@letter665
 12427 000062DF 8A4604                   mov al, [bp+4]
 12428 000062E2 3C61                     cmp al, 97
 12429 000062E4 0F8D0900                 jge @@letter666
 12430 000062E8 66B800000000             mov eax, 0
 12431 000062EE E90900                   jmp @@retn
 12432                                  @@letter666:
 12433                                  @@letter665:
 12434 000062F1 66B801000000             mov eax, 1
 12435 000062F7 E90000                   jmp @@retn
 12436                                  
 12437                                  ;-1115 int alnum(char c) { if (digit(c)) return 1; if (c=='_') return 1;
 12438                                  
 12439 000062FA C9                      @@retn: LEAVE
 12440 000062FB C3                       ret
 12441                                  ; ENDP
 12442                                  ;Number of CALLs:   69 : eqstr
 12443                                  
 12444                                  eqstr:  ; *** PROC ***
 12445                                  ;Function : eqstr, Number of local variables: 2
 12446                                  ;   # type sign width line used address name   list of local variables
 12447                                  ;  200 ptr sign byte  1115 NULL bp+4    p
 12448                                  ;  201 ptr sign byte  1115 NULL bp+6    q;
 12449 000062FC C8000000                 ENTER  0,0
 12450                                  @@eqstr667:
 12451 00006300 8B5E04                   mov bx, [bp+4]
 12452 00006303 8A07                     mov al, [bx]
 12453 00006305 B400                     mov ah, 0
 12454 00006307 08C0                     or  al, al
 12455 00006309 0F842300                 je @@eqstr668
 12456                                  
 12457                                  ;-1116     if (*p != *q) return 0; p++; q++; }
 12458                                  
 12459 0000630D 8B5E04                   mov bx, [bp+4]
 12460 00006310 8A07                     mov al, [bx]
 12461 00006312 B400                     mov ah, 0
 12462 00006314 8B5E06                   mov bx, [bp+6]
 12463 00006317 3A07                     cmp al, [bx]
 12464 00006319 B400                     mov ah, 0
 12465 0000631B 0F840900                 je  @@eqstr669
 12466 0000631F 66B800000000             mov eax, 0
 12467 00006325 E92700                   jmp @@retn
 12468                                  @@eqstr669:
 12469 00006328 FF4604                   inc  word [bp+4]
 12470 0000632B FF4606                   inc  word [bp+6]
 12471                                  
 12472                                  ;-1117     if(*q) return 0; return 1; }
 12473                                  
 12474 0000632E EBD0                     jmp @@eqstr667
 12475                                  @@eqstr668:
 12476 00006330 8B5E06                   mov bx, [bp+6]
 12477 00006333 8A07                     mov al, [bx]
 12478 00006335 B400                     mov ah, 0
 12479 00006337 08C0                     or  al, al
 12480 00006339 0F840900                 je @@eqstr670
 12481 0000633D 66B800000000             mov eax, 0
 12482 00006343 E90900                   jmp @@retn
 12483                                  @@eqstr670:
 12484 00006346 66B801000000             mov eax, 1
 12485 0000634C E90000                   jmp @@retn
 12486                                  
 12487                                  ;-1118 int strcat1(char *s, char *t) { while (*s != 0) s++; strcpy(s, t);  }
 12488                                  
 12489 0000634F C9                      @@retn: LEAVE
 12490 00006350 C3                       ret
 12491                                  ; ENDP
 12492                                  ;Number of CALLs:    1 : strcat1
 12493                                  
 12494                                  strcat1:  ; *** PROC ***
 12495                                  ;Function : strcat1, Number of local variables: 2
 12496                                  ;   # type sign width line used address name   list of local variables
 12497                                  ;  200 ptr sign byte  1118 NULL bp+4    s
 12498                                  ;  201 ptr sign byte  1118 NULL bp+6    t;
 12499 00006351 C8000000                 ENTER  0,0
 12500                                  @@strcat1671:
 12501 00006355 8B5E04                   mov bx, [bp+4]
 12502 00006358 8A07                     mov al, [bx]
 12503 0000635A B400                     mov ah, 0
 12504 0000635C 83F800                   cmp ax, 0
 12505 0000635F 0F840500                 je  @@strcat1672
 12506 00006363 FF4604                   inc  word [bp+4]
 12507 00006366 EBED                     jmp @@strcat1671
 12508                                  @@strcat1672:
 12509 00006368 FF7606                   push word [bp+6]
 12510 0000636B FF7604                   push word [bp+4]
 12511 0000636E E837FE                   call strcpy
 12512 00006371 83C404                   add  sp, 4
 12513                                  
 12514                                  ;-1119 int basename(char *s) { char *p; p=0;
 12515 00006374 C9                       LEAVE
 12516 00006375 C3                       ret
 12517                                  ; ENDP
 12518                                  ;Number of CALLs:    2 : DosInt
 12519                                  
 12520                                  DosInt:  ; *** PROC ***
 12521 00006376 CD21                     int  33
 12522 00006378 7304                     jae short @@DosInt673
 12523 0000637A FF06[C200]               inc  word [DOS_ERR]
 12524                                  @@DosInt673:
 12525                                  
 12526                                  ;-1120 int openR (char *s) { dx=s; ax=0x3D02;  DosInt(); }
 12527                                  
 12528 0000637E C3                       ret
 12529                                  ; ENDP
 12530                                  ;Number of CALLs:    3 : openR
 12531                                  
 12532                                  openR:  ; *** PROC ***
 12533                                  ;Function : openR, Number of local variables: 1
 12534                                  ;   # type sign width line used address name   list of local variables
 12535                                  ;  200 ptr sign byte  1120 NULL bp+4    s;
 12536 0000637F C8000000                 ENTER  0,0
 12537 00006383 8B5604                   mov  dx, [bp+4]
 12538 00006386 B8023D                   mov  ax, 15618
 12539 00006389 E8EAFF                   call DosInt
 12540                                  
 12541                                  ;-1121 int creatR(char *s) { dx=s; cx=0; ax=0x3C00; DosInt(); }
 12542 0000638C C9                       LEAVE
 12543 0000638D C3                       ret
 12544                                  ; ENDP
 12545                                  ;Number of CALLs:    1 : creatR
 12546                                  
 12547                                  creatR:  ; *** PROC ***
 12548                                  ;Function : creatR, Number of local variables: 1
 12549                                  ;   # type sign width line used address name   list of local variables
 12550                                  ;  200 ptr sign byte  1121 NULL bp+4    s;
 12551 0000638E C8000000                 ENTER  0,0
 12552 00006392 8B5604                   mov  dx, [bp+4]
 12553 00006395 B90000                   mov  cx, 0
 12554 00006398 B8003C                   mov  ax, 15360
 12555 0000639B E8D8FF                   call DosInt
 12556                                  
 12557                                  ;-1122 int readR (char *s, int fd) {dx=s; cx=1; bx=fd; ax=0x3F00; DosInt(); }
 12558 0000639E C9                       LEAVE
 12559 0000639F C3                       ret
 12560                                  ; ENDP
 12561                                  ;Number of CALLs:    1 : readR
 12562                                  
 12563                                  readR:  ; *** PROC ***
 12564                                  ;Function : readR, Number of local variables: 2
 12565                                  ;   # type sign width line used address name   list of local variables
 12566                                  ;  200 ptr sign byte  1122 NULL bp+4    s
 12567                                  ;  201 var sign word  1122 NULL bp+6    fd;
 12568 000063A0 C8000000                 ENTER  0,0
 12569 000063A4 8B5604                   mov  dx, [bp+4]
 12570 000063A7 B90100                   mov  cx, 1
 12571 000063AA 8B5E06                   mov  bx, [bp+6]
 12572 000063AD B8003F                   mov  ax, 16128
 12573 000063B0 E8C3FF                   call DosInt
 12574                                  
 12575                                  ;-1123 int readRL(char *s, int fd, int len){dx=s; cx=len; bx=fd; ax=0x3F00; DosInt();}
 12576 000063B3 C9                       LEAVE
 12577 000063B4 C3                       ret
 12578                                  ; ENDP
 12579                                  ;Number of CALLs:    1 : readRL
 12580                                  
 12581                                  readRL:  ; *** PROC ***
 12582                                  ;Function : readRL, Number of local variables: 3
 12583                                  ;   # type sign width line used address name   list of local variables
 12584                                  ;  200 ptr sign byte  1123 NULL bp+4    s
 12585                                  ;  201 var sign word  1123 NULL bp+6    fd
 12586                                  ;  202 var sign word  1123 NULL bp+8    len;
 12587 000063B5 C8000000                 ENTER  0,0
 12588 000063B9 8B5604                   mov  dx, [bp+4]
 12589 000063BC 8B4E08                   mov  cx, [bp+8]
 12590 000063BF 8B5E06                   mov  bx, [bp+6]
 12591 000063C2 B8003F                   mov  ax, 16128
 12592 000063C5 E8AEFF                   call DosInt
 12593                                  
 12594                                  ;-1124 int fputcR(char *n, int fd) { __asm{lea dx, [bp+4]}; /* = *n */
 12595 000063C8 C9                       LEAVE
 12596 000063C9 C3                       ret
 12597                                  ; ENDP
 12598                                  ;Number of CALLs:    1 : fputcR
 12599                                  
 12600                                  fputcR:  ; *** PROC ***
 12601                                  ;Function : fputcR, Number of local variables: 2
 12602                                  ;   # type sign width line used address name   list of local variables
 12603                                  ;  200 ptr sign byte  1124 NULL bp+4    n
 12604                                  ;  201 var sign word  1124 NULL bp+6    fd;
 12605 000063CA C8000000                 ENTER  0,0
 12606 000063CE 8D5604                  lea dx, [bp+4]
 12607                                  
 12608                                  ;-1125   cx=1; bx=fd; ax=0x4000; DosInt(); }
 12609                                  
 12610 000063D1 B90100                   mov  cx, 1
 12611 000063D4 8B5E06                   mov  bx, [bp+6]
 12612 000063D7 B80040                   mov  ax, 16384
 12613 000063DA E899FF                   call DosInt
 12614                                  
 12615                                  ;-1126 int writeRL(char *s, int fd, int len){dx=s; cx=len; bx=fd; ax=0x4000; DosInt();}
 12616 000063DD C9                       LEAVE
 12617 000063DE C3                       ret
 12618                                  ; ENDP
 12619                                  ;Number of CALLs:    2 : fcloseR
 12620                                  
 12621                                  fcloseR:  ; *** PROC ***
 12622                                  ;Function : fcloseR, Number of local variables: 1
 12623                                  ;   # type sign width line used address name   list of local variables
 12624                                  ;  200 var sign word  1126 NULL bp+4    fd;
 12625 000063DF C8000000                 ENTER  0,0
 12626 000063E3 8B5E04                   mov  bx, [bp+4]
 12627 000063E6 B8003E                   mov  ax, 15872
 12628 000063E9 CD21                     int  33
 12629                                  
 12630                                  ;-1127 int exitR(char c) {ah=0x4C; al=c; inth 0x21; }
 12631 000063EB C9                       LEAVE
 12632 000063EC C3                       ret
 12633                                  ; ENDP
 12634                                  ;Number of CALLs:    4 : exitR
 12635                                  
 12636                                  exitR:  ; *** PROC ***
 12637                                  ;Function : exitR, Number of local variables: 1
 12638                                  ;   # type sign width line used address name   list of local variables
 12639                                  ;  200 var sign byte  1127 NULL bp+4    c;
 12640 000063ED C8000000                 ENTER  0,0
 12641 000063F1 B44C                     mov  ah, 76
 12642 000063F3 8A4604                   mov  al, [bp+4]
 12643 000063F6 CD21                     int  33
 12644                                  
 12645                                  ;-1128 int setdta(char *s) {dx=s; ah=0x1A; inth 0x21; }
 12646 000063F8 C9                       LEAVE
 12647 000063F9 C3                       ret
 12648                                  ; ENDP
 12649                                  ;End of archive file. 
 12650                                   
 12651                                  ; missing functions:  All FUNCTIONs in place
 12652 000063FA E80000                  LastFunctionByt:db 0E8h, 0, 0
 12653 000063FD 58                      pop ax
 12654 000063FE C3                      ret
 12655                                   
 12656                                  ;   # type sign width line used  address name   list of global variables
 12657                                  
 12658                                  ;    1 arr sign byte     2    2        0 Version1[16]
 12659                                  ;    2 var sign byte     6    3        0 BSS
 12660                                  ;    3 var sign byte     6   17        0 NASM
 12661                                  ;    4 var sign byte     6    3        0 PROTECTED
 12662                                  ;    5 var sign byte     6    6        0 LIST
 12663                                  ;    6 def unsg byte     7    -        0 LSTART=200
 12664                                  ;    7 def unsg byte     8    -        0 VARMAX=300
 12665                                  ;    8 def unsg byte     9    -        0 FUNCMAX=300
 12666                                  ;    9 def unsg byte    10    -        0 CALLMAX=2000
 12667                                  ;   10 def unsg byte    11    -        0 IDLENMAX=16
 12668                                  ;   11 def unsg byte    13    -        0 T_NAME=256
 12669                                  ;   12 def unsg byte    14    -        0 T_CONST=257
 12670                                  ;   13 def unsg byte    15    -        0 T_STRING=258
 12671                                  ;   14 def unsg byte    16    -        0 T_INCLUDE=510
 12672                                  ;   15 def unsg byte    17    -        0 T_DEFINE=511
 12673                                  ;   16 def unsg byte    18    -        0 T_RETURN=512
 12674                                  ;   17 def unsg byte    19    -        0 T_IF=513
 12675                                  ;   18 def unsg byte    20    -        0 T_ELSE=514
 12676                                  ;   19 def unsg byte    21    -        0 T_WHILE=515
 12677                                  ;   20 def unsg byte    22    -        0 T_DO=516
 12678                                  ;   21 def unsg byte    23    -        0 T_INT=517
 12679                                  ;   22 def unsg byte    24    -        0 T_ASM=518
 12680                                  ;   23 def unsg byte    25    -        0 T_ASMBLOCK=519
 12681                                  ;   24 def unsg byte    26    -        0 T_EMIT=520
 12682                                  ;   25 def unsg byte    27    -        0 T_GOTO=521
 12683                                  ;   26 def unsg byte    28    -        0 T_VOID=529
 12684                                  ;   27 def unsg byte    29    -        0 T_CHAR=530
 12685                                  ;   28 def unsg byte    30    -        0 T_SIGNED=531
 12686                                  ;   29 def unsg byte    31    -        0 T_UNSIGNED=532
 12687                                  ;   30 def unsg byte    32    -        0 T_LONG=533
 12688                                  ;   31 def unsg byte    33    -        0 T_SHORT=534
 12689                                  ;   32 def unsg byte    34    -        0 T_UINT32=545
 12690                                  ;   33 def unsg byte    35    -        0 T_INTH=600
 12691                                  ;   34 def unsg byte    36    -        0 T_IFCARRY=601
 12692                                  ;   35 def unsg byte    37    -        0 T_IFZERO=602
 12693                                  ;   36 def unsg byte    38    -        0 T_EQ=806
 12694                                  ;   37 def unsg byte    39    -        0 T_NE=807
 12695                                  ;   38 def unsg byte    40    -        0 T_GE=811
 12696                                  ;   39 def unsg byte    41    -        0 T_LE=824
 12697                                  ;   40 def unsg byte    42    -        0 T_PLUSPLUS=1219
 12698                                  ;   41 def unsg byte    43    -        0 T_MINUSMINUS=1225
 12699                                  ;   42 def unsg byte    44    -        0 T_PLUSASS=1230
 12700                                  ;   43 def unsg byte    45    -        0 T_MINUSASS=1231
 12701                                  ;   44 def unsg byte    46    -        0 T_MULASS=1232
 12702                                  ;   45 def unsg byte    47    -        0 T_DIVASS=1233
 12703                                  ;   46 def unsg byte    48    -        0 T_ANDASS=1234
 12704                                  ;   47 def unsg byte    49    -        0 T_ORASS=1235
 12705                                  ;   48 def unsg byte    50    -        0 T_LESSLESS=1240
 12706                                  ;   49 def unsg byte    51    -        0 T_GREATGREAT=1241
 12707                                  ;   50 def unsg byte    52    -        0 COMAX=3000
 12708                                  ;   51 def unsg byte    53    -        0 CMDLENMAX=67
 12709                                  ;   52 var unsg dwrd    54 NULL        0 LDATAORIG
 12710                                  ;   53 var unsg dwrd    54    5        0 ldata
 12711                                  ;   54 var sign dwrd    54    2        0 LONG0
 12712                                  ;   55 var unsg dwrd    55    4        0 ORGDATAORIG
 12713                                  ;   56 var unsg dwrd    55   12        0 orgData
 12714                                  ;   57 arr sign byte    56    4    30000 co[3000]
 12715                                  ;   58 var sign word    56    4        0 maxco
 12716                                  ;   59 var sign word    56    3        0 maxco1
 12717                                  ;   60 arr sign byte    57    2    33000 coname[67]
 12718                                  ;   61 ptr sign byte    57    5        0 cloc
 12719                                  ;   62 arr sign byte    58    2    33067 locname[67]
 12720                                  ;   63 var sign word    58    3        0 maxloc
 12721                                  ;   64 var sign word    59    7        0 fdin
 12722                                  ;   65 var sign word    59    7        0 fdout
 12723                                  ;   66 arr sign byte    59   96    33134 symbol[128]
 12724                                  ;   67 arr sign byte    60   13    33262 fname[67]
 12725                                  ;   68 arr sign byte    60   14    33329 namein[67]
 12726                                  ;   69 arr sign byte    61    7    33396 namelst[67]
 12727                                  ;   70 arr sign byte    61    5        0 archivename[4]
 12728                                  ;   71 var sign word    62   55        0 token
 12729                                  ;   72 var sign byte    62    2        0 globC
 12730                                  ;   73 var sign word    62    3        0 spalte
 12731                                  ;   74 var sign byte    63   28        0 thechar
 12732                                  ;   75 var sign word    63    9        0 iscmp
 12733                                  ;   76 var sign word    63    4        0 nconst
 12734                                  ;   77 var sign word    64    3        0 nreturn
 12735                                  ;   78 var sign word    64   16        0 nlabel
 12736                                  ;   79 var sign word    64    3        0 callrecursive
 12737                                  ;   80 var unsg dwrd    65   55        0 lexvalL
 12738                                  ;   81 var sign byte    65    2        0 islong
 12739                                  ;   82 var sign byte    65 NULL        0 isldata
 12740                                  ;   83 var sign word    66    7        0 typei
 12741                                  ;   84 var sign byte    66   10        0 istype
 12742                                  ;   85 arr sign byte    66   12    33463 GType[300]
 12743                                  ;   86 var sign word    67    7        0 signi
 12744                                  ;   87 var sign byte    67    8        0 issign
 12745                                  ;   88 arr sign byte    67    6    33763 GSign[300]
 12746                                  ;   89 var sign word    68   10        0 widthi
 12747                                  ;   90 var sign word    68   28        0 wi
 12748                                  ;   91 var sign byte    68   30        0 iswidth
 12749                                  ;   92 arr sign byte    68    6    34063 GWidth[300]
 12750                                  ;   93 var sign word    69   38        0 GTop
 12751                                  ;   94 var sign word    69   21        0 LTop
 12752                                  ;   95 arr sign word    70    5    34363 GLino[300]
 12753                                  ;   96 arr sign word    71    7    34963 GUsed[300]
 12754                                  ;   97 arr sign dwrd    72   12    35563 GData[300]
 12755                                  ;   98 arr sign dwrd    73    5    36763 GAdr[300]
 12756                                  ;   99 arr sign word    74    7    37963 GName[300]
 12757                                  ;  100 var sign word    75   13        0 FTop
 12758                                  ;  101 arr sign byte    76    2    38563 FWidth[300]
 12759                                  ;  102 arr sign word    77    2    38863 FLino[300]
 12760                                  ;  103 arr sign word    78    4    39463 FCalls[300]
 12761                                  ;  104 arr sign word    79    5    40063 FName[300]
 12762                                  ;  105 var sign word    80    9        0 CTop
 12763                                  ;  106 arr sign word    81    5    40663 CName[2000]
 12764                                  ;  107 arr sign byte    82    5    44663 CUnres[2000]
 12765                                  ;  108 arr sign byte    83    4        0 Ls[11]
 12766                                  ;  109 arr sign byte    84   27        0 NA[32]
 12767                                  ;  110 arr sign byte    85    4        0 NB[32]
 12768                                  ;  111 arr sign byte    86    5    46663 fgetsdest[128]
 12769                                  ;  112 ptr unsg byte    86   13        0 CNameTop
 12770                                  ;  113 ptr unsg byte    87   10        0 fgetsp
 12771                                  ;  114 var unsg word    87    5        0 segE
 12772                                  ;  115 var unsg word    88   13        0 lineno
 12773                                  ;  116 var unsg word    88    2        0 linenoinclude
 12774                                  ;  117 ptr unsg byte    89    6        0 pt
 12775                                  ;  118 ptr unsg byte    89    8        0 p1
 12776                                  ;  119 var sign word    90   10        0 DOS_ERR
 12777                                  ;  120 var sign word    90    5        0 DOS_NoBytes
 12778                                  ;  121 var sign byte    90    3        0 DOS_ByteRead
 12779                                  ;  122 var sign dwrd    92 NULL  2000000 varL1
 12780                                  ;  123 var sign word    92 NULL  2000004 vari1
 12781                                  ;  124 arr unsg word    92 NULL  2000006 vari2[6]
 12782                                  ;  125 var sign byte    93 NULL  2000012 varc1
 12783                                  ;  126 var sign dwrd    93 NULL  2000013 varL2
 12784                                  ;  127 arr sign dwrd    94 NULL  2000017 arrL1[12]
 12785                                  ;  128 var sign dwrd    94 NULL  2000029 varL4
 12786                                  ;  129 var sign byte    94 NULL  2000033 chc2
 12787                                  ;  130 arr sign byte   109    2    46791 doglobName[16]
 12788                                  ;  131 var sign word   289    1        0 sd
 12789                                  ;  132 var sign byte   290   13        0 un
 12790                                  ;  133 var sign byte   291 NULL        0 ty
 12791                                  ;  134 arr sign byte   292 NULL    46807 md[3]
 12792                                  ;  135 var sign word   292    6        0 mod1
 12793                                  ;  136 var sign word   292    7        0 mod2
 12794                                  ;  137 arr sign word   293 NULL    46810 ir[3]
 12795                                  ;  138 var sign word   293   14        0 irg1
 12796                                  ;  139 var sign word   293    6        0 irg2
 12797                                  ;  140 arr sign word   294 NULL    46816 ix[3]
 12798                                  ;  141 var sign word   294    7        0 idx1
 12799                                  ;  142 var sign word   294    6        0 idx2
 12800                                  ;  143 arr sign byte   295 NULL    46822 is[3]
 12801                                  ;  144 var sign word   295    2        0 ids1
 12802                                  ;  145 var sign word   295    3        0 ids2
 12803                                  ;  146 arr sign byte   296 NULL    46825 iw[3]
 12804                                  ;  147 var sign word   296    3        0 idw1
 12805                                  ;  148 var sign word   296    6        0 idw2
 12806                                  ;  149 arr sign byte   297 NULL    46828 it[3]
 12807                                  ;  150 var sign word   297    2        0 idt1
 12808                                  ;  151 var sign word   297    3        0 idt2
 12809                                  ;  152 arr sign dwrd   298 NULL    46831 ia[3]
 12810                                  ;  153 var sign word   298 NULL        0 ida1
 12811                                  ;  154 var sign word   298 NULL        0 ida2
 12812                                  ;  155 arr sign byte   299 NULL    46843 ic[3]
 12813                                  ;  156 var sign word   299 NULL        0 idac1
 12814                                  ;  157 var sign word   299 NULL        0 idac2
 12815                                  ;  158 arr sign dwrd   300 NULL    46846 iv[3]
 12816                                  ;  159 var sign dwrd   300 NULL        0 val1
 12817                                  ;  160 var sign dwrd   300    2        0 val2
 12818                                  ;  161 arr sign byte   367   17    46858 ops[6]
 12819                                  ;  162 arr sign byte   446    3        0 printregstr[74]
 12820                                  ;  163 arr sign word   572    2    46864 docalltype[10]
 12821                                  ;  164 arr sign word   572    2    46884 docallvalue[10]
 12822                                  ;  165 arr sign byte   573    2    46904 procname[16]
 12823                                  ;  166 ptr sign byte   626    1        0 arglen
 12824                                  ;  167 ptr sign byte   626    3        0 argv
 12825                                  ;  168 var sign byte   696    4        0 wasfunction
 12826                                  ;  169 arr sign byte   827    2    46920 symboltemp[80]
 12827                                  ;  170 var unsg word  1010    2        0 MAXUI
 12828                                  ;  171 arr unsg byte  1062 NULL        0 GDT1[16]
 12829                                  
 12830                                  
 12831                                  ;   # Calls Line Width  Name   list of functions
 12832                                  
 12833                                  ;    0 NULL   95 void   ttt
 12834                                  ;    1    4   97 void   a
 12835                                  ;    2   19   98 void   v
 12836                                  ;    3    6  100 void   checknamelen
 12837                                  ;    4   12  102 void   pwi
 12838                                  ;    5    6  106 void   storeName
 12839                                  ;    6    1  110 void   doLdata
 12840                                  ;    7    1  133 void   doglob
 12841                                  ;    8   13  185 word   gettypes
 12842                                  ;    9    4  195 void   printName
 12843                                  ;   10   11  199 word   searchname
 12844                                  ;   11    4  203 word   checkName
 12845                                  ;   12   10  208 word   typeName
 12846                                  ;   13    3  218 void   name1
 12847                                  ;   14    1  220 void   storecall
 12848                                  ;   15    2  227 void   storefunc
 12849                                  ;   16    2  234 void   addlocal
 12850                                  ;   17    1  241 word   checkFunction
 12851                                  ;   18    2  247 void   dofunc
 12852                                  ;   19    1  283 word   isvariable
 12853                                  ;   20    3  303 word   pexpr
 12854                                  ;   21    1  310 void   constantexpr
 12855                                  ;   22    3  320 void   exprstart
 12856                                  ;   23    1  322 word   simplexpr
 12857                                  ;   24    1  368 word   getop
 12858                                  ;   25    4  388 word   prleftreg
 12859                                  ;   26 NULL  389 word   prleftvar
 12860                                  ;   27 NULL  391 word   printvar
 12861                                  ;   28    3  393 word   doreg1
 12862                                  ;   29    6  424 word   checkreg
 12863                                  ;   30    9  449 void   printreg
 12864                                  ;   31    6  456 word   printpri
 12865                                  ;   32    2  462 word   expr
 12866                                  ;   33    4  507 word   compoundass
 12867                                  ;   34    2  513 word   dovar1
 12868                                  ;   35    8  530 word   rterm
 12869                                  ;   36    1  540 word   doassign
 12870                                  ;   37    1  552 word   domul
 12871                                  ;   38    2  557 word   doidiv
 12872                                  ;   39    1  570 word   domod
 12873                                  ;   40    2  575 void   docall1
 12874                                  ;   41 NULL  618 word   main
 12875                                  ;   42    3  625 word   getfirstchar
 12876                                  ;   43    1  628 word   getarg
 12877                                  ;   44    1  670 word   ltrim
 12878                                  ;   45    2  672 word   parse
 12879                                  ;   46    2  682 word   checkcalls
 12880                                  ;   47    1  697 word   doar
 12881                                  ;   48    1  717 word   getfunctionhead
 12882                                  ;   49    1  724 void   doinclude
 12883                                  ;   50    1  738 word   dodefine
 12884                                  ;   51    8  760 word   stmt
 12885                                  ;   52    1  784 word   doemit
 12886                                  ;   53    3  788 word   cmpneg
 12887                                  ;   54    9  801 word   prlabel
 12888                                  ;   55    3  802 word   prjump
 12889                                  ;   56    1  803 word   doif
 12890                                  ;   57    1  808 word   doifcarry
 12891                                  ;   58    1  811 word   doifzero
 12892                                  ;   59    1  814 word   dodo
 12893                                  ;   60    1  818 word   dowhile
 12894                                  ;   61    4  821 word   isrelational
 12895                                  ;   62   23  828 word   getlex
 12896                                  ;   63    1  885 word   convertdefine
 12897                                  ;   64    1  891 dwrd   getdigit
 12898                                  ;   65    1  904 word   getstring
 12899                                  ;   66   31  907 word   next
 12900                                  ;   67   89  908 word   istoken
 12901                                  ;   68   40  909 word   expect
 12902                                  ;   69    6  912 word   eprc
 12903                                  ;   70    5  913 word   eprs
 12904                                  ;   71   49  914 word   prc
 12905                                  ;   72    3  916 word   prscomment
 12906                                  ;   73    8  918 word   prnl
 12907                                  ;   74  276  920 word   prs
 12908                                  ;   75    2  924 word   eprnum
 12909                                  ;   76   19  926 word   pint1
 12910                                  ;   77   13  928 word   prunsign1
 12911                                  ;   78   29  931 word   printint51
 12912                                  ;   79    2  935 word   fgets1
 12913                                  ;   80    1  939 word   printinputline
 12914                                  ;   81    2  947 word   end1
 12915                                  ;   82   51  948 word   error1
 12916                                  ;   83    2  957 word   listproc
 12917                                  ;   84    2  965 word   listvar
 12918                                  ;   85    1  983 word   listcall
 12919                                  ;   86    1  985 word   calllisting
 12920                                  ;   87    1  991 word   countcalls
 12921                                  ;   88    1  996 word   listfunc
 12922                                  ;   89    1 1000 word   funclisting
 12923                                  ;   90    1 1011 word   epilog
 12924                                  ;   91    1 1044 word   memresize
 12925                                  ;   92    1 1046 word   memalloc
 12926                                  ;   93 NULL 1049 word   copyF
 12927                                  ;   94    5 1052 word   loadName
 12928                                  ;   95    1 1055 word   to_far
 12929                                  ;   96   10 1058 word   from_far
 12930                                  ;   97    4 1063 word   isvirtual86
 12931                                  ;   98    4 1064 word   is32bit
 12932                                  ;   99    1 1065 word   INITCPU32
 12933                                  ;  100 NULL 1082 void   to32
 12934                                  ;  101 NULL 1083 void   from32
 12935                                  ;  102 NULL 1084 void   prLr
 12936                                  ;  103   19 1085 void   prL
 12937                                  ;  104    1 1086 void   prf
 12938                                  ;  105    1 1089 void   ultoar
 12939                                  ;  106    2 1093 word   ultoaL
 12940                                  ;  107    4 1098 word   writetty
 12941                                  ;  108    3 1099 word   putch
 12942                                  ;  109   22 1100 word   cputs
 12943                                  ;  110    4 1101 word   mkneg
 12944                                  ;  111    2 1102 word   pint
 12945                                  ;  112    1 1104 word   toupper
 12946                                  ;  113    8 1106 word   strlen
 12947                                  ;  114   28 1107 word   strcpy
 12948                                  ;  115    1 1109 word   instr1
 12949                                  ;  116    3 1110 word   instr2
 12950                                  ;  117    3 1111 word   digit
 12951                                  ;  118    3 1112 word   letter
 12952                                  ;  119   69 1115 word   eqstr
 12953                                  ;  120    1 1118 word   strcat1
 12954                                  ;  121    7 1119 word   DosInt
 12955                                  ;  122    3 1120 word   openR
 12956                                  ;  123    1 1121 word   creatR
 12957                                  ;  124    1 1122 word   readR
 12958                                  ;  125    1 1123 word   readRL
 12959                                  ;  126    1 1124 word   fputcR
 12960                                  ;  127    2 1126 word   fcloseR
 12961                                  ;  128    4 1127 word   exitR
 12962                                  ;  129 NULL 1128 word   LastFunctionByt
 12963                                  
 12964                                  ;    #  addr name   list of CALLs
 12965                                  
 12966                                  ;    0   951 prs
 12967                                  ;    1   955 printName
 12968                                  ;    2   969 prc
 12969                                  ;    3   973 printName
 12970                                  ;    4   983 prc
 12971                                  ;    5  1002 strlen
 12972                                  ;    6  1009 error1
 12973                                  ;    7  1022 prs
 12974                                  ;    8  1026 prs
 12975                                  ;    9  1030 prs
 12976                                  ;   10  1034 prs
 12977                                  ;   11  1050 strlen
 12978                                  ;   12  1057 to_far
 12979                                  ;   13  1083 error1
 12980                                  ;   14  1090 error1
 12981                                  ;   15  1097 checknamelen
 12982                                  ;   16  1110 checkName
 12983                                  ;   17  1120 error1
 12984                                  ;   18  1127 istoken
 12985                                  ;   19  1135 expect
 12986                                  ;   20  1142 expect
 12987                                  ;   21  1149 prs
 12988                                  ;   22  1153 prL
 12989                                  ;   23  1157 prs
 12990                                  ;   24  1161 prs
 12991                                  ;   25  1165 prs
 12992                                  ;   26  1169 prL
 12993                                  ;   27  1173 prc
 12994                                  ;   28  1177 storeName
 12995                                  ;   29  1187 expect
 12996                                  ;   30  1214 error1
 12997                                  ;   31  1221 error1
 12998                                  ;   32  1228 checknamelen
 12999                                  ;   33  1241 checkName
 13000                                  ;   34  1251 error1
 13001                                  ;   35  1258 istoken
 13002                                  ;   36  1266 istoken
 13003                                  ;   37  1274 prs
 13004                                  ;   38  1278 prunsign1
 13005                                  ;   39  1288 prs
 13006                                  ;   40  1292 prunsign1
 13007                                  ;   41  1302 prs
 13008                                  ;   42  1306 prs
 13009                                  ;   43  1310 prs
 13010                                  ;   44  1314 prs
 13011                                  ;   45  1318 prs
 13012                                  ;   46  1322 prs
 13013                                  ;   47  1326 prs
 13014                                  ;   48  1330 prs
 13015                                  ;   49  1334 prL
 13016                                  ;   50  1338 prs
 13017                                  ;   51  1342 prs
 13018                                  ;   52  1346 prs
 13019                                  ;   53  1350 expect
 13020                                  ;   54  1357 expect
 13021                                  ;   55  1364 error1
 13022                                  ;   56  1371 prs
 13023                                  ;   57  1375 prs
 13024                                  ;   58  1379 prs
 13025                                  ;   59  1383 strcpy
 13026                                  ;   60  1390 expect
 13027                                  ;   61  1397 istoken
 13028                                  ;   62  1405 prc
 13029                                  ;   63  1409 prscomment
 13030                                  ;   64  1420 prc
 13031                                  ;   65  1424 prs
 13032                                  ;   66  1428 strlen
 13033                                  ;   67  1435 istoken
 13034                                  ;   68  1443 prc
 13035                                  ;   69  1447 expect
 13036                                  ;   70  1454 prL
 13037                                  ;   71  1458 istoken
 13038                                  ;   72  1466 expect
 13039                                  ;   73  1473 error1
 13040                                  ;   74  1480 prs
 13041                                  ;   75  1484 prs
 13042                                  ;   76  1488 prs
 13043                                  ;   77  1492 prs
 13044                                  ;   78  1496 prs
 13045                                  ;   79  1500 prs
 13046                                  ;   80  1504 istoken
 13047                                  ;   81  1512 prc
 13048                                  ;   82  1516 istoken
 13049                                  ;   83  1524 expect
 13050                                  ;   84  1531 prL
 13051                                  ;   85  1535 prunsign1
 13052                                  ;   86  1545 strcpy
 13053                                  ;   87  1552 storeName
 13054                                  ;   88  1562 expect
 13055                                  ;   89  1598 loadName
 13056                                  ;   90  1607 prs
 13057                                  ;   91  1611 prs
 13058                                  ;   92  1615 prc
 13059                                  ;   93  1619 pint1
 13060                                  ;   94  1625 prc
 13061                                  ;   95  1642 checkName
 13062                                  ;   96  1652 error1
 13063                                  ;   97  1673 loadName
 13064                                  ;   98  1682 eqstr
 13065                                  ;   99  1688 loadName
 13066                                  ;  100  1697 eqstr
 13067                                  ;  101  1714 istoken
 13068                                  ;  102  1722 istoken
 13069                                  ;  103  1730 istoken
 13070                                  ;  104  1738 istoken
 13071                                  ;  105  1746 istoken
 13072                                  ;  106  1754 istoken
 13073                                  ;  107  1762 istoken
 13074                                  ;  108  1770 istoken
 13075                                  ;  109  1778 istoken
 13076                                  ;  110  1786 istoken
 13077                                  ;  111  1794 name1
 13078                                  ;  112  1806 error1
 13079                                  ;  113  1813 getlex
 13080                                  ;  114  1832 error1
 13081                                  ;  115  1839 error1
 13082                                  ;  116  1846 storeName
 13083                                  ;  117  1868 error1
 13084                                  ;  118  1875 storeName
 13085                                  ;  119  1894 error1
 13086                                  ;  120  1901 checkName
 13087                                  ;  121  1911 error1
 13088                                  ;  122  1918 storeName
 13089                                  ;  123  1946 from_far
 13090                                  ;  124  1955 eqstr
 13091                                  ;  125  1980 checknamelen
 13092                                  ;  126  1993 strcpy
 13093                                  ;  127  2000 checkFunction
 13094                                  ;  128  2014 error1
 13095                                  ;  129  2021 storefunc
 13096                                  ;  130  2031 prs
 13097                                  ;  131  2035 prs
 13098                                  ;  132  2039 prs
 13099                                  ;  133  2043 expect
 13100                                  ;  134  2050 istoken
 13101                                  ;  135  2058 typeName
 13102                                  ;  136  2067 addlocal
 13103                                  ;  137  2076 istoken
 13104                                  ;  138  2084 expect
 13105                                  ;  139  2091 expect
 13106                                  ;  140  2098 isvariable
 13107                                  ;  141  2109 typeName
 13108                                  ;  142  2118 checknamelen
 13109                                  ;  143  2131 addlocal
 13110                                  ;  144  2140 istoken
 13111                                  ;  145  2148 expect
 13112                                  ;  146  2155 expect
 13113                                  ;  147  2162 istoken
 13114                                  ;  148  2170 expect
 13115                                  ;  149  2177 listproc
 13116                                  ;  150  2186 prs
 13117                                  ;  151  2190 mkneg
 13118                                  ;  152  2196 pint1
 13119                                  ;  153  2202 prs
 13120                                  ;  154  2206 istoken
 13121                                  ;  155  2214 stmt
 13122                                  ;  156  2219 prs
 13123                                  ;  157  2223 prs
 13124                                  ;  158  2227 prs
 13125                                  ;  159  2231 prs
 13126                                  ;  160  2235 prs
 13127                                  ;  161  2239 strlen
 13128                                  ;  162  2246 strcpy
 13129                                  ;  163  2253 strcpy
 13130                                  ;  164  2405 expect
 13131                                  ;  165  2412 eqstr
 13132                                  ;  166  2418 constantexpr
 13133                                  ;  167  2431 checkreg
 13134                                  ;  168  2440 doreg1
 13135                                  ;  169  2447 exprstart
 13136                                  ;  170  2457 prs
 13137                                  ;  171  2461 prs
 13138                                  ;  172  2465 expect
 13139                                  ;  173  2498 getlex
 13140                                  ;  174  2505 typeName
 13141                                  ;  175  2514 searchname
 13142                                  ;  176  2525 gettypes
 13143                                  ;  177  2534 isrelational
 13144                                  ;  178  2547 error1
 13145                                  ;  179  2554 expect
 13146                                  ;  180  2561 prs
 13147                                  ;  181  2565 gettypes
 13148                                  ;  182  2574 pwi
 13149                                  ;  183  2578 v
 13150                                  ;  184  2580 prs
 13151                                  ;  185  2584 prL
 13152                                  ;  186  2588 cmpneg
 13153                                  ;  187  2595 prs
 13154                                  ;  188  2599 expect
 13155                                  ;  189  2616 eqstr
 13156                                  ;  190  2622 simplexpr
 13157                                  ;  191  2632 expr
 13158                                  ;  192  2649 getlex
 13159                                  ;  193  2656 istoken
 13160                                  ;  194  2664 prs
 13161                                  ;  195  2668 prL
 13162                                  ;  196  2672 typeName
 13163                                  ;  197  2681 docall1
 13164                                  ;  198  2689 error1
 13165                                  ;  199  2696 checkreg
 13166                                  ;  200  2705 doreg1
 13167                                  ;  201  2712 searchname
 13168                                  ;  202  2723 gettypes
 13169                                  ;  203  2732 error1
 13170                                  ;  204  2739 isrelational
 13171                                  ;  205  2752 error1
 13172                                  ;  206  2759 istoken
 13173                                  ;  207  2767 error1
 13174                                  ;  208  2774 istoken
 13175                                  ;  209  2782 prs
 13176                                  ;  210  2786 pwi
 13177                                  ;  211  2790 v
 13178                                  ;  212  2792 prs
 13179                                  ;  213  2796 prL
 13180                                  ;  214  2800 prs
 13181                                  ;  215  2804 loadName
 13182                                  ;  216  2813 prs
 13183                                  ;  217  2817 typeName
 13184                                  ;  218  2826 checkreg
 13185                                  ;  219  2835 prs
 13186                                  ;  220  2839 printreg
 13187                                  ;  221  2848 pwi
 13188                                  ;  222  2852 v
 13189                                  ;  223  2854 prs
 13190                                  ;  224  2858 printreg
 13191                                  ;  225  2867 error1
 13192                                  ;  226  2874 searchname
 13193                                  ;  227  2885 gettypes
 13194                                  ;  228  2894 error1
 13195                                  ;  229  2901 prs
 13196                                  ;  230  2905 printreg
 13197                                  ;  231  2914 error1
 13198                                  ;  232  2921 prs
 13199                                  ;  233  2925 a
 13200                                  ;  234  2927 pwi
 13201                                  ;  235  2931 v
 13202                                  ;  236  2933 prs
 13203                                  ;  237  2937 loadName
 13204                                  ;  238  2946 prs
 13205                                  ;  239  2962 istoken
 13206                                  ;  240  2970 strcpy
 13207                                  ;  241  2977 istoken
 13208                                  ;  242  2985 strcpy
 13209                                  ;  243  2992 istoken
 13210                                  ;  244  3000 strcpy
 13211                                  ;  245  3007 istoken
 13212                                  ;  246  3015 strcpy
 13213                                  ;  247  3022 istoken
 13214                                  ;  248  3030 strcpy
 13215                                  ;  249  3037 istoken
 13216                                  ;  250  3045 strcpy
 13217                                  ;  251  3052 istoken
 13218                                  ;  252  3060 strcpy
 13219                                  ;  253  3067 istoken
 13220                                  ;  254  3075 strcpy
 13221                                  ;  255  3082 istoken
 13222                                  ;  256  3090 strcpy
 13223                                  ;  257  3097 istoken
 13224                                  ;  258  3105 strcpy
 13225                                  ;  259  3112 istoken
 13226                                  ;  260  3120 strcpy
 13227                                  ;  261  3137 prnl
 13228                                  ;  262  3142 prs
 13229                                  ;  263  3146 prs
 13230                                  ;  264  3150 printreg
 13231                                  ;  265  3204 getop
 13232                                  ;  266  3210 getlex
 13233                                  ;  267  3217 isrelational
 13234                                  ;  268  3230 error1
 13235                                  ;  269  3237 strcpy
 13236                                  ;  270  3244 prleftreg
 13237                                  ;  271  3254 istoken
 13238                                  ;  272  3262 prleftreg
 13239                                  ;  273  3272 prs
 13240                                  ;  274  3276 prL
 13241                                  ;  275  3280 typeName
 13242                                  ;  276  3289 checkreg
 13243                                  ;  277  3298 prleftreg
 13244                                  ;  278  3308 prs
 13245                                  ;  279  3312 printreg
 13246                                  ;  280  3321 searchname
 13247                                  ;  281  3332 gettypes
 13248                                  ;  282  3341 eqstr
 13249                                  ;  283  3347 strcpy
 13250                                  ;  284  3354 strcpy
 13251                                  ;  285  3361 prleftreg
 13252                                  ;  286  3371 prs
 13253                                  ;  287  3375 pwi
 13254                                  ;  288  3379 a
 13255                                  ;  289  3381 pwi
 13256                                  ;  290  3385 v
 13257                                  ;  291  3387 cmpneg
 13258                                  ;  292  3394 prs
 13259                                  ;  293  3398 expect
 13260                                  ;  294  3414 strlen
 13261                                  ;  295  3421 eqstr
 13262                                  ;  296  3427 eqstr
 13263                                  ;  297  3433 eqstr
 13264                                  ;  298  3439 eqstr
 13265                                  ;  299  3445 eqstr
 13266                                  ;  300  3451 eqstr
 13267                                  ;  301  3457 eqstr
 13268                                  ;  302  3463 eqstr
 13269                                  ;  303  3469 eqstr
 13270                                  ;  304  3475 eqstr
 13271                                  ;  305  3481 eqstr
 13272                                  ;  306  3487 eqstr
 13273                                  ;  307  3493 eqstr
 13274                                  ;  308  3499 eqstr
 13275                                  ;  309  3505 eqstr
 13276                                  ;  310  3511 eqstr
 13277                                  ;  311  3517 eqstr
 13278                                  ;  312  3523 eqstr
 13279                                  ;  313  3529 eqstr
 13280                                  ;  314  3535 eqstr
 13281                                  ;  315  3541 eqstr
 13282                                  ;  316  3547 eqstr
 13283                                  ;  317  3553 strlen
 13284                                  ;  318  3560 eqstr
 13285                                  ;  319  3566 eqstr
 13286                                  ;  320  3572 eqstr
 13287                                  ;  321  3578 eqstr
 13288                                  ;  322  3584 eqstr
 13289                                  ;  323  3590 eqstr
 13290                                  ;  324  3596 eqstr
 13291                                  ;  325  3602 eqstr
 13292                                  ;  326  3608 eqstr
 13293                                  ;  327  3646 prc
 13294                                  ;  328  3650 prc
 13295                                  ;  329  3654 prc
 13296                                  ;  330  3658 prc
 13297                                  ;  331  3662 prc
 13298                                  ;  332  3677 printreg
 13299                                  ;  333  3686 printreg
 13300                                  ;  334  3695 printreg
 13301                                  ;  335  3748 istoken
 13302                                  ;  336  3756 prs
 13303                                  ;  337  3760 prL
 13304                                  ;  338  3764 typeName
 13305                                  ;  339  3773 checkreg
 13306                                  ;  340  3782 doreg1
 13307                                  ;  341  3789 docall1
 13308                                  ;  342  3797 searchname
 13309                                  ;  343  3808 gettypes
 13310                                  ;  344  3817 istoken
 13311                                  ;  345  3825 istoken
 13312                                  ;  346  3833 expect
 13313                                  ;  347  3840 searchname
 13314                                  ;  348  3851 expect
 13315                                  ;  349  3858 expect
 13316                                  ;  350  3865 gettypes
 13317                                  ;  351  3874 error1
 13318                                  ;  352  3881 istoken
 13319                                  ;  353  3889 error1
 13320                                  ;  354  3896 prs
 13321                                  ;  355  3900 pwi
 13322                                  ;  356  3904 v
 13323                                  ;  357  3906 istoken
 13324                                  ;  358  3914 error1
 13325                                  ;  359  3921 prs
 13326                                  ;  360  3925 pwi
 13327                                  ;  361  3929 v
 13328                                  ;  362  3931 istoken
 13329                                  ;  363  3939 compoundass
 13330                                  ;  364  3951 istoken
 13331                                  ;  365  3959 compoundass
 13332                                  ;  366  3971 istoken
 13333                                  ;  367  3979 compoundass
 13334                                  ;  368  3991 istoken
 13335                                  ;  369  3999 compoundass
 13336                                  ;  370  4011 istoken
 13337                                  ;  371  4019 error1
 13338                                  ;  372  4026 istoken
 13339                                  ;  373  4034 error1
 13340                                  ;  374  4041 istoken
 13341                                  ;  375  4049 expr
 13342                                  ;  376  4054 doassign
 13343                                  ;  377  4063 dovar1
 13344                                  ;  378  4070 istoken
 13345                                  ;  379  4078 rterm
 13346                                  ;  380  4084 istoken
 13347                                  ;  381  4092 rterm
 13348                                  ;  382  4098 istoken
 13349                                  ;  383  4106 rterm
 13350                                  ;  384  4112 istoken
 13351                                  ;  385  4120 rterm
 13352                                  ;  386  4126 istoken
 13353                                  ;  387  4134 rterm
 13354                                  ;  388  4140 istoken
 13355                                  ;  389  4148 rterm
 13356                                  ;  390  4154 istoken
 13357                                  ;  391  4162 domul
 13358                                  ;  392  4168 istoken
 13359                                  ;  393  4176 doidiv
 13360                                  ;  394  4183 istoken
 13361                                  ;  395  4191 domod
 13362                                  ;  396  4197 isrelational
 13363                                  ;  397  4210 rterm
 13364                                  ;  398  4216 cmpneg
 13365                                  ;  399  4247 error1
 13366                                  ;  400  4254 prnl
 13367                                  ;  401  4259 prs
 13368                                  ;  402  4263 prs
 13369                                  ;  403  4267 gettypes
 13370                                  ;  404  4276 pwi
 13371                                  ;  405  4280 v
 13372                                  ;  406  4282 prs
 13373                                  ;  407  4286 expect
 13374                                  ;  408  4293 prL
 13375                                  ;  409  4322 gettypes
 13376                                  ;  410  4331 prs
 13377                                  ;  411  4335 v
 13378                                  ;  412  4337 prnl
 13379                                  ;  413  4342 prs
 13380                                  ;  414  4346 prs
 13381                                  ;  415  4350 prs
 13382                                  ;  416  4354 prs
 13383                                  ;  417  4358 prnl
 13384                                  ;  418  4363 prs
 13385                                  ;  419  4367 prs
 13386                                  ;  420  4371 a
 13387                                  ;  421  4373 prs
 13388                                  ;  422  4377 v
 13389                                  ;  423  4379 prs
 13390                                  ;  424  4383 prs
 13391                                  ;  425  4387 prs
 13392                                  ;  426  4391 prs
 13393                                  ;  427  4395 prc
 13394                                  ;  428  4399 printpri
 13395                                  ;  429  4408 prs
 13396                                  ;  430  4412 prc
 13397                                  ;  431  4416 printName
 13398                                  ;  432  4426 prs
 13399                                  ;  433  4430 prnl
 13400                                  ;  434  4435 prs
 13401                                  ;  435  4439 prc
 13402                                  ;  436  4443 printpri
 13403                                  ;  437  4452 prs
 13404                                  ;  438  4456 v
 13405                                  ;  439  4488 istoken
 13406                                  ;  440  4496 prnl
 13407                                  ;  441  4501 prs
 13408                                  ;  442  4505 prc
 13409                                  ;  443  4509 printpri
 13410                                  ;  444  4518 prs
 13411                                  ;  445  4522 prL
 13412                                  ;  446  4526 typeName
 13413                                  ;  447  4535 searchname
 13414                                  ;  448  4546 istoken
 13415                                  ;  449  4554 searchname
 13416                                  ;  450  4565 expect
 13417                                  ;  451  4572 expect
 13418                                  ;  452  4579 gettypes
 13419                                  ;  453  4588 error1
 13420                                  ;  454  4595 eqstr
 13421                                  ;  455  4601 dovar1
 13422                                  ;  456  4638 gettypes
 13423                                  ;  457  4647 prs
 13424                                  ;  458  4651 v
 13425                                  ;  459  4653 prs
 13426                                  ;  460  4657 printpri
 13427                                  ;  461  4666 prs
 13428                                  ;  462  4670 a
 13429                                  ;  463  4672 prs
 13430                                  ;  464  4676 prs
 13431                                  ;  465  4680 prunsign1
 13432                                  ;  466  4690 v
 13433                                  ;  467  4692 prs
 13434                                  ;  468  4696 prs
 13435                                  ;  469  4700 prs
 13436                                  ;  470  4704 printName
 13437                                  ;  471  4714 prs
 13438                                  ;  472  4718 printpri
 13439                                  ;  473  4727 prs
 13440                                  ;  474  4731 pwi
 13441                                  ;  475  4735 v
 13442                                  ;  476  4737 prs
 13443                                  ;  477  4741 printpri
 13444                                  ;  478  4760 rterm
 13445                                  ;  479  4766 istoken
 13446                                  ;  480  4774 prs
 13447                                  ;  481  4778 prL
 13448                                  ;  482  4782 prs
 13449                                  ;  483  4786 error1
 13450                                  ;  484  4813 istoken
 13451                                  ;  485  4821 prs
 13452                                  ;  486  4825 prL
 13453                                  ;  487  4829 prs
 13454                                  ;  488  4833 prs
 13455                                  ;  489  4837 typeName
 13456                                  ;  490  4846 searchname
 13457                                  ;  491  4857 error1
 13458                                  ;  492  4864 gettypes
 13459                                  ;  493  4873 error1
 13460                                  ;  494  4880 error1
 13461                                  ;  495  4887 prs
 13462                                  ;  496  4891 v
 13463                                  ;  497  4893 prs
 13464                                  ;  498  4897 prs
 13465                                  ;  499  4911 doidiv
 13466                                  ;  500  4918 prs
 13467                                  ;  501  4980 checknamelen
 13468                                  ;  502  4993 strcpy
 13469                                  ;  503  5000 storecall
 13470                                  ;  504  5010 expect
 13471                                  ;  505  5017 istoken
 13472                                  ;  506  5025 error1
 13473                                  ;  507  5032 istoken
 13474                                  ;  508  5040 istoken
 13475                                  ;  509  5048 eprs
 13476                                  ;  510  5053 eprs
 13477                                  ;  511  5058 eprc
 13478                                  ;  512  5063 eprnum
 13479                                  ;  513  5070 eprs
 13480                                  ;  514  5075 eprc
 13481                                  ;  515  5080 eprs
 13482                                  ;  516  5085 eprc
 13483                                  ;  517  5090 eprs
 13484                                  ;  518  5095 istoken
 13485                                  ;  519  5103 name1
 13486                                  ;  520  5109 searchname
 13487                                  ;  521  5120 istoken
 13488                                  ;  522  5128 checkreg
 13489                                  ;  523  5137 searchname
 13490                                  ;  524  5148 error1
 13491                                  ;  525  5155 istoken
 13492                                  ;  526  5163 expect
 13493                                  ;  527  5170 prs
 13494                                  ;  528  5174 pint1
 13495                                  ;  529  5180 prs
 13496                                  ;  530  5184 prs
 13497                                  ;  531  5188 prs
 13498                                  ;  532  5192 prc
 13499                                  ;  533  5196 pint1
 13500                                  ;  534  5202 prs
 13501                                  ;  535  5206 prs
 13502                                  ;  536  5210 v
 13503                                  ;  537  5212 prs
 13504                                  ;  538  5216 gettypes
 13505                                  ;  539  5225 prs
 13506                                  ;  540  5229 pwi
 13507                                  ;  541  5233 v
 13508                                  ;  542  5235 prs
 13509                                  ;  543  5239 pwi
 13510                                  ;  544  5243 v
 13511                                  ;  545  5245 prs
 13512                                  ;  546  5249 prs
 13513                                  ;  547  5253 v
 13514                                  ;  548  5255 prs
 13515                                  ;  549  5259 prs
 13516                                  ;  550  5263 printreg
 13517                                  ;  551  5272 prs
 13518                                  ;  552  5276 prs
 13519                                  ;  553  5280 prs
 13520                                  ;  554  5284 pint1
 13521                                  ;  555  5295 getarg
 13522                                  ;  556  5302 memresize
 13523                                  ;  557  5312 error1
 13524                                  ;  558  5319 memalloc
 13525                                  ;  559  5328 error1
 13526                                  ;  560  5335 getfirstchar
 13527                                  ;  561  5348 cputs
 13528                                  ;  562  5354 parse
 13529                                  ;  563  5360 cputs
 13530                                  ;  564  5366 checkcalls
 13531                                  ;  565  5377 epilog
 13532                                  ;  566  5397 fgets1
 13533                                  ;  567  5435 cputs
 13534                                  ;  568  5441 cputs
 13535                                  ;  569  5447 readRL
 13536                                  ;  570  5454 prnl
 13537                                  ;  571  5459 strcpy
 13538                                  ;  572  5466 instr2
 13539                                  ;  573  5473 strcat1
 13540                                  ;  574  5481 toupper
 13541                                  ;  575  5489 instr2
 13542                                  ;  576  5496 strcpy
 13543                                  ;  577  5503 instr2
 13544                                  ;  578  5510 ltrim
 13545                                  ;  579  5516 strcpy
 13546                                  ;  580  5523 strlen
 13547                                  ;  581  5530 openR
 13548                                  ;  582  5536 cputs
 13549                                  ;  583  5542 cputs
 13550                                  ;  584  5548 exitR
 13551                                  ;  585  5554 creatR
 13552                                  ;  586  5561 cputs
 13553                                  ;  587  5567 cputs
 13554                                  ;  588  5573 exitR
 13555                                  ;  589  5579 prs
 13556                                  ;  590  5583 prs
 13557                                  ;  591  5587 prs
 13558                                  ;  592  5591 pint1
 13559                                  ;  593  5597 prs
 13560                                  ;  594  5601 prs
 13561                                  ;  595  5605 prs
 13562                                  ;  596  5609 prs
 13563                                  ;  597  5613 prs
 13564                                  ;  598  5617 prs
 13565                                  ;  599  5621 prs
 13566                                  ;  600  5625 pint1
 13567                                  ;  601  5631 isvirtual86
 13568                                  ;  602  5643 prs
 13569                                  ;  603  5647 prs
 13570                                  ;  604  5651 is32bit
 13571                                  ;  605  5659 prs
 13572                                  ;  606  5663 prs
 13573                                  ;  607  5667 prs
 13574                                  ;  608  5671 prs
 13575                                  ;  609  5675 prs
 13576                                  ;  610  5679 prL
 13577                                  ;  611  5683 isvirtual86
 13578                                  ;  612  5695 cputs
 13579                                  ;  613  5701 cputs
 13580                                  ;  614  5707 is32bit
 13581                                  ;  615  5715 cputs
 13582                                  ;  616  5721 cputs
 13583                                  ;  617  5727 INITCPU32
 13584                                  ;  618  5737 prs
 13585                                  ;  619  5741 isvirtual86
 13586                                  ;  620  5753 cputs
 13587                                  ;  621  5759 cputs
 13588                                  ;  622  5765 is32bit
 13589                                  ;  623  5773 cputs
 13590                                  ;  624  5779 cputs
 13591                                  ;  625  5785 isvirtual86
 13592                                  ;  626  5797 prs
 13593                                  ;  627  5801 prs
 13594                                  ;  628  5805 is32bit
 13595                                  ;  629  5813 prs
 13596                                  ;  630  5817 prs
 13597                                  ;  631  5835 getlex
 13598                                  ;  632  5842 istoken
 13599                                  ;  633  5850 istoken
 13600                                  ;  634  5858 dodefine
 13601                                  ;  635  5867 istoken
 13602                                  ;  636  5875 doinclude
 13603                                  ;  637  5885 error1
 13604                                  ;  638  5892 typeName
 13605                                  ;  639  5901 dofunc
 13606                                  ;  640  5908 istoken
 13607                                  ;  641  5916 doLdata
 13608                                  ;  642  5924 doglob
 13609                                  ;  643  5948 prs
 13610                                  ;  644  5952 from_far
 13611                                  ;  645  5961 from_far
 13612                                  ;  646  5970 eqstr
 13613                                  ;  647  5976 prs
 13614                                  ;  648  5980 prs
 13615                                  ;  649  5984 doar
 13616                                  ;  650  5989 prs
 13617                                  ;  651  5993 cputs
 13618                                  ;  652  6045 cputs
 13619                                  ;  653  6051 pint
 13620                                  ;  654  6056 prs
 13621                                  ;  655  6060 printint51
 13622                                  ;  656  6071 openR
 13623                                  ;  657  6077 cputs
 13624                                  ;  658  6083 cputs
 13625                                  ;  659  6089 exitR
 13626                                  ;  660  6095 prs
 13627                                  ;  661  6099 prs
 13628                                  ;  662  6103 getfirstchar
 13629                                  ;  663  6116 getfunctionhead
 13630                                  ;  664  6132 from_far
 13631                                  ;  665  6141 eqstr
 13632                                  ;  666  6147 prs
 13633                                  ;  667  6151 printint51
 13634                                  ;  668  6162 prs
 13635                                  ;  669  6166 prs
 13636                                  ;  670  6170 dofunc
 13637                                  ;  671  6177 prs
 13638                                  ;  672  6181 checkcalls
 13639                                  ;  673  6192 putch
 13640                                  ;  674  6198 cputs
 13641                                  ;  675  6204 error1
 13642                                  ;  676  6227 getlex
 13643                                  ;  677  6234 istoken
 13644                                  ;  678  6242 getlex
 13645                                  ;  679  6266 prs
 13646                                  ;  680  6270 prs
 13647                                  ;  681  6274 openR
 13648                                  ;  682  6280 prs
 13649                                  ;  683  6284 prs
 13650                                  ;  684  6288 cputs
 13651                                  ;  685  6294 error1
 13652                                  ;  686  6301 parse
 13653                                  ;  687  6307 prs
 13654                                  ;  688  6311 prs
 13655                                  ;  689  6315 getfirstchar
 13656                                  ;  690  6328 getlex
 13657                                  ;  691  6355 eqstr
 13658                                  ;  692  6361 getlex
 13659                                  ;  693  6368 eqstr
 13660                                  ;  694  6374 getlex
 13661                                  ;  695  6381 eqstr
 13662                                  ;  696  6387 getlex
 13663                                  ;  697  6394 eqstr
 13664                                  ;  698  6400 getlex
 13665                                  ;  699  6407 error1
 13666                                  ;  700  6414 getlex
 13667                                  ;  701  6421 eqstr
 13668                                  ;  702  6427 getlex
 13669                                  ;  703  6434 prs
 13670                                  ;  704  6438 strcpy
 13671                                  ;  705  6445 prs
 13672                                  ;  706  6449 error1
 13673                                  ;  707  6456 getlex
 13674                                  ;  708  6463 expect
 13675                                  ;  709  6470 error1
 13676                                  ;  710  6477 checknamelen
 13677                                  ;  711  6490 storeName
 13678                                  ;  712  6500 expect
 13679                                  ;  713  6518 istoken
 13680                                  ;  714  6526 istoken
 13681                                  ;  715  6534 stmt
 13682                                  ;  716  6539 istoken
 13683                                  ;  717  6547 doif
 13684                                  ;  718  6552 istoken
 13685                                  ;  719  6560 dodo
 13686                                  ;  720  6565 istoken
 13687                                  ;  721  6573 dowhile
 13688                                  ;  722  6581 istoken
 13689                                  ;  723  6589 prs
 13690                                  ;  724  6593 name1
 13691                                  ;  725  6599 prs
 13692                                  ;  726  6603 expect
 13693                                  ;  727  6610 prs
 13694                                  ;  728  6614 next
 13695                                  ;  729  6619 prc
 13696                                  ;  730  6623 next
 13697                                  ;  731  6628 getlex
 13698                                  ;  732  6635 istoken
 13699                                  ;  733  6643 prs
 13700                                  ;  734  6647 next
 13701                                  ;  735  6652 prc
 13702                                  ;  736  6656 next
 13703                                  ;  737  6661 getlex
 13704                                  ;  738  6668 error1
 13705                                  ;  739  6675 istoken
 13706                                  ;  740  6683 prs
 13707                                  ;  741  6687 expect
 13708                                  ;  742  6694 prL
 13709                                  ;  743  6698 expect
 13710                                  ;  744  6705 istoken
 13711                                  ;  745  6713 doifcarry
 13712                                  ;  746  6723 istoken
 13713                                  ;  747  6731 doifzero
 13714                                  ;  748  6740 istoken
 13715                                  ;  749  6748 doemit
 13716                                  ;  750  6755 istoken
 13717                                  ;  751  6763 istoken
 13718                                  ;  752  6771 exprstart
 13719                                  ;  753  6781 prs
 13720                                  ;  754  6785 expect
 13721                                  ;  755  6792 prs
 13722                                  ;  756  6796 prs
 13723                                  ;  757  6800 prc
 13724                                  ;  758  6804 expect
 13725                                  ;  759  6811 expect
 13726                                  ;  760  6818 exprstart
 13727                                  ;  761  6828 expect
 13728                                  ;  762  6842 prs
 13729                                  ;  763  6846 getlex
 13730                                  ;  764  6853 prL
 13731                                  ;  765  6857 getlex
 13732                                  ;  766  6864 prc
 13733                                  ;  767  6868 expect
 13734                                  ;  768  6886 prs
 13735                                  ;  769  6890 prs
 13736                                  ;  770  6894 prs
 13737                                  ;  771  6898 prs
 13738                                  ;  772  6902 prs
 13739                                  ;  773  6906 prunsign1
 13740                                  ;  774  6916 prs
 13741                                  ;  775  6920 prs
 13742                                  ;  776  6924 prunsign1
 13743                                  ;  777  6934 prs
 13744                                  ;  778  6938 prs
 13745                                  ;  779  6942 prs
 13746                                  ;  780  6946 error1
 13747                                  ;  781  6963 prs
 13748                                  ;  782  6967 prs
 13749                                  ;  783  6971 pint1
 13750                                  ;  784  6977 prc
 13751                                  ;  785  6990 prs
 13752                                  ;  786  6994 prs
 13753                                  ;  787  6998 pint1
 13754                                  ;  788  7019 pexpr
 13755                                  ;  789  7025 pint1
 13756                                  ;  790  7031 stmt
 13757                                  ;  791  7036 istoken
 13758                                  ;  792  7044 prjump
 13759                                  ;  793  7051 prlabel
 13760                                  ;  794  7059 stmt
 13761                                  ;  795  7064 prlabel
 13762                                  ;  796  7072 prlabel
 13763                                  ;  797  7096 prs
 13764                                  ;  798  7100 prs
 13765                                  ;  799  7104 pint1
 13766                                  ;  800  7110 stmt
 13767                                  ;  801  7115 prlabel
 13768                                  ;  802  7138 prs
 13769                                  ;  803  7142 prs
 13770                                  ;  804  7146 pint1
 13771                                  ;  805  7152 stmt
 13772                                  ;  806  7157 prlabel
 13773                                  ;  807  7182 prlabel
 13774                                  ;  808  7190 stmt
 13775                                  ;  809  7195 expect
 13776                                  ;  810  7202 pexpr
 13777                                  ;  811  7208 pint1
 13778                                  ;  812  7214 prjump
 13779                                  ;  813  7221 prlabel
 13780                                  ;  814  7247 prlabel
 13781                                  ;  815  7255 pexpr
 13782                                  ;  816  7261 pint1
 13783                                  ;  817  7267 stmt
 13784                                  ;  818  7272 prjump
 13785                                  ;  819  7279 prlabel
 13786                                  ;  820  7300 getlex
 13787                                  ;  821  7329 next
 13788                                  ;  822  7334 next
 13789                                  ;  823  7339 next
 13790                                  ;  824  7344 next
 13791                                  ;  825  7349 next
 13792                                  ;  826  7354 next
 13793                                  ;  827  7359 next
 13794                                  ;  828  7364 next
 13795                                  ;  829  7369 next
 13796                                  ;  830  7374 next
 13797                                  ;  831  7379 next
 13798                                  ;  832  7384 next
 13799                                  ;  833  7389 next
 13800                                  ;  834  7394 next
 13801                                  ;  835  7399 next
 13802                                  ;  836  7404 instr1
 13803                                  ;  837  7411 next
 13804                                  ;  838  7416 getlex
 13805                                  ;  839  7423 next
 13806                                  ;  840  7428 next
 13807                                  ;  841  7433 getlex
 13808                                  ;  842  7440 getstring
 13809                                  ;  843  7450 digit
 13810                                  ;  844  7456 getdigit
 13811                                  ;  845  7465 next
 13812                                  ;  846  7470 next
 13813                                  ;  847  7475 next
 13814                                  ;  848  7480 letter
 13815                                  ;  849  7487 strcpy
 13816                                  ;  850  7494 letter
 13817                                  ;  851  7501 next
 13818                                  ;  852  7506 eqstr
 13819                                  ;  853  7512 eqstr
 13820                                  ;  854  7518 eqstr
 13821                                  ;  855  7524 eqstr
 13822                                  ;  856  7530 eqstr
 13823                                  ;  857  7536 eqstr
 13824                                  ;  858  7542 eqstr
 13825                                  ;  859  7548 eqstr
 13826                                  ;  860  7554 eqstr
 13827                                  ;  861  7560 eqstr
 13828                                  ;  862  7566 eqstr
 13829                                  ;  863  7572 eqstr
 13830                                  ;  864  7578 eqstr
 13831                                  ;  865  7584 eqstr
 13832                                  ;  866  7590 eqstr
 13833                                  ;  867  7596 eqstr
 13834                                  ;  868  7602 eqstr
 13835                                  ;  869  7608 eqstr
 13836                                  ;  870  7614 eqstr
 13837                                  ;  871  7620 eqstr
 13838                                  ;  872  7626 eqstr
 13839                                  ;  873  7632 eqstr
 13840                                  ;  874  7638 convertdefine
 13841                                  ;  875  7652 strcpy
 13842                                  ;  876  7659 error1
 13843                                  ;  877  7684 from_far
 13844                                  ;  878  7693 eqstr
 13845                                  ;  879  7712 next
 13846                                  ;  880  7717 letter
 13847                                  ;  881  7724 next
 13848                                  ;  882  7729 digit
 13849                                  ;  883  7735 next
 13850                                  ;  884  7760 next
 13851                                  ;  885  7765 next
 13852                                  ;  886  7777 fgets1
 13853                                  ;  887  7794 getlex
 13854                                  ;  888  7810 istoken
 13855                                  ;  889  7818 prs
 13856                                  ;  890  7822 listproc
 13857                                  ;  891  7831 prs
 13858                                  ;  892  7835 pint1
 13859                                  ;  893  7841 error1
 13860                                  ;  894  7864 eprc
 13861                                  ;  895  7875 writetty
 13862                                  ;  896  7884 writetty
 13863                                  ;  897  7893 fputcR
 13864                                  ;  898  7915 prc
 13865                                  ;  899  7924 prs
 13866                                  ;  900  7940 prc
 13867                                  ;  901  7955 eprc
 13868                                  ;  902  7960 mkneg
 13869                                  ;  903  7966 eprnum
 13870                                  ;  904  7973 eprc
 13871                                  ;  905  7988 prc
 13872                                  ;  906  7992 mkneg
 13873                                  ;  907  7998 pint1
 13874                                  ;  908  8004 prc
 13875                                  ;  909  8022 prunsign1
 13876                                  ;  910  8032 prc
 13877                                  ;  911  8049 prc
 13878                                  ;  912  8053 prc
 13879                                  ;  913  8057 prc
 13880                                  ;  914  8061 prc
 13881                                  ;  915  8065 prunsign1
 13882                                  ;  916  8084 printinputline
 13883                                  ;  917  8114 readR
 13884                                  ;  918  8120 prs
 13885                                  ;  919  8124 prunsign1
 13886                                  ;  920  8134 prc
 13887                                  ;  921  8138 prscomment
 13888                                  ;  922  8156 fcloseR
 13889                                  ;  923  8164 fcloseR
 13890                                  ;  924  8172 exitR
 13891                                  ;  925  8187 prnl
 13892                                  ;  926  8192 prscomment
 13893                                  ;  927  8203 prs
 13894                                  ;  928  8207 prunsign1
 13895                                  ;  929  8217 prs
 13896                                  ;  930  8221 prs
 13897                                  ;  931  8225 prs
 13898                                  ;  932  8229 pint1
 13899                                  ;  933  8235 prs
 13900                                  ;  934  8239 prunsign1
 13901                                  ;  935  8249 prs
 13902                                  ;  936  8253 prc
 13903                                  ;  937  8257 prs
 13904                                  ;  938  8261 pint1
 13905                                  ;  939  8267 prs
 13906                                  ;  940  8271 prs
 13907                                  ;  941  8275 end1
 13908                                  ;  942  8291 prs
 13909                                  ;  943  8295 prs
 13910                                  ;  944  8299 prs
 13911                                  ;  945  8303 prunsign1
 13912                                  ;  946  8313 prs
 13913                                  ;  947  8317 listvar
 13914                                  ;  948  8341 prs
 13915                                  ;  949  8345 printint51
 13916                                  ;  950  8356 prc
 13917                                  ;  951  8360 prs
 13918                                  ;  952  8364 prs
 13919                                  ;  953  8368 prs
 13920                                  ;  954  8372 prs
 13921                                  ;  955  8376 prs
 13922                                  ;  956  8380 prs
 13923                                  ;  957  8384 prs
 13924                                  ;  958  8388 prs
 13925                                  ;  959  8392 prs
 13926                                  ;  960  8396 printint51
 13927                                  ;  961  8407 printint51
 13928                                  ;  962  8418 prs
 13929                                  ;  963  8422 prs
 13930                                  ;  964  8426 prc
 13931                                  ;  965  8430 prf
 13932                                  ;  966  8434 prs
 13933                                  ;  967  8438 prc
 13934                                  ;  968  8442 pint1
 13935                                  ;  969  8448 prs
 13936                                  ;  970  8452 prc
 13937                                  ;  971  8456 from_far
 13938                                  ;  972  8465 prs
 13939                                  ;  973  8469 prc
 13940                                  ;  974  8473 prL
 13941                                  ;  975  8477 prc
 13942                                  ;  976  8481 prL
 13943                                  ;  977  8485 prc
 13944                                  ;  978  8500 prs
 13945                                  ;  979  8504 calllisting
 13946                                  ;  980  8534 prs
 13947                                  ;  981  8538 printint51
 13948                                  ;  982  8549 prc
 13949                                  ;  983  8553 prs
 13950                                  ;  984  8557 printint51
 13951                                  ;  985  8568 prc
 13952                                  ;  986  8572 from_far
 13953                                  ;  987  8581 prs
 13954                                  ;  988  8600 from_far
 13955                                  ;  989  8609 from_far
 13956                                  ;  990  8618 eqstr
 13957                                  ;  991  8635 prs
 13958                                  ;  992  8639 countcalls
 13959                                  ;  993  8650 funclisting
 13960                                  ;  994  8680 prs
 13961                                  ;  995  8684 printint51
 13962                                  ;  996  8695 printint51
 13963                                  ;  997  8706 prs
 13964                                  ;  998  8710 printint51
 13965                                  ;  999  8721 prc
 13966                                  ; 1000  8725 prs
 13967                                  ; 1001  8729 prs
 13968                                  ; 1002  8733 prs
 13969                                  ; 1003  8737 prs
 13970                                  ; 1004  8741 prc
 13971                                  ; 1005  8745 prc
 13972                                  ; 1006  8749 from_far
 13973                                  ; 1007  8758 prs
 13974                                  ; 1008  8777 strcpy
 13975                                  ; 1009  8784 storefunc
 13976                                  ; 1010  8794 prs
 13977                                  ; 1011  8798 prs
 13978                                  ; 1012  8802 listvar
 13979                                  ; 1013  8810 listfunc
 13980                                  ; 1014  8819 listcall
 13981                                  ; 1015  8828 prs
 13982                                  ; 1016  8832 prs
 13983                                  ; 1017  8836 prs
 13984                                  ; 1018  8840 prs
 13985                                  ; 1019  8844 prs
 13986                                  ; 1020  8848 printint51
 13987                                  ; 1021  8859 prs
 13988                                  ; 1022  8863 printint51
 13989                                  ; 1023  8874 prs
 13990                                  ; 1024  8878 printint51
 13991                                  ; 1025  8889 prs
 13992                                  ; 1026  8893 printint51
 13993                                  ; 1027  8904 prs
 13994                                  ; 1028  8908 printint51
 13995                                  ; 1029  8919 prs
 13996                                  ; 1030  8923 prs
 13997                                  ; 1031  8927 prs
 13998                                  ; 1032  8931 prs
 13999                                  ; 1033  8935 printint51
 14000                                  ; 1034  8946 prs
 14001                                  ; 1035  8950 printint51
 14002                                  ; 1036  8961 prs
 14003                                  ; 1037  8965 printint51
 14004                                  ; 1038  8976 prs
 14005                                  ; 1039  8980 printint51
 14006                                  ; 1040  8991 prs
 14007                                  ; 1041  8995 printint51
 14008                                  ; 1042  9006 prs
 14009                                  ; 1043  9010 printint51
 14010                                  ; 1044  9021 prs
 14011                                  ; 1045  9025 printint51
 14012                                  ; 1046  9036 prs
 14013                                  ; 1047  9040 printint51
 14014                                  ; 1048  9051 prs
 14015                                  ; 1049  9055 printint51
 14016                                  ; 1050  9066 prs
 14017                                  ; 1051  9070 prs
 14018                                  ; 1052  9074 printint51
 14019                                  ; 1053  9085 prs
 14020                                  ; 1054  9089 prunsign1
 14021                                  ; 1055  9099 prs
 14022                                  ; 1056  9103 printint51
 14023                                  ; 1057  9114 prs
 14024                                  ; 1058  9118 prs
 14025                                  ; 1059  9122 prs
 14026                                  ; 1060  9126 prs
 14027                                  ; 1061  9130 printint51
 14028                                  ; 1062  9141 prs
 14029                                  ; 1063  9145 printint51
 14030                                  ; 1064  9156 prs
 14031                                  ; 1065  9160 printint51
 14032                                  ; 1066  9171 prs
 14033                                  ; 1067  9175 prs
 14034                                  ; 1068  9179 end1
 14035                                  ; 1069  9196 DosInt
 14036                                  ; 1070  9222 DosInt
 14037                                  ; 1071  9364 ultoar
 14038                                  ; 1072  9371 prs
 14039                                  ; 1073  9383 ultoaL
 14040                                  ; 1074  9390 prs
 14041                                  ; 1075  9408 ultoaL
 14042                                  ; 1076  9415 strlen
 14043                                  ; 1077  9422 prc
 14044                                  ; 1078  9426 prs
 14045                                  ; 1079  9471 writetty
 14046                                  ; 1080  9480 writetty
 14047                                  ; 1081  9499 putch
 14048                                  ; 1082  9522 prc
 14049                                  ; 1083  9526 mkneg
 14050                                  ; 1084  9532 pint
 14051                                  ; 1085  9537 putch
 14052                                  ; 1086  9614 digit
 14053                                  ; 1087  9642 strcpy
 14054                                  ; 1088  9664 DosInt
 14055                                  ; 1089  9680 DosInt
 14056                                  ; 1090  9698 DosInt
 14057                                  ; 1091  9721 DosInt
 14058                                  ; 1092  9740 DosInt
 14059                                  ;Input: A.C, List: A.S,  Lines: 1129
 14060                                  ;Glob. variables:  171 max.:  200
 14061                                  ;Local variables:    8 max.:  100, in 'expr'
 14062                                  ;Functions      :  130 max.:  300
 14063                                  ;Calls          : 1093 max.: 2000, NameField: 9782 max.:    65535
 14064                                  ;Code until     :25853 max.: 30000, free: 4147
 14065                                  ;Data (HeapEnd) :47000, resting stacksize: 18535
 14066                                  ;Max. Const in 'epilog' : 1131 max. 3000, free: 1869
