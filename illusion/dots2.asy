fill(Circle((0,0), 2), brown);
fill(Circle((20,0), 2), brown);

for (int i = 0; i < 6; ++i) {
	fill(Circle(4 * dir(60 * i) * 1.5, 2), brown);
    fill(shift(20,0) * Circle(dir(60 * i) * 5, 1), brown);
}
