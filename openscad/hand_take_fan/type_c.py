from solid import *
import shapes


type_c = shapes.radius_cube([9.1, 3.2, 10], 1)

if __name__ == '__main__':
    set_quality(0.4, 0.4)
    board = cube([11, 5, 2], center=True) - type_c
    print(board)