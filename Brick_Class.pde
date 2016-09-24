//    This is Class Brick.                                 
//    It draws the brick and allows it to hit the ball.

class Brick
{
  float x;
  float y;
  int brickWidth;
  int brickHeight;
    
  // This is the constructer to build the brick
  Brick()
  {
    x               = 100;
    y               = 200;
    brickWidth      = 150;
    brickHeight     = 25;
  }
  
  void draw()
  {
    rect(x, y, brickWidth, brickHeight);
  }
  
  void setBrickPosition(float xPos, float yPos, int w, int h)
  {
    x = xPos;
    y = yPos;
    brickWidth = w;
    brickHeight = h;
  }
}