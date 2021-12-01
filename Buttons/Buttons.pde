//global variables

float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, random = color(random(0, 225), random(255), random(255)), green = #1BFF08, red = #FF001E , white=#FFFFFF , reset= white;
String title = "Do NOT click the button";
String words = "I said don't."; 
PFont titleFont;
int titleX, titleY, titleWidth, titleHeight;



void setup() {
  fullScreen();
  //
titleFont = createFont ("Ravie", 55);
  //
titleX = displayWidth*1/4;
titleY = displayHeight*1/3;
titleWidth = displayWidth*1/2;
titleHeight = displayHeight*1/3;


  //Population
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2; 
  buttonHeight = displayHeight*1/3;
  
  
}//End setup()

void draw() {
  background(random);
  // println(mouseX, mouseY);
  if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) {
    rect(titleX, titleY, titleWidth, titleHeight);
fill(green); //Ink, hexidecimal copied from Color Selector
textAlign(CENTER, CENTER);
textFont(titleFont, 20);

//Printing Text to Canvas
text( words, titleX, titleY, titleWidth, titleHeight);
fill(red); //resets my ink
    buttonColour = red;
  } else {
   
fill(red); //Ink, hexidecimal copied from Color Selector
textAlign(CENTER, CENTER);
textFont(titleFont, 20);

//Printing Text to Canvas
text( title, titleX, titleY, titleWidth, titleHeight);
fill(green); //resets my ink

    buttonColour = green;
  }//End IF
 
  //
  



}//End draw()


void mousePressed() {
  if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+buttonHeight) exit();
}//end mousePressed()

void keyPressed() {
}//end keyPressed
