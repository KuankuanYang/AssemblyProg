#include <stdio.h>
#include "calc3.h"
#include "y.tab.h"

static int lbl;

void mycmp(int flag) {  // flag: 1: <, 2: >, 3: GE, 4: LE, 5: NE, 6: EQ
  printf("\tpopq\t%%rdi\n");
  printf("\tpopq\t%%rax\n");
  printf("\tcmpq\t%%rdi, %%rax\n");
  switch(flag) {
      case 1: printf("\tjge"); break;
      case 2: printf("\tjle"); break;
      case 3: printf("\tjl"); break;
      case 4: printf("\tjg"); break;
      case 5: printf("\tje"); break;
      case 6: printf("\tjne"); break;
  }
}

int ex(nodeType *p) {
    int lbl1, lbl2;

    if (!p) return 0;
    switch(p->type) {
    case typeCon:
        printf("\tpushq\t$%d\n", p->con.value);
        break;
    case typeId:
        printf("\tpushq\t%c\n", p->id.i + 'a');
        break;
    case typeOpr:
        switch(p->opr.oper) {
        case WHILE:
            printf("L%03d:\n", lbl1 = lbl++);
            ex(p->opr.op[0]);
            // printf("\tjz\tL%03d\n", lbl2 = lbl++);
            printf("\tL%03d\n", lbl2 = lbl++);
            ex(p->opr.op[1]);
            printf("\tjmp\tL%03d\n", lbl1);
            printf("L%03d:\n", lbl2);
            break;
        case IF:
            ex(p->opr.op[0]);
            if (p->opr.nops > 2) {
                /* if else */
                printf("\tL%03d\n", lbl1 = lbl++);
                // printf("\tjz\tL%03d\n", lbl1 = lbl++);
                ex(p->opr.op[1]);
                printf("\tjmp\tL%03d\n", lbl2 = lbl++);
                printf("L%03d:\n", lbl1);
                ex(p->opr.op[2]);
                printf("L%03d:\n", lbl2);
            } else {
                /* if */
                printf("\tL%03d\n", lbl1 = lbl++);
                // printf("\tjz\tL%03d\n", lbl1 = lbl++);
                ex(p->opr.op[1]);
                printf("L%03d:\n", lbl1);
            }
            break;
        case PRINT:
            ex(p->opr.op[0]);
            printf("\tpopq\t%%rdi\n");
            printf("\tmovq\t%%rdi, %%rsi\n");
            printf("\tmovq\t$format, %%rdi\n");
            printf("\tmovq\t$0, %%rax\n");
            printf("\tcall printf\n");
            // printf("\tprint\n");
            break;
        case '=':
            ex(p->opr.op[1]);
            printf("\tpopq\t%c\n", p->opr.op[0]->id.i + 'a');
            break;
        case UMINUS:
            ex(p->opr.op[0]);
            printf("\tpopq\t%%rax\n");
            printf("\tnegq\t%%rax\n");
            printf("\tpushq\t%%rax\n");
            // printf("\tneg\n");
            break;
        case FACT:
            ex(p->opr.op[0]);
            printf("\tcall fact\n");
            break;
        case LNTWO:
            ex(p->opr.op[0]);
            printf("\tcall lntwo\n");
            break;
        default:
            ex(p->opr.op[0]);
            ex(p->opr.op[1]);
            switch(p->opr.oper) {
                case GCD:
                    printf("\tpopq\t%%rdi\n");
                    printf("\tpopq\t%%rsi\n");
                    printf("\tmovq\t$0, %%rax"\n);
                    printf("\tcall gcd\n");
                    printf("\tpushq\t%%rax\n");
                    // printf("\tgcd\n");
                            break;
                case '+':
                            printf("\tpopq\t%%rbx\n");
                            printf("\tpopq\t%%rax\n");
                            printf("\taddq\t%%rbx, %%rax\n");
                            printf("\tpushq\t%%rax\n");
                            // printf("\tadd\n");
                            break;
                case '-':
                            printf("\tpopq\t%%rbx\n");
                            printf("\tpopq\t%%rax\n");
                            printf("\tsub\t%%rbx, %%rax\n");
                            printf("\tpushq\t%%rax\n");
                            // printf("\tsub\n");
                            break;
                case '*':
                            printf("\tpopq\t%%rdi\n");
                            printf("\tpopq\t%%rax\n");
                            printf("\timulq\t%%rdi\n"); // multiply it by the contents of %rax, then places the low 64 bits of the result in %rax, high 64 bits in %rdx
                            printf("\tpushq\t%%rax\n");
                            break;
                            // printf("\tmul\n"); break;
                case '/':   // backward version of '*'
                            printf("\tpopq\t%%rdi\n");
                            printf("\tpopq\t%%rax\n");
                            // printf("\tcdqo\n");      // sign-extend %rax into %rdx // cdqo unavailable in my computer (ubuntu 64-bit)
                            printf("\tcqo\n");
                            printf("\tidivq\t%%rdi\n"); // divide %rdx:%rax by %rdi, leaving result in %rax
                            printf("\tpushq\t%%rax\n");
                            // printf("\tdiv\n");
                            break;
                            // CMP two different registers, then sets a few bits in an internal EFLAGS registers
                            // // CMP a, b ==> calculate a - b, modify the flag
                case '<':
                            mycmp(1);
                            // printf("\tpopq\t%%rdi\n");	// for example, a<100, in this case, %rdi will be the $100 (second) and %rax (first) will be the 'a'. %rax < %rdi
                            // printf("\tpopq\t%%rax\n");
                            // printf("\tcmpq\t%%rdi, %%rax\n");
                            // printf("\tjge");
                            // printf("\tcompLT\n");
                            break;
                case '>':
                            mycmp(2);
                            break;
                case GE:
                            mycmp(3);
                            break;
                case LE:
                            mycmp(4);
                            break;
                case NE:
                            mycmp(5);
                            break;
                case EQ:
                            mycmp(6);
                            break;
            }
        }
    }
    return 0;
}
