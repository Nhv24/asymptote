int s = 30;
dotfactor=s;

void drawdots(int num,pen dotclr)
{
if (num == 1)
    {
    	dot((50,50),dotclr);
    }
    
    else if (num == 2)
    {
    	dot((70,30),dotclr);
        dot((30,70),dotclr);
    }
    
    else if (num == 3)
    {
    	dot((80,20),dotclr);
        dot((20,80),dotclr);
        dot((50,50),dotclr);
    }
    
    else if (num == 4)
    {
    	dot((25,25),dotclr);
        dot((75,25),dotclr);
        dot((25,75),dotclr);
        dot((75,75),dotclr);
    }
    
    else if (num == 5)
    {
        dot((25,25),dotclr);
        dot((75,25),dotclr);
        dot((25,75),dotclr);
        dot((75,75),dotclr);
        dot((50,50),dotclr);
    }
    
    else if (num == 6)
    {
    for (int x=1; x<=3; ++x)
	{
    	dot((25,25*x),dotclr);
        dot((75,25*x),dotclr);
    }
    }
}

void dice(int num=1, pen dotclr=black, pen color=white, pen bd=black)
{
	// Draw the dice's outline
	path rect = ((0,10)..(3,3)..(10,0)--(90,0)..(97,3)..(100,10)--(100,90)..(97,97)..(90,100)--(10,100)..(3,97)..(0,90)--cycle);
    filldraw(rect,color,bd);
    drawdots(num,dotclr);
}

dice(5);
