/*
ln1=0       1         >=1, <2         0-1
ln2=1       2         >=2, <2*2       1-2
ln3=1.5=1   3         >=2, <2*2       1-2
ln4=2       4         >=4, <2*2*2     2-3
ln5=2.3=2   5                         2-3
ln6=2.5=2   6                         2-3
ln7=2.8=2   7         >=4, <2*2*2     2-3
ln8=3       8         >=8, <2*2*2*2   3-4
ln9=3.1=3   9         >=8, <2*2*2*2   3-4
result = the less number of 2
*/
 .section .text
 .global lntwo
lntwo:
  movq  8(%rsp), %rcx     /* import number */
  movq  $1, %rbx
  movq  $1, %rsi          /* for count */
  cmpq  $1, %rcx

  je  return
  movq  $0, %rsi
  jmp lntwo_loop

lntwo_loop:
  addq  $1, %rsi
  movq  $2, %rax          /* imulq: %rax:%rdx = %rax * %rbx */
  imulq %rbx              /* result: %rax:%rdx (low 64:high 64) */
  movq  %rax, %rbx
  cmpq  %rbx, %rcx
  jge   lntwo_loop

  jmp return

return:
  subq  $1, %rsi
  movq  %rsi, 8(%rsp)
  ret
