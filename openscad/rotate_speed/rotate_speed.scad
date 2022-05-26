$fa = 0.4;
$fs = 0.4;


union() {
	translate(v = [0, 0, -4.9]) {
		translate(v = [16.1, 0, 0]) {
			difference() {
				cube(center = true, size = [32.2,17.2, 9.8]);
				cube(center = true, size = [30.2,15.2, 7.8]);
				translate(v = [0, 0, -2]) {
					cube(center = true, size = [30.2, 15.2, 9.8]);
				}
				translate(v = [0, 0, -2]) {
					translate(v = [15.09, 0, 0]) {
						cube(center = true, size = [2.1000000000, 15.2, 11.8]);
					}
				}
				translate(v = [0, 0, -1.3000000000]) {
					translate(v = [0, 0, 1.2999999999999998]) {
						rotate(a = [0, 90, 0]) {
							cylinder(center = true, h = 100, r = 2.6000000000);
						}
					}
				}
			}
		}
	}
	translate(v = [-40, 0, 0]) {
		rotate(a = [0, 0, 180]) {
			translate(v = [0, 0, -5.25]) {
				translate(v = [10.55, 0, 0]) {
					difference() {
						cube(center = true, size = [21.1,17.2,10.5]);
						cube(center = true, size = [19.1,15.2, 8.5]);
						translate(v = [0, 0, -2]) {
							cube(center = true, size = [19.1, 15.2, 10.5]);
						}
						translate(v = [0, 0, -2]) {
							translate(v = [9.540000000000001, 0, 0]) {
								cube(center = true, size = [2.1000000000, 15.2, 12.5]);
							}
						}
						translate(v = [0, 0, -1]) {
							translate(v = [0, 0, 1.65]) {
								rotate(a = [0, 90, 0]) {
									cylinder(center = true, h = 100, r = 3.0000000000);
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, -5]) {
		translate(v = [0, 40, 0]) {
			translate(v = [-50, 0, 0]) {
				union() {
					cube(size = [60, 5, 5]);
					translate(v = [0, -32.0100000000, 0]) {
						cube(size = [5, 35, 5]);
					}
					translate(v = [54.9900000000, 0, 0]) {
						translate(v = [0, -32.0100000000, 0]) {
							cube(size = [5, 35, 5]);
						}
					}
				}
			}
		}
	}
}
