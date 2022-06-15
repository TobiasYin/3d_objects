$fa = 0.1;
$fs = 0.1;


difference() {
	minkowski() {
		cube(center = true, size = [60.,30.,50.]);
		cylinder(h = 0.0100000000, r = 10);
	}
	translate(v = [0, 0, 1.5100000000]) {
		minkowski() {
			cube(center = true, size = [57.,27.,47.]);
			cylinder(h = 0.0100000000, r = 10);
		}
	}
}
