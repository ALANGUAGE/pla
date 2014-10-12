// 12.10.2014
char Version1[]="A.COM CComp V0.7";
#define BSS
#define ARCHIVE "AR.C"
#define ORGDATA     30000
char BSS=0;  char NASM=0;  char PROTECTED=0;     char LIST=0;
#define LSTART        200
#define VARMAX        300
#define FUNCMAX       300
#define CALLMAX      2000
#define IDLENMAX       16
#define _  // Konstantvergleich
#define T_NAME        256
#define T_CONST       257 
#define T_STRING      258     
#define T_INCLUDE     510     
#define T_DEFINE      511  
#define T_RETURN      512
#define T_IF          513      
#define T_ELSE        514  
#define T_WHILE       515      
#define T_DO          516
#define T_INT         517     
#define T_ASM         518   
#define T_ASMBLOCK    519   
#define T_EMIT        520
#define T_GOTO        521    
#define T_VOID        529  
#define T_CHAR        530       
#define T_SIGNED      531
#define T_UNSIGNED    532
#define T_LONG        533
#define T_SHORT       534
#define T_UINT32      545
#define T_INTH        600
#define T_IFCARRY     601
#define T_IFZERO      602
#define T_EQ          806
#define T_NE          807
#define T_GE          811
#define T_LE          824
#define T_PLUSPLUS   1219
#define T_MINUSMINUS 1225
#define T_PLUSASS    1230
#define T_MINUSASS   1231
#define T_MULASS     1232
#define T_DIVASS     1233
#define T_ANDASS     1234
#define T_ORASS      1235
#define T_LESSLESS   1240
#define T_GREATGREAT 1241
#define COMAX        3000
#define CMDLENMAX      67
unsigned long LDATAORIG=2000000;     unsigned long ldata=2000000; long LONG0=0;
unsigned long ORGDATAORIG=30000;     unsigned long orgData=30000;
char co[COMAX];    int maxco=0;      int maxco1=0;
char coname[CMDLENMAX];              char *cloc=0;
char locname[CMDLENMAX]; int maxloc=0;
int fdin=0;        int fdout=0;      char symbol[128];
char fname[CMDLENMAX];               char namein[CMDLENMAX];
char namelst[CMDLENMAX];             char archivename[]="AR.C";
int token=0;       char globC=0;     int spalte=0;
char thechar=0;    int iscmp=0;      int nconst=0;
int nreturn=0;     int nlabel=0;     int callrecursive=0;
unsigned long lexvalL;  char islong; char isldata=0;
int typei;        char istype;  char GType [VARMAX]; // 0=V, 1=*, 2=&,#
int signi;        char issign;  char GSign [VARMAX]; // 0=U, 1=S
int widthi;int wi;char iswidth; char GWidth[VARMAX]; // 0, 1, 2, 4
int  GTop=1;        int LTop=150;
int  GLino   [VARMAX];     // lineno
int  GUsed   [VARMAX];     // how manytimes is var used
long GData   [VARMAX];     // init data or local addr or array len or define no
long GAdr    [VARMAX];     // Address 32 bit
int  GName   [VARMAX];     // start of var name in list
int  FTop=0;               // top of function list
char FWidth  [FUNCMAX];    // iswidth
int  FLino   [FUNCMAX];    // lineno
int  FCalls  [FUNCMAX];    // no of calls for this function
int  FName   [FUNCMAX];    // start of function name in list
int  CTop=0;               // top of call list
int  CName   [CALLMAX];    // CNameTop
char CUnres  [CALLMAX];    // 0 = unresolved call
char Ls[]="12345678901";                      //must be in low memory
char NA[]="12345678901234567890123456789012"; //must be in low memory
char NB[]="12345678901234567890123456789012"; //must be in low memory
char fgetsdest[128];         unsigned char *CNameTop=0;
unsigned char *fgetsp=0;     unsigned int segE;
unsigned int lineno=1;       unsigned int linenoinclude=1;
unsigned char *pt=0;         unsigned char *p1=0;
int DOS_ERR=0; int DOS_NoBytes=0; char DOS_ByteRead=0;

long varL1!; int vari1!; unsigned int vari2![3];
char varc1!; long varL2!;
long arrL1![3]; long varL4!; char chc2!;
void ttt(long par1, char *s)
  {   }
void a(unsigned int i) { if(NASM == 0) prs("offset "); printName(i);}//address
void v(unsigned int i) { if(NASM) { if (i < LSTART) prc('['); }
  printName(i); if(NASM) { if (i < LSTART) prc(']'); }   }//value
void checknamelen() { int i;    i=strlen(symbol);
  if (i >= IDLENMAX) error1("Item name is too long in characters)"); }
void pwi(int i) {  // print width
  if (i == 1) prs("byte ");    if (i == 2) prs("word ");
  if (i == 4) prs("dword ");   if (NASM == 0) prs("ptr ");
}
void storeName() {int i;
  i=strlen(symbol); to_far(CNameTop, symbol); CNameTop=CNameTop+i; CNameTop++;
}
char doglobName[IDLENMAX];
void doLdata() {
  if (GTop >= LSTART) error1("Global table full");
  if (iswidth == 0) error1("no VOID as var type");
  checknamelen();
  if (checkName() != 0) error1("Global variable already defined");
  GAdr[GTop]=ldata;
  eax=0;  lexvalL=iswidth; // Cast B2L
  if (istoken('[')) { istype='&';
    expect(T_CONST);
    if (iswidth==2) lexvalL=lexvalL << 1;
    if (iswidth==4) lexvalL=lexvalL << 2;
    expect(']');
  }
  prs("\n;p32  adr: "); prL(ldata); prs(", "); prs(symbol);
  prs(" ["); prL(lexvalL); prc(']');
  ldata=ldata+lexvalL; GData[GTop]=lexvalL;
  GSign[GTop]=issign;  GWidth[GTop]=iswidth; GType[GTop]=istype;
  GLino [GTop]=lineno-1; GUsed [GTop]=0;
//  if (isstrarr) strcpy(symbol, doglobName);
  GName[GTop] = CNameTop;
  storeName();
  GTop++; expect(';');
}
void doglob() { int i; int j; int isstrarr; isstrarr=0;
  if (GTop >= LSTART) error1("Global table full");
  if (iswidth == 0) error1("no VOID as var type");
  checknamelen();
  if (checkName() != 0) error1("Global variable already defined");
  GAdr[GTop]=LONG0;
  if (istoken('[')) { istype='&';
      if (istoken(T_CONST)) {
      if (BSS) { if (NASM) {prs("\nsection .bss\nabsolute ");
        GAdr[GTop]=orgData;
        prunsign1(orgData); }
        else {prs("\nAData = $\norg "); prunsign1(orgData);} }
      prs("\n"); prs(symbol); 
      if (iswidth==1) {if (NASM) prs(" resb "); else prs(" db ");}
      if (iswidth==2) {if (NASM) prs(" resw "); else prs(" dw ");}
      if (iswidth==4) {if (NASM) prs(" resd "); else prs(" dd ");}
      prL(lexvalL); if (NASM==0)prs(" dup (?)");
      if (BSS) {if(NASM) prs("\nsection .text");
        else prs("\norg AData"); }
      orgData=orgData+lexvalL;
      if (iswidth==2) orgData=orgData+lexvalL;
      if (iswidth==4) {i= lexvalL * 3; orgData=orgData + i;}
      GData[GTop]=lexvalL; expect(']');
    }else { expect(']');
      if (iswidth != 1) error1("Only ByteArray allowed");
      prs("\n"); prs(symbol); prs(" db "); 
      isstrarr=1; strcpy(doglobName, symbol);
      expect('='); 
      if (istoken(T_STRING)) { 
        prc(34); prscomment(symbol); prc(34); prs(",0"); 
        i=strlen(symbol); GData[GTop]=i; }
      else if (istoken('{' )) { i=0;
        do { if(i) prc(','); 
          expect(T_CONST); prL(lexvalL); i++; }
        while (istoken(',')); expect('}'); GData[GTop]=i; }
      else error1("String or number array expected");
      }; 
    } else { //expect('=');
    prs("\n"); prs(symbol); if (istype=='*') prs(" dw ");
    else {if (iswidth==1) prs(" db ");
          if (iswidth==2) prs(" dw ");
          if (iswidth==4) prs(" dd ");  }
    if(istoken('-')) prc('-');
    if (istoken('=')) {expect(T_CONST); prL(lexvalL); }
    else prunsign1(0); }
  GSign[GTop]=issign; GWidth[GTop]=iswidth; GType[GTop]=istype;
  GLino [GTop]=lineno-1; GUsed [GTop]=0;
  if (isstrarr) strcpy(symbol, doglobName);
  GName[GTop] = CNameTop;
  storeName();
  GTop++; expect(';');
}
int gettypes(int i) {int j; char c;
  c=GSign [i]; if (c=='S') signi =1;    else signi =0;
  c=GWidth[i]; widthi=0;wi=0;
  if (c==1) {widthi=1;wi=1;}
  if (c==2) {widthi=2;wi=2;}
  if (c==4) {widthi=4;wi=4;}
  c=GType [i]; typei=0; if (c=='*') {typei=1;wi=2;}
  if (c=='&')  typei=2;  
  return i; }  

void printName(unsigned int i) {int j;
  if (i < LSTART) { loadName(NA, i); prs(NA); }
  else { prs("[bp"); j = GData[i]; if (j>0) prc('+'); pint1(j); prc(']'); }
}
int searchname() { unsigned int i;
  i=checkName(); if (i == 0) error1("Variable unknown");
  GUsed[i]=GUsed[i] + 1; return i;
}
int checkName() { unsigned int i; unsigned int j;
  i=LSTART;while(i<LTop){loadName(NA,i);if(eqstr(symbol,NA))return i;i++;}
  i=1;     while(i<GTop){loadName(NA,i);if(eqstr(symbol,NA))return i;i++;}
  return 0;
}    
int typeName() { int m; //0=V,1=*,2=&
  issign='S';
  if(istoken(T_SIGNED))   issign='S';  if(istoken(T_UNSIGNED)) issign='U';
  iswidth=2;                           if(istoken(T_VOID))     iswidth=0;
  if(istoken(T_CHAR))     iswidth=1;   if(istoken(T_INT))      iswidth=2;
  if(istoken(T_SHORT))    iswidth=2;   if(istoken(T_LONG))     iswidth=4;
  if(istoken(T_UINT32)) { iswidth=4; issign='U'; }
  istype='V'; m=0;
  if(istoken('*'))  { istype='*'; m=1; } if(istoken('&'))  {istype='&'; m=2;}
  name1(); return m; }
void name1() {if (token!=T_NAME) error1("Name expected"); token=getlex(); }

void storecall() { int i;
  if (CTop >= CALLMAX) error1("Call table full");
  if (CNameTop >= 65468) error1("Call name table fuill");
  CUnres[CTop]=0;  CName [CTop]=CNameTop;
  storeName();
  CTop++;
}
void storefunc() { int i;
  if (FTop >= FUNCMAX) error1("Function table full");
  FLino[FTop]=lineno - 1;  FCalls[FTop]=0;   FWidth[FTop]=iswidth;
  FName[FTop]=CNameTop;
  storeName();
  FTop++;
}
void addlocal() { if(LTop >= VARMAX) error1("Local variable table full");
  if (checkName() != 0) error1("Local variable already defined");
  GSign[LTop]=issign; GWidth[LTop]=iswidth; GType[LTop]=istype;
  GLino [LTop]=lineno-1; GUsed[LTop]=0;
  GName[LTop]=CNameTop;
  storeName();
}
int checkFunction() { unsigned int i; unsigned int j; i=0;
  while (i < FTop) {
    j=FName[i]; from_far(NA, j);
    if(eqstr(symbol, NA))return i; i++;}
  return 0;
}
void dofunc() { int nloc; int narg; int i;
  cloc=&co; 
  checknamelen();
  strcpy(fname, symbol);
  if (checkFunction() ) error1("Function already defined");
  storefunc();
  prs("\n\n"); prs(symbol); prs(":  ; *** PROC ***");
  expect('(');  LTop=LSTART;
  if (istoken(')')==0) { narg=4; // return address and old bp value
    do { typeName();  addlocal();
         GData[LTop]=narg;
         if (iswidth < 2) narg+=2; else narg=narg+iswidth;
         LTop++; }
    while (istoken(','));  expect(')'); }
    
  expect('{'); /*body*/
  nloc=0; nreturn=0; nconst=0;
  while(isvariable()) {
    do {typeName(); checknamelen(); addlocal();
        _ i= 2; if(_ iswidth > 2)  { ax=iswidth; /*cast b2w*/ _ i=ax; }
        if (istoken('[')){istype='&';GType[LTop]='&';expect(T_CONST);
            expect(']'); i=lexvalL; }
        nloc=nloc - i;  GData[LTop]=nloc;
        LTop++;
      } while (istoken(',')); expect(';'); }
  listproc(); 
  if (LTop>LSTART){prs(";\n ENTER  "); 
    nloc=mkneg(nloc); pint1 (nloc); prs(",0"); }
  while(istoken('}')==0)   stmt();
  if (nreturn) { prs("\n@@retn:");}
  if (LTop > LSTART) prs(" LEAVE");
  prs("\n ret"); prs("\n; ENDP"); 
  *cloc=0; prs(co); maxco1=strlen(co);
  if (maxco1 > maxco) {maxco=maxco1; strcpy(coname, fname); }
  if (LTop  > maxloc) {maxloc=LTop; strcpy(locname, fname); }
}
int isvariable() {
  if(token==T_SIGNED) goto v1;   if(token==T_UNSIGNED) goto v1;
  if(token==T_CHAR)   goto v1;   if(token==T_INT)      goto v1;
  if(token==T_SHORT)  goto v1;   if(token==T_LONG)     goto v1;
  if(token==T_UINT32) goto v1;   return 0;  v1: return 1;
}
int sd; //side: 0=left, 1=middle, 2=rigth
char un; //1=unary, 2=binary, 3=assign, 4=mul, 5=mod, 6=div
char ty; // 1const, 2call, 3reg, 4var, 5arr
char md[3];  int mod1; int mod2; //typename       issign,iswidth  0=m, 1=*, 2=&
int  ir[3];  int irg1; int irg2; //checkreg       0=noreg, reg-nr
int  ix[3];  int idx1; int idx2; //searchname     var-nr
char is[3];  int ids1; int ids2; //gettypes(idx1) signi: 0=U, 1=S
char iw[3];  int idw1; int idw2; //gettypes(idx1) wi   : 1,2,4
char it[3];  int idt1; int idt2; //gettypes(idx1) typei: 0=mem, 1=*, 2=&
long ia[3];  int ida1; int ida2; //array const or varnr
char ic[3];  int idac1;int idac2;//array is const
long iv[3];  long val1;long val2;// = lexvalL


int pexpr() {expect('('); iscmp=0; 
  if (token==T_NAME) {if (eqstr(symbol, "_")) {constantexpr(); return;}
    irg1=checkreg();
    if (irg1) { doreg1(1); return; }  }
  exprstart(); if (iscmp==0) prs("\n or  al, al\n je @@");  prs(fname);
  expect(')'); }

void constantexpr() { int mode; int id1;int ids;
  token=getlex();   mode=typeName();  
  id1=searchname(); gettypes(id1); ids=signi;
  if (isrelational() ==0) error1("Relational expression expected");
  expect(T_CONST);
  prs("\ncmp "); 
  gettypes(id1);  pwi(wi);  v(id1);
  prs(", "); prL(lexvalL); cmpneg(ids);   prs(fname);
  expect(')');
}  
void exprstart() { if (eqstr(symbol, "_")) simplexpr(); else expr(); }
// 1const, 2call, 3reg, 4var, 5arr
int simplexpr() {  int i;
  sd=0;
  token=getlex();
  if (istoken(T_CONST)) { prs("\n mov eax, "); prL(lexvalL); return; }// 1const
  mod1=typeName();
  if (token=='(')  {ids1=issign; idw1=iswidth; docall1(); return; }   // 2call
  if (mod1 == 2) error1(" & is not allowed in left side");
  irg1=checkreg();
  if (irg1)       {doreg1(0); return; }                               // 3reg
  if (irg1 == 0) { idx1=searchname();
    gettypes(idx1); ids1=signi; idw1=wi; idt1=typei;                  // 4var
    if (idt1==2)  error1("Array not allowed left side"); }//////      // 5arr

  if (isrelational()) { error1("Relational not implemented yet"); ////////
  }
  if (istoken('=') == 0) error1("Assign expected");
  if (istoken(T_CONST) ) { val2=lexvalL;
    prs("\nmov ");
    pwi(idw1);   v(idx1);
    prs(", "); prL(val2);
    if (idx1 >= LSTART) { prs("; ");
      loadName(NA, idx1); prs(NA); } return; }
  
  mod2=typeName(); irg2=checkreg();
  if (irg2) { prs("\nmov ");
    if (irg1) printreg(irg1, mod1);
    else { pwi(idx1); v(idx1); }
    prs(", "); printreg(irg2, mod2);return;}
  else {
    if (mod2 == 2) error1("& not allowed");
    
    idx2=searchname();
    gettypes(idx2); ids2=signi; idw2=wi; idt2=typei;
    if (idt2 == 1)  error1("Array right side not implemented"); ///////
    prs("\nmov ");
    if (irg1) printreg(irg1, mod1);
    else error1("Mem to Mem not allowed by x86-CPU");
    prs(", ");
    if (mod2 == 2) a(idx2);
    else {
      pwi(idw2);  v(idx2);
      if (idx2 >= LSTART) { prs("; ");
       loadName(NA, idx2); prs(NA); }  }
  }
}
char ops[6];
int getop() { int i;              *ops=0;       _ un=0;
  if (istoken('='))         {strcpy(ops, "mov");_ un=2;}
  if (istoken(T_PLUSASS))   {strcpy(ops, "add");_ un=2;}
  if (istoken(T_MINUSASS))  {strcpy(ops, "sub");_ un=2;}
  if (istoken(T_ANDASS))    {strcpy(ops, "and");_ un=2;}
  if (istoken(T_ORASS))     {strcpy(ops, "or" );_ un=2;}
  if (istoken(T_LESSLESS))  {strcpy(ops, "shl");_ un=2;}
  if (istoken(T_GREATGREAT)){strcpy(ops, "shr");_ un=2;}
  if (istoken(T_PLUSPLUS))  {strcpy(ops, "inc");_ un=1;}
  if (istoken(T_MINUSMINUS)){strcpy(ops, "dec");_ un=1;}
  if (istoken(T_MULASS))    {strcpy(ops, "mul");_ un=1;}//reg only
  if (istoken(T_DIVASS))    {strcpy(ops, "div");_ un=1;}//reg only
/*  if (istoken('+'))         {strcpy(ops, "add");_ un=3;}
  if (istoken('-'))         {strcpy(ops, "sub");_ un=3;}
  if (istoken('&'))         {strcpy(ops, "and");_ un=3;}
  if (istoken('|'))         {strcpy(ops, "or" );_ un=3;}
  if (istoken('*'))                             _ un=4;
  if (istoken('%'))                             _ un=5;
  if (istoken('/'))                             _ un=6;     */
}
int prleftreg() { prnl(); prs(ops); prs("  "); printreg(irg1, mod1); }
int prleftvar() { }

int printvar(int i, int mode) {  }

int doreg1(int iscmp1) { int i; char sz;
  getop();
  if (iscmp1 == 1) {
      token=getlex();
      if (isrelational() ==0) error1("Relational expected");
      strcpy(ops, "cmp");
      }
  if (un==1) { prleftreg(); return; }

  if (istoken(T_CONST)) {prleftreg(); prs(", "); prL(lexvalL); goto reg1;}
  
  mod2=typeName(); irg2=checkreg();
  if (irg2) {prleftreg(); prs(", "); printreg(irg2, mod2); goto reg1;}

  i=searchname();
  gettypes(i);
  ids2=signi; idw2=wi; idt2=typei;
  if (eqstr(ops,"mov")) {_ sz=0;
    if (_ irg1 >= 17) if (_ idw2==1) sz++;  // cast byte to word or dword
    if (_ irg1 >= 47) if (_ idw2==2) sz++; }// cast word to dword
  if (sz) { if (ids2) strcpy(ops,"movsx"); else strcpy(ops,"movzx"); }

  prleftreg(); prs(", ");
  
//  if (sz) { if (_ idw2==1) prs("byte "); else prs("word "); }
  if (sz) pwi(idw2);
  
  if (mod2 == 2) a(i);
  else  {pwi(i); v(i); }
  reg1: if (iscmp1 == 1) {cmpneg(0); prs(fname); expect(')'); }
}
int checkreg() { // >=17 = 16bit, >=47 = 32bit
  if (strlen(symbol) <  2) return 0;
  if (eqstr(symbol,"al")) return 1;   if (eqstr(symbol,"cl")) return 3;
  if (eqstr(symbol,"dl")) return 5;   if (eqstr(symbol,"bl")) return 7;
  if (eqstr(symbol,"ah")) return 9;   if (eqstr(symbol,"ch")) return 11;
  if (eqstr(symbol,"dh")) return 13;  if (eqstr(symbol,"bh")) return 15;
  if (eqstr(symbol,"ax")) return 17;  if (eqstr(symbol,"cx")) return 19;
  if (eqstr(symbol,"dx")) return 21;  if (eqstr(symbol,"bx")) return 23;
  if (eqstr(symbol,"sp")) return 25;  if (eqstr(symbol,"bp")) return 27;
  if (eqstr(symbol,"si")) return 29;  if (eqstr(symbol,"di")) return 31;
  if (eqstr(symbol,"es")) return 33;  if (eqstr(symbol,"cs")) return 35;
  if (eqstr(symbol,"ss")) return 37;  if (eqstr(symbol,"ds")) return 39;
  if (eqstr(symbol,"fs")) return 41;  if (eqstr(symbol,"gs")) return 43;
  // (eqstr(symbol,"ip")) return 45;
  if (strlen(symbol) >   3) return 0;
  if (eqstr(symbol,"eax")) return 47; if (eqstr(symbol,"ecx")) return 50;
  if (eqstr(symbol,"edx")) return 53; if (eqstr(symbol,"ebx")) return 56;
  if (eqstr(symbol,"esp")) return 59; if (eqstr(symbol,"ebp")) return 62;
  if (eqstr(symbol,"esi")) return 65; if (eqstr(symbol,"edi")) return 68;
  if (eqstr(symbol,"cr0")) return 71;
  return 0;   }
char printregstr[]
="*alcldlblahchdhbhaxcxdxbxspbpsidiescsssdsfsgsipeaxecxedxebxespebpesiedicr0";
//          1         2         3         4         5         6         7
// 1 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3 5 7 901 3
void printreg(int i, int mode) {  unsigned int k; unsigned char c;
  if (_ mode == 1) prc('[');
  k = &printregstr + i; c=*k; prc(c); i++;
  k = &printregstr + i; c=*k; prc(c);
  if (i > 47) { i++; k = &printregstr + i; c=*k; prc(c); }
  if (_ mode == 1) prc(']');
}
printpri(int w) { if (w == 1) printreg(1, 0); if (w == 2) printreg(17, 0);
  if (wi == 4) printreg (47, 0);
}



int expr()
{ int mode; int id1;     int ixarr; int ixconst;
  int ids;  int isCONST; int i;     unsigned char *p;
  if (istoken(T_CONST)) { prs("\n mov eax, "); prL(lexvalL); return; }
  mode=typeName(); /*0=V,1=*,2=&*/
  mod1=mode;
  irg1=checkreg();
  if (irg1) { doreg1(0); return; }
  if (token=='(')  {docall1(); goto e1; }

  id1=searchname(); gettypes(id1); ids=signi;  ixarr=0;  ixconst=0;
    if (istoken('[')) { if (istoken(T_CONST)) {
      ixconst=1; ixarr=lexvalL; expect(']');  }
    else {ixarr=searchname(); expect(T_NAME); expect(']');
    gettypes(ixarr);
    if (widthi != 2) error1("Array index must be number or int"); } }
  if (istoken(T_PLUSPLUS  )) {if(mode)error1("Only var allowed");
     prs("\n inc  ");  pwi(wi); v(id1); goto e1;}
  if (istoken(T_MINUSMINUS)) {if(mode)error1("Only Var allowed");
     prs("\n dec  ");  pwi(wi); v(id1); goto e1;}
       
  if (istoken(T_PLUSASS   )) {compoundass("add", mode, id1); goto e1;}
  if (istoken(T_MINUSASS  )) {compoundass("sub", mode, id1); goto e1;}
  if (istoken(T_ANDASS    )) {compoundass("and", mode, id1); goto e1;}
  if (istoken(T_ORASS     )) {compoundass("or" , mode, id1); goto e1;}    
  if (istoken(T_MULASS    )) {error1("not implemented");}
  if (istoken(T_DIVASS    )) {error1("not implemented");}

  if (istoken('=')) { expr();
  doassign(mode, id1, ixarr, ixconst); goto e1;  }
  dovar1(mode, "mov", ixarr, id1);
  
e1:    if (istoken('+')) rterm("add");
  else if (istoken('-')) rterm("sub" );
  else if (istoken('&')) rterm("and" );
  else if (istoken('|')) rterm("or" );  
  else if (istoken(T_LESSLESS)) rterm("shl");
  else if (istoken(T_GREATGREAT)) rterm("shr");  
  else if (istoken('*')) domul (ids);
  else if (istoken('/')) doidiv(ids);
  else if (istoken('%')) domod (ids);
  if (isrelational()) { rterm("cmp"); cmpneg(ids);}
  return 0;
}

int compoundass(char *op, int mode, int id1) {
  if(mode) error1("only scalar Var allowed");
  prnl(); prs(op); prs("  "); 
  gettypes(id1); pwi(wi); v(id1); prs(", ");
  expect(T_CONST); prL(lexvalL);
}
int dovar1(int mode, int op, int ixarr, int id1) { 
  gettypes(id1);
  if (mode==1) {prs("\n mov bx, "); v(id1); prnl(); prs(op);
    if(widthi == 1) prs(" al, [bx]\n mov ah, 0");
    if(widthi == 2) prs(" ax, [bx]");
    if(widthi == 4) prs(" eax, [bx]");
    return; }
  if (mode==2){prnl();prs(op);prs(" ax, "); a(id1); return; }
  if (ixarr) {
    prs("\n mov bx, "); v(ixarr);
    if (wi==2) prs("\n shl bx, 1");
    if (wi==4) prs("\n shl bx, 2");
    prs("\n "); prs(op); prc(' '); printpri(wi); prs(", ");
// v(id1); prs(" [bx]");
    prc('['); printName(id1); prs(" + bx]"); return; }
  prnl();prs(op); prc(' '); printpri(wi); prs(", ");  v(id1);
}
int rterm(char *op) {int mode; int opint; int ixarr; int id1;
  if (istoken(T_CONST)) { prnl(); prs(op); prc(' '); printpri(wi); prs(", ");
    prL(lexvalL); return;}
  mode=typeName(); id1=searchname(); ixarr=0;
  if (istoken('[')) { ixarr=searchname(); expect(T_NAME); expect(']');  
    gettypes(ixarr);
    if (widthi != 2) error1("Array index must be int"); }
  if (eqstr(symbol,"ax")) return;
  opint=op; dovar1(mode, opint, ixarr, id1);
}
int doassign(int mode, int i, int ixarr, int ixconst) {
  gettypes(i);
  if (mode==1) {prs("\n mov  bx, ");v(i);
    prs("\n mov  [bx], "); printpri(widthi); return;}
  if (mode==2) {prs("\n mov  ");a(i); prs(", ax"); return;}
  if (ixarr) {  prs("\n mov bx, ");
    if(ixconst) prunsign1(ixarr); else v(ixarr);
    if (wi==2) prs("\n shl bx, 1");
    if (wi==4) prs("\n shl bx, 2");
    prs("\n mov ["); printName(i); prs("+bx], "); printpri(wi); return; }
  prs("\n mov "); pwi(wi); v(i); prs(", "); printpri(wi);
}
int domul(int ids) {
  if (ids) rterm("imul"); else {
  if (istoken(T_CONST)) {
      prs("\n mov ebx, "); prL(lexvalL); prs("\n mul ebx"); }
  else error1("with MUL only const number as multiplicator allowed"); } }
int doidiv(int ids) { int mode; int id1;
  if (istoken(T_CONST)) {
    prs("\n mov bx, "); prL(lexvalL);
    if (ids) prs("\n cwd\n idiv bx"); else prs("\n mov dx, 0\n div bx"); }
  else {
    mode=typeName(); id1=searchname();
    if (mode) error1("only const number or int as divisor allowed");
    gettypes(id1);
    if (typei) error1("only int as simple var divisor allowed");
    if (wi!=2) error1("only int, no byte as divisor allowed");
    prs("\n mov bx, "); v(id1);
    if (ids) prs("\n cwd\n idiv bx"); else prs("\n mov dx, 0\n div bx"); }
}
int domod(int ids) { doidiv(ids); prs("\n mov ax, dx"); }

int docalltype[10]; int docallvalue[10];
char procname[IDLENMAX]; // 1=CONST, 2=String, 3=&, 4=Name 5=register

void docall1() {int i; int narg; int t0; int n0;  int sz32;
  narg=0;  sz32=0;
  checknamelen();
  strcpy(&procname, symbol);
  storecall();
  expect('(');
	if (istoken(')') ==0 ) {
	  do { narg++;
	    if (narg >9 ) error1("Max. 9 parameters");  t0=0;
      if(istoken(T_CONST)) {t0=1; n0=lexvalL; }
      if(istoken(T_STRING)){t0=2; n0=nconst;
        eprs("\n"); eprs(fname); eprc(95);eprnum(nconst);eprs(" db ");
        eprc(34);eprs(symbol);eprc(34);eprs(",0"); nconst++; }
      if(istoken('&'))     {t0=3; name1(); n0=searchname();}
      if(istoken(T_NAME))  { n0=checkreg();
        if (n0) t0=5;
        else {t0=4; n0=searchname();
          p1=&GType; p1=p1+n0; if (*p1=='&') t0=3; }  }
      if (t0==0) error1("parameter not recognized (no * allowed)");
      docalltype [narg] = t0;
      docallvalue[narg] = n0;
    } while (istoken(','));
    
  	expect(')');  i=narg;
    do {
      t0 = docalltype [i];
      n0 = docallvalue[i];     
      if(t0==1){ prs("\n push "); pint1(n0);}
      if(t0==2){ prs("\n push "); if(NASM==0) prs("offset ");
        prs(fname);prc(95);pint1(n0);}
      if(t0==3){ prs("\n lea  ax, "); if(NASM==0)prs("word ptr ");  v(n0);
        prs("\n push ax");}
      if(t0==4){ gettypes(n0);
        if(wi==4)      { prs("\n push "); pwi(wi); v(n0); sz32+=2; }
        else if(wi==2) { prs("\n push "); pwi(wi); v(n0);}
        else { prs("\n mov al, byte ");  if(NASM==0)prs("ptr "); v(n0);
        prs("\n mov ah, 0\n push ax"); } }
      if(t0==5){ prs("\n push "); printreg(n0, 0); if (n0 >= 47) sz32+=2;  }
   i--; } while (i > 0);  }
	 prs("\n call "); prs(&procname);
	 if (narg>0) {prs("\n add  sp, ");
     narg=narg+narg; narg=narg+sz32; pint1(narg); } }
//////////////////////////////////////////////////////////////////////////////////
int main() { getarg();
  memresize(4096);       if (DOS_ERR) error1("memresize");
  segE=memalloc(4096);   if (DOS_ERR) error1("alloc memory");
  CNameTop=0;            getfirstchar();
  cputs("Compiling, ");   parse(); cputs("Check calls ");
  callrecursive=0; checkcalls(); epilog();
}
int getfirstchar() { fgetsp=&fgetsdest; *fgetsp=0; thechar=fgets1(); }
char *arglen=0x80; char *argv=0x82;

int getarg() { int arglen1; int i; char *c;
  arglen1=*arglen;                                     NASM=1; //default
  if (arglen1) { i=arglen1+129; *i=0; }
  else { cputs(Version1);
    cputs(" Usage: F.COM [/N/P] in_file[.C] (/N=NASM, /P=ProtMode): ");
    DOS_NoBytes=readRL(argv, 0, CMDLENMAX); c=DOS_NoBytes+128; *c=0; prnl(); }
  strcpy(namein, argv);
  if (instr2(namein, '.') == 0) strcat1(namein, ".C");
  toupper(namein);
  c=instr2(namein, '/');
  while (c != 0)  { c++;   //TODO only one parameter possible
         if (*c == 'N') NASM=1;
         if (*c == 'P') PROTECTED=1;
//    else {cputs("Parameter unknown "); exitR(3);  }
    c+=2; strcpy(namein, c);
    c=instr2(namein, '/'); }
  ltrim(namein);
  strcpy(namelst, namein); i=strlen(namelst); i--; c=&namelst+i; *c='S';
 
  fdin=openR (namein);
  if(DOS_ERR){cputs("Source file missing (.C): "); cputs(namein); exitR(1); }
  fdout=creatR(namelst);
  if(DOS_ERR){cputs("list file not creatable: ");cputs(namelst);exitR(2);}
  prs("\n; ");prs(Version1);
  prs(", Arglen: "); pint1(arglen1); if(arglen1){prs(", Argv: "); prs(argv);}
  prs(", Source: "); prs(namein);  prs(", Output asm: "); prs(namelst);
  prs("\n;PROTECTED: "); pint1(PROTECTED);
  if (isvirtual86()) prs(" V86 ON. ");else prs(" V86 OFF. ");
  if (is32bit()) prs(" 32bit: ON. "); else prs("  32bit: OFF. ");
  if (NASM) prs("\norg  256 ; NASM ON\njmp main"); else
  prs("\n.MODEL TINY,C\n.386P\n.CODE\nJUMPS\nLOCALS\nSTARTUPCODE\njmp main");
  if (PROTECTED) {prs("\n; Protected (unreal) mode ON. Ldata: "); prL(ldata);
  if (isvirtual86()) cputs(" V86 ON. ");else cputs(" V86 OFF. ");
  if (is32bit()) cputs(" 32bit: ON. "); else cputs("  32bit: OFF. ");
  INITCPU32();
  prs("\n;After INITCPU32: ");
  if (isvirtual86()) cputs(" after INIT V86 ON. ");
    else cputs(" after INIT V86 OFF. ");
  if (is32bit()) cputs(" 32bit: ON. "); else cputs("  32bit: OFF. ");
   if (isvirtual86()) prs(" V86 ON. ");else prs(" V86 OFF. ");
  if (is32bit()) prs(" 32bit: ON. "); else prs("  32bit: OFF. ");   }
}
ltrim(char *s) {
    }
int parse() { token=getlex(); do {
    if (token <= 0) return 1;
    if (istoken('#')) {
      if (istoken(T_DEFINE)) dodefine();
      else if (istoken(T_INCLUDE)) doinclude();
      else error1("define or include expected");  }
    else{ typeName();
    if (token=='(') dofunc(); else if (istoken('!')) doLdata(); else doglob(); }
  } while(1);
}
int checkcalls() { int i; int j; int k;
  prs("\n \n; missing functions: ");
  i=0;  k=0;
  while (i < CTop) {  pt=CName[i]; from_far(NA, pt);
    j=0;
    do {  p1=FName[j]; from_far(NB, p1);
      if (eqstr(NA, NB)){ CUnres[i]=1; j=FTop; }
      j++;
      } while (j < FTop);
    if (j == FTop) { k++; prs("\n; "); prs(NA); }
    i++; }
  if (k!=0) doar(k); else {prs(" All FUNCTIONs in place");
    cputs(" OK! "); }
}
char wasfunction;
int doar(int k) { int i; int fdtemp; int fdout1; int used; int found;
  cputs("  Open CALLs :"); pint(k);
  prs("\n; Number of unresolved CALLs :"); printint51(k);
  fdin=openR (archivename);
  if(DOS_ERR){cputs("Archive file missing: "); cputs(archivename); exitR(3); }
  prs("\n;use archive file: "); prs(archivename);
  fdtemp=fdout; wasfunction=0; getfirstchar();
  do { fdout=0;do {found=getfunctionhead();}while (found==0); fdout=fdtemp;
       if (found > 0) { used=0; i=0;
         while (i < CTop) { pt=CName[i]; from_far(NA, pt);
           if (eqstr(symbol, NA)) {
             if (CUnres[i] == 0) {CUnres[i]=1; used++; } }       i++; }
           if (used) { prs("\n;Number of CALLs:"); printint51(used);
              prs(" : "); prs(symbol); dofunc(); wasfunction=1; }  }
     } while (token);
  prs("\n;End of archive file. ");
  callrecursive++; if (callrecursive < 5) checkcalls();
    else {putch(10); cputs("***ERROR*** function(s) missing! ");
    error1("At least 1 function is missing in archive file! "); }
}
int getfunctionhead() {
  if (wasfunction) wasfunction=0; else token=getlex();
  if (token == 0) return 0xFFFF;
  if(istoken(T_INT))  { if (token != T_NAME) return 0;
  token=getlex(); if (token == '(') return 1; }
  return 0;
}
void doinclude() { int fdtemp;
  if (token==T_STRING) {  fdtemp=fdin;
  prs("\n;Use include file: "); prs(symbol);
  fdin=openR(symbol);
  if (DOS_ERR !=0) {LIST=1;
    prs("\n;Include file missing: "); prs(symbol);
    cputs(" STOP!!!");
    error1("\n; Stop!!");
    }
  linenoinclude=lineno; lineno=1;
  parse(); lineno=linenoinclude;
  fdin=fdtemp; prs("\n;Back to main program: "); prs(namein);
  getfirstchar(); token=getlex(); }
}
int dodefine() { int i; int j; int fdtemp;
  if (eqstr(symbol, "BSS"   )) {BSS =1; token=getlex(); return; }
  if (eqstr(symbol, "LIST"  )) {LIST=1; token=getlex(); return; }
  if (eqstr(symbol, "NOLIST")) {LIST=0; token=getlex(); return; }
  if (eqstr(symbol, "ORGDATA")) {token=getlex();
    if (token==T_CONST)  { ORGDATAORIG=lexvalL; orgData=lexvalL; }
    else  error1("start address missing"); token=getlex(); return; }
  if (eqstr(symbol, "ARCHIVE")) {token=getlex();
    if (token==T_STRING) { prs("\n;Use archive file: ");
    strcpy(archivename, symbol); prs(archivename);
    } else error1("Name of archive file missing"); token=getlex(); return;}
   expect(T_NAME);
  if (token==T_CONST) { 
    if (GTop >= LSTART) error1("global table (define) full");
    checknamelen();
    GSign [GTop]='U'; GWidth[GTop]=1; GType [GTop]='#';
    GLino [GTop]=lineno-1; GUsed [GTop]=0;
    GAdr  [GTop]=LONG0;
    GName [GTop] = CNameTop; storeName();
    GData[GTop]=lexvalL;
    expect(T_CONST); GTop++;  } 
}
int stmt() { int c; char cha;
       if(istoken('{'))     {while(istoken('}')==0) stmt();}
  else if(istoken(T_IF))    doif();
  else if(istoken(T_DO))    dodo();
  else if(istoken(T_WHILE)) dowhile();
  else if(istoken(T_GOTO))  {prs("\n jmp @@");name1();prs(symbol);expect(';');}
  else if(token==T_ASM)     {prs("\n"); c=next();
    while(c != '\n') { prc(c);	c=next(); }; token=getlex(); }
  else if(istoken(T_ASMBLOCK)) { if (token== '{' )  { prs("\n"); cha=next();  
    while(_ cha!= '}') { prc(cha); cha=next(); }
    token=getlex(); }
    else error1("Curly open expected"); }
  else if(istoken(T_INTH))  {prs("\n int  "); expect(T_CONST);
    prL(lexvalL); expect(';');    }
  else if(istoken(T_IFCARRY))doifcarry();
  else if(istoken(T_IFZERO))doifzero();
  else if(istoken(T_EMIT))   doemit();
  else if(istoken(';'))      { }
  else if(istoken(T_RETURN)) {if (token!=';')  exprstart();
    prs("\n jmp @@retn"); nreturn++; expect(';');}
  else if(_ thechar==':')      {prs("\n@@"); // Label
     prs(symbol); prc(':');  expect(T_NAME); expect(':'); }
  else                       {exprstart(); expect(';'); } }

int doemit() {prs("\n db ");
  L1: token=getlex(); prL(lexvalL); token=getlex();
    if (token== ',') {prc(','); goto L1;} expect(')'); }

int cmpneg(int ids) {
       if(iscmp==T_EQ) prs("\n jne @@");         //ZF=0
  else if(iscmp==T_NE) prs("\n je  @@");         //ZF=1
  else if(iscmp==T_LE) if (ids) prs("\n jg  @@");//ZF=0      SF =OF
                           else prs("\n ja  @@");//ZF=0 CF=0
  else if(iscmp==T_GE) if (ids){prs(" ;unsigned : "); prunsign1(ids);
                               prs("\n jl  @@");}//          SF!=OF
                           else{prs(" ;unsigned : "); prunsign1(ids);
                               prs("\n jb  @@");}//jb=jc=CF=1
  else if(iscmp=='<' ) prs("\n jge @@");         //          SF =OF
  else if(iscmp=='>' ) prs("\n jle @@");         //ZF=1 oder SF!=OF
  else error1("Vergleich unbekannt in CMPNEG()");  }

int prlabel(int n) {prs("\n@@"); prs(fname); pint1(n); prc(':'); }
int prjump (int n) {prs("\n jmp @@"); prs(fname); pint1(n); }
int doif() {int jdest; int tst; pexpr(); nlabel++; jdest=nlabel;
  pint1(jdest); stmt();
  if (istoken(T_ELSE)) { nlabel++; tst=nlabel;
    prjump(tst); prlabel(jdest); stmt(); prlabel(tst); }
  else prlabel(jdest); }
int doifcarry() {int jdest;  nlabel++; jdest=nlabel;
  prs("\n jae short @@");/*jnc*/ prs(fname);  pint1(jdest);
  stmt(); prlabel(jdest); }
int doifzero() {int jdest;  nlabel++; jdest=nlabel;
  prs("\n jne short @@");        prs(fname);  pint1(jdest);
  stmt(); prlabel(jdest); }
int dodo() {int jdest; int jtemp;
  nlabel++; jdest=nlabel; prlabel(jdest); stmt();
  expect(T_WHILE); pexpr(); nlabel++; jtemp=nlabel; pint1(jtemp);
  prjump(jdest); prlabel(jtemp); }
int dowhile() {int jdest; int tst; nlabel++; jdest=nlabel;
  prlabel(jdest); pexpr(); nlabel++; tst=nlabel; pint1(tst);
  stmt(); prjump(jdest); prlabel(tst); }
int isrelational() {
  if (token==T_EQ) goto w; if (token==T_NE) goto w;
  if (token==T_LE) goto w; if (token==T_GE) goto w;
  if (token=='<' ) goto w; if (token=='>' ) goto w;
  return 0;  w: iscmp=token; token=getlex(); return 1;}
 
char symboltemp[80];    
int getlex() { char c; char *p; 
g1: c=next(); if (c == 0) return 0; if (c <= ' ') goto g1;
  if (c=='=') {if(thechar=='=') {next(); return T_EQ; }}
  if (c=='!') {if(thechar=='=') {next(); return T_NE; }}
  if (c=='<') {if(thechar=='=') {next(); return T_LE; }}
  if (c=='>') {if(thechar=='=') {next(); return T_GE; }}
  if (c=='<') {if(thechar=='<') {next(); return T_LESSLESS;  }}
  if (c=='>') {if(thechar=='>') {next(); return T_GREATGREAT;}}
  if (c=='+') {if(thechar=='+') {next(); return T_PLUSPLUS;  }}
  if (c=='-') {if(thechar=='-') {next(); return T_MINUSMINUS;}}
  if (c=='+') {if(thechar=='=') {next(); return T_PLUSASS;   }}
  if (c=='-') {if(thechar=='=') {next(); return T_MINUSASS;  }}
  if (c=='&') {if(thechar=='=') {next(); return T_ANDASS;    }}
  if (c=='|') {if(thechar=='=') {next(); return T_ORASS;     }}    
  if (c=='*') {if(thechar=='=') {next(); return T_MULASS;    }}
  if (c=='/') {if(thechar=='=') {next(); return T_DIVASS;    }}        
  if (instr1("()[]{},;*:%-><=+!&|#?", c)) return c ;
  if (c == '/') { if (thechar == '/') {
      do c=next(); while(c != 13); /* c=next(); */ return getlex(); } }
  if (c == '/') { if (thechar == '*') {
      g2: c=next(); if (c != '*') goto g2; if (thechar != '/') goto g2;
      c=next(); return getlex(); } else  return '/'; }
  if (c == '"') {getstring(c); return T_STRING;}
  if (digit(c)) { getdigit(c); return T_CONST; }
  if (c==39) { lexvalL=next();// Hochkomma
    if (lexvalL==92) {lexvalL=next();// Backslash
      if (lexvalL=='n') lexvalL=10; if (lexvalL=='t') lexvalL= 9;
      if (lexvalL=='0') lexvalL= 0; } next(); return T_CONST; }
  if (letterX(c)) { 
    strcpy(symboltemp, symbol); p=&symbol;  *p=c;  p++;
    while(letterX(thechar)) {c=next(); *p=c;  p++; } 
      *p=0;
    if (eqstr(symbol,"signed"  )) return T_SIGNED;
    if (eqstr(symbol,"unsigned")) return T_UNSIGNED;
    if (eqstr(symbol,"void"    )) return T_VOID;
    if (eqstr(symbol,"int"     )) return T_INT;
    if (eqstr(symbol,"short"   )) return T_SHORT;
    if (eqstr(symbol,"long"    )) return T_LONG;
    if (eqstr(symbol,"uint32"  )) return T_UINT32;
    if (eqstr(symbol,"inth"    )) return T_INTH;
    if (eqstr(symbol,"char"    )) return T_CHAR;
    if (eqstr(symbol,"asm"     )) return T_ASM;
    if (eqstr(symbol,"__asm"   )) return T_ASMBLOCK;
    if (eqstr(symbol,"__emit__")) return T_EMIT;
    if (eqstr(symbol,"return"  )) return T_RETURN;
    if (eqstr(symbol,"if"      )) return T_IF;
    if (eqstr(symbol,"ifcarry" )) return T_IFCARRY;
    if (eqstr(symbol,"ifzero"  )) return T_IFZERO;
    if (eqstr(symbol,"else"    )) return T_ELSE;
    if (eqstr(symbol,"while"   )) return T_WHILE;
    if (eqstr(symbol,"do"      )) return T_DO;
    if (eqstr(symbol,"goto"    )) return T_GOTO;
    if (eqstr(symbol,"define"  )) return T_DEFINE;   
    if (eqstr(symbol,"include" )) return T_INCLUDE;   
    if (convertdefine() ) {strcpy(symbol, symboltemp); return T_CONST;}
    return T_NAME; } error1("Input item not recognized"); }

int convertdefine() { int i; int j;   i=0;
  while (i < GTop) {  j=GName[i]; from_far(NA, j);
   if (eqstr(symbol, NA)) { if (GType[i]=='#') { lexvalL=GData[i];
     eax=lexvalL; _ lexvalL=eax;   return T_CONST; } }      i++; }
   return 0;
}
int letterX(char c) { if (digit(c)) return 1; 
  if (c=='.') return 1; if (c=='_') return 1;
  if (c> 'z') return 0; if (c< '@') return 0;// @ included
  if (c> 'Z') { if (c< 'a') return 0; }  return 1; }
  
long getdigit(unsigned char c) { unsigned long L;
    _ lexvalL=0;    c-='0';
    eax=c;/* cast B2L */  _ lexvalL=eax;
    if (thechar=='x') thechar='X';
    if (thechar=='X') { next();
      while(letter(thechar)) { c=next(); if(_ c>96) c-=39;
	      if (_ c>64) c-=7; c-=48; lexvalL=lexvalL << 4; // * 16
    eax=c;/* cast B2L */  _ L=eax;  lexvalL=lexvalL+L; } }
    else
    { while(digit(thechar )) { c=next(); c-='0'; lexvalL=lexvalL*10;
    eax=c;/* cast B2L */  _ L=eax;  lexvalL=lexvalL+L; } }
    _ islong=0; if (_ lexvalL > 0xFFFF) islong++;
}
int getstring(int delim) {int c; char *p;  p=&symbol; c=next();
  while (c != delim) {*p=c; p++; c=next(); } *p=0; }

int next() {char r; r = thechar; globC=r; thechar = fgets1(); return r; }
int istoken(int t) {if (token == t) { token=getlex(); return 1; } return 0;}
int expect(int t) {if (istoken(t)==0) { *cloc=0; prs(co); listproc();
  prs("\nExpected ASCII(dez): "); pint1(t); error1(" not found"); } }

int eprc(char c)  {*cloc=c; cloc++; }
int eprs(char *s) {char c;  while(*s) { c=*s; eprc(c); s++; } }
int prc(unsigned char c) { if (LIST) { if (_ c==10) {ax=13; writetty(); }
   al=c; writetty(); } fputcR(c, fdout); }
int prscomment(unsigned char *s) {unsigned char c;
  while(*s){c=*s;prc(c);s++;} }
int prnl() { prs("\n ");}

int prs(unsigned char *s) {unsigned char c; int com; com=0;
  while(*s) { c=*s; if (c==34) if (com) com=0; else com=1;
    if (c==92) { if (com==0) { s++; c=*s;
          if (c=='n') c=10; if (c=='t') c= 9; } } prc(c); s++;  } }
int eprnum(int n){int e; if(n<0) { eprc('-'); n=mkneg(n); }
  if (n >= 10) {e=n/10; eprnum(e);}  n=n%10; n=n+'0'; eprc(n); }
int pint1 (int n){int e; if(n<0) {  prc('-');  n=mkneg(n); }
  if (n >= 10) {e=n/10;  pint1(e);}  n=n%10; n=n+'0'; prc(n); }
int prunsign1(unsigned int n) { unsigned int e;
  if ( _ n >= 10) {  e=n/10; /*DIV*/ prunsign1(e); }
    n = n % 10; /*unsigned mod*/   n += '0'; prc(n); }
int printint51(unsigned int j)  {
  if (j<10000) prc(32); if (j<1000) prc(32);  if (j<100) prc(32);
   if (j<10) prc(32);  prunsign1(j); }

int fgets1() { char c; c=*fgetsp;
  if (c==0) { printinputline(); if (DOS_NoBytes == 0) return 0;
    fgetsp=&fgetsdest; c=*fgetsp; spalte=0; }
  fgetsp++; spalte++;  return c; }
int printinputline() { fgetsp=&fgetsdest;
  do {DOS_NoBytes=readR(&DOS_ByteRead, fdin);
  if (DOS_NoBytes == 0) return; 
    *fgetsp=DOS_ByteRead; fgetsp++;} 
  while (DOS_ByteRead != 10); *fgetsp=0;
    if (fdout) { prs("\n\n;-"); prunsign1(lineno); prc(' '); lineno++;
      prscomment(&fgetsdest);}
}
int end1(int n) {fcloseR(fdin); fcloseR(fdout); exitR(n); }
int error1(char *s) { LIST=1;
  lineno--;
  prnl(); prscomment(&fgetsdest);
  prs(";Line: "); prunsign1(lineno);
  prs(" ************** ERROR: "); prs(s);
  prs("  in column: "); pint1(spalte);
  prs("\nToken: "); prunsign1(token); prs(", globC: "); prc(globC);
  prs(", thechar: "); pint1(thechar); prs(", symbol: "); prs(symbol);
  end1(1); }
int listproc() {int i; 
  if (LTop > LSTART) {
  prs("\n;Function : "); prs(fname);
  prs(", Number of local variables: "); i=LTop - LSTART; prunsign1(i);
  prs("\n;   # type sign width line used address name   list of local variables");
    i=LSTART; 
    while (i < LTop) { listvar(i); i++; } } 
}
int listvar(unsigned int i) {unsigned int j; char c;  long L;
  prs("\n;"); printint51(i); prc(32);
  c=GType [i]; if(c=='V')prs("var ");   if(c=='*')prs("ptr ");
               if(c=='&')prs("arr ");   if(c=='#')prs("def ");
  c=GSign [i]; if(c=='S')prs("sign ");  if(c=='U')prs("unsg ");
  c=GWidth[i]; if(c==  1)prs("byte " ); if(c==  2)prs("word " );
               if(c==  4)prs("dwrd " );
  j=GLino[i]; printint51(j);
  j=GUsed[i]; if (j) printint51(j);
  else {if(GType[i]=='#') prs("    -"); else prs(" NULL");}
  prc(32);  L=GAdr[i];
  if (i < LSTART) { /*if (L == 0) prs("       0"); else */ prf(L, 8); }
  else  { prs("bp"); j=GData[i];
    if (j > 0) prc('+'); pint1(j); prs("   "); }
  prc(32);  j=GName[i]; from_far(NA, j); prs(NA);
  if(GType[i]=='#') { prc('='); L=GData[i]; prL(L); }
  if(GType[i]=='&') { prc('['); L=GData[i]; prL(L); prc(']');}
}
int listcall() { int i;  prs("\n\n;    #  addr name   list of CALLs\n");
  i=0;  while (i< CTop) { calllisting(i); i++; } }
int calllisting(int i) {char c; int j;
  prs("\n;"); printint51(i); prc(32);
  c=CUnres [i]; if(c==0)prs("unresolved ");
  j=CName[i];            printint51(j); prc(32);
  from_far(NA, j);   prs(NA);
}
int countcalls(int f) { unsigned int i;
  pt=FName[f]; from_far(NA, pt);
  i=0;  while (i < CTop) {  p1=CName[i]; from_far(NB, p1);
    if (eqstr(NA, NB))  FCalls[f] = FCalls[f] + 1;         i++; }
}
int listfunc() { int i;
  prs("\n\n\n;   # Calls Line Width  Name   list of functions\n");
  i=0;  while (i < FTop) { countcalls (i); i++; } 
  i=0;  while (i < FTop) { funclisting(i); i++; } }
int funclisting(int i) {int j;  char c;
  prs("\n;");    printint51(i);
  j = FCalls[i]; if (j) printint51(j); else prs(" NULL");
  j = FLino[i];   printint51(j); prc(32);
  c=FWidth[i];
  if(_ c==0)prs("void " );    if(_ c==1)prs("byte " );
  if(_ c==2)prs("word " );    if(_ c==4)prs("dwrd " );
  prc(32); prc(32);
  j=FName[i]; from_far(NA, j); prs(NA);
}
unsigned int MAXUI=65535;
int epilog() {unsigned int i; 
  strcpy(symbol, "LastFunctionByt");  storefunc();
  prs("\nLastFunctionByt:db 0E8h, 0, 0\npop ax\nret");
  prs("\n \n;   # type sign width line used  address name   list of global variables\n");
  i=1;      while (i< GTop) { listvar(i); i++; }
  listfunc();   listcall();   LIST=1;
  prs("\n;Input: "); prs(&namein);
  prs(", List: ");   prs(&namelst);
  prs(",  Lines:"); printint51(lineno);
  prs("\n;Glob. variables:"); GTop--; printint51(GTop);
  prs(" max.:"); printint51(LSTART);
  prs("\n;Local variables:"); i=maxloc-LSTART; printint51(i);
  prs(" max.:"); _ i=VARMAX; i-=LSTART; printint51(i);
  prs(", in '"); prs(locname); prs("'");
  prs("\n;Functions      :"); printint51(FTop);
  prs(" max.:"); printint51(FUNCMAX);
  prs("\n;Calls          :"); printint51(CTop);
  prs(" max.:"); printint51(CALLMAX);
  prs(", NameField:"); printint51(CNameTop);
  prs(" max.:"); printint51(MAXUI);
  __asm{call LastFunctionByt}  _ i=ax;
  prs("\n;Code until     :"); printint51(i);
  prs(" max.: "); printint51(ORGDATAORIG); i=ORGDATAORIG-i; prs(", free:");
  printint51(i); if (i <= 1000) {prs(" *** Warning *** Code area too small");
  prs("\nuse #define ORGDATA > "); printint51(ORGDATAORIG); }
  prs("\n;Data (HeapEnd) :"); prunsign1(orgData); i=MAXUI-orgData;
  prs(", resting stacksize: ");printint51(i);
  if (i <= 5000) prs(" *** Warning *** Stack too small");
  prs("\n;Max. Const in '"); prs(coname); prs("' :"); printint51(maxco);
  prs(" max."); printint51(COMAX); i=COMAX; i=i-maxco; prs(", free:");
  printint51(i);if (i <= 1000)prs(" *** Warning *** constant area too small");
  if(NASM==0)prs("\nEND");end1(0);}
// while(expr) stmt; do stmt while(expr); FOR: i=0; while(i<10){stmt; i++;}

int memresize(unsigned int i) {
  _ DOS_ERR=0; bx=i; _ ax=cs; es=ax; ax=0x4A00; DosInt(); }
int memalloc(unsigned int i) { unsigned int vAX; unsigned int vBX;
  _ DOS_ERR=0; bx=i;  ax=0x4800; DosInt(); _ vAX=ax; _ vBX=bx;
  if(DOS_ERR) return vBX;   return vAX;  }
int copyF(char *dest, char *src, unsigned int sz) {
  segE;  _ es=ax;  _ si=src;  _ di=dest; _ cx=sz;  // ds:si   es:di
  __asm{cld} __asm{rep movsb} __asm{mov byte [es:di], 0}   }
int loadName(char *dest, int i) {
  segE;  _ es=ax; _ di=dest;  GName[i]; _ si=ax;
  do{ __asm{mov al, [es:si]} si++; *di=al;  di++; } while (al != 0); }
int to_far(char *dest, char *src) {
  segE;  _ es=ax;  _ si=src;  _ di=dest;  // ds:si   es:di
  do{ al= *si; si++; __asm{mov [es:di], al} di++; } while (al != 0); }
int from_far(char *dest, char *src) {
  segE;  _ es=ax;  _ si=src;  _ di=dest;  // ds:si   es:di
  do{ __asm{mov al, [es:si]} si++; *di=al;  di++; } while (al != 0); }

unsigned char GDT1[]={15,0,0,0,0,0,0,0, 0xFF,0xFF,0x00,0x00,0x00,0x92,0xCF,0};
int isvirtual86() { eax=cr0;  ax &= 1; }
int is32bit() { ecx=0xFFFF; __asm{jmp $ + 2;} ecx++; ifzero return 0; return 1;}
int INITCPU32() { eax=0;	ax=ds; eax << 4;
	asm add eax, GDT1       ;//Offset GDT
	asm mov [GDT1+2], eax
	asm lgdt [GDT1]
	bx=8;
	asm push ds
	asm cli
	eax=cr0; al++; cr0=eax;
	asm use32
	__asm{jmp dword PROT_EN}   __asm{PROT_EN:}
	fs=bx;	al--;	cr0=eax;
	asm use16
	__asm{jmp word PROT_DI} __asm{PROT_DI:}
	asm sti
	asm pop ds
}

void to32  (long L,  char *src) { }
void from32(char *dest, long L) { }
void prLr(unsigned long L) {           ultoar(L, Ls); prs(Ls); }//right
void prL (unsigned long L) {char *p; p=ultoaL(L, Ls); prs(p ); }//left
void prf(unsigned long L, int w) {char len; char *p;            //format width
  p=ultoaL(L, Ls); len=strlen(p); if (w > len) do {prc(32); w--;} while (w>len);
  prs(p); }
void ultoar(unsigned long L, char *s) { int i;//edx:eax DIV ebx = eax Modulo edx
  i=0;  while(i<10) { *s = '0'; s++; i++; }   *s = 0;   s--;  eax=L;
  do { edx=0;  ebx=10; ebx /= ;
       dl+=48; bx=s;   *bx=dl;  s--; } while (eax != 0);  }
int ultoaL(unsigned long L, char *s) { // edx:eax DIV ebx = eax Modulo edx
  s=s+10;  *s = 0;   s--;  eax=L;
  do { edx=0;  ebx=10; ebx /= ;
       dl+=48; bx=s;   *bx=dl;  s--; } while (eax != 0);   s++; ax=s;
}
