size(10cm);

// Length of every line segment
int length = 30;
// How many lines
int n = 8;
// Spacing
int space = 2;
int shift = 1;

picture square;
filldraw(square, (0,0)--(0,1)--(1,1)--(1,0)--cycle);

for (int i = 0; i < n; ++i) {
    for (int j = 0; j < length / (space * 2); ++j) {
    	add(shift(2j * space + (i % space) * (space - shift), i * space) * scale(space) * square);
    }
    draw((0, i * space)--(length + shift, i * space), gray);
}
draw((0, n * space)--(length + shift, n * space), gray);
