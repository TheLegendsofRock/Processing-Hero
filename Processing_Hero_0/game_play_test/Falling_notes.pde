class FallNotes {
  PVector loc, vel, acc;
  FallNotes(float x, float y) {
    loc = new PVector(x, y);
    vel = new PVector(0, random(10, 5));
    acc = new PVector(0, .1); 
  }
  void display() {
    
    fill(0, 100, 100);
    ellipse(loc.x, loc.y+random(100,-100), 70, 70);
    fill(30, 100, 100);
    ellipse(325, loc.y+random(100,-100), 70, 70);
    fill(60, 100, 100);
    ellipse(430, loc.y+random(100,-100), 70, 70);
    fill(90, 100, 100);
    ellipse(535, loc.y+random(100,-100), 70, 70);
  }
  void update() {
    vel.add(acc);
    loc.add(vel);
  }
  //  void checkLoc() {
  //    
  //      
  //    
  //  }
  //  void death() {
  //  }
}

