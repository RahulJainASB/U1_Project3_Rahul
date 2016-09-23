//    This is Class Frame.                                 
//    It draws the frame and allows it to hit the ball.

class Frame
{
  float x;
  float y;

  
  
  // This is the constructer to build the frame
  Frame()
  {
    x          = 10;
    y          = 100; //<>//
  }
  
  void draw()
  {
    fullScreen();
    fill(0);
    rect(x, y, width-20, height-110); //<>//
  }
}