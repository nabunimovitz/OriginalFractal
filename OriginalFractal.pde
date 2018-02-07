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
	//top teeth l-r
	fill(255);
	triangle(x-siz/2.1, y-siz/6, x-siz/2.6, y-siz/3, x-siz/4, y-siz/10);
	triangle(x-siz/2.6, y-siz/3, x-siz/5, y-siz/2.15, x-siz/8, y-siz/4);
	triangle(x-siz/5, y-siz/2.15, x-siz/15, y-siz/2, x-siz/100, y-siz/3);
	triangle(x-siz/15, y-siz/2, x+siz/10, y-siz/2.05, x+siz/10, y-siz/2.4);
	//bottom teeth l-r
	triangle(x-siz/5, y+siz/2.6, x-siz/9, y+siz/6, x-siz/6, y+siz/4);
	if(siz>10)
	{
		myFractal(x+siz/3, y+siz/10, siz/2, len/2);
	}
}