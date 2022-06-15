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
							translate(v = [0, 40, 0]) {
								difference() {
									circle(r = 40);
									circle(r = 38.8000000000);
								}
							}
							square(size = 40);
						}
					}
				}
				rotate(a = [0, 0, 120.0000000000]) {
					linear_extrude(height = 12, twist = 40) {
						intersection() {
							translate(v = [0, 40, 0]) {
								difference() {
									circle(r = 40);
									circle(r = 38.8000000000);
								}
							}
							square(size = 40);
						}
					}
				}
				rotate(a = [0, 0, 240.0000000000]) {
					linear_extrude(height = 12, twist = 40) {
						intersection() {
							translate(v = [0, 40, 0]) {
								difference() {
									circle(r = 40);
									circle(r = 38.8000000000);
								}
							}
							square(size = 40);
						}
					}
				}
			}
			cylinder(h = 12, r = 40);
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
