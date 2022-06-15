$fa = 0.4;
$fs = 0.4;


difference() {
	minkowski() {
		cube(center = true, size = [28.6,28.6,23.5]);
		cylinder(h = 0.0100000000, r = 4);
	}
	translate(v = [0, 0, -1.6000000000]) {
		minkowski() {
			cube(center = true, size = [25.4,25.4,23.5]);
			cylinder(h = 0.0100000000, r = 4);
		}
	}
	translate(v = [0, 0, -1.6000000000]) {
		cube(center = true, size = [36.6100000000, 28.6000000000, 23.5000000000]);
	}
	translate(v = [0, 0, -1.6000000000]) {
		cube(center = true, size = [28.6000000000, 36.6100000000, 23.5000000000]);
	}
	translate(v = [0, 0, 11.7500000000]) {
		difference() {
			union() {
				difference() {
					cylinder(center = true, h = 4.8000000000, r = 0);
					cylinder(center = true, h = 4.8100000000, r = -2);
				}
				difference() {
					cylinder(center = true, h = 4.8000000000, r = 3);
					cylinder(center = true, h = 4.8100000000, r = 1);
				}
				difference() {
					cylinder(center = true, h = 4.8000000000, r = 6);
					cylinder(center = true, h = 4.8100000000, r = 4);
				}
				difference() {
					cylinder(center = true, h = 4.8000000000, r = 9);
					cylinder(center = true, h = 4.8100000000, r = 7);
				}
				difference() {
					cylinder(center = true, h = 4.8000000000, r = 12);
					cylinder(center = true, h = 4.8100000000, r = 10);
				}
				difference() {
					cylinder(center = true, h = 4.8000000000, r = 15);
					cylinder(center = true, h = 4.8100000000, r = 13);
				}
			}
			rotate(a = [0, 0, 0.0000000000]) {
				cube(center = true, size = [38.5000000000, 1, 4.8300000000]);
			}
			rotate(a = [0, 0, 60.0000000000]) {
				cube(center = true, size = [38.5000000000, 1, 4.8300000000]);
			}
			rotate(a = [0, 0, 120.0000000000]) {
				cube(center = true, size = [38.5000000000, 1, 4.8300000000]);
			}
		}
	}
}
