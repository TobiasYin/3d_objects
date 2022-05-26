$fa = 0.4;
$fs = 0.4;


difference() {
	union() {
		intersection() {
			union() {
				translate(v = [0, 0, 5.9900000000]) {
					cylinder(center = true, h = 12, r = 3);
				}
				rotate(a = [0, 0, 0.0000000000]) {
					linear_extrude(height = 12, twist = 40) {
						intersection() {
							translate(v = [0, 30, 0]) {
								difference() {
									circle(r = 30);
									circle(r = 28.5000000000);
								}
							}
							square(size = 30);
						}
					}
				}
				rotate(a = [0, 0, 120.0000000000]) {
					linear_extrude(height = 12, twist = 40) {
						intersection() {
							translate(v = [0, 30, 0]) {
								difference() {
									circle(r = 30);
									circle(r = 28.5000000000);
								}
							}
							square(size = 30);
						}
					}
				}
				rotate(a = [0, 0, 240.0000000000]) {
					linear_extrude(height = 12, twist = 40) {
						intersection() {
							translate(v = [0, 30, 0]) {
								difference() {
									circle(r = 30);
									circle(r = 28.5000000000);
								}
							}
							square(size = 30);
						}
					}
				}
			}
			cylinder(h = 12, r = 30);
		}
		translate(v = [0, 0, 12]) {
			rotate_extrude(angle = 360) {
				polygon(points = [[0, 0], [0, 2.0000000000], [1.5000000000, 2.0000000000], [3, 0]]);
			}
		}
	}
	translate(v = [0, 0, 1.2400000000]) {
		cylinder(center = true, h = 2.5000000000, r = 1.1500000000);
	}
}
