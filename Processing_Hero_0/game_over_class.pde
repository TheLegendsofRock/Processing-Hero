//class Gameover {
//  PVector loce,locq, vele, velq;
//  PImage eighthnote;
//  PImage quarternote;
//  int x= 35;
//  int y= 20;
//  Gameover(){
//    locq= new PVector(random(width),-x);
//    loce= new PVector(random(width), -x);
//    vele= new PVector(0, random(0,5));
//    velq= new PVector(0, random(0,5));
//    eighthnote= loadImage("eighth note.png");
//    quarternote=loadImage("quarter note.png");
//    imageMode(CENTER);
//  }
//  
//  void display() {
//    image(eighthnote, loce.x, loce.y, x, x);
//    image(quarternote,locq.x,locq.y, y, x);
//  }
//  
//  void drop(){
//    loce.add(vele);
//    locq.add(velq);
//    
//  }
//}
class Gameover {
  PVector loc1, loc2, loc3, loc4, loc5, loc6, loc7, vel1, vel2, vel3, vel4, vel5, vel6, vel7;
  PImage m1,m2,m3,m4,m5,m6,m7;
  int x= width/2;
  int y = height/2;
  int d = 20;
  int d1 = 50;
  int i = 15;
  Gameover() {
    loc1 = new PVector (x, y);
    loc2 = new PVector (x, y);
    loc3 = new PVector (x, y);
    loc4 = new PVector (x, y);
    loc5 = new PVector (x, y);
    loc6 = new PVector (x, y);
    loc7 = new PVector (x, y);

    vel1 = new PVector (random(-i, i), random(-i, i));
    vel2 = new PVector (random(-i, i), random(-i, i));
    vel3 = new PVector (random(-i, i), random(-i, i));
    vel4 = new PVector (random(-i, i), random(-i, i));
    vel5 = new PVector (random(-i, i), random(-i, i));
    vel6 = new PVector (random(-i, i), random(-i, i));
    vel7 = new PVector (random(-i, i), random(-i, i));
  }
  void show() {
    m1 = loadImage("eighth note.png");
    m2 = loadImage("quarter note.png");
    m3 = loadImage("eighth note.png");
    m4 = loadImage("quarter note.png");
    m5 = loadImage("eighth note.png");
    m6 = loadImage("quarter note.png");
    m7 = loadImage("eighth note.png");
  }
  void music() {
    tint(255, 200);
    image(m1, loc1.x, loc1.y, d, d);
    image(m2, loc2.x, loc2.y, d, d);
    image(m3, loc3.x, loc3.y, d1, d1);
    image(m4, loc4.x, loc4.y, d1, d1);
    image(m5, loc5.x, loc5.y, d, d);
    image(m6, loc6.x, loc6.y, d1, d1);
    image(m7, loc7.x, loc7.y, d1, d1);
    loc1.add(vel1);
    loc2.add(vel2);
    loc3.add(vel3);
    loc4.add(vel4);
    loc5.add(vel5);
    loc6.add(vel6);
    loc7.add(vel7);
    if (loc1.x - d/2 > width || loc1.x + d/2 < 0 || loc1.y - d/2 > height || loc1.y + d/2 < 0) {
      vel1.mult(-1);
    }
    if (loc2.x - d/2 > width || loc2.x + d/2 < 0 || loc2.y - d/2 > height || loc2.y + d/2 < 0) {
      vel2.mult(-1);
    }  
    if (loc3.x - d1/2 > width || loc3.x + d1/2 < 0 || loc3.y - d1/2 > height || loc3.y + d1/2 < 0) {
      vel3.mult(-1);
    }  
    if (loc4.x - d1/2 > width || loc4.x + d1/2 < 0 || loc4.y - d1/2 > height || loc4.y + d1/2 < 0) {
      vel4.mult(-1);
    }
    if (loc5.x - d/2 > width || loc5.x + d/2 < 0 || loc5.y - d/2 > height || loc5.y + d/2 < 0) {
      vel5.mult(-1);
    }
    if (loc6.x - d1/2 > width || loc6.x + d1/2 < 0 || loc6.y - d1/2 > height || loc6.y + d1/2 < 0) {
      vel6.mult(-1);
    }
    if (loc7.x - d1/2 > width || loc7.x + d1/2 < 0 || loc7.y - d1/2 > height || loc7.y + d1/2 < 0) {
      vel7.mult(-1);
    }
  }
}
