int main() {getarg(); parse(); epilog(); end1();}
char Version1[]="AS.C V0.06 25.11.2014";
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
char TokeType;     //0, DIGIT, ALNUM, noalnum
#define BYTE     1
#define WORD     2
#define DWORD    4
#define SEGREG   8
char CodeSize;     //66h: 0 BYTE, WORD, DWORD
#define IMM      1 //const  ,123
#define REG      2 //       ,BX    mode=11
#define DIR      3 //VALUE  ,var1  mod=00, r/m=110
#define IND      8 //indirec,[var1], [BX+SI], [table+BX], [bp-4]  disp 0,8,16
char Op1;          //0, IMM, REG, DIR, IND
int  CodeType;     //1-207 by searchSymbol()

char RegType;      //0=no reg, BYTE, WORD, SEGREG, DWORD
char RegNo;        //0 - 7 AL, CL, ...  by testReg()
char OpSize;       //0, BYTE, WORD, DWORD
//char AddrSize;   //67h:
char numop;        // 1-3 bytes
char wflag;        //0=byte, 1=word/dword
char dflag;        //0=source is reg,  1=dest is reg
char modrm;        //mod, r/m
int disp;          //displacement      0-8 bytes
int imme;          //immediate         0-8 bytes

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
    if (Op1 == REG) {
      if (RegType == BYTE) {genInstruction(0, 1); genMod(); return; }
      if (RegType == WORD) {genInstruction(RegNo, 3); return; }//short form
    error1("only byte or word reg allowed");return; }
    if (Op1 == DIR) {  //CONSTNS  OpSize=1
      genInstruction(1, 1); genMod(); genAddr16(LabelIx); return; }
    error1("only reg or value allowed"); return;
  }
//todo
  if (CodeType ==  52) {//not, neg, mul, imul, div, idiv
    getLeftOp();
    if (Op1 == REG) {
      genInstruction(wflag, 1); genMod(); return; }
    if (Op1 == DIR) {
      genInstruction(0, 1); genMod(); genAddr16(LabelIx); return; }
    error1("only reg or value allowed"); return;
  }

  if (CodeType==  8) {// ret
    setTokeType(); 
    if (TokeType == DIGIT) {
      genInstruction(0, 2);
      genCode16(SymbolInt); return;
    }
    skipRest();
    genInstruction(0, 1); return; 
  }

  if (CodeType==101) {// ORG nn
    setTokeType(); if (TokeType != DIGIT) error1("only digit allowed");
    PC=SymbolInt;return;
  }

  error1("unknown CodeType");//debug
}

// scan code XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
int getLeftOp() {//get single operand with error checking
  disp=0; imme=0;   modrm=0; wflag=0;
  setTokeType();

  getOpSize();//set: OpSize
  CodeSize=OpSize;
  //if (CodeSize) setTokeType();//get next token//todo

  getOp1();//0, IMM, REG, DIR, IND
  //if (Op1 == 0) error1("Name of operand expected");//todo
  //if (Op1 == IMM) {imme=SymbolInt; return;}                  //1 todo
  if (Op1 == REG) {                                          //2
    validateOpSize();
    if (RegType == BYTE) wflag=0; else wflag=1;
    return;
  }
  if (Op1 == DIR) {disp=LabelAddr[LabelIx]; wflag=1; return;}//3

  if (Op1 == IND) {                                          //4
    setTokeType();
    getOp1();
    if (TokeType != ALNUM) error1("reg/mem expected");

    if (Op1==DIR) {
      disp=LabelAddr[LabelIx];
      if (isToken(']')) {modrm=6;//mod=00, r/m=110
        return; }
      if (Op1 == REG) getIndReg();
      if (Op1 == DIR) {//only 1 ind reg

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
    setTokeType(); getOp1();
    if(Op1==REG) {
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
  if (TokeType == DIGIT) {Op1=IMM; return;}
  if (TokeType == ALNUM) {
    testReg();
    if (RegType)         {Op1=REG; return;}
    LabelIx=searchLabel(VARIABLE);
    if (LabelIx)         {Op1=DIR;return;}
    else error1("variable not found"); }
  if (isToken('['))      {Op1=IND;return;}
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
    if (eqstr(SymbolUpper,"BYTE")) {setTokeType();OpSize=BYTE; return;}
    if (eqstr(SymbolUpper,"WORD")) {setTokeType();OpSize=WORD; return;}
    if (eqstr(SymbolUpper,"DWORD")){setTokeType();OpSize=DWORD;return;}
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
  setTokeType(); if (TokeType != 0) prs("\n; ********** extra char ignored");
}
// generate code XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
int genCode8(char c) {//ret: BinLen++, OpPrintIndex++
  FileBin[BinLen]=c; BinLen++; PC++;
  if (OpPrintIndex < OPMAXLEN) {OpPos[OpPrintIndex]=c; OpPrintIndex++; }
}
int genCode16(int i) {
  genCode8(i); i=i >> 8; genCode8(i);
}
int genInstruction(char No, int loc) {char c;//set: OpCodePtr++
  if(loc) OpCodePtr=OpCodePtr+loc;
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

int writeEA(char xxx) { char len; //need: Op1, disp
  len=0;
  xxx = xxx << 3;//in reg field of mod r/m
  if (Op1 ==   0) errorexit("illegal addressing"); 
  
  if (Op1 == REG) {xxx |= 0xC0; xxx = xxx + RegNo;}
  
  if (Op1 == DIR) {xxx |= 6; len=2; }

  if (Op1 == IND) {


  }

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
dec word [bx] 
;inc word  VA ;invalid comb opcode+operands
inc byte [VA]        ;F     [300F]
inc word [VA]        ;FF 06 [300F]
inc byte [bp]        ;FE 46 00
inc byte [bp+4]      ;FE 46 04
inc byte [bp+258]    ;FE 86 02 01
inc byte [bp-4]      ;FE 46 FC
mov byte [bp- 4], al ;88 46 FC
mov      [VA+bx], al ;88 87 [300F]
}  }
