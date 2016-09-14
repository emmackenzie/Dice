

void setup()
{
	size(500,500);
	noLoop();

}

void draw()
{	

	background(255);

	int sum = 0;

	for(int y = 30; y < 450; y = y +60)
	{
		for(int x = 15; x < 475; x = x + 60)
		{
			Die bob = new Die(x,y);
			bob.show();
			bob.roll();
			sum = sum + bob.numDots;
			
		}
	}
	
	textSize(50);
	text("there are " + sum + " dots", 30, 485);
	
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
