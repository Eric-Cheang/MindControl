/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw2(GWinApplet appc, GWinData data) { //_CODE_:heart:326237:
  appc.background(230);
  imgHeart = loadImage("Heart1.png");
  image(imgHeart, 0, 0, imgHeart.width/2, imgHeart.height/2);
  print("PENIS");
} //_CODE_:heart:326237:

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:imgButton1:351264:
  println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton1:351264:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  heart = new GWindow(this, "Heart", 0, 0, 500, 500, false, JAVA2D);
  heart.addDrawHandler(this, "win_draw2");
  imgButton1 = new GImageButton(heart.papplet, 0, 0, 500, 400, new String[] {"Heart1.png" } );
  imgButton1.addEventHandler(this, "imgButton1_click1");
}

// Variable declarations 
// autogenerated do not edit
GWindow heart;
GImageButton imgButton1; 

