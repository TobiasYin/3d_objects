from solid import *
import config
import fan

set_quality(0.4, 0.4)

f = fan.fan(config.fan_length, 6, hole_size=2.1, hole_depth=4, degree=40)
print(f)
