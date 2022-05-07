$fa = 0.1;
$fs = 0.1;


difference() {
	minkowski() {
		cube(center = true, size = [80.,50.,50.]);
		cylinder(h = 0.0100000000, r = 10);
	}
	translate(v = [0, 0, 1.5100000000]) {
		minkowski() {
			cube(center = true, size = [77.,47.,47.]);
			cylinder(h = 0.0100000000, r = 10);
		}
	}
}
