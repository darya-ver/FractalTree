private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,100,30);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, float angle) 
{   
	//your code here   
	line(x,y,x+(int)(cos(angle)*branchLength),y+(int)(sin(angle)*branchLength));
	line(x,y,x-(int)(cos(angle)*branchLength),y+(int)(sin(angle)*branchLength));
	if(branchLength > 5)
	{
		drawBranches(x+(int)(cos(angle)*branchLength), y+(int)(sin(angle)*branchLength), branchLength-10, angle);
		drawBranches(x-(int)(cos(angle)*branchLength), y+(int)(sin(angle)*branchLength), branchLength-10, angle);
	}
		
} 
