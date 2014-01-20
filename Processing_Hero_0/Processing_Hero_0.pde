boolean run;
boolean flash;
int flashold = 0;
int flashcurrent = 0;
int flashchange = 0;
int old = 0;
int current = 0;
int change = 0;
int index = 1;
Startscreen s1;
int g=50;
boolean shark, ant, koala;
Animals wild;
int angle = 0;
Music[] m = new Music[200];

void setup() {
  wild = new Animals();
  size(750, 800);
  strokeWeight(3);
  colorMode(HSB, width, 100, 100);
  s1 = new Startscreen();
  for (int i = 0; i < m.length; i++) {
    m[i] = new Music();
  }
  colorMode(HSB, 360, 100, 100, 100);
}
void draw() {

  //makes background rainbow
  for (int x=0; x< width; x+=20) {
    fill(dist(mouseX, 100, x, 0), 100, 100);
    rect(x, 0, width/8, height);
  }
  if (run == true) {
    background(150); //it flapjackin works
    colorMode(HSB, 360, 100, 100, 100);
    for (int i = 0; i < 4; i++) {
      noStroke();
      int c = 30*i;
      fill(c+15, 100, 100);
      ellipse(220+i*105, height-35, 105, 90);
      fill(c, 100, 100);

      ellipse(220+i*105, height-35, 85, 70);
    }
    //  for (int c=0; c<=300; c+=75) {
    //  for (int i=-1 && int c=0; i<=170*3/2 && c<=300; i+=170/2  && c+=75) {
    //    fill(c, 100, 100);
    //    strokeWeight(5);
    //    stroke(c+50, 100, 100);
    //    ellipse(width/3+i, height-35, 170/2, 70);
    //  }
    //  }
    noFill();
    stroke(0);
    strokeWeight(2);
    //  quad(width/3-g, height, width/3, height/2-2*g, width*2/3, height/2-2*g, width*2/3+g, height);
    quad(165, height, width/3, height/2-2*g, width*2/3, height/2-2*g, width-165, height);
    //  triangle(-500, width/2, width/3-g, height,
    //for (int l =0; l<=350; l+=175/2) {
    //  line(
  }
  else {
    //says if run isn't true, then flash is true, and if flash is true, display the start screen
    current = millis();
    change = current - old;
    for (int i = 0; i < index; i++) {
      m[i].display();
      m[i].drop();
    }
    if (change >= 1000) {        
      old = current;

      if (index < m.length) {
        index++;
      }
    }
    textSize(20);
    fill(255);
    flashcurrent = millis();
    flashchange = flashcurrent - flashold;
    if (flashchange >= 1000) {        
      flash = true;
    }
    if (flash == true) {
      s1.display();
    }
  }
}
void mousePressed() {
  //if you click "i wanna rock" the game will start
  if (mouseX <= width/2+200 && mouseX>= width/2-200 && mouseY <= height/2+200 && mouseY >= height/2-200) {
    run = true;
  }
}


// here's the font http://www.dafont.com/nightmare-hero.font

