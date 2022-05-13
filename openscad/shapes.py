from solid import *
import math
# no-auto-gen

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