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


void mousePressed(){
 if (rectOver){
   buttonPressed = true;
  background(0);
  image(imgWhite, 0, 0, imgWhite.width/2, imgWhite.height/2);
  
  
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
