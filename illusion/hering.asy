size(13cm);
int width = 23;
int height = 20;
for (real i=-width;i<=width;++i)
{
  draw((0,-i)--(0.5*height,i),linewidth(0.4)+blue);
}

draw((0.5*14,-width)--(0.5*14,width), red+linewidth(1.6));
draw((0.5*6,-width)--(0.5*6,width), red+linewidth(1.6));
