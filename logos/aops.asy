picture cube;
filldraw(cube, (0,0)--dir(30)--dir(90)--dir(150)--cycle, 2.8 * darkcyan + .2 * darkblue, white);
filldraw(cube, (0,0)--dir(-90)--dir(-150)--dir(150)--cycle, 1.2 * darkblue, white);
filldraw(cube, (0,0)--dir(30)--dir(-30)--dir(-90)--cycle, lightgray, white);


picture column;
add(column, shift(0, -1) * cube);
add(column, cube);
add(column, shift(0,1) * cube);

add(column);
add(shift(1 / 2 * sqrt(3),-1/2) * column);
add(shift(sqrt(3),-1) * column);

add(shift(-1 / 2 * sqrt(3),-1/2) * column);
add(shift(-sqrt(3),-1) * column);

add(shift(0, -2) * cube);
add(shift(0, -1) * cube);
add(shift(-1 / 2 * sqrt(3),-1/2 - 2) * cube);
add(shift(1 / 2 * sqrt(3),-1/2 - 2) * cube);
add(shift(0,-3) * cube);
