from unicodedata import numeric
from solid import *
import math
import numpy as np
# no-auto-gen

def radius_cube(size, radius) -> OpenSCADObject:
    if isinstance(size, int) or isinstance(size, float):
        size = [size, size, size]
    size = np.array(size)
    size -= radius * 2
    size[2] += radius * 2
    box = cube(size, center=True)
    boarder = cylinder(r=radius, h=0.01)
    m = minkowski()(
        box,
        boarder,
    )
    return m

def radius_cube_full(size, radius) -> OpenSCADObject:
    size = np.array(size)
    size -= radius * 2
    box = cube(size, center=True)
    boarder = sphere(r=radius)
    m = minkowski()(
        box,
        boarder,
    )
    return m

def round_table(bottom, top, h) -> OpenSCADObject:
    """
    生成圆台
    bottom: 底部半径
    top: 顶部半径
    h: 高度
    """
    shape = polygon([[0, 0], [0, h], [bottom, h], [top, 0]])
    return rotate_extrude()(shape)

def eq_polygon(r, n) -> OpenSCADObject:
    """
    返回一个等边多边形，二维图形
    r: 外接圆半径
    n: 多边形边数
    """
    theta = 0
    poly = []
    for _ in range(n):
        poly.append([r*math.cos(theta), r*math.sin(theta)])
        theta += 2*pi/n
    return polygon(poly)