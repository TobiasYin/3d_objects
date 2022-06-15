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
							translate(v = [0, 46.8000000000, 0]) {
								difference() {
									circle(r = 46.8000000000);
									circle(r = 45.3000000000);
								}
							}
							square(size = 46.8000000000);
						}
					}
				}
				rotate(a = [0, 0, 90.0000000000]) {
					linear_extrude(height = 12, twist = 40) {
						intersection() {
							translate(v = [0, 46.8000000000, 0]) {
								difference() {
									circle(r = 46.8000000000);
									circle(r = 45.3000000000);
								}
							}
							square(size = 46.8000000000);
						}
					}
				}
				rotate(a = [0, 0, 180.0000000000]) {
					linear_extrude(height = 12, twist = 40) {
						intersection() {
							translate(v = [0, 46.8000000000, 0]) {
								difference() {
									circle(r = 46.8000000000);
									circle(r = 45.3000000000);
								}
							}
							square(size = 46.8000000000);
						}
					}
				}
				rotate(a = [0, 0, 270.0000000000]) {
					linear_extrude(height = 12, twist = 40) {
						intersection() {
							translate(v = [0, 46.8000000000, 0]) {
								difference() {
									circle(r = 46.8000000000);
									circle(r = 45.3000000000);
								}
							}
							square(size = 46.8000000000);
						}
					}
				}
			}
			cylinder(h = 12, r = 46.8000000000);
		}
		translate(v = [0, 0, 12]) {
			rotate_extrude(angle = 360) {
				polygon(points = [[0, 0], [0, 2.0000000000], [1.5000000000, 2.0000000000], [3, 0]]);
			}
		}
	}
	translate(v = [0, 0, 2.4900000000]) {
		cylinder(center = true, h = 5, r = 1.0500000000);
	}
}
