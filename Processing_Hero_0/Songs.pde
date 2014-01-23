//All: please choose songs. and add them by following steps for minim. Emma, i think you know how to do this: folder name or something.
class Songs {
  PImage white, blue;
  int enlarge =1;
  Songs() {
    white = loadImage("white_record.png");
    white.resize(302, 300);
    blue = loadImage("blue_record.png");
    blue.resize(300, 300);
  }
  void display() {
    background(0);
    pushMatrix();
    scale(enlarge);
    translate(width*3/4, height/2);
    image(blue, 0, 0);
    if (mouseX>width/2) {
      enlarge=2;
      if (numClicks==4) {
        song2 = true;
        run = true;
        sing = false;
      }
    }
    popMatrix();
    pushMatrix();
    translate(width/4, height/2);
    scale(enlarge);
    image(white, 0, 0);
    if (mouseX<width/2) {
      enlarge=2;
      if (numClicks==4) {
        song1 = true;
        run = true;
        sing = false;
      }
    }
    popMatrix(); //Emma: another bug. It's not enlarging as I'd like it to. the guitar pick just shows up all strangely.
  }
}

