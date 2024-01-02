// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
	@R0
	D=M
	@count
	M=0
	M=M-D
	@R2
	M=0
	(Loop)
	@count
	D=M
	@End
	D;JGE
	@R1
	D=M
	@R2
	M=M+D
	@count
	M=M+1
	@Loop
	0;JMP
	(End)
	@End
	0;JMP
