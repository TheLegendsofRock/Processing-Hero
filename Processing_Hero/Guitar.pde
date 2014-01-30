class Guitar {
  PImage guke, gruke, gele, grele, gaco, graco, bg, flame;
  Guitar() {
    guke = loadImage("brown_uke.png");
    guke.resize(110, 346);
    gruke = loadImage("black_uke.png");
    gruke.resize(120, 350);
    gele = loadImage("elect_guitar.png");
    gele.resize(210, 615);
    grele = loadImage("elect_axe_guitar.png");
    grele.resize(250, 620);
    gaco = loadImage("acoustic_guitar.png");
    gaco.resize(240, 615);
    graco = loadImage("brown_guit.png"); //ukes are about the height of the guitar body, but i made em a bit bigger.
    graco.resize(210, 630);
    bg = loadImage("guitar_bg.png"); 
    bg.resize(750, 800); //same size as the window.
    flame = loadImage("cute_flame.png");
    flame.resize(95, 115);
  }
  void display() {
    background(bg);
    image(gaco, 130, height/2);
    image(gele, width/2, height/2);
    image(guke, width-130, height/2);
    if (mouseY<= height/2+200 && mouseY>= height/2-200) {
      if (mouseX>=30 && mouseX<=230) {
        image(flame, 130, height/2+50);
//        if (mousePressed) {
//          aco = true; //this acoustic guitar should display during game play.
//          sing = true; //should load song selection screen
////          numClicks = 0;
//          guit = false; //should leave guitar screen
//        }
      }
      if (mouseX>=width/2-100 && mouseX<=width/2+100) {
        image(flame, width/2, height/2+30);
//        if (mousePressed) {
//          ele = true;
//          sing = true;
////          numClicks = 0;
//          guit = false;
//        }
      }
      if (mouseX>=width-230 && mouseX<=width-30) {
        image(flame, width-130, height/2+25);
//        if (mousePressed) {
//          uke = true;
//          sing = true;
////          numClicks = 0;
//          guit = false;
//        }
      }
    }
  }
  void extra() { //shows secret guitars. must be holding down g to access and select. Same deal as the other ones otherwise.
    imageMode(CENTER);
    background(bg);
    image(graco, 130, height/2);
    image(grele, width/2, height/2);
    image(gruke, width-130, height/2);
    if (mouseY<= height/2+200 && mouseY>= height/2-200) {
      if (mouseX>=30 && mouseX<=230) {
        image(flame, 130, height/2+50);
//        if (mousePressed) {
//          raco = true;
//          sing = true;
////          numClicks = 0;
//                    guit = false;
//        }
      }
      if (mouseX>=width/2-100 && mouseX<=width/2+100) {
        image(flame, width/2-40, height/2+30);
//        if (mousePressed) {
//          rele = true;
//          sing = true;
////          numClicks = 0;
//          guit = false;
//        }
      }
      if (mouseX>=width-230 && mouseX<=width-30) {
        image(flame, width-130, height/2+25);
//        if (mousePressed) {
//          ruke = true;
//          sing = true;
////          numClicks = 0;
//          guit = false;
//        }
      }
    }
  }
}

