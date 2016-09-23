//    This is Class Frame.                                 
//    It draws the frame and allows it to hit the ball.

class Frame
{
  float x;
  float y;
  int frameWidth;
  int frameHeight;

  
  
  // This is the constructer to build the frame
  Frame()
  {
    x          = 10;
    y          = 100;
    frameWidth = 100;
    frameHeight = 100; //<>//
  }
  
  void draw()
  {
    fullScreen();
    fill(0);
    frameWidth = width-20;
    frameHeight = height-110;    
    rect(x, y, frameWidth, frameHeight); //<>//
  }
  int getFrameWidth()
  {
    return frameWidth;
  }
  float getFrameX()
  {
    return x;
  }
  float getFrameY()
  {
    return y;
  }
  
}