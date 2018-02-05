public void setup()
{
	size(700,400);
}

public void draw()
{
	background(0);
	myFractal(150,200,300);
}
public void myFractal(int x, int y, int siz)
{
	ellipse(x, y, siz, siz);
	ellipse(x-siz/6, y-siz/6, siz/30, siz/30);
	if(siz>10)
	{
		myFractal(x+siz/3, y, siz/2);
	}
}