
int myX;
public void setup()
{
  size(500, 500); 
}

public void draw()
{
  background(300, 200, 200);
  myFractal(250, 250, 100);
  myFractal(100, 100, 50);
  myFractal(100, 400, 50);
  myFractal(400, 100, 50);
  myFractal(400, 400, 50);
  
}
public void mousePressed()
{
	myX = myX +1;
}
public void myFractal(int myX, int y, int blue)
{
  ellipse(myX, y, blue, blue);
  if(blue > 10)
  {
    stroke(350, 350, 350);
    fill(300, 200, 300);
  myFractal(myX+blue,y, blue/2);
  myFractal(myX-blue, y, blue/2);
  myFractal(myX, y+blue, blue/2);
  myFractal(myX, y-blue, blue/2);
  }
}