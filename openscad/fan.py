from solid import *
import shapes
# 


def fan(leaf_length=30, leaf_count=3, fan_height=5, wall_land=1.5, core_round=3, hole_size=2.3, hole_depth=3, degree=20, up=True, reverse=False) -> OpenSCADObject:
    """
    leaf_length: 扇叶的长度
    leaf_count: 扇叶的数量
    fan_height: 整个风扇主体的高度
    wall_land: 墙面的厚度
    core_round: 风扇中心部分的半径
    hole_size: 风扇下面孔的大小
    degree: 扇叶的角度
    up: 扇叶是否向上（风向上吹）
    reverse: 扇叶是否反向
    """

    if reverse:
        degree = - degree
        up = not up

    r = leaf_length
    s = (circle(r*2) - circle(r*2-wall_land)).translate([0, 2*r, 0]) * square(r*2)
    leaf = linear_extrude(fan_height, twist=degree)(s)

    leaf = leaf.translate([-10, -10, 0])
    
    print(leaf)

    core_top = shapes.round_table(
        core_round / 2, core_round, fan_height/6).translate([0, 0, fan_height])
    core = cylinder(r=core_round, h=fan_height, center=True).translate(
        [0, 0, fan_height/2-EPSILON])

    for i in range(leaf_count):
        core += leaf.rotate([0, 0, 360 / leaf_count * i])

    core *= cylinder(r=leaf_length, h=fan_height)

    if not up:
        core = core.rotate([180, 0, 0]).translate([0, 0, fan_height])

    core += core_top

    
    h = cylinder(r=hole_size/2, h=hole_depth,
                 center=True).translate([0, 0, hole_depth/2-EPSILON])
    core -= h
    return core


if __name__ == '__main__':
    # print(fan())
    fan()
