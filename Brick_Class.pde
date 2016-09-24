//    This is Class Brick.                                 
//    It draws the brick and allows it to hit the ball.

static int brickHeight = 25;

class Brick
{
  float   x;
  float   y;
  int     brickWidth;
    
  // This is the constructer to build the brick
  Brick()
  {
    x               = 100;
    y               = 200;
    brickWidth      = 150;
  }
  
  void draw()
  {
    rect(x, y, brickWidth, brickHeight);
  }
  
  void setBrickPosition(float xPos, float yPos, int w)
  {
    x = xPos;
    y = yPos;
    brickWidth = w;
  }
  
} //end of class