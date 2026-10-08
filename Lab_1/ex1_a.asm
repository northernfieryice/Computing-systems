# x == stud_N ? 1 : 0

.eqv stud_N 15

.text

main:
    li   a7, 5		# x
    ecall
    mv   t0, a0

    li   t1, 0
    li   t2, stud_N
    bne  t0, t2, print
    li   t1, 1

print:
    mv   a0, t1
    li   a7, 1
    ecall

    li   a0, '\n'
    li   a7, 11
    ecall

    li   a7, 10
    ecall
