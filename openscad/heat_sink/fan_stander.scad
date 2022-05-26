$fa = 0.4;
$fs = 0.4;


difference() {
	union() {
		difference() {
			union() {
				difference() {
					minkowski() {
						cube(center = true, size = [28.8,28.8, 3.2]);
						cylinder(h = 0.0100000000, r = 4);
					}
					minkowski() {
						cube(center = true, size = [25.6 ,25.6 , 3.21]);
						cylinder(h = 0.0100000000, r = 4);
					}
				}
				intersection() {
					union() {
						rotate(a = [0, 0, 0.0000000000]) {
							cube(center = true, size = [55.2000000000, 2, 3.2000000000]);
						}
						rotate(a = [0, 0, 60.0000000000]) {
							cube(center = true, size = [55.2000000000, 2, 3.2000000000]);
						}
						rotate(a = [0, 0, 120.0000000000]) {
							cube(center = true, size = [55.2000000000, 2, 3.2000000000]);
						}
					}
					minkowski() {
						cube(center = true, size = [28.8,28.8, 3.2]);
						cylinder(h = 0.0100000000, r = 4);
					}
				}
			}
			cylinder(center = true, h = 3.2100000000, r = 3.2000000000);
		}
		difference() {
			cylinder(center = true, h = 3.2000000000, r = 4.8000000000);
			translate(v = [0, 0, -0.0100000000]) {
				cylinder(center = true, h = 3.2300000000, r = 3.2000000000);
			}
		}
		translate(v = [0, 0, -1.6000000000]) {
			difference() {
				cylinder(center = false, h = 8.0000000000, r = 13.9000000000);
				translate(v = [0, 0, -0.0100000000]) {
					cylinder(center = false, h = 8.0300000000, r = 12.3000000000);
				}
			}
		}
	}
	translate(v = [0, 0, 1.6000000000]) {
		translate(v = [0, 0, -1.6000000000]) {
			cylinder(center = false, h = 5, r = 12.3000000000);
		}
	}
}
