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
					linear_extrude(height = 12, twist = 30) {
						intersection() {
							translate(v = [0, 50, 0]) {
								difference() {
									circle(r = 50);
									circle(r = 48);
								}
							}
							square(size = 50);
						}
					}
				}
				rotate(a = [0, 0, 120.0000000000]) {
					linear_extrude(height = 12, twist = 30) {
						intersection() {
							translate(v = [0, 50, 0]) {
								difference() {
									circle(r = 50);
									circle(r = 48);
								}
							}
							square(size = 50);
						}
					}
				}
				rotate(a = [0, 0, 240.0000000000]) {
					linear_extrude(height = 12, twist = 30) {
						intersection() {
							translate(v = [0, 50, 0]) {
								difference() {
									circle(r = 50);
									circle(r = 48);
								}
							}
							square(size = 50);
						}
					}
				}
			}
			cylinder(h = 12, r = 50);
		}
		translate(v = [0, 0, 12]) {
			rotate_extrude(angle = 360) {
				polygon(points = [[0, 0], [0, 2.0000000000], [1.5000000000, 2.0000000000], [3, 0]]);
			}
		}
	}
	translate(v = [0, 0, 1.4900000000]) {
		cylinder(center = true, h = 3, r = 1.1500000000);
	}
}
