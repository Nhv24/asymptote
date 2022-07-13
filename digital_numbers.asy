int h = 10;
string[] digits = {
    "1011111", "0001100",
    "1111001", "1111100",
    "0101110", "1110110",
    "1110111", "1001100",
    "1111111", "1111110"
};
int[][] shifts = {
    {0, 0}, {-h - 4, 0}, {-2h - 8, 0}, {1, -h - 1},
    {1, -2h - 5}, {-h - 3, -h - 1}, {-h - 3, -2h - 5}
};

path line = (0,0)--(0,h)--(1,h + 1)--(2,h)--(2,0)--(1,-1)--cycle;
pen[] colors = {1.05 * lightgray, black};

picture digit(int num) {
    picture n;
   	for (int i = 0; i < 7; ++i) {
        fill(n, rotate((i < 3) ? 90 : 0) * shift(shifts[i][0], shifts[i][1]) * line, colors[(int) array(digits[num])[i]]);
    }
    return n;
}

void number(string num, int space = 12) {
	for (int i = 0; i < length(num); ++i) {
    	add(shift(i * (h + space)) * digit((int) array(num)[i]));
    }
}
