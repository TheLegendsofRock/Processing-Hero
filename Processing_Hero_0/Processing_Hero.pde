//working: how do we cut down on load time?
Startscreen s1;
Animals wild;
Music[] m = new Music[200];
Select ion;
Guitar gui;
Songs songs;
//Screens:
boolean start = true;
boolean select = false;
boolean guit = false;
boolean sing = false;
boolean pause; //true dat
boolean run = false;
//Instrument types:
boolean aco = false;
boolean raco = false;
boolean ele = false;
boolean rele = false;
boolean uke = false;
boolean ruke = false;
//Character types:
boolean ant = false;
boolean koala = false; 
boolean shark = false;
//Song types: define in guitar class.
boolean song1 = false;
boolean song2 = false;

int current;
int change;
int old = 0;
int index = 0;
PImage pick;
int numClicks;
PImage tongue;

void setup() {
  imageMode(CENTER);
  size(750, 800); //Working: I keep changing this to 600 so it fits on my screen. Change it back to 800 if I forget to.
  wild = new Animals();
  strokeWeight(3);
  colorMode(HSB, width, 100, 100);
  s1 = new Startscreen();
  ion = new Select();
  for (int i = 0; i < m.length; i++) {
    m[i] = new Music();
  }
  gui = new Guitar();
  songs = new Songs();
  koala = false;
  shark = false;
  ant = false;
  pick = loadImage("fender_pick.png");
  pick.resize(40, 40);
  tongue = loadImage("flame.png");
}
void draw() {
  //  if (numClicks >=0) {
  //    image(pick, mouseX, mouseY); //emma: this isn't displaying until after you click and it's weird. guess you could call it an issue.
  //  }
  //next time I'll try loading it for each screen.

  if (start == true) {
    s1.display();
    //music notes start screen timer
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
  }
  if (select == true) {
    ion.display();
    ion.mouseOver();
  }
  if (guit == true) {
    if (keyPressed) {
      if (key == 'g') {
        gui.extra();
      }
    }
    else {
      gui.display();
    }
    if (sing == true) {
      songs.display();
    }
    if (run == true) {
      wild.load();
      wild.play();
    }
  }
}

void keyPressed() {
  if (start == true) {
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
void mousePressed() {
  numClicks += 1;
} //WHOOHOO GUESS WHO LOOKED UP A GREAT WAY TO MAKE MULTIPLE KEY PRESSES MEAN DIFFERENT THINGS AND THISLL PROBABLY OPEN UP A FEW BUGS BUT IT WORKS RIGHT NOW SO YAAAAAY KRISTIEE.

