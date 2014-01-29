class Select { //select characters
  PImage as, aa, ak; //declare here
  Select() { //give value here.
    shark = false;
    ant = false;
    koala = false;
    aa = loadImage("ant_thriller.png"); //only load once
    aa.resize(200, 200);
    ak = loadImage("koala_ready_to_die.png");
    ak.resize(200, 200);
    as = loadImage("shark_nevermind.png");
    as.resize(200, 200);
  }
  void display() {
    background(0);
    imageMode(CENTER);
    image(aa, width-130, height/2);
    image(as, 130, height/2);
    image(ak, width/2, height/2);
    //display images of shark, ant, and koala album art.
  }
  void mouseOver() {
    if (mouseY<= height/2+200 && mouseY>= height/2-200) {
      if (mouseX>=30 && mouseX<=230) {
        image(as, 130, height/2, 250, 250); //if mouse over, image enlarges.

//Hey, Kristie, read this!
//If this if statement runs while the mouse is still pressed, it will change the booleans
         if (mousePressed) { //if select:
          shark = true; //character will display during gameplay
          guit = true; //guitar selection screen will load
          //          numClicks = 0;
          select = false; //character selection screen will not display.
          //Working: Issues: To do: this is currently also being done under voide mousePressed in the Processing_Hero tab.
          //May need to comment it all out here (except for the resizing pictures bit) to avoid redundancy.
        }
        
       }
      if (mouseX>=width/2-100 && mouseX<=width/2+100) {
        image(ak, width/2, height/2, 250, 250);
        if (mousePressed) {
          koala = true;
          guit = true;
          //          numClicks = 0;
          select = false;
        }
      }
      if (mouseX>=width-230 && mouseX<=width-30) {
        image(aa, width-130, height/2, 250, 250);
        if (mousePressed) {
          ant = true;
          guit = true;
          //          numClicks = 0;
          select = false;
        }
      }
    }
  }
}

