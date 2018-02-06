public void setup()
{
	size(400,400);
}

public void draw()
{
	background(135,206,235);
	myFractal(175,200,300, 50);
}
public void myFractal(int x, int y, int siz, int len)
{
	//head
	fill(222,184,135);
	ellipse(x, y, siz, siz);
	//eyes
	fill(0);
	ellipse(x-siz/6, y-siz/6, siz/30, siz/30);
	ellipse(x+siz/6, y-siz/3, siz/30, siz/30);
	//teeth
	fill(255);
	triangle(x-siz/2, y-siz/6, x-siz/3, y-siz/4, x, y+len);
	if(siz>10)
	{
		myFractal(x+siz/3, y+siz/10, siz/2, len/2);
	}
}