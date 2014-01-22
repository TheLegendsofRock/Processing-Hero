class Select { //select characters
  PImage as, aa, ak; //declare here
  Select() {
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
    //display images of shark, ant koala
    if (mouseY>= width/2+200 && mouseY<= width/2-200) {
      if (mouseX>=width-230 && mouseX<=width-30) {
        aa.resize(250, 250);
        if (mousePressed) {
          select = false;
          ant = true;
          guit = true;
        }
      }
    }
  }
  void mouseOver() {
    if (mouseX>=30 && mouseX<=230) {
      as.resize(250, 250);
      if (mousePressed) {
        select = false;
        shark = true;
        guit = true;
      }
    }
    if (mouseX>=width/2-100 && mouseX<=width/2+100) {
      ak.resize(250, 250);
      if (mousePressed) {
        select = false;
        koala = true;
        guit = true;
      }
    }
  }
  //if mouse loc over, increase size
  //if click, set to true
}

