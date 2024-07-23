.text

# Insert your code here 

	main:
	    la t0, n
	    lw a0, 0(t0)
	    add t1, a0, x0
	    jal ra, factorial

	    addi a1, a0, 0
	    addi a0, x0, 1
	    ecall

	    addi a1, x0, '\n'
	    addi a0, x0, 11
	    ecall

	    addi a0, x0, 10
	    ecall

	factorial:
	    base: beq a0, x0, return
		  addi t1, t1, -1

		  cond: bgt t1, x0, else
		        j if
		  if:
		      ret
		  else:
		      mul a0, a0, t1
		      j factorial
	    return:
		addi a0, x0, 1
		ret

# end code here

write_tohost:
	li x1, 1
	sw x1, tohost, t5
	j write_tohost

.data 

# Initialize data here

	n: .word 5

# end data section here

.align 12
.section ".tohost","aw",@progbits;                            
.align 4; .global tohost; tohost: .dword 0;                     
.align 4; .global fromhost; fromhost: .dword 0;

