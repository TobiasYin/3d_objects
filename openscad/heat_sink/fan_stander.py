from solid import *
import config
import shapes

set_quality(0.4, 0.4)

size = config.inner_size
wall = config.wall_width
radius = config.radius
height = wall * 2

box = shapes.radius_cube([size, size, height], radius)

beam_shape = union()
beam = 3

for i in range(beam):
    beam_shape += cube([config.inner_size * 1.5, 2, height], center=True).rotate([0, 0, 180 / beam * i])
beam_shape = beam_shape * box

box -= shapes.radius_cube([size-wall*2, size-wall*2, height + EPSILON], radius)

box += beam_shape

def cylinder_with_hole(r, h, hole=None, wall=None, center=True):
    if wall is None and hole is None:
        wall = 2
    if hole is None:
        hole = r - wall
    c = cylinder(r=r, h=h, center=center)
    c -= cylinder(r=hole, h=h + EPSILON * 3, center=center).down(EPSILON)
    return c

box -= cylinder(r=config.moter_hole, h=height + EPSILON, center=True)
box += cylinder_with_hole(config.moter_hole + wall, height, hole=config.moter_hole)
box += cylinder_with_hole(config.moter_size + wall, height * 2 + wall, wall=wall, center=False).down(height/2)
box -= cylinder(r=config.moter_size, h=5, center=False).down(height/2).up(wall)
# print(cylinder_with_hole(10, 20, wall=2))


print(box)
