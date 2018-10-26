.text
.global fact

fact:
  movq  8(%rsp), %rdi
  movq  $1, %rax
  cmpq  $0, %rdi
  je    return        /* when fact 0, jump to end directly */

fact_loop:
  imulq %rdi          /* %rdi = %rax * %rdi */
  subq  $1, %rdi
  cmpq  $0, %rdi
  jne   fact_loop

  jmp   return

return:
  movq  %rax, 8(%rsp)
  ret

