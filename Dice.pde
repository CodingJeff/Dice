
void setup()
{
 
  size (500, 600);
  noLoop();
}
void draw()
{
   background((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  int sum=0;
  for (int y=0; y <=500; y=y+110)
  {
    for (int x=5; x <=500; x=x+55)
    {
      Die Jeff = new Die(x, y);
      Jeff.show();
      Die Jeffrey = new Die(x-25, y+55);
      Jeffrey.show();
      sum=sum+ Jeff.number+Jeffrey.number;
      System.out.println(sum);
    }
    
  }
  textSize(30);
    text("Number of Dots:", 100, 575);
    text(sum, 345, 575);
}

void mousePressed()
{
  redraw();
}
class Die
{
  int number, myX, myY;
  Die(int x, int y)
  {
    roll();
    number=((int)(Math.random()*6+1));
    myX=x;
    myY=y;
  }
  void roll()
  {
    number=(int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    rect(myX, myY, 50, 50, 14);
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ;
    if (number==1)
    {
      ellipse(myX+25, myY+25, 10, 10);
    }
    if (number==2)
    {
      ellipse(myX+15, myY+25, 10, 10);
      ellipse(myX+35, myY+25, 10, 10);
    }
    if (number==3)
    {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    if (number==4)
    {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    if (number==5)
    {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    if (number==6)
    {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
  }
}