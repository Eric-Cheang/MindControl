PImage img;


int rectX, rectY;
int rectWidth = 120;
int rectHeight = 60;
color rectColor, baseColor;
color rectHighlight;
color currentColor;
boolean rectOver = false;

void setup()  {
  size(500, 500);
  img = loadImage("TitleScreen.png");
  rectColor = color(120);
  rectHighlight = color(200);
  rectX = 37;
  rectY = 390;
}

void update(int x, int y) {
  if ( overRect(rectX, rectY, rectWidth, rectHeight) ) {
    rectOver = true;
  } else {
    rectOver = false;
  }
  print(rectOver);
}

void draw()  {
  update(mouseX, mouseY);
  background(0);
  image(img, 0, 0, img.width/2, img.height/2);
  rect(rectX, rectY, rectWidth, rectHeight);
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  print(
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

