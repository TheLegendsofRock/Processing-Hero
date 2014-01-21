class Gameover {
  int i,z;
  PImage g;
  Gameover() {
    i=225;
    z=600;
    g= loadImage("Gameover.png");
    imageMode(CENTER);
  }
  void display() {
    for (int x=10; x< width; x+=50) {
      fill(dist(mouseX, 0, x, 0));
      rect(x, 0, width/10, height);
    }

    image(g, width/2, height/2, z, i);
  }
}

