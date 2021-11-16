//global variables

float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, yellow = #FAF444, purple = #BA44FA , white=#FFFFFF, reset= white;


void setup() {
fullScreen();
//Population
buttonX = displayWidth*1/4;
buttonY = displayHeight*1/3;
buttonWidth = displayWidth*1/2; 
buttonHeight = displayHeight*1/3;
}//End setup()

void draw() {
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
}//End draw()

void mousePressed() {
}//end mousePressed()

void keyPressed() {
}//end keyPressed
