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
