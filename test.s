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
syntax error
	movq	$0, (%rsp)
	call	exit
