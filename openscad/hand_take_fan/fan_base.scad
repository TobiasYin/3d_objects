$fa = 0.4;
$fs = 0.4;


difference() {
	union() {
		difference() {
			cylinder(h = 100, r = 23.1000000000);
			translate(v = [0, 22.1000000000, 0]) {
				translate(v = [0, 0, -8]) {
					translate(v = [0, 0, 150]) {
						rotate(a = [90, 0, 0]) {
							cylinder(h = 85.2000000000, r = 50);
						}
					}
				}
			}
		}
		translate(v = [0, 22.1000000000, 0]) {
			translate(v = [0, 0, -8]) {
				translate(v = [0, 0, 150]) {
					rotate(a = [90, 0, 0]) {
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
					}
				}
			}
		}
	}
	translate(v = [-15, 22.1000000000, 0]) {
		cube(size = [30, 30, 100]);
	}
	translate(v = [-15, -52.1000000000, 0]) {
		cube(size = [30, 30, 100]);
	}
	translate(v = [0, 0, -0.0100000000]) {
		cylinder(h = 120.0000000000, r = 20.5000000000);
	}
	translate(v = [0, 22.1000000000, 10]) {
		rotate(a = [90, 0, 0]) {
			minkowski() {
				cube(center = true, size = [ 7.1, 1.2,10. ]);
				cylinder(h = 0.0100000000, r = 1);
			}
		}
	}
	translate(v = [0, -22.1000000000, 80]) {
		rotate(a = [90, 0, 0]) {
			cube(center = true, size = [13.1000000000, 7.1000000000, 10]);
		}
	}
}
