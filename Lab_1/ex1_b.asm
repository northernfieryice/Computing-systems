# Вывод чисел в диапазоне [min(x, y); max(x, y)] с шагом h
# x — ввод, y и h — константы

.eqv gr_N,  121		# y
.eqv stud_N, 15		# h

.text
main:

    li   a7, 5		# x
    ecall                     
    mv   t0, a0               

    li   t1, gr_N       
    li   t2, stud_N      

    mv   t3, t0			# t3 = min (пока x)
    mv   t4, t0			# t4 = max (пока x)
    ble  t0, t1, set_max	# если x <= y — max = y, min = x
    mv   t3, t1			# иначе min = y
    j    loop

set_max:
    mv   t4, t1		# max = y

loop:
    bgt  t3, t4, print         

    mv   a0, t3
    li   a7, 1               
    ecall

    li   a0, ' '
    li   a7, 11               
    ecall

    add  t3, t3, t2          
    j    loop

print:
    li   a0, '\n'
    li   a7, 11              
    ecall

    li   a7, 10              
    ecall
