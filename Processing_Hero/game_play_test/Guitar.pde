//This class is just here so I will have a guitar image to display. 
//Working: To do: Still need to make sure that all the guitars fit with the characters (right size, loc). I know that if (raco == true), that one works.
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
    graco = loadImage("brown_guit.png"); //ukes are about the height of the guitar body, but I made them a bit bigger.
    graco.resize(210, 630);
    bg = loadImage("guitar_bg.png"); 
    bg.resize(750, 800); //same size as the window.
    flame = loadImage("cute_flame.png");
    flame.resize(95, 115);
  }
  void display() { //Right now, this is not running, so disregard. The guitar class that matters is in the Processing_Hero folder.
    background(bg);
    image(gaco, 130, height/2);
    image(gele, width/2, height/2);
    image(guke, width-130, height/2);
    if (mouseY<= height/2+200 && mouseY>= height/2-200) {
      if (mouseX>=30 && mouseX<=230) {
        image(flame, 130, height/2+50);
        if (numClicks == 3) {
          aco = true;
          //          sing = true;
          //          g = loadImage("acoustic_guitar.png"); //ADD TO OTHER
          //          g.resize(240, 615);
          guit = false;
        }
      }
      if (mouseX>=width/2-100 && mouseX<=width/2+100) {
        image(flame, width/2, height/2+30);
        if (numClicks == 3) {
          ele = true;
          //          sing = true;
          //          g = loadImage("elect_guitar.png"); //ADD TO OTHER (2 LINES)
          //          g.resize(210, 615);
          guit = false;
        }
      }
      if (mouseX>=width-230 && mouseX<=width-30) {
        image(flame, width-130, height/2+25);
        if (numClicks == 3) {
          uke = true;
          //          sing = true;
          //          g = loadImage("brown_uke.png");
          //          g.resize(110, 346); //ADD TO OTHER
          guit = false;
        }
      }
    }
  }
  void extra() { //shows secret guitars. must hold down g to select.
    imageMode(CENTER);
    background(bg);
    image(graco, 130, height/2);
    image(grele, width/2, height/2);
    image(gruke, width-130, height/2);
    if (mouseY<= height/2+200 && mouseY>= height/2-200) {
      if (mouseX>=30 && mouseX<=230) {
        image(flame, 130, height/2+50);
        if (numClicks == 3) {
          raco = true;
          //          sing = true;
          //          g = loadImage("brown_guit.png");
          //          g.resize(210, 630); //ADD TO OTHER
          guit = false;
        }
      }
      if (mouseX>=width/2-100 && mouseX<=width/2+100) {
        image(flame, width/2-40, height/2+30);
        if (numClicks == 3) {
          rele = true;
          //          sing = true;
          //          g = loadImage("elect_axe_guitar.png");
          //          g.resize(250, 620); //ADD TO OTHER
          guit = false;
        }
      }
      if (mouseX>=width-230 && mouseX<=width-30) {
        image(flame, width-130, height/2+25);
        if (numClicks == 3) {
          ruke = true;
          //          sing = true;
          //          g = loadImage("black_uke.png"); //ADD TO OTHER
          //          g.resize(120, 350);
          guit = false;
        }
      }
    }
  }
}

