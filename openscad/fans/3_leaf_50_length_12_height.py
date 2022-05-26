from solid import *
import fan

set_quality(0.4, 0.4)


print(fan.fan(
    leaf_count=3,
    leaf_length=50,
    fan_height=12,
    wall_land=2,
    degree=30))
