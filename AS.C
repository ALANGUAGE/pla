int main() {getarg(); parse(); epilog(); end1();}
char Version1[]="AS.C V0.06 21.11.2014";
char LIST;
char Symbol[80]; char SymbolUpper[80]; unsigned int SymbolInt;
char InputBuf[128];  unsigned char *InputPtr;
char namein [67]; char namelst[67]; char namebin[67];
int  asm_fd;       int lst_fd;       int bin_fd;
int DOS_ERR;     int ErrorCount;
int DOS_NoBytes; char DOS_ByteRead;

unsigned int PC;   //program counter, ORG nn
unsigned int PCStart;//PC at start of line by PrintLine()
char isLabel;      //by getName()
#define LABEL    1
#define VARIABLE 2
#define DIGIT    1 //0-9
#define ALNUM    2 //0-9 _ a-z A-Z
char TokeType;     //0-3 ret:getToken1()  by oper()
#define BYTE     1
#define WORD     2
#define DWORD    4
#define SEGREG   8
#define IMMED    1 //immediate const  ,123
#define REGIS    2 //simple reg       ,BX
#define ADDRES   4 //VALUE direct     ,var1
#define CONTNS   8 //indexed r/m      ,[var1] [BX+SI],[table+BX], [bp-4]
char RegType;      //0=no reg, BYTE, WORD, SEGREG, DWORD
char RegNo;        //0 - 7 AL, CL, ...  by testReg()
char OpSize;       //66h: 0=no length, BYTE, WORD, DWORD
//char AddrSize;   //67h:
char numop;        // 1-3 bytes
char wflag;        //0=byte, 1=word/dword
char dflag;        //0=source is reg,  1=dest is reg
char Op1;          //ret: REGIS,ADDRES,CONTNS,IMMED
char modrm;        //mod, r/m
int disp;          //displacement      0-8 bytes
int imme;          //immediate         0-8 bytes
int  CodeType;     //1-207 by searchSymbol()

#define OPMAXLEN  5
char OpPos[OPMAXLEN];
int OpPrintIndex;  //0-OPMAXLEN, Position to print opcode, by genCode8()
char *OpCodePtr;   //position in OpCodeTable by searchSymbol(), div.
char PrReloc;      //print 'R' if relocative
char LabelNames[1000]; char *LabelNamePtr;
char LabelType  [100]; unsigned int LabelAddr[100];
int LabelMaxIx=0;  int LabelIx;
char FileBin  [2000]; unsigned int BinLen=0;

int process() { int i; char c;
  if (CodeType ==  1) {//1 byte opcode
    genInstruction(0, 1); skipRest(); return;
  }
//todo
  if (CodeType ==  2) {//inc, dec
    getLeftOp();
    if (Op1 == REGIS) {
      if (RegType == BYTE) {genInstruction(0, 1); genMod(); return; }
      if (RegType == WORD) {genInstruction(RegNo, 3); return; }//short form
    error1("only byte or word reg allowed");return; }
    if (Op1 == ADDRES) {  //CONSTNS  OpSize=1
      genInstruction(1, 1); genMod(); genAddr16(LabelIx); return; }
    error1("only reg or value allowed"); return;
  }
//todo
  if (CodeType ==  52) {//not, neg, mul, imul, div, idiv
    getLeftOp();
    if (Op1 == REGIS) {
      genInstruction(wflag, 1); genMod(); return; }
    if (Op1 == ADDRES) {
      genInstruction(0, 1); genMod(); genAddr16(LabelIx); return; }
    error1("only reg or value allowed"); return;
  }

  if (CodeType==  8) {// ret
    getToken1(); 
    if (TokeType == DIGIT) {
      genInstruction(0, 2);
      genCode16(SymbolInt); return;
    }
    skipRest();
    genInstruction(0, 1); return; 
  }

  if (CodeType==101) {// ORG nn
    getToken1(); if (TokeType != DIGIT) error1("only digit allowed");
    PC=SymbolInt;return;
  }

  error1("unknown CodeType");//debug
}

// scan code XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
int getLeftOp() {//get single operand with error checking
//set: wflag, modrm, disp,  imme?
//char sign;    //0=no sign, 1=+,  2=-
//int r; char r1; char r2;//temp-register
//r=0; sign=0;
  disp=0; 
  getToken1();//set: TokeType

  getOpSize();//set: OpSize
  getOp1();
//  if (Op1 == 0) errorexit("Name of operand expected");
//  if (Op1 == IMMED) return;
  if (Op1 == REGIS) {
    validateOpSize();
    if (RegType == BYTE) wflag=0; else wflag=1;
    return;
  }
  if (Op1 == ADDRES) {disp=LabelAddr[LabelIx]; wflag=1; return;}

  if (Op1 == CONTNS) {
    getToken1();
    getOp1();
    if (TokeType != ALNUM) error1("reg/mem expected");

    if (Op1==ADDRES) {
      disp=LabelAddr[LabelIx];
      if (isToken(']')) {modrm=6;//mod=00, r/m=110
        return; }
      if (Op1 == REGIS) getIndReg();
      if (Op1 == ADDRES) {//only 1 ind reg

      }
    }
    return;
  }
  error1("Name of operand expected #1");
}
int getIndReg() {
  if (RegType !=WORD) error1("invalid index register #1");
  if (RegNo==3) modrm=7;//BX
  if (RegNo==5) modrm=6;//BP change to BP+0
  if (RegNo==7) modrm=5;//DI
  if (RegNo==6) modrm=4;//SI
  if (modrm==0) error1("invalid index register #2");
  if (isToken(']')) return;
  if (isToken('+')) {
    getToken1(); getOp1();
    if(Op1==REGIS) {
      if (RegType !=WORD) error1("invalid index register #3");
      if (RegNo==7) if (modrm==6) modrm=3;//BP+DI
               else if (modrm==7) modrm=1;//BX+DI
      if (RegNo==6) if (modrm==6) modrm=2;//BP+SI
               else if (modrm==7) modrm=0;//BX+DI
      if (modrm > 3) error1("invalid index register #4");
    }
  }
}
int getOp1() {//scan for a single operand, set:Op1
  if (TokeType == 0)     {Op1=0;     return;}
  if (TokeType == DIGIT) {Op1=IMMED; return;}
  if (TokeType == ALNUM) {
    testReg();
    if (RegType)         {Op1=REGIS; return;}
    LabelIx=searchLabel(VARIABLE);
    if (LabelIx)         {Op1=ADDRES;return;}
    else error1("variable not found"); }
  if (isToken('['))      {Op1=CONTNS;return;}
  Op1=0;
}
int validateOpSize() {//with RegSize
  if (RegType==0) {error1("no register defined"); return; }
  if (OpSize==RegType) return;
  if (OpSize==WORD) {if (RegType==SEGREG) return; }
  if (OpSize==0) {OpSize=RegType; if (OpSize==SEGREG) OpSize=WORD; return; }
  error1("OpSize and RegSize(RegType) does not match");
}
int getOpSize() {//set: OpSize
  if (TokeType ==ALNUM) {
    if (eqstr(SymbolUpper,"BYTE")) {getToken1();OpSize=BYTE; return;}
    if (eqstr(SymbolUpper,"WORD")) {getToken1();OpSize=WORD; return;}
    if (eqstr(SymbolUpper,"DWORD")){getToken1();OpSize=DWORD;return;}
  } OpSize=0;
}
int isToken(char c) {
  skipBlank();
  if (*InputPtr == c) {
    InputPtr++; return 1;} return 0;
}
/*int need(char c) {
  if (isToken(c) == 0) {
    prs("\n; ************** expected >> "); prc(c);
    prs(" <<\\n"); errorexit("token expected"); }
}*/
int skipRest() {
  getToken1(); if (TokeType != 0) prs("\n; ********** extra char ignored");
}
// generate code XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
int genCode8(char c) {//ret: BinLen++, OpPrintIndex++
  FileBin[BinLen]=c; BinLen++; PC++;
  if (OpPrintIndex < OPMAXLEN) {OpPos[OpPrintIndex]=c; OpPrintIndex++; }
}
int genCode16(int i) {
  genCode8(i); i=i >> 8; genCode8(i);
}
int genInstruction(char No, int op1) {char c;//set: OpCodePtr++
  if(op1) OpCodePtr=OpCodePtr+op1;
  c= *OpCodePtr + No; genCode8(c);
}
//todo
int genAddr16(int i) { unsigned int j; 
  j = LabelAddr[i]; genCode16(j);      
}
//todo
int genMod() {char x;
  OpCodePtr++; x= *OpCodePtr; writeEA(x);
}

int writeEA(char xxx) {
  xxx = xxx << 3;//in reg field of mod r/m
  if (Op1 == REGIS ) {xxx |= 0xC0; xxx = xxx + RegNo; }
  if (Op1 == ADDRES) {xxx |= 6; }
//todo: errorcheck
  genCode8(xxx);
}
#include "AS1.C"

int test1() { __asm {
add bx, ax    ;01 C3
add ax, bx    ;01 D8
add word ax, [bx] ;03 07
VA dw 8
dec cl        ;FE C9
dec byte [bx] ;FE 0F
;dec word [cx] ;invalid effective address
;inc word  VA ;invalid comb opcode+operands
inc word [VA] ;FF 06 [300F]
inc byte [bp]        ;FE 46 00
inc byte [bp+4]      ;FE 46 04
inc byte [bp+258]    ;FE 86 02 01
inc byte [bp-4]      ;FE 46 FC
mov byte [bp- 4], al ;88 46 FC
mov      [VA+bx], al ;88 87 [300F]
}  }
