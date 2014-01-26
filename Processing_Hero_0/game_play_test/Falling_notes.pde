class FallNotes {
  PVector loc, vel, acc;
  FallNotes(){
    loc = new PVector(0, -50);
    vel = new PVector(0, random(-2,0));
    acc = new PVector(0, .01);
  }
  void display() {
    fill(0, 100, 100);
    ellipse(220, loc.y, 70, 70);
    fill(30, 100, 100);
    ellipse(325, loc.y, 70, 70);
    fill(60, 100, 100);
    ellipse(430, loc.y, 70, 70);
    fill(90, 100, 100);
    ellipse(535, loc.y, 70, 70);
  }
  void update(){
    vel.add(acc);
    loc.add(vel);
    }
  void checkLoc() {
//    if(keyPressed){
//      if(key == 'H'){
//    if(loc.y<=10
//      }
//      if(key == 'J'){
//      if(loc.y<=10
//      }
//      if(key == 'H'){
//    if(loc.y<=10
//      }
//      if(key == 'H'){
//    if(loc.y<=10
//      } //Working: I don't know how to do this.
      
    
  }
  void death() {
  }
}

