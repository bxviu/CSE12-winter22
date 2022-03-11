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
    li t2, 0xfff
    
    slli t1, a1, 5
    add t1, t0, a1
    blt t1, t0, 1f
    bgt t1, t2, 1f

    add t1, t0, a2
    blt t1, t0, 1f
    bgt t1, t2, 1f

    slli t1, a1, 5
    add t0, t0, t1

    add t0, t0, a2
    sb a0, 0(t0)

1:
    jr ra
    
