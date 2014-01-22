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
  }
  void mouseOver() {
    if (mouseY<= height/2+200 && mouseY>= height/2-200) {
      if (mouseX>=30 && mouseX<=230) {
        //        as.resize(250, 250); //gives me coordinate out of bounds. let's try another way.
        image(as, 130, height/2, 250, 250);
        //guess what. it works. boo to the yahhh.

        if (numClicks == 2) {
          shark = true;
          guit = true;
          select = false;
        }
      }
      if (mouseX>=width/2-100 && mouseX<=width/2+100) {
        image(ak, width/2, height/2, 250, 250);
        if (numClicks == 2) {
          koala = true;
          guit = true;
          select = false;
        }
      }
      if (mouseX>=width-230 && mouseX<=width-30) {
        image(aa, width-130, height/2, 250, 250);
        if (numClicks == 2) {
          ant = true;
          guit = true;
          select = false;
        }
      }
      //if mouse loc over, increase size
      //if click, set to true
    }
  }
}

