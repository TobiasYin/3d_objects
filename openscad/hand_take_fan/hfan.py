from solid import *
import config
import fan

set_quality(0.4, 0.4)

f = fan.fan(config.fan_length,leaf_count=4, fan_height=config.fan_height, hole_size=2.1, hole_depth=5, degree=40)
print(f)
 