$fa = 0.4;
$fs = 0.4;


difference() {
	union() {
		intersection() {
			union() {
				translate(v = [0, 0, 2.4900000000]) {
					cylinder(center = true, h = 5, r = 3);
				}
				rotate(a = [0, 0, 0.0000000000]) {
					linear_extrude(height = 5, twist = 40) {
						intersection() {
							translate(v = [0, 15.0000000000, 0]) {
								difference() {
									circle(r = 15.0000000000);
									circle(r = 13.5000000000);
								}
							}
							square(size = 15.0000000000);
						}
					}
				}
				rotate(a = [0, 0, 60.0000000000]) {
					linear_extrude(height = 5, twist = 40) {
						intersection() {
							translate(v = [0, 15.0000000000, 0]) {
								difference() {
									circle(r = 15.0000000000);
									circle(r = 13.5000000000);
								}
							}
							square(size = 15.0000000000);
						}
					}
				}
				rotate(a = [0, 0, 120.0000000000]) {
					linear_extrude(height = 5, twist = 40) {
						intersection() {
							translate(v = [0, 15.0000000000, 0]) {
								difference() {
									circle(r = 15.0000000000);
									circle(r = 13.5000000000);
								}
							}
							square(size = 15.0000000000);
						}
					}
				}
				rotate(a = [0, 0, 180.0000000000]) {
					linear_extrude(height = 5, twist = 40) {
						intersection() {
							translate(v = [0, 15.0000000000, 0]) {
								difference() {
									circle(r = 15.0000000000);
									circle(r = 13.5000000000);
								}
							}
							square(size = 15.0000000000);
						}
					}
				}
				rotate(a = [0, 0, 240.0000000000]) {
					linear_extrude(height = 5, twist = 40) {
						intersection() {
							translate(v = [0, 15.0000000000, 0]) {
								difference() {
									circle(r = 15.0000000000);
									circle(r = 13.5000000000);
								}
							}
							square(size = 15.0000000000);
						}
					}
				}
				rotate(a = [0, 0, 300.0000000000]) {
					linear_extrude(height = 5, twist = 40) {
						intersection() {
							translate(v = [0, 15.0000000000, 0]) {
								difference() {
									circle(r = 15.0000000000);
									circle(r = 13.5000000000);
								}
							}
							square(size = 15.0000000000);
						}
					}
				}
			}
			cylinder(h = 5, r = 15.0000000000);
		}
		translate(v = [0, 0, 5]) {
			rotate_extrude(angle = 360) {
				polygon(points = [[0, 0], [0, 0.8333333333], [1.5000000000, 0.8333333333], [3, 0]]);
			}
		}
	}
	translate(v = [0, 0, 1.9900000000]) {
		cylinder(center = true, h = 4, r = 1.0500000000);
	}
}
