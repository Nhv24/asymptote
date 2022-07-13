int width = 8;
int height = 6;
pen mygray = gray + 0.1 * lightgray;
path outline = (0, 0)--(width, 0)--(width, height)--(0, height)--cycle;

// Draw the black box
filldraw(outline, black);

// Grid
for (int i = 1; i < width;++i)
{
    draw((i, 0)--(i, height), linewidth(3) + mygray);
}
for (int n = 1;n < height;++n)
{
    draw((0, n)--(width, n), linewidth(3) + mygray);
}

// Dots
for (int i = 1;i < width;++i)
{
    for (int n = 1;n < height;++n)
    {
        dot((i, n), white + linewidth(3.5));
    }
}

// Clip out the curved lines
clip(currentpicture, outline);
