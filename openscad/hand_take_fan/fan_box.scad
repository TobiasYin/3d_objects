$fa = 0.4;
$fs = 0.4;


union() {
	difference() {
		cylinder(h = 42.6000000000, r = 50);
		translate(v = [0, 0, 1.6000000000]) {
			cylinder(h = 42.6000000000, r = 48.4000000000);
		}
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
	difference() {
		cylinder(center = false, h = 11.6000000000, r = 13.9000000000);
		translate(v = [0, 0, -0.0100000000]) {
			cylinder(center = false, h = 11.6300000000, r = 12.3000000000);
		}
	}
}
