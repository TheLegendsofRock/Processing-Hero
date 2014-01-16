class Notes {
  PVector loc1, loc2, vel1, vel2;
  PImage n1,n2;
  int x= width/2;
  int y = height/2;
  int d = 20;
  int d1 = 50;
  int i = 15;
  Notes() {
    loc1 = new PVector (x, y);
    loc2 = new PVector (x, y);


    vel1 = new PVector (random(-i, i), random(-i, i));
    vel2 = new PVector (random(-i, i), random(-i, i));
  }
  void show() {
    n1 = loadImage("eighth note.png");
    n2 = loadImage("quarter note.png");
  }
  void music() {
    tint(255, 200);
    image(n1, loc1.x, loc1.y, d, d);
    image(n2, loc2.x, loc2.y, d, d);
    loc1.add(vel1);
    loc2.add(vel2);
    
    if (loc1.x - d/2 > width || loc1.x + d/2 < 0 || loc1.y - d/2 > height || loc1.y + d/2 < 0) {
      vel1.mult(-1);
    }
    if (loc2.x - d/2 > width || loc2.x + d/2 < 0 || loc2.y - d/2 > height || loc2.y + d/2 < 0) {
      vel2.mult(-1);
    }  
  }
}
