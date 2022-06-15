from solid import *
import shapes


switch = cube([13.1, 7.1, 10],center=True)

if __name__ == '__main__':
    set_quality(0.4, 0.4)
    board = cube([15, 8, 2], center=True) - switch
    print(board)