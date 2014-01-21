Startscreen s1;
Animals wild;
Music[] m = new Music[200];
boolean run;
boolean ant, koala, shark;

void setup() {
  size(750, 600); //Working: I keep changing this to 600 so it fits on my screen. Change it back to 800 if I forget to.
  wild = new Animals();
  strokeWeight(3);
  colorMode(HSB, width, 100, 100);
  s1 = new Startscreen();
  for (int i = 0; i < m.length; i++) {
    m[i] = new Music();
  }
}
void draw() {
  if (run == true) {
    background(150);     

    noFill();
    stroke(0);
    strokeWeight(2);
    rectMode(CENTER);
    rect(width/2, height/2, width/2, height);
    for (int i = 0; i < 4; i++) {
      stroke(200);
      strokeWeight(5);
      line(220+i*105, height, 220+i*105, 0);
      noStroke();
      int c = 30*i;
      fill(c+15, 100, 100);
      ellipse(220+i*105, height-35, 105, 90);
      fill(c, 100, 100);
      ellipse(220+i*105, height-35, 85, 70);
    }
    koala = false;
    shark = false;
    ant = true;
    wild.load();
    wild.play();
  }
  else {
    //says if run isn't true, then flash is true, and if flash is true, display the start screen
  }
}

void keyPressed() {
  if (run == true) {
    if (key == ' ') {
    }
    if (key == 'h') {
    }
    if (key == 'j') {
    }
    if (key == 'k') {
    }
    if (key == 'l') {
    }
  }
}

