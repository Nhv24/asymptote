int height = 7;
int width = 7;
pen[] clrs = {black, white};

for (int i=0;i<=height; ++i)
{   
	filldraw((0,i)--(0,i+1)--(i+1,i+1)--(i,i)--cycle,clrs[i%2],black);
}
clrs[1] = lightgray;
for (int n=0;n<=width; ++n)
{   
	filldraw((n,0)--(n+1,0)--(n+1,n+1)--(n,n)--cycle,clrs[n%2],black);
}
