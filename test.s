 .section .data
a: .quad 0
b: .quad 0
c: .quad 0
d: .quad 0
e: .quad 0
f: .quad 0
g: .quad 0
h: .quad 0
i: .quad 0
j: .quad 0
k: .quad 0
l: .quad 0
m: .quad 0
n: .quad 0
o: .quad 0
p: .quad 0
q: .quad 0
r: .quad 0
s: .quad 0
t: .quad 0
u: .quad 0
v: .quad 0
w: .quad 0
x: .quad 0
y: .quad 0
z: .quad 0
format: .string "%d\n"
 .section .text
 .globl main
main:
	pushq	$2
	popq	a
	pushq	$4
	popq	b
	pushq	a
	pushq	b
	popq	%rbx
	popq	%rax
	addq	%rbx, %rax
	pushq	%rax
	popq	c
	pushq	c
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	pushq	a
	pushq	b
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	c
	pushq	c
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	pushq	a
	pushq	b
	popq	%rdi
	popq	%rax
	imulq	%rdi
	pushq	%rax
	popq	c
	pushq	c
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	pushq	b
	pushq	a
	popq	%rdi
	popq	%rax
	cqo
	idivq	%rdi
	pushq	%rax
	popq	c
	pushq	c
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	pushq	$3
	popq	%rax
	negq	%rax
	pushq	%rax
	popq	d
	pushq	d
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	pushq	$1
	pushq	$2
	popq	%rdi
	popq	%rax
	cmpq	%rdi, %rax
	jge	L000
	pushq	$111
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	jmp	L001
L000:
	pushq	$1110
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
L001:
	pushq	$2
	pushq	$1
	popq	%rdi
	popq	%rax
	cmpq	%rdi, %rax
	jle	L002
	pushq	$222
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	jmp	L003
L002:
	pushq	$2220
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
L003:
	pushq	$1
	pushq	$2
	popq	%rdi
	popq	%rax
	cmpq	%rdi, %rax
	jg	L004
	pushq	$333
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	jmp	L005
L004:
	pushq	$3330
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
L005:
	pushq	$2
	pushq	$1
	popq	%rdi
	popq	%rax
	cmpq	%rdi, %rax
	jl	L006
	pushq	$444
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	jmp	L007
L006:
	pushq	$4440
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
L007:
	pushq	$2
	pushq	$2
	popq	%rdi
	popq	%rax
	cmpq	%rdi, %rax
	jne	L008
	pushq	$555
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	jmp	L009
L008:
	pushq	$5550
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
L009:
	pushq	$1
	pushq	$2
	popq	%rdi
	popq	%rax
	cmpq	%rdi, %rax
	je	L010
	pushq	$666
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	jmp	L011
L010:
	pushq	$6660
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
L011:
L012:
	pushq	a
	pushq	$10
	popq	%rdi
	popq	%rax
	cmpq	%rdi, %rax
	jge	L013
	pushq	a
	popq	%rdi
	movq	$format, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	movq	$0, %rax
	call printf
	pushq	a
	pushq	$1
	popq	%rbx
	popq	%rax
	addq	%rbx, %rax
	pushq	%rax
	popq	a
	jmp	L012
L013:
	movq	$0, (%rsp)
	call	exit
