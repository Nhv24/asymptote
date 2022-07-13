pen lgreen = rgb(150,220,179);
pen dgreen = darkgreen+0.3*lightgreen+0.1*green;

path rect = ((0,10)..(3,3)..(10,0)--(90,0)..(97,3)..(100,10)--(100,100)--(60,140)--(10,140)..(3,137)..(0,130)--cycle);
path tri = (100,100)--(60,140)--(60,105)..(62,102)..(65,100)--cycle;

filldraw(rect,dgreen,dgreen);
filldraw(tri,lgreen, lgreen);


filldraw((25,70)--(25,20)--(75,20)--(75,70)--cycle,white,white);


// Squares
filldraw((30, 28)--(46, 28)--(46, 33)--(30, 33)--cycle, dgreen, dgreen);
filldraw((53, 28)--(69, 28)--(69, 33)--(53, 33)--cycle, dgreen, dgreen);
filldraw((30, 43)--(46, 43)--(46, 48)--(30, 48)--cycle, dgreen, dgreen);
filldraw((53, 43)--(69, 43)--(69, 48)--(53, 48)--cycle, dgreen, dgreen);
filldraw((30, 58)--(46, 58)--(46, 63)--(30, 63)--cycle, dgreen, dgreen);
filldraw((53, 58)--(69, 58)--(69, 63)--(53, 63)--cycle, dgreen, dgreen);
