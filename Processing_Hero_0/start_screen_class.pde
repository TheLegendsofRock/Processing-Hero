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
        numClicks = 0;
  }
  void display () {
    //makes background rainbow
    for (int x=0; x< width; x+=20) {
      fill(dist(mouseX, 100, x, 0), 100, 100);
      rect(x, 0, width/8, height);
    }
    for (int i = 0; i < index; i++) {
      m[i].display();
      m[i].drop();
    }
    imageMode(CENTER);
    image(guitar, width/2, height/1.5, 835*3/4, 219);
    image(sign, width/2, height/4, 750, 350);
    image(play, width/4, height/1.47, 240, 177);
    //    noFill();
    //                 rect(width/8-20,height/2,835/3,219);
    //                 //the location I want for mouseX,Y stuff
    if (numClicks == 1) {
      //if you click "i wanna rock" the game will start

      if (mouseX <= width/2 && mouseX>= width/2-(835*3/4)/2 && mouseY <= height/1.5+219/2 && mouseY >= height/1.5-219/2) {
        ellipse(mouseX, mouseY, 10, 10);
        start = false;
        select = true;
      }
    }
  }
}

class Music {
  PVector loc, vel, acc;
  int d;
  int s=3/8;
  PImage music;
  Music () {
    music = loadImage("winged_note.png");
    d = 100;
    loc = new PVector(random(0, width-d/2), -d);
    vel = new PVector(0, random(5, 10));
    acc = new PVector(random(-.05, .05), .05);
  }
  void display () {
    image(music, loc.x, loc.y, 325*s, 686*s);
  }
  void drop() {
    loc.add(vel);
    vel.add(acc);
  }
}

