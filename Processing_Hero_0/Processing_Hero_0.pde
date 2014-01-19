
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
    //    n[i] = new Gameover();
    //what are you trying to do here?
  }
  strokeWeight(3);
  colorMode(HSB, width, 100, 100);
  s1 = new Startscreen();
  for (int i = 0; i < m.length; i++) {
    m[i] = new Music();
  }
}
void draw() {
  s1.display();
  s1.go(); //I'll clean this up. I just need a placeholder now.
}

