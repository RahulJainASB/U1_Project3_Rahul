//    This is Class Ball.                                 
//    It draws the ball and allows it to move and collide.

class Ball
{
  float   x;
  float   y;
  int     r;
  float   xSpeed;
  float   ySpeed;
  float   xDirection;
  float   yDirection;
    
  // This is the constructer to build the brick
  Ball()
  {
    x               = 500;
    y               = 500;
    r               = 30;
    xSpeed          = 5;
    ySpeed          = 5; 
    xDirection      = 1;
    yDirection      = -1;
  }
  
  void draw()
  {
    fill(255);
    ellipse(x, y, r, r);
  }
  
    void move()
  {
    x += xSpeed * xDirection;
    y += ySpeed * yDirection;
    
    /*
    if ((x > width - r) || (x < r))
     {
       xDirection = -xDirection;
     }
     
     
    if ((y > height - r) || (y < r))
    {
      yDirection = -yDirection;
    }
    */
  }
  
 float getX()
 {
   return x;
 }
 float getY()
 {
   return y;
 }
 int getRadius()
 {
   return r;
 }
 
 void restart()
 {
    x               = 500;
    y               = 500;
    xDirection      = 1;
    yDirection      = -1;
 }
 
  
} //end of class Ball