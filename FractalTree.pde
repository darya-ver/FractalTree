private double fractionLength = .8; 
private int smallestBranch = 10; 
private float branchAngle = .3;  
private int initialLength = 50;

private boolean paause = false;

float hh = 200;
float ll = hh*1.618033;

public void setup() 
{   
	size(1000,800);
	textAlign(CENTER);
	//noLoop(); 
} 

public void draw() 
{   
	background(204, 255, 204);     

	fill(150);
	textSize(40);
	text("Click anywhere to pause the trees", width/2,100);

	stroke(102,51,0);
	strokeWeight(10);
	line(width/4,600,width/4,600-initialLength);   
	drawThing3(width/4, 600-initialLength, initialLength, 3*PI/2, 8);

	stroke(102,51,0);
	strokeWeight(10);
	line(3*width/4, 600, 3*width/4, 600-initialLength);
	drawThing2(3*width/4,600-initialLength,initialLength,3*PI/2, 10);
	
	if(paause == false) {branchAngle += 0.005;}// hh+=0.5;ll=hh*1.618033;}

  	translate(400,150);
  	fractalSquareRect(ll, hh);
	
} 

public void mouseClicked() { paause = !paause;}

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
	
	
	if(branchLength < 14 && paause == true)
	{
		stroke(170,128,255);
		fill(204,179,255,150);
		int circleSize = (int)(Math.random()*20)+5;
		ellipse(x2, y2, circleSize, circleSize);
		ellipse(x1, y1, circleSize, circleSize);
	}	
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

	int xMiddle = x+(int)(cos(middleAngle)*(branchLength+6));
	int yMiddle = y+(int)(sin(middleAngle)*(branchLength+6));

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

	
	if(branchLength < 50 && paause == true)
	{
		stroke(170,128,255);
		fill(204,179,255,150);
		int circleSize = (int)(Math.random()*20)+5;
		ellipse(x2, y2, circleSize, circleSize);
		ellipse(x1, y1, circleSize, circleSize);
	}		
} 

void fractalSquareRect(float l, float h)
{
	noFill();
	
	stroke(255,0,0);

	arc(h, h, h*2, h*2, PI, 3*PI/2);
 	
 	translate(l,0);
 	rotate(PI/2);
  	
  	if(h > 0)
    	fractalSquareRect(h, l-h);
}
























