

translate(v = [-10, -10, 0]) {
	linear_extrude(height = 5, twist = 20) {
		intersection() {
			translate(v = [0, 60, 0]) {
				difference() {
					circle(r = 60);
					circle(r = 58.5000000000);
				}
			}
			square(size = 60);
		}
	}
}
