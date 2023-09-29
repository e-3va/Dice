Die dice;
int totalDots;
void setup()
{
  noLoop();
  background(0);
  size(400,400);
  strokeWeight(15);
  stroke(0);
  textAlign(CENTER);
  textSize(20);
}
void draw()
{
 background(0);
 for(int y = 20; y <= 400; y+=130){
    for(int x = 20; x <= 400; x += 130){
      dice = new Die(x,y);
      dice.show();
    }
 }
 text("Total Dots:"+totalDots, 200, 390);
}
void mousePressed()
{
  redraw();
  totalDots = 0;
}
class Die //models one single dice cube
{
  int myX, myY, numDots;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    numDots = (int)(Math.random()*6)+1;
  }
  void roll()
  {
    myX += 130;
    myY += 130;
  }
  void show()
  {
    rect(myX, myY, 100, 100, 28);

    numDots = (int)(Math.random()*6)+1;
    // dots
    if (numDots == 1){
      point(50+myX,50+myY);
    }
    else if (numDots == 2){
      point(30+myX,50+myY);
      point(70+myX,50+myY);
    }
    else if (numDots == 3){
      point(30+myX,30+myY);
      point(50+myX,50+myY);
      point(70+myX,70+myY);
    }
    else if (numDots == 4){
      point(30+myX,30+myY);
      point(70+myX,70+myY);
      point(30+myX,70+myY);
      point(70+myX,30+myY);
    }
    else if (numDots == 5){
      point(30+myX,30+myY);
      point(70+myX,70+myY);
      point(30+myX,70+myY);
      point(70+myX,30+myY);
      point(50+myX,50+myY);
    }
    else{
      point(30+myX,30+myY);
      point(50+myX,30+myY);
      point(70+myX,30+myY);
      point(30+myX,70+myY);
      point(50+myX,70+myY);
      point(70+myX,70+myY);
    }
    totalDots = totalDots + numDots;
    //text("Total Dots:"+totalDots, 200, 390);
  }
}






