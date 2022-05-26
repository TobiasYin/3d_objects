import re
from solid import *
import numpy as np

set_quality(0.4, 0.4)

def container(size, hole, off):

    c = cube(size + 2, center=True) -\
        cube(size, center=True) -\
        cube([size[0], size[1], size[2] + 2], center=True).down(2) -\
        cube([2.1, size[1], size[2] + 4], center=True).right(size[0]/2 - EPSILON).down(2) -\
            cylinder(r=hole/2, h = 100, center=True).rotate([0, 90, 0]).up(size[2]/2 - 2.6).down(off)

    c = c.right(size[0] / 2 + 1)
    return c.down(size[2] / 2 + 1)


recv_size = np.array([30.2, 15.2, 7.8])
send_size = np.array([19.1, 15.2, 8.5])

r = container(recv_size, 5.2, 1.3)
s = container(send_size, 6, 1)


item = r + s.rotate([0, 0, 180]).left(40)
conn = cube([60, 5, 5]) + cube([5, 35, 5]).back(32 + EPSILON)+ cube([5, 35, 5]).back(32 + EPSILON).right(55 - EPSILON)
item += conn.left(50).front(40).down(5)
print(item)