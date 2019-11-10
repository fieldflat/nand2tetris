// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
  @R2
  M = 0
  @i
  M = 1
(LOOP)
  @R1
  D = M // D = R1
  @i
  D = D - M // D = D - i
  @EXIT
  D;JLT // D < 0 ならばEXITへ
  @R0
  D = M // D = R0
  @R2
  M = M + D // R2 = R2 + D
  @i
  M = M + 1 // i = i + 1
  @LOOP
  0;JMP
(EXIT)
  @EXIT
  0;JMP   // Goto END (infinite loop)