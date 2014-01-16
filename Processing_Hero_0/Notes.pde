class Note {
  PVector loc1, loc2, loc3, loc4, loc5, loc6, loc7, vel1, vel2, vel3, vel4, vel5, vel6, vel7;
  int x= width/2;
  int y = height/2;
  int d = 20;
  int d1 = 50;
  int i = 15;
  Note() {
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
    m1 = loadImage("music-note.png");
    m2 = loadImage("music_note.png");
    m3 = loadImage("musical-note.png");
    m4 = loadImage("musical_note.png");
    m5 = loadImage("music_note.png");
    m6 = loadImage("musical-note.png");
    m7 = loadImage("musical_note.png");
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

