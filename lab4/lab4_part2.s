.text
.global draw_pixel

#*****************************************************
# draw_pixel:
#  Given a coordinates y (row) in a1, and x (col) in
#  a2 sets corresponding value in memory to the color 
#  given by a0	
#-----------------------------------------------------
#   Inputs:
#           a0 = 8 bit color value
#           a1 = y coordinate of pixel in format
#           a2 = x coordinate of pixel in format
#   Outputs:
#           No register outputs
#*****************************************************
draw_pixel:

    # Your code goes here
    li t0, 0xc00
    li t1, 0
    li t2, 0

    beq t1, a1, 2f
1:
    addi t0, t0, 32
    addi t1, t1, 1
    blt t1, a1, 1b

2:
    addi t0, t0, 1
    addi t2, t2, 1
    blt t2, a2, 2b

    sb a0, 0(t0)
    jr ra
    
