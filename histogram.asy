int[] data = {34, 23, 3, 34, 4, 3, 3, 3};
  
// Implemenation of binary search
int search(int[] arr, int key)
{	
    if (arr.length <= 2)
    {
        return -1;
    }
    int min_ = 0;
    int max_ = arr.length;
    int num;
        
    while (max_ >= min_)
    {
        num = floor((min_ + max_) / 2);
            
        if (arr[num] == key)
        {
            return num;
        }
        else if (arr[num] < key)
        {
            min_ = num + 1;   
        }
        else
        {
            max_ = num - 1;   
        }
    }
    return -1;
}
    
int[] set(int[] ls)
{
    int[] newList = {};
        
    // Go through the list
    for (int index = 0; index < ls.length; ++index)
    {
        // If the value is not in the list, append it
        if (search(sort(newList), ls[index]) == -1)
        {
            newList.push(ls[index]);
        }
    }
        
    // Return the list
    return newList;
}

int count(int[] ls, int num)
{
	int c = 0;
	for (int i = 0; i < ls.length; ++i)
    {
    	if (ls[i] == num)
        {
        	++c;
        }
    }
    
    return c;
}

int find_max_occurences(int[] ls)
{
	int[] l = set(ls);
    int greatest = 0;
    int c;
    
    for (int i = 0; i < l.length; ++i)
    {
    	c = count(ls, l[i]);
    	if (c > greatest)
        {
        	greatest = c;
        }
    }
    
    return greatest;
}

void histogram(int[] data, int binwidth = 10, int spacing = 10, int numheight = 10, pen clr = green)
{
	int[] nums = set(data);
    int o = find_max_occurences(data);
    int height = o * (numheight + 1);
    int a, b, c;
    
    // Lines
    draw((0, -0.3)--(0, height));
    draw((0, -0.3)--(floor(binwidth/4)+nums.length*spacing+nums.length*floor(spacing/2), 0));
    
    // Labels down the side
    for (int i = 0; i <= o; ++i)
    {
    	label(string(i), (0, numheight * i), W);
    }
    
    for (int n = 0; n < nums.length; ++n)
    {
    	a = floor(binwidth / 4) + n * spacing + n * floor(spacing / 2);
        b = a + binwidth;
        c = numheight * count(data, nums[n]);

    	fill((a, 0)--(b, 0)--(b, c)--(a, c)--cycle, clr);
        
        label(string(nums[n]), midpoint((a, 0)--(b, 0)), S);
    }
}

histogram(data);
