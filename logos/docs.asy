pen lblue = rgb(120,180,255);
pen dblue = rgb(95,141,250);

path rect = ((0,10)..(3,3)..(10,0)--(90,0)..(97,3)..(100,10)--(100,100)--(60,140)--(10,140)..(3,137)..(0,130)--cycle);
path tri = (100,100)--(60,140)--(60,105)..(62,102)..(65,100)--cycle;

filldraw(rect,dblue,dblue);
filldraw(tri,lblue,lblue);

filldraw((25,60)--(75,60)--(75,67)--(25,67)--cycle,white,white);
filldraw((25,30)--(75,30)--(75,37)--(25,37)--cycle,white,white);
filldraw((25,45)--(75,45)--(75,52)--(25,52)--cycle,white,white);
filldraw((25,15)--(60,15)--(60,22)--(25,22)--cycle,white,white);
