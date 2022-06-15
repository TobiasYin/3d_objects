$fa = 0.4;
$fs = 0.4;


difference() {
	cylinder(center = true, h = 1.6000000000, r = 50);
	difference() {
		union() {
			difference() {
				cylinder(center = true, h = 4.8000000000, r = 0);
				translate(v = [0, 0, -0.0100000000]) {
					cylinder(center = true, h = 4.8300000000, r = -5);
				}
			}
			difference() {
				cylinder(center = true, h = 4.8000000000, r = 7);
				translate(v = [0, 0, -0.0100000000]) {
					cylinder(center = true, h = 4.8300000000, r = 2);
				}
			}
			difference() {
				cylinder(center = true, h = 4.8000000000, r = 14);
				translate(v = [0, 0, -0.0100000000]) {
					cylinder(center = true, h = 4.8300000000, r = 9);
				}
			}
			difference() {
				cylinder(center = true, h = 4.8000000000, r = 21);
				translate(v = [0, 0, -0.0100000000]) {
					cylinder(center = true, h = 4.8300000000, r = 16);
				}
			}
			difference() {
				cylinder(center = true, h = 4.8000000000, r = 28);
				translate(v = [0, 0, -0.0100000000]) {
					cylinder(center = true, h = 4.8300000000, r = 23);
				}
			}
			difference() {
				cylinder(center = true, h = 4.8000000000, r = 35);
				translate(v = [0, 0, -0.0100000000]) {
					cylinder(center = true, h = 4.8300000000, r = 30);
				}
			}
			difference() {
				cylinder(center = true, h = 4.8000000000, r = 42);
				translate(v = [0, 0, -0.0100000000]) {
					cylinder(center = true, h = 4.8300000000, r = 37);
				}
			}
		}
		rotate(a = [0, 0, 0.0000000000]) {
			cube(center = true, size = [102.9600000000, 2, 4.8300000000]);
		}
		rotate(a = [0, 0, 60.0000000000]) {
			cube(center = true, size = [102.9600000000, 2, 4.8300000000]);
		}
		rotate(a = [0, 0, 120.0000000000]) {
			cube(center = true, size = [102.9600000000, 2, 4.8300000000]);
		}
	}
}
