/*
* Code by player01
* Do not take without permission
*/

size(9cm);

// Insert data here
int[][] data =  {
	{12, 13, 32, 22},
    {13, 34, 45, 55},
    {23, 34, 45, 45},
    {45, 34, 3, 20}
};

int spacing = 40; // Spacing

int length = data.length;
int listLength = data[0].length;
int height = max(data);

pen[] clrs = {blue, green, red, yellow, black};

// Labels
label("$x\texttt{ label}$", ((listLength - 1) * spacing / 2, -10), S);
label(rotate(90) * "$y\texttt{ label}$", (0, height / 2), W);

// Title
label("$\texttt{Title}$", ((listLength - 1) * spacing / 2, height), N);

draw((0,0)--((listLength - 1) * spacing, 0));
draw((0,0)--(0, height));

int[] dots = {};

for (int x = 0; x < length; ++x)
{
	pen clr = clrs[x];
	for (int y = 0; y < listLength; ++y)
    {
    	if (y == 0)
        {
        	dot(((y + (listLength)/(length)), data[x][y]), clr);
            draw(((y + (listLength)/(length)), data[x][y])--(((y + 1) * spacing), data[x][y + 1]), clr);
            
            // Label
            label(string(y + 1), ((y + (listLength)/(length)), 0), S);
        }
        else if (y < listLength - 1)
        {
        	dot(((y * spacing), data[x][y]), clr);
            draw(((y * spacing), data[x][y])--((y + 1) * spacing, data[x][y + 1]), clr);
            
            // Label
            label(string(y + 1), ((y * spacing), 0), S);
        }
        else
        {
        	label(string(y + 1), ((y * spacing), 0), S);
			dot(((y * spacing), data[x][y]), clr);
        }
    }
}
