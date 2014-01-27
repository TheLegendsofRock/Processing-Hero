
Gameover g1;

int score; //Working
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
  size(750, 600); //Working: I keep changing this to 600 so it fits on my screen. Change it back to 800 if I forget to.
  g1= new Gameover();

  strokeWeight(3);
  colorMode(HSB, width, 100, 100);
  s1 = new Startscreen();
  for (int i = 0; i < m.length; i++) {
    m[i] = new Music();
  }
  colorMode(HSB, 360, 100, 100, 100);
}
void draw() {
      colorMode(HSB, 360, 100, 100, 100);
  //makes background rainbow
  for (int x=0; x< width; x+=20) {
    fill(dist(mouseX, 100, x, 0), 100, 100);
    rect(x, 0, width/8, height);
  }
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
    //trying to get angle to increase, then decrease. I'll get it, someday.
    //As of now, I can easily get it to go back to 0 after reaching 15, but it's too much of a break than I'd like.
    //  if(angle>=0){
    //    angle++;
    //    if(angle<=15){
    //      angle--;
    //    }
    //  }
    //  for (int a = 0; a<=15; a++){
    //    a = angle;
    //  }
    //  for(int e = 15; e>=0; e--){
    //    e = angle;
    //  }
    //  if (angle<=15) {
    //    angle++;
    //  } 
    //  else {
    //    angle--;
    //  }

    //    angle++;
    //    if (angle>=15) {
    //      angle = 0;
//because no one looked at that.

  }
  else {
      s1.display();
  s1.go(); //I'll clean this up. I just need a placeholder now.
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






