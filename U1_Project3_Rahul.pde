Frame frame;
Bat bat;
Player player;
Brick_Manager brickManager;


void setup()
{
  fullScreen();
  background(124);
  
 frame = new Frame();
 frame.initialize();
 
  bat = new Bat();
  player = new Player();

  brickManager = new Brick_Manager();
}

void draw() 
{
  frame.draw();
  bat.draw();
  player.draw();
  brickManager.draw();
}


// Responds to key presses
void keyPressed()
{
  
  if( key == CODED) {                  // check if key is CODED. This is for special keys
    if( keyCode == LEFT ) {            // if left key is pressed, move left
       bat.move(true, false);
     }
     else if( keyCode == RIGHT ) {    // if right key is pressed, move right
       bat.move(false,true);
     }
  }
  else if (key == ENTER || key == RETURN)
  {
    //  showInstructions = false;        // This is set to false so that instructions are not showed again
  }
  
}