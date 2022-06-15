from numpy import char
from solid import *
import config

set_quality(0.4, 0.4)

wall = config.wall_width
height = wall
r = config.r
add = 1
real_r = r + add
base = cylinder(r=real_r, h=height)

base -= cube([30, 30, 100]).translate([-15, r, -EPSILON])
base -= cube([30, 30, 100]).translate([-15, -r -30, -EPSILON])

base += cylinder(r=r-wall-0.4, h=height+2)

base += cylinder(r=3, h=height+6.6)

print(base)