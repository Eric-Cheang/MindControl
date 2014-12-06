import g4p_controls.*;


PImage img, imgHoverStart, imgHoverOptions, imgWhite;


int rectX, rectY, rectX2, rectY2;
int rectWidth = 120;
int rectHeight = 60;
color rectColor, baseColor;
color rectHighlight;
color currentColor;
boolean rectOver = false;
boolean rectOver2 = false;
boolean buttonPressed = false;

void setup()  {
  size(500, 500);
  img = loadImage("TitleScreen.png");
  imgHoverStart = loadImage("TitleScreenStartHover.png");
  imgHoverOptions = loadImage("TitleScreenOptionStart.png");
  imgWhite = loadImage("bigwin.jpg");
  rectColor = color(120);
  rectHighlight = color(200);
  rectX = 37;
  rectY = 390;
  rectX2 = 300;
  rectY2 = 390;
  
  rect(rectX, rectY, rectWidth, rectHeight);
  rect(rectX2, rectY2, rectWidth + 58, rectHeight);
  image(img, 0, 0, img.width/2, img.height/2);
  
}

void update(int x, int y) {
  if ( overRect(rectX, rectY, rectWidth, rectHeight) ) {
    rectOver = true;
    rectOver2 = false;
  } else {
    if ( overRect(rectX2, rectY2, rectWidth, rectHeight) ) {
    rectOver = false;
    rectOver2 = true;    
    }
    else{
     rectOver = rectOver2 = false; 
    }
  }
}

void draw()  {
  update(mouseX, mouseY);
  if (!buttonPressed){
  if (rectOver) {
    background(0);
    image(imgHoverStart, 0, 0, imgHoverStart.width/2, img.height/2);
  } 
  else{ 
    if (rectOver2) {
   background(0);
  image(imgHoverOptions, 0, 0, imgHoverOptions.width/2, img.height/2);
  }
  else {
    fill(rectColor);
    background(0);
    image(img, 0,0, img.width/2, img.height/2);
  }
  }
  }
  else{
    
  }
}

void createWindows(String windowName) {
 print("Making a window");
 GWindow window = new GWindow(this,windowName, 500,50,477,538,false, JAVA2D);
 window.addOnCloseHandler(this, "windowClosing");
 window.setActionOnClose(GWindow.CLOSE_WINDOW);
  
}

void mousePressed(){
 if (rectOver){
   buttonPressed = true;
  background(0);
  image(imgWhite, 0, 0, imgWhite.width/2, imgWhite.height/2);
  createWindows("Heart");
  
  
 } 
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

//boolean overRect2(int x, int y, int width, int height)

