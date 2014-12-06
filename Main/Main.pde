PImage img, imgHoverStart, imgHoverOptions;


int rectX, rectY, rectX2, rectY2;
int rectWidth = 120;
int rectHeight = 60;
color rectColor, baseColor;
color rectHighlight;
color currentColor;
boolean rectOver = false;
boolean rectOver2 = false;

void setup()  {
  size(500, 500);
  img = loadImage("TitleScreen.png");
  imgHoverStart = loadImage("TitleScreenStartHover.png");
  imgHoverOptions = loadImage("TitleScreenOptionStart.png");
  rectColor = color(120);
  rectHighlight = color(200);
  rectX = 37;
  rectY = 390;
  rectX2 = 300;
  rectY2 = 390;
  
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
  print(rectOver);
}

void draw()  {
  update(mouseX, mouseY);
  background(0);
  image(img, 0, 0, img.width/2, img.height/2);
  rect(rectX, rectY, rectWidth, rectHeight);
  rect(rectX2, rectY2, rectWidth + 58, rectHeight);
  if (rectOver) {
    background(0);
    image(imgHoverStart, 0, 0, imgHoverStart.width/2, img.height/2);
  } 
  if (rectOver2) {
   background(0);
  image(imgHoverOptions, 0, 0, imgHoverOptions.width/2, img.height/2);
  }
  else {
    fill(rectColor);
  }
}


//void mousePressed()  {
  //if (rectOver)  {
    //currentColor = rectColor;
  //}
//}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

//boolean overRect2(int x, int y, int width, int height)

