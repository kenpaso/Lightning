int startX =150;
int startY = 0;
int endX = 150;
int endY = 0;


void setup()
{
  size(300,300);
  background(0);
  strokeWeight((int)(Math.random()*3));
  }
void draw()
{
	stroke((int)(Math.random()*255),10,0);
	while(endY < 300)
	{
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
		endY = startY + (int)(Math.random()*18);
		endX = startX + ((int)(Math.random()*18)-9);

	

	}
}
void mousePressed()
{
		startX = ((int)(Math.random()*300));
		startY = 0;
		endX = ((int)((Math.random()*60)+120));
		endY = 0;
		strokeWeight((int)(Math.random()*10));
}
