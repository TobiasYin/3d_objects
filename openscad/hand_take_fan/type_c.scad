$fa = 0.4;
$fs = 0.4;


difference() {
	cube(center = true, size = [11, 5, 2]);
	minkowski() {
		cube(center = true, size = [ 7.1, 1.2,10. ]);
		cylinder(h = 0.0100000000, r = 1);
	}
}
