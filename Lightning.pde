int startX =150;
int startY = 0;
int endX = 150;
int endY = 0;
int eyeSizeX =50;
int eyeSizeY =25;
PImage scary;

void setup()
{
  size(300,300);
  background(0);
  strokeWeight((int)(Math.random()*3));
  scary = loadImage("scary.jpg");
  }
void draw()
{
	//eyeballL
	fill(255,255,255);
	ellipse(100,100,eyeSizeX,eyeSizeY);
	fill(0);
	ellipse(100,100,25,13);

	//eyeballR
	fill(255,255,255);
	ellipse(200,100,eyeSizeX,eyeSizeY);
	fill(0);
	ellipse(200,100,25,13);


	stroke((int)(Math.random()*255),10,0);
	while(endY < 300)
	{
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
		endY = startY + (int)(Math.random()*18);
		endX = startX + ((int)(Math.random()*18)-9);

	

	}
	
	//popup
	if (eyeSizeX > 62)
	{
		image(scary,0,0,300,300);

	}
	
}
void mousePressed()
{
		startX = ((int)(Math.random()*300));
		startY = 0;
		endX = ((int)((Math.random()*60)+120));
		endY = 0;
		strokeWeight((int)(Math.random()*10));
		eyeSizeX = eyeSizeX + 1;
		eyeSizeY = eyeSizeY + 1;
	
	//reset
	if (eyeSizeX > 70)
	{
		eyeSizeX= 50;
		eyeSizeY = 25;
	}
}
