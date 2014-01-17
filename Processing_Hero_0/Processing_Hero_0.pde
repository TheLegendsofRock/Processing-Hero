
Gameover g1;
Notes[] n = new Notes[100];
int g=50; 
int score=-25;
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
Music[] m = new Music[200];

void setup() {
  size(750, 800);
  g1= new Gameover();
  for (int i = 0; i < n.length; i++) {
    n[i] = new Gameover();
  }
  strokeWeight(3);
  colorMode(HSB, width, 100, 100);
  s1 = new Startscreen();
  for (int i = 0; i < m.length; i++) {
    m[i] = new Music();
  }
}
void draw() {
  //makes background rainbow
  for (int x=0; x< width; x+=20) {
    fill(dist(mouseX, 100, x, 0), 100, 100);
    rect(x, 0, width/8, height);
  }
  for (int i = 0; i < 4; i++) {
    noStroke();
    int c = 30*i;
    fill(c+15, 100, 100);
    ellipse(220+i*105, height-35, 105, 90);
    fill(c, 100, 100);
    ellipse(220+i*105, height-35, 85, 70);
    if (run == true) {
      background(255, 0, 0);
      fill(0, 0, 99);
      text("good job", width/1.5, height/5);
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

      noFill();
      stroke(0);
      strokeWeight(2);
      quad(165, height, width/3, height/2-2*g, width*2/3, height/2-2*g, width-165, height);
    }
  }
}
  void mousePressed() {
    //if you click "i wanna rock" the game will start
    if (mouseX <= width/2+200 && mouseX>= width/2-200 && mouseY <= height/2+200 && mouseY >= height/2-200) {
      run = true;
    }
  }

