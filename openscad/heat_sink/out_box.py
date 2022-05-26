from solid import *
import shapes
import config

set_quality(0.4, 0.4)

size = config.outter_size + 0.2
radius = config.radius
inner = config.inner_size + 0.2
wall = config.wall_width
bottom_height = config.bottom_height
height = bottom_height + wall * 2 + config.top_height

box = shapes.radius_cube([size, size, height], radius)
box -= shapes.radius_cube([inner, inner, height], radius).up(wall)
box = box.up(height/2)

s = shapes.radius_cube(
    [inner + EPSILON, inner + EPSILON, bottom_height], radius)
r = inner-radius * 2
s -= cube([inner + EPSILON*2, r, height], center=True).down(wall)
s -= cube([r, inner + EPSILON *
          2, height], center=True).down(wall)
s = s.up(bottom_height/2).up(wall - EPSILON)
box += s

box -= cube([config.cold_l, config.cold_w, 100], center=True)


wind_h_count = 6
wind_v_count = 10
wind_sep_h = 1.6
wind_sep_v = 1.2

s = union()
wind_w = (height - wall * 3 - wind_sep_v * (wind_v_count - 1)) / wind_v_count
wind_l = (inner - radius * 2 - wind_sep_h *
          (wind_h_count - 1)) / wind_h_count

v_start = wall * 1.5
h_start = -inner/2 + radius
beam = cube([wind_l, 100, wind_w]).translate([0, -50, 0])
beam = beam.translate([h_start, 0, v_start])

for i in range(wind_h_count):
    for j in range(wind_v_count):
        s += beam.translate([wind_l * i + wind_sep_h * i, 0, wind_w * j + wind_sep_v * j])

# print(s)
box -= s
box -= s.rotate([0, 0, 90])

print(box-s)
