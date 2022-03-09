.text
.global fill_bitmap

#*****************************************************
# fill_bitmap: 
#  Given a color, will fill the bitmap display with that color.
#-----------------------------------------------------
#   Inputs:
#           a0 = 8 bit color value
#   Outputs:
#           No register outputs
#*****************************************************
fill_bitmap:

    # Your code goes here
    li      t0, 0xc00
    li      t1, 0xfff
    
1:
    sb      a0, 0(t0)
    addi    t0, t0, 1
    ble     t0, t1, 1b
 
    jr      ra
