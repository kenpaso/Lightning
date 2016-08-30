int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;


void setup()
{
  size(300,300);
  background(0);
  strokeWeight(12);
  }
void draw()
{
	stroke((int)(Math.random*255),255,255);
	while(endx < 300)
	{
		endX = startX + (int)(Math.Random()*9);
		endY = startY + ((int)(Math.Random*18)-9);
		line(startX,startY,endX,endY);
		setX = endX;
		startY = endY;


	}

}
void mousePressed()
{

}
