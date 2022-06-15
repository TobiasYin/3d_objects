from numpy import char
from solid import *
import config
import fan_box
import type_c
import switch
# set_quality(0.4, 0.4)

wall = config.wall_width
height = 100
r = config.r
add = 1
real_r = r + add
base = cylinder(r=real_r, h=height)

out = fan_box.out
 
box = fan_box.box
box = box.rotate([90, 0, 0]).up(height + config.outter_size)
out = out.rotate([90, 0, 0]).up(height + config.outter_size)
box = box.down(8)
out = out.down(8)
box = box.translate([0, r, 0]) 
out = out.translate([0, r, 0])
base -= out
base += box
base -= cube([30, 30, 100]).translate([-15, r, 0])
base -= cube([30, 30, 100]).translate([-15, -r -30, 0])
base -= cylinder(r=r-wall, h=height * 1.2).down(EPSILON)
 
tpc = type_c.type_c
tpc = tpc.rotate([90, 0, 0])
tpc = tpc.translate([0, r, 10])
base -= tpc

switch = switch.switch
switch = switch.rotate([90, 0, 0])
switch = switch.translate([0, -r, 80])
base -= switch

print(base)