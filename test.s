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
	pushq	$1
	call lntwo
	pushq	$0
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
	call lntwo
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
	pushq	$3
	call lntwo
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
	pushq	$4
	call lntwo
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
	pushq	$5
	call lntwo
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
	pushq	$6
	call lntwo
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
	pushq	$7
	call lntwo
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
	pushq	$8
	call lntwo
	pushq	$3
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
	call lntwo
	pushq	$3
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
	call lntwo
	pushq	$3
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
	call lntwo
	pushq	$3
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$12
	call lntwo
	pushq	$3
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$13
	call lntwo
	pushq	$3
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$14
	call lntwo
	pushq	$3
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$15
	call lntwo
	pushq	$3
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$16
	call lntwo
	pushq	$4
	popq	%rbx
	popq	%rax
	sub	%rbx, %rax
	pushq	%rax
	popq	%rdi
	movq	%rdi, %rsi
	movq	$format, %rdi
	movq	$0, %rax
	call printf
	pushq	$17
	call lntwo
	pushq	$4
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
