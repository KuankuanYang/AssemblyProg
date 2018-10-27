/*
int gcd(int a, int b) {
  while (b != 0){
    int r = b;
    b = a % b;
    a = r;
  }
  return a;
}
*/
 .section .data
tmp:  .quad 0
 .section .text
 .global gcd
gcd:
  /* %rdi -> b */
  /* %rsi -> a */
  /* %rax -> result */

  /* if a == 0 or b == 0 */
  cmp   $0, %rdi
  je    gcd_return
  cmp   $0, %rsi
  je    gcd_return

  jmp gcd_loop

gcd_loop:
  movq  %rdi, tmp
  movq  %rsi, %rax
  idivq %rdi
  movq  %rdx, %rdi
  movq  tmp, %rsi

  cmp   $0, %rdi
  jne   gcd_loop

  movq  %rsi, %rax
  jmp   gcd_return


gcd_return:
  /* result already in %rax */
  ret
