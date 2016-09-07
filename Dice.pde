int myX;
int myY;
int numDots;

void setup()
{
	size(400,400);
	noLoop();

}

void draw()
{	
	for(int y = 50; y < 350; y = y +60)
	{
		for(int x = 25; x < 375; x = x + 60)
		{
			Die bob = new Die(x,y);
			bob.show();
		}
	}
	//text("there are " + numDots + " dots", 100,370, 40);
}


void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}

	void roll()
	{
		//your code here
	}

	void show()
	{
		fill(255);
		rect(myX,myY,50,50, 5);

		numDots = (int)(Math.random()*6) +1;

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
}
