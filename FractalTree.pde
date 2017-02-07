private double fractionLength = .8; 
private int smallestBranch = 10; 
private float branchAngle = .3;  
private int initialLength = 100;
public void setup() 
{   
	size(700,550);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);
	strokeWeight(10);   
	line(width/2,height,width/2,height-initialLength);   
	drawBranches(width/2,height-initialLength,100,3*PI/2, 10);  //will add later 
} 
public void mouseClicked()
{
	if(mouseX > width/2)
	{
		branchAngle += 0.1;
	}
	if(mouseX < width/2)
		branchAngle -= 0.1;
}
public void drawBranches(int x,int y, double branchLength, float angle, float strokee) 
{   
	//your code here
	strokeWeight(strokee);
	float angle1 = angle + branchAngle;
	float angle2 = angle - branchAngle;
	int x1 = x+(int)(cos(angle1)*branchLength);
	int x2 = x+(int)(cos(angle2)*branchLength);
	int y1 = y+(int)(sin(angle1)*branchLength);
	int y2 = y+(int)(sin(angle2)*branchLength);

	line(x,y,x1,y1);
	line(x,y,x2,y2);
	if(strokee > 1)
	{
		drawBranches(x1, y1, branchLength*fractionLength, angle1, strokee/1.3);
		drawBranches(x2, y2, branchLength*fractionLength, angle2, strokee/1.3);
	}
		
} 
