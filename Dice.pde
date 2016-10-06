Die One;
void setup()
{

  size(1000,1000);
  noLoop();
}
void draw()
{
  background(0);
  int dieX;
  int dieY = 50;
  int combined = 0;
  for(int y = 1; y <= 3; y++)
  {
    dieX = 50;
    for(int x = 1; x <= 3; x++)
    {
    
  One = new Die(dieX,dieY);
  One.show();
  One.roll();
  combined = combined + One.rollDie;
  dieX = dieX + 400;
  }
  dieY = dieY + 200;
}
fill(255,255,255);
textSize(26);
text("combined: " + combined,50,650);
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int rollDie = int(random(1,7));
  int myX,myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    //variable initializations here
  }
  void roll()
  {
    if (rollDie == 1)
    {
    fill(0,0,0);
   ellipse(myX + 25, myY + 25,5,5);
  }
  else
  {
    if (rollDie == 2)
    {
    fill(0,0,0);
    ellipse(myX + 10, myY + 40, 5,5);
    ellipse(myX + 40, myY + 10,5,5);
  }
  else
  {
    if (rollDie == 3)
    {
    fill(0,0,0);
    ellipse(myX + 10, myY + 10,5,5);
    ellipse(myX + 20, myY + 10,5,5);
    ellipse(myX + 30, myY + 10,5,5);
  }
  else
  {
    if (rollDie == 4)
    {
    fill(0,0,0);
    ellipse(myX + 10, myY + 10,5,5);
    ellipse(myX + 10, myY + 20,5,5);
    ellipse(myX + 30, myY + 10,5,5);
    ellipse(myX + 30, myY + 20,5,5);
  }
  else
  {
    if (rollDie == 5)
    {
    fill(0,0,0);
    ellipse(myX + 10, myY + 10,5,5);
    ellipse(myX + 20, myY + 10,5,5);
    ellipse(myX + 15, myY + 15,5,5);
    ellipse(myX + 10, myY + 30,5,5);
    ellipse(myX + 20, myY + 30,5,5);
  }
  else
  {
    
    if (rollDie == 6)
    {
    fill(0,0,0);
    ellipse(myX + 10, myY + 10,5,5);
    ellipse(myX + 20, myY + 10,5,5);
    ellipse(myX + 10, myY + 15,5,5);
    ellipse(myX + 20, myY + 15,5,5);
    ellipse(myX + 10, myY + 20,5,5);
    ellipse(myX + 20, myY + 20,5,5);
    }
  }
  }
  }
  }
  }
  }
    
    
    //your code here
  void show()
  {

    fill(255,255,255);
    rect(myX,myY,100,100);
    
    //your code here
  }
} 

