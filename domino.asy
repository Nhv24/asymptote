dotfactor=15;
void drawdots(int num,int n, pen dotclr)
{
int i = 100*n;

if (num == 1)
    {
    	dot((50,i+50),dotclr);
    }
    
    else if (num == 2)
    {
    	dot((70,i+30),dotclr);
        dot((30,i+70),dotclr);
    }
    
    else if (num == 3)
    {
    	dot((80,i+20),dotclr);
        dot((20,i+80),dotclr);
        dot((50,i+50),dotclr);
    }
    
    else if (num == 4)
    {
    	dot((25,i+25),dotclr);
        dot((75,i+25),dotclr);
        dot((25,i+75),dotclr);
        dot((75,i+75),dotclr);
    }
    
    else if (num == 5)
    {
        dot((25,i+25),dotclr);
        dot((75,i+25),dotclr);
        dot((25,i+75),dotclr);
        dot((75,i+75),dotclr);
        dot((50,i+50),dotclr);
    }
    
    else if (num == 6)
    {
    for (int x=1; x<=3; ++x)
	{
    	dot((25,i+25*x),dotclr);
        dot((75,i+25*x),dotclr);
    }
    }
}

void domino(int top, int bottom, pen color=white, pen bd=black)
{
    // Draw the domino
    path rect = ((0,10)..(3,3)..(10,0)--(90,0)..(97,3)..(100,10)--(100,190)..(97,197)..(90,200)--(10,200)..(3,197)..(0,190)--cycle);
    filldraw(rect,color,bd);
    draw((10,100)--(90,100));
    
    drawdots(top, 1, bd);
    drawdots(bottom, 0, bd);
}

domino(6,0);
