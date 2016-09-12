

void setup()
{
	size(400,400);
	noLoop();

}

void draw()
{	

	background(255);

	int sum = 0;

	for(int y = 50; y < 350; y = y +60)
	{
		for(int x = 25; x < 375; x = x + 60)
		{
			Die bob = new Die(x,y);
			bob.show();
			bob.roll();
			sum = sum + bob.numDots;
			
		}
	}
	//Font myFont = new Font("Serif", Font.ITALIC | Font.BOLD, 12);
    //Font newFont = myFont.deriveFont(50F);
	text("there are " + sum + " dots", 100,370, 100);
}


void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	//variable declarations here
	int myX;
	int myY;
	int numDots;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		numDots = (int)(Math.random()*6) +1;
	}

	void roll()
	{
		fill(0);
		if (numDots == 1)
		{
			ellipse(myX+25,myY+25,10,10);
		}

		if (numDots == 2)
		{
			ellipse(myX +10, myY+10,10,10);
			ellipse(myX+40, myY +40,10,10);
		}

		if (numDots == 3)
		{
			ellipse(myX +10, myY+10,10,10);
			ellipse(myX + 25, myY+25,10,10);
			ellipse(myX+40, myY +40,10,10);
		}

		if (numDots == 4)
		{
			/*for (int y = myY + 10; y < 45; y = y ++){
				for (int x = myX +10; x < myX + 45; x ++){
					fill(0);
					ellipse(x, y, 10,10);
				}
			}*/
		
			ellipse(myX +10, myY+10,10,10);
			ellipse(myX + 40, myY+10,10,10);
			ellipse(myX + 10, myY+40,10,10);
			ellipse(myX+40, myY +40,10,10);
		}

		if (numDots == 5)
		{
			ellipse(myX +10, myY+10,10,10);
			ellipse(myX + 40, myY+10,10,10);
			ellipse(myX + 10, myY+40,10,10);
			ellipse(myX+40, myY +40,10,10);
			ellipse(myX+25,myY+25,10,10);
		}

		if (numDots == 6)
		{
			ellipse(myX +10, myY+10,10,10);
			ellipse(myX +10, myY+25,10,10);
			ellipse(myX + 10, myY+40,10,10);
			ellipse(myX + 40, myY+10,10,10);
			ellipse(myX + 40, myY+25,10,10);
			ellipse(myX+40, myY +40,10,10);
		}
	}

	void show()
	{

		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect(myX,myY,50,50, 10);
		
		

	}
}
