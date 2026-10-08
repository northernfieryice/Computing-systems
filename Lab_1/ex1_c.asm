# Заполнение массива размером значениями из ввода.
# Стоп: введен 0 или достигнуто макс. кол-во элементов (16 + n)

.eqv stud_N, 15		# n
.eqv M_count, 31	# stud_N + 16

.data
    arr: .space 124   

.text
main:
    li   t1, M_count  
    la   t2, arr            
    li   t3, 0                

loop:
    bge  t3, t1, done         

    li   a7, 5                
    ecall                     

    beqz a0, done             

    sw   a0, 0(t2)            
    addi t2, t2, 4            
    addi t3, t3, 1            
    j    loop

done:
			# выводим количество прочитанных чисел
    mv   a0, t3		
    li   a7, 1               
    ecall

    li   a7, 10               
    ecall