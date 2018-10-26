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
	pushq	$0
	call fact
	pushq	$1
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$1
	call fact
	pushq	$1
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$2
	call fact
	pushq	$2
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$3
	call fact
	pushq	$6
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$4
	call fact
	pushq	$24
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$5
	call fact
	pushq	$120
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$6
	call fact
	pushq	$720
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$7
	call fact
	pushq	$5040
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$8
	call fact
	pushq	$40320
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$9
	call fact
	pushq	$362880
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$10
	call fact
	pushq	$3628800
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$11
	call fact
	pushq	$39916800
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	movq	$0, (%rsp)
	call	exit
