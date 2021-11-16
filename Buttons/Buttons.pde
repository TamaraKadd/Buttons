//global variables

float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, purple = #BFA4CE, pink = #FAB6B8, white=#FFFFFF, reset= white;


void setup() {
  fullScreen();
  //Population
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2; 
  buttonHeight = displayHeight*1/3;
}//End setup()

void draw() {
  background(white);
 // println(mouseX, mouseY);
  if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) {
    buttonColour = pink;
  } else {
    buttonColour = purple;
  }//End IF
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(reset);
}//End draw()


void mousePressed() {
  if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) exit();
}//end mousePressed()

void keyPressed() {
}//end keyPressed
