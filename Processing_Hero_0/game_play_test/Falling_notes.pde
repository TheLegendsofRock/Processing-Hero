class FallNotes {
  PVector loc, vel, acc;
  float c;
  int life;
  int space;
  FallNotes(float x, float y) {
    space = 100;
    loc = new PVector(x, y);
    acc = new PVector(0, .1);
    if(aco == true || raco == true){
        vel = new PVector(0, random(20,10));
    }
    if(ele == true || rele == true){
          vel = new PVector(0, random(30, 15));
    }
    if(uke == true || ruke == true){
          vel = new PVector(0, random(50, 40)); //it gets tough man.
    }
    life = 1;
  }
  void display() {
strokeWeight(10);
    fill(c, 100, 100,99);
    ellipse(loc.x, loc.y, 70, 70);
  }
  void update() {
    if (pause == false) {
      vel.add(acc);
      loc.add(vel);
    }
    if (loc.y >= height+space) {
      life = 0;
      score-=1;
    }
    if(keyPressed && loc.y < height - space){
      score-=1;
    }
  }
}
class RedNotes extends FallNotes {
  RedNotes(float x, float y) {
    super(x, y);
    c = 0;
    x = 220;
  }
  void update() {
    super.update();
    if (keyPressed) {
      if (key == 'H') {
        if (loc.y >= height-space) {
          score+=1;
          life = 0;
          print("I pressed it    "); //Working: it does not recognize this.
        } 
        else {
          score-=1;
        }
      }
    }
  }
}

class BloodOrangeNotes extends FallNotes { //she's so pretentious
  BloodOrangeNotes(float x, float y) {
    super(x, y);
    c = 30;
    x = 325;
  }
  void update() {
    super.update();
    if (keyPressed) {
      if (key == 'J') {
        if (loc.y >= height-space) {
          score+=1;
                    life = 0;
        }
        else {
          score-=1;
        }
      }
    }
  }
}



class OrangeNotes extends FallNotes {
  OrangeNotes(float x, float y) {
    super(x, y);
    c = 60;
    x = 430;
  }
  void update() {
    super.update();
    if (keyPressed) {
      if (key == 'K') {
        if (loc.y >= height-space) {
          score+=1;
                    life = 0;
        }
        else {
          score-=1;
        }
      }
    }
  }
}

class YellowNotes extends FallNotes { //Implicit super constructor is undefined for default constructor. Must define an explicit constructor. What does this mean?
  YellowNotes(float x, float y) {
    super(x, y);
    c = 90;
    x = 535;
  }
  void update() {
    super.update();  
    if (keyPressed) {    

      if (key == 'L' || key == 'l') { //try and change for all.
print("I'm pressing the L key!  ");
        if (loc.y >= height-space) {
          score+=1;
                    life = 0;
        }
        else {
          score-=1;
        }
      }
    }
  }
}

