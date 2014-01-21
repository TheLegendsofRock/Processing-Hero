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
    guitar = loadImage("black_guitar.png");
    sign = loadImage("Processing_hero_white.png");
    play = loadImage("Play_rock.png");
  }
  void display () {
    //makes background rainbow
    for (int x=0; x< width; x+=20) {
      fill(dist(mouseX, 100, x, 0), 100, 100);
      rect(x, 0, width/8, height);
    }
    imageMode(CENTER);
    image(guitar, width/2, height/1.5, 835*3/4, 219);
    image(sign, width/2, height/4, 750, 350);
    image(play, width/4, height/1.47, 240, 177);
//    noFill();
//                 rect(width/8-20,height/2,835/3,219);
//                 //the location I want for mouseX,Y stuff
    if (mousePressed) {
      //if you click "i wanna rock" the game will start

      if (mouseX <= width/8-20+835/3 && mouseX>= width/8-20-835/3 && mouseY <= height/2+219 && mouseY >= height/2-219/2) {
//        run = true;
//Working: it's not. The lower and right borders are fine. Caitie, please do something.
ellipse(mouseX,mouseY,10,10);
      }
    }
    //Working: uncommenting this makes it not work. Caitie, please help. kthanx.
//    current = millis();
//    change = current - old;
//    for (int i = 0; i < index; i++) {
//      m[i].display();
//      m[i].drop();
//    }
//    if (change >= 1000) {        
//      old = current;
//      if (index < m.length) {
//        index++;
//      }
//    }
//    textSize(20);
//    fill(255);
//    flashcurrent = millis();
//    flashchange = flashcurrent - flashold;
//    if (flashchange >= 1000) {        
//      flash = true;
//    }
//    if (flash == true) {
//      s1.display();
//    }
    //says if run isn't true, then flash is true, and if flash is true, display the start screen
    //Working: search for working to find all the stuff that still needs work
  }
}
//Working: can I combine them? It'd clean up my tabs. I feel like there are far too many already.
class Music {
  PVector loc, vel, acc;
  int d;
  PImage music;
  Music () {
    music = loadImage("winged_note.png");
    d = 200;
    loc = new PVector(random(0, width-d/2), -d);
    vel = new PVector(0, random(5, 10));
    acc = new PVector(random(-.05, .05), .05);
  }
  void display () {
    image(music, loc.x, loc.y, d, d);
  }
  void drop() {
    loc.add(vel);
    vel.add(acc);
  }
}
//I think this is for the start screen, or the game over screen. Working: need to clarify

