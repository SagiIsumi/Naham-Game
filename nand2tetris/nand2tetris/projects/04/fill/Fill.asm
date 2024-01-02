// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
	(begin)
	@KBD
	D=M
	@ begin
	D;JEQ

	(black)
	@8192
	D=A
	@count
	M=0
	M=M-D
	@SCREEN
	D=A
	@addr
	M=D
	(loop1)
	@count
	D=M
	@b_change
	D;JEQ
	@addr
	A=M
	M=-1
	@addr
	M=M+1
	@count
	M=M+1
	@loop1
	0;JMP
	(b_change)
	@KBD
	D=M
	@b_change
	D;JNE
	@white
	0;JMP

	(white)
	@8192
	D=A
	@count
	M=0
	M=M-D
	@SCREEN
	D=A
	@addr
	M=D
	(loop2)
	@count
	D=M
	@w_change
	D;JEQ
	@addr
	A=M
	M=0
	@addr
	M=M+1
	@count
	M=M+1
	@loop2
	0;JMP
	(w_change)
	@KBD
	D=M
	@b_change
	D;JEQ
	@black
	0;JMP