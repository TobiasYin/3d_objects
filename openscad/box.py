from solid import *
import numpy as np

def radius_cube(size, redis) -> OpenSCADObject:
    box = cube(size, center=True)
    boarder = cylinder(r=redis, h=0.01)
    m = minkowski()(
        box,
        boarder,
    )
    return m

def box(box_length = 100, box_width = 70, box_height = 50, wall_width = 3, radius = 10) -> OpenSCADObject:

    outter_size = np.array([box_length - radius * 2, box_width - radius * 2, box_height], dtype=float)

    outter = radius_cube(outter_size, radius)
    inner = radius_cube(outter_size - wall_width, radius)
    inner = inner.translate([0, 0, wall_width / 2 + 0.01])

    box = outter - inner
    return box


if __name__ == '__main__':
    set_quality(0.1, 0.1)
    print(box())