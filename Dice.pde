int myX;
int myY;
int dots;
Die bob;
int numDots;

void setup()
{
	size(400,400);
	noLoop();

}

void draw()
{
	bob = new Die(200,200);
	bob.show();
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
		fill(255,0,0);
		rect(myX,myY,30,30);

		numDots = (int)(Math.random()*6) +1;
		println(numDots);

		fill(0);
		if (numDots == 1)
			{
			ellipse(myX+15,myY+15,10,10);
			}
	}
}
