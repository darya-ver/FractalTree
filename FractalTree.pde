private double fractionLength = .8; 
private int smallestBranch = 10; 
private float branchAngle = .3;  
private int initialLength = 100;

private boolean paause = false;

public void setup() 
{   
	size(1500,800);    
	//noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(102,51,0);
	strokeWeight(10);  

	fill(255);
	textSize(70);
	text("Click anywhere to pause the trees", 170,100);

	line(width/4,700,width/4,700-initialLength);   
	drawThing3(width/4, 700-initialLength, 100, 3*PI/2, 10);

	strokeWeight(10);
	line(3*width/4, 700, 3*width/4, 700-initialLength);
	drawThing2(3*width/4,700-initialLength,100,3*PI/2, 10);
	
	//drawThing4(3*width/4,700-initialLength,100,3*PI/2, 10);

	if(paause == false)	branchAngle += 0.005;
} 
public void mouseClicked()
{
	if(paause == false)	
		paause = true;
	else
		paause = false;
}
public void drawThing2(int x, int y, double branchLength, float angle, float strokee) 
{   
	//your code here
	strokeWeight(strokee);

	float angle1 = angle + branchAngle;
	float angle2 = angle - branchAngle;


	int x1 = x+(int)(cos(angle1)*branchLength);
	int y1 = y+(int)(sin(angle1)*branchLength);

	int x2 = x+(int)(cos(angle2)*branchLength);
	int y2 = y+(int)(sin(angle2)*branchLength);

	stroke(102,51,0);
	line(x,y,x1,y1);
	line(x,y,x2,y2);

	if(strokee > 1)
	{
		drawThing2(x1, y1, branchLength*fractionLength, angle1, strokee/1.3);
		drawThing2(x2, y2, branchLength*fractionLength, angle2, strokee/1.3);
	}
	
	/*
	if(branchLength < 14)
	{
		stroke(170,128,255);
		fill(204,179,255,150);
		int circleSize = (int)(Math.random()*20)+5;
		ellipse(x2, y2, circleSize, circleSize);
		ellipse(x1, y1, circleSize, circleSize);
	}	
	*/	
} 

public void drawThing3(int x, int y, double branchLength, float angle, float strokee) 
{   
	//your code here
	strokeWeight(strokee);
	
	float angle1 = angle + branchAngle;
	float middleAngle = angle;
	float angle2 = angle - branchAngle;


	int x1 = x+(int)(cos(angle1)*branchLength);
	int y1 = y+(int)(sin(angle1)*branchLength);

	int xMiddle = x+(int)(cos(middleAngle)*(branchLength+10));
	int yMiddle = y+(int)(sin(middleAngle)*(branchLength+10));

	int x2 = x+(int)(cos(angle2)*branchLength);
	int y2 = y+(int)(sin(angle2)*branchLength);
	
	stroke(102,51,0);
	line(x,y,x1,y1);
	line(x,y,xMiddle,yMiddle);
	line(x,y,x2,y2);

	if(strokee > 3)
	{
		drawThing3(x1, y1, branchLength*fractionLength, angle1, strokee/1.3);
		drawThing3(xMiddle, yMiddle, branchLength*fractionLength, middleAngle, strokee/1.3);
		drawThing3(x2, y2, branchLength*fractionLength, angle2, strokee/1.3);
	}

	/*
	if(branchLength < 14)
	{
		stroke(170,128,255);
		fill(204,179,255,150);
		int circleSize = (int)(Math.random()*20)+5;
		ellipse(x2, y2, circleSize, circleSize);
		ellipse(x1, y1, circleSize, circleSize);
	}	
	*/	
} 


public void drawThing4(int x, int y, double branchLength, float angle, float strokee) 
{   
	//your code here
	strokeWeight(strokee);
	
	float angle1 = angle + branchAngle;
	float angle2 = angle + branchAngle/2;
	float angle3 = angle - branchAngle;
	float angle4 = angle - branchAngle/2;


	int x1 = x+(int)(cos(angle1)*branchLength);
	int y1 = y+(int)(sin(angle1)*branchLength);

	int x2 = x+(int)(cos(angle2)*branchLength);
	int y2 = y+(int)(sin(angle2)*branchLength);

	int x3 = x+(int)(cos(angle3)*branchLength);
	int y3 = y+(int)(sin(angle3)*branchLength);

	int x4 = x+(int)(cos(angle4)*branchLength);
	int y4 = y+(int)(sin(angle4)*branchLength);
	
	stroke(102,51,0);
	line(x,y,x1,y1);
	line(x,y,x2,y2);
	line(x,y,x3,y3);
	line(x,y,x4,y4);

	if(strokee > 3)
	{
		drawThing4(x1, y1, branchLength*fractionLength, angle1, strokee/1.3);
		drawThing4(x2, y2, branchLength*fractionLength, angle2, strokee/1.3);
		drawThing4(x3, y3, branchLength*fractionLength, angle3, strokee/1.3);
		drawThing4(x4, y4, branchLength*fractionLength, angle4, strokee/1.3);
	}

	/*
	if(branchLength < 14)
	{
		stroke(170,128,255);
		fill(204,179,255,150);
		int circleSize = (int)(Math.random()*20)+5;
		ellipse(x2, y2, circleSize, circleSize);
		ellipse(x1, y1, circleSize, circleSize);
	}	
	*/	
} 
























