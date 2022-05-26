from solid import *
import config
import shapes

set_quality(0.4, 0.4)

size = config.inner_size
wall = config.wall_width
radius = config.radius
height = config.fan_top 
box = shapes.radius_cube([size, size, height], radius)
box_inside = shapes.radius_cube(
    [size - 2 * wall, size - 2 * wall, height], radius)
box -= box_inside.down(wall)

box -= cube([size + EPSILON, size-radius * 2, height], center=True).down(wall)
box -= cube([size-radius * 2, size + EPSILON, height], center=True).down(wall)


def cylinder_with_hole(r, h, hole=None, wall=None, center=True):
    if wall is None and hole is None:
        wall = 2
    if hole is None:
        hole = r - wall
    c = cylinder(r=r, h=h, center=center)
    c -= cylinder(r=hole, h=h + EPSILON, center=center)
    return c

hole_wall = 2
sep = 1
s = union()
for i in range(int(config.fan_length) // (hole_wall + sep) + 1):
    s += cylinder_with_hole(i * (hole_wall + sep), wall * 3, wall=hole_wall)

beam = 3

for i in range(beam):
    s -= cube([config.fan_size*1.1, sep, wall * 3 + EPSILON * 3], center=True).rotate([0, 0, 180 / beam * i])

box -= s.up(height/2)
# print(cylinder_with_hole(10, 20, wall=2))


print(box)
