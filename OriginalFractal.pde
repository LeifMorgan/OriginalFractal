int siz1 = 260;
int x1 = 150;
int y1 = 150;
void setup()
{
   size(800,800);

}

public void draw()
{
	background(104,2,90);
	noStroke();
	fill(0);
	myFractal(x1+250,y1+250,siz1);
	fill(205);
	myFractal(x1,y1,siz1);
	fill(105);
	myFractal(x1,y1+500,siz1);
	fill(155);
	myFractal(x1+500,y1+500,siz1);
	fill(60);
	myFractal(x1+500,y1,siz1);
	if(mouseButton == LEFT)
	{
		siz1+=5;
	}
	else if(mouseButton == RIGHT)
	{
		siz1-=5;
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
    myFractal(x-siz*2,y,siz/2);
    myFractal(x+siz*2,y,siz/2);
    myFractal(x,y+siz*2,siz/2);
    myFractal(x,y-siz*2,siz/2);
  }


}