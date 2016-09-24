//    This is Class Bat.                                 
//    It draws the bat and allows it to hit the ball.

class Bat
{
  float x;
  float y;
  int xSpeed;
  int batWidth;
  int batHeight;

  // This is the constructer to build the bat
  Bat()
  {
    batHeight   = 25;
    x           = 500;
    y           = frame.getBottomY() - batHeight + 2;
    xSpeed      = 50;
    batWidth    = 150;
  }

  void draw()
  {
    // Check if bat is off the screen before drawing
    if ( x > (width - (batWidth/2)) ) // If bat is too far to the right, move it in
      x = batWidth/4;
    else if ( x < batWidth/5 )        // If bat is too far to the left, move it in
      x = width - batWidth/2;

    fill(255);
    rect(x, y, batWidth, batHeight);
  }

  // Moves the bat left of right depending on the arrow
  void move(boolean moveLeft, boolean moveRight) // move bat left or right
  {
    if (moveLeft == true)  x -= xSpeed; 
    if (moveRight == true) x += xSpeed;
  }

  // print data to debug
  void printYourself()
  {
    //println (batX,"     ", batY,"     ", batWidth,"     ", batHeight);
  }

  float getTopLeftX()
  {
    return x;
  }
  float getTopLeftY()
  {
    return y;
  }
  float getBottomRightX()
  {
    return (x + batWidth);
  }

  float getBottomRightY()
  {
    return (y + batHeight);
  }


} // End of Bat class