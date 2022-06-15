from solid import *
import config
import shapes

set_quality(0.4, 0.4)

size = config.outter_size
wall = config.wall_width
height = wall
box = cylinder(r=size, h=height, center=True)


def cylinder_with_hole(r, h, hole=None, wall=None, center=True):
    if wall is None and hole is None:
        wall = 2
    if hole is None:
        hole = r - wall
    c = cylinder(r=r, h=h, center=center)
    c -= cylinder(r=hole, h=h + EPSILON * 3, center=center).down(EPSILON)
    return c


def fan_cover(r, h, hole, sep, beam):
    s = union()
    for i in range(int((r + sep) / (hole + sep))):
        s += cylinder_with_hole(i * (hole + sep), h, wall=hole)

    for i in range(beam):
        s -= cube([config.fan_length*2.2, sep, wall * 3 + EPSILON * 3],
                  center=True).rotate([0, 0, 180 / beam * i])
    return s



if __name__ == "__main__":
    s = fan_cover(size, wall * 3, 5, 2, 3)
    box -= s
    # print(s)
    print(box)
# print(cylinder_with_hole(10, 20, wall=2))


# print(box)
