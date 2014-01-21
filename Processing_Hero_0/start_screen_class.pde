class Startscreen {
  PImage guitar, play, sign;
  boolean flash;
  int flashold = 0;
  int flashcurrent = 0;
  int flashchange = 0;
  int old = 0;
  int current = 0;
  int change = 0;
  int index = 1;

  int g=50;

  Startscreen () {
    guitar = loadImage("guitar.png");
    sign = loadImage("signx.png");
    play = loadImage("play.png");
  }
  void display () {
    //makes background rainbow
    for (int x=0; x< width; x+=20) {
      fill(dist(mouseX, 100, x, 0), 100, 100);
      rect(x, 0, width/8, height);
    }
    imageMode(CENTER);
    image(guitar, width/2, height/1.5, 600, 600);
    image(sign, width/2, height/4, 750, 350);
    image(play, width/2.75, height/1.47, 150, 100);
    if (mousePressed) {
      //if you click "i wanna rock" the game will start
      if (mouseX <= width/2+200 && mouseX>= width/2-200 && mouseY <= height/2+200 && mouseY >= height/2-200) {
        run = true;
      }
    }
    current = millis();
    change = current - old;
    for (int i = 0; i < index; i++) {
      m[i].display();
      m[i].drop();
    }
    if (change >= 1000) {        
      old = current;
      if (index < m.length) {
        index++;
      }
    }
    textSize(20);
    fill(255);
    flashcurrent = millis();
    flashchange = flashcurrent - flashold;
    if (flashchange >= 1000) {        
      flash = true;
    }
    if (flash == true) {
      s1.display();
    }
    //Working: search for working to find all the stuff that still needs work
  }
}
