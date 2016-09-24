class Brick_Manager
{
  int             maxNumberOfBrickLines;
  Brick_Line[]    brickLine;


  // This is the constructer to build the brick
  Brick_Manager()
  {
    maxNumberOfBrickLines = 5;
    brickLine = new Brick_Line[maxNumberOfBrickLines];
    for (int i = 0; i < brickLine.length; i++)
    {
      brickLine[i] = new Brick_Line();
    }
    setBrickLinesPositions();
    setBrickLinesColor();
 }
  
  void draw()
  {
    for (int i = 0; i < brickLine.length; i++)
    {
      brickLine[i].draw();
    }
  }


  void setBrickLinesPositions()
  {
      float  brickLineX = frame.getFrameX();
      float frameY     = frame.getFrameY();
      float brickLineY = frameY;
  
      println(brickLineX);
      println(brickLineY);
      println(frame.getFrameWidth());
      println(frame.getFrameHeight());
      println("Number of brick lines: ", brickLine.length);
      
      for (int i = 0; i < brickLine.length; i++)
      {
        brickLineY = frameY + (i * 30);
        println("BrickLine #: ", i, "  X = ", brickLineX, " Y = ", brickLineY);
       brickLine[i].setPosition(brickLineX,  brickLineY); // This programm is stoping at this line.
   //    brickline.setPosition(brickLineX,  brickLineY); // This programm is stoping at this line.
  
      }
  }
  
  void setBrickLinesColor()
  {
    for (int i = 0; i < brickLine.length; i++)
    {
      if( i == 0)          brickLine[i].setColor(255,  0,   0);
      else if( i == 1)     brickLine[i].setColor(246, 31, 160);
      else if( i == 2)     brickLine[i].setColor(295, 95, 227);
      else if( i == 3)     brickLine[i].setColor(122, 186, 221);
      else if( i == 4)     brickLine[i].setColor(170, 210, 170);
      else                 brickLine[i].setColor(114, 168, 224);
    }
  }

}








/***********

class Brick_Manager
{
//  int             numberOfBrickLines;
  int             maxNumberOfBrickLines;
 Brick_Line[]    brickLine;


  // This is the constructer to build the brick
  Brick_Manager()
  {
    //numberOfBrickLines = 1;
    maxNumberOfBrickLines = 1; //5;
    brickLine = new Brick_Line[1];//maxNumberOfBrickLines];
 }
  
  void initialize()
  {
    
     for (int i = 0; i < maxNumberOfBrickLines; i++)
    {
     brickLine[i].initialize();
    }

    // Set up x and y position of each brick line
    setBrickLinePosition();
  }

  void draw()
  {
    for (int i = 0; i < maxNumberOfBrickLines; i++)
    {
     // brickLine[i].draw();
    }
  }


void setBrickLinePosition()
{
    float  brickLineX = frame.getFrameX() + 10;
    
    float frameY     = frame.getFrameY();
    float brickLineY = frameY;

    println(brickLineX);
    println(brickLineY);
    println(frame.getFrameWidth());
    println(frame.getFrameHeight());
    
    for (int i = 0; i < maxNumberOfBrickLines; i++)
    {
      brickLineY = frameY + (i * 100);
      println("BrickLine #: ", i, "  X = ", brickLineX, " Y = ", brickLineY);
     brickLine[i].setPosition(brickLineX,  brickLineY); // This programm is stoping at this line.
 //    brickline.setPosition(brickLineX,  brickLineY); // This programm is stoping at this line.

    }
}

}

**************/