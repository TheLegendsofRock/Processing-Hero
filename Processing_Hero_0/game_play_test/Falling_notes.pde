class FallNotes {
  PVector loc, vel, acc;
  float c;
  FallNotes(float x, float y) {
    loc = new PVector(x, y);
    acc = new PVector(0, .1);
  }
  void display() {

    fill(c, 100, 100);
    ellipse(loc.x, loc.y, 70, 70);
  }
  void update() {
    if (pause == false) {
      vel.add(acc);
      loc.add(vel);
    }
    if (life == 0) {
      loc.y = random(-25, -50);
      life = 1;
    }
  }
}
class RedNotes extends FallNotes {
  RedNotes(float x, float y) {
    super(x, y);
    vel = new PVector(0, random(10, 5));
    c = 0;
    x = 220;
  }
  void update() {
    super.update();
    if (keyPressed) {
      //      if (key = 'H') {
      if (loc.y >= height-55) {
        score++;
        //super.remove();
      }
    }
    if (loc.y >= height) {
      life = 0;
    }
  }
}
//}

class BloodOrangeNotes extends FallNotes { //she's so pretentious
  BloodOrangeNotes(float x, float y) {
    super(x, y);
    vel = new PVector(0, random(10, 5));
    c = 30;
    x = 325;
  }
  void update() {
    super.update();
    if (keyPressed) {
      //      if (key = 'J') {
      if (loc.y >= height-55) {
        score++;
      }
    }
    if (loc.y >= height) {
      life = 0;
    }
  }
}
//}


class OrangeNotes extends FallNotes {
  OrangeNotes(float x, float y) {
    super(x, y);
    vel = new PVector(0, random(10, 5));
    c = 60;
    x = 430;
  }
  void update() {
    super.update();
    if (keyPressed) {
      //      if (key = 'K') {
      if (loc.y >= height-55) {
        score++;
      }
    }
    if (loc.y >= height) {
      life = 0;
    }
  }
}
//}

class YellowNotes extends FallNotes { //Implicit super constructor is undefined for default constructor. Must define an explicit constructor. What does this mean?
  YellowNotes(float x, float y) {
    super(x, y);
    vel = new PVector(0, random(10, 5));
    c = 90;
    x = 535;
  }
  void update() {
    super.update();
    if (keyPressed) {
      //      if (key = 'L') {
      if (loc.y >= height-55) {
        score++;
      }
    }
    if (loc.y >= height) {
      life = 0;
    }
  }
  //  }
}

