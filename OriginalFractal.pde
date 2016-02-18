int increase = 0;
void setup()
{
   size(500,500);

}

public void draw()
{
	background(255,0,0);
	noStroke();
	fill(0);
	myFractal(250,250,260+increase);
	fill(60);
	myFractal(0,0,260+increase);
	fill(125);
	myFractal(0,500,260+increase);
	fill(190);
	myFractal(500,500,260+increase);
	fill(225);
	myFractal(500,0,260+increase);
		if(mouseButton == LEFT)
	{
		increase+=5;
	}
	if(mouseButton == RIGHT)
	{
		increase-=5;
	}

}


public void mousePressed()
{

}
public void myFractal(int x, int y, int siz)
{
	
    beginShape();
    vertex(x-siz/2,y);
    vertex(x-siz/6,y-siz/6);
    vertex(x,y-siz/2);
    vertex(x+siz/6,y-siz/6);
    vertex(x+siz/2,y);
    vertex(x+siz/6,y+siz/6);
    vertex(x,y+siz/2);
    vertex(x-siz/6,y+siz/6);
    endShape(CLOSE);

    if(siz > 20)
  {
    myFractal(x-siz/2,y,siz/2);
    myFractal(x+siz/2,y,siz/2);
    myFractal(x,y+siz/2,siz/2);
    myFractal(x,y-siz/2,siz/2);
  }


}