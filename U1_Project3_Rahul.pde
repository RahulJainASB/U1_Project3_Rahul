/*
Hedgehog and Tree Game by Rahul Jain
This project is a game in which the user must move a picture to avoid a collision and lose the game.
 */

// General variables
/*
boolean showInstructions  = true;
int     score             = 0;
int     level             = 1;
int     treesFallen       = 1;
Tree    tree1             = new Tree(100,0);
Tree    tree2             = new Tree(500,0);
Tree    tree3             = new Tree(1000,0);
Hedgehog hedgehog         = new Hedgehog();
boolean gameOver              = false;
*/

Frame frame = new Frame();


Bat bat = new Bat();

void setup()
{
  fullScreen();
  background(124);

}

void draw() 
{
  frame.draw();
  bat.draw();
  
  
  /*
  if (showInstructions == true)
  {
    displayInstructions();
  }
  else
  {
    if( (gameOver == true) || (hedgehogHasBeenHit() == true))
    {
      background(0);
      textSize(32);
      text("Game Over. The hedgehog has been poisoned.", width/2 - 120, height/2);
      textSize(16);
      showScore();
      gameOver = true;
    }
    else
    {
      background(0);
      drawTrees();
      hedgehog.draw();
      moveTreesDown();
      updateScore();   // Updates the score and level
      showScore();     // show the scores
    }
  }
  */
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


// Display the welcome screen
void displayInstructions()
{
   background(0);
   textSize(32);
   text("This is the story of the hedgehog and evil trees.",                 (width/10), (height/2) - 100);
   text("The hedgehog must escape the forest.",                              (width/10), (height/2) - 50);
   text("If you go too close to the trees, you will be poisned and lose.",   (width/10), (height/2));
   text("Use the left and right arrow keys to move.",                        (width/10), (height/2) + 50);
   text("Press enter to begin the game.",                                    (width/10), (height/2) + 100);
}


// Show the user's score and level
void showScore()
{
  fill(255);
  textSize(14);
  text("Level: ",  width-280, 150);
  //text (level,     width-230, 150);
  text("Score: " , width-280, 180);
  //text (score,     width-230, 180);
}