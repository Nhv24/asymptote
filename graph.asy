size(10cm);

void plane(int height, int width, bool axes = true, bool drawGrid = true, bool imag = false)
{
	if (drawGrid)
    {
		for (real i=-width + 1;i<width;++i)
		{
			draw((i,-height)--(i,height),linewidth(0.2));
		}
		for (real n=-height + 1;n<height;++n)
		{
			draw((-width,n)--(width,n),linewidth(0.2));
		}
    }
    draw((-width,0)--(width,0));
    draw((0,-height)--(0,height));
    if (axes)
    {
    	if (imag)
        {
            label("$Real$",(width,0),E);
        	label("$Imag$",(0,height),N);
        }
        else
        {
    	// Label the axes
        label("$x$",(width,0),E);
        label("$y$",(0,height),N);
        }
    }
}
