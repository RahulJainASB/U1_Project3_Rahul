//    This is Class Brick.                                 
//    It draws the brick and allows it to hit the ball.

static int brickHeight = 25;

class Brick
{
  float   x;
  float   y;
  int     brickWidth;
  int     counter;

  // This is the constructer to build the brick
  Brick()
  {
    x               = 100;
    y               = 200;
    brickWidth      = 150;
    counter         = 1;
  }

  void draw()
  {
    if ( amIVisible() == true)
    {
      rect(x, y, brickWidth, brickHeight);
    }
  }

  void setBrickPosition(float xPos, float yPos, int w)
  {
    x = xPos;
    y = yPos;
    brickWidth = w;
  }


  boolean checkBallCollision()
  {
    boolean collide     = false;
    int r               = ball.getRadius();
    float ballX         = ball.getX();
    float ballY         = ball.getY();

    if ( amIVisible() == false )
    {
      return collide;
    }
    
    
    int sideCollided = ball.rectCollision( x, y,  (x+ brickWidth),  (y + brickHeight) );

    if( sideCollided == 0 )
    {
      return false;
    }
    else if( sideCollided == 1 )
    {
      ball.xDirection = -ball.xDirection;
      println("Left of brick");
    }
    else if( sideCollided == 2 )
    {
      ball.yDirection = -ball.yDirection;
      println("Top of brick");
    }
    else if( sideCollided == 3 )
    {
      ball.xDirection = -ball.xDirection;
      println("Right of brick");
    }
    else if( sideCollided == 4 )
    {
      ball.yDirection = -ball.yDirection;
      println("Bottom of brick");
    }
    
      collide = true;
      counter--;
      player.score++;    

    
    
/*****    
    if ( (abs(x - ballX) > r) || (abs( ballX - (x + brickWidth)) > r) || (abs(y - ballY) > r) || (abs( ballY - (y + brickHeight)) > r) )
    {
      collide = false;
    }
    else
    {
      println ("Ball collided with me");
      collide = true;
      counter--;
      player.score++;
    }
    
    ****/
    
    
    return collide;
  }

  boolean amIVisible()
  {
    if ( counter == 0 )
    {
      return false;
    }
    else 
    {
      return true;
    }
  }
  
  
} //end of class