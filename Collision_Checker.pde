class Collision_Checker
{
  Collision_Checker()
  {
  }

  boolean check()
  {
    boolean collide = false;

    if ( checkWallCollisions() == true)
    {
      collide = true;
      //Change ball direction
    }
    else if ( CheckBrickCollision() == true)
    {
      collide = true;
      // Change ball direction
    }
    else if ( checkBatCollision() == true)
    {
      collide = true;
      // Change ball direction
    }
    return collide;
  }

  boolean checkWallCollisions()
  {
    boolean collide     = false;
    float wallLeftX     = frame.getLeftX();
    float wallRightX    = frame.getRightX(); 
    float wallTopY      = frame.getTopY();
    float wallBottomY   = frame.getBottomY();
    int r               = ball.getRadius();
    float ballX         = ball.getX();
    float ballY         = ball.getY();


    if ( ((wallRightX - ballX) < r) || ((ballX - wallLeftX) < r ))  // checking collision with left and right wall
    {
      ball.xDirection = -ball.xDirection;
      collide = true;
    }
    else if ( (ballY - wallTopY) < r )  // checking collision with top wall
    {
      ball.yDirection = -ball.yDirection;
      collide = true;
    }
    
    
    else if ( (ballY + r) > wallBottomY )  // checking collision with top wall
    {
      player.lives--;
      resetGame();
    }
    return collide;
  }

boolean CheckBrickCollision()
  {
     boolean collide = false;
     
     collide = brickManager.checkBallCollision();

    return collide;

  }

  boolean checkBatCollision()
  {

    boolean collide = false;
    float batLeftX      = bat.getLeftX();
    float batRightX     = bat.getRightX();
    float batY          = bat.getY();
    int r               = ball.getRadius();
    float ballX         = ball.getX();
    float ballY         = ball.getY();
    
    if ( ballX < (batLeftX - r) ) // Ball is left of the bat
    {
      println("to left");
      collide = false;
    }
    if ( ballX > (batRightX + r)) // Ball is right of the bat
    {
      println("to right");
      collide = false;
    }
    else if ( ballY < (batY - r) ) // The ball is above the bat
    {
      collide = false;
    }
    else
    {
      println("bat hit");
      ball.yDirection = -ball.yDirection;
      collide = true;
    }  
    return collide;

  }
  
  
  
}