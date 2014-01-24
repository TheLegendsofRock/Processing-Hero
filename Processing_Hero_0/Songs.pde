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
  void display() { //Emma: another issue. it doesn't enlarge when mouse over. Also, clicking isn't working yet.
    background(0);
    if (mouseY<=height-50 && mouseY>=50) {
      if (mouseX>width/2) {
        image(white, width/4, height/2);
        image(blue, width*3/4, height/2, 400, 400);
        if (numClicks==4) {
          song2 = true;
          run = true;
          sing = false;
        }
      }
      if (mouseX<width/2) {
        image(white, width/4, height/2, 403, 400);
        image(blue, width*3/4, height/2);
        white.resize(603, 600);
        if (numClicks==4) {
          song1 = true;
          run = true;
          sing = false;
        }
      }
    }
  }
}

