from solid import *
import config
import fan_top
# set_quality(0.4, 0.4)

size = config.outter_size
wall = config.wall_width
h = config.r * 2 - wall
height = 5
box = cylinder(r=size, h=h)
out = cylinder(r=size, h=2*h)

box -= cylinder(r=size - wall, h=h).up(wall)
c = fan_top.fan_cover(size, wall * 3, 5, 2, 3)
box -= c
 
# box += fan_top.cylinder_with_hole(config.moter_hole + wall, height, hole=config.moter_hole)
box += fan_top.cylinder_with_hole(config.moter_size + wall, height * 2 + wall, wall=wall, center=False)

if __name__ == "__main__":
    print(box)
