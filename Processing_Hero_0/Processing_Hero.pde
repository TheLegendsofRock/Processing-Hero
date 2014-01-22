//working: how do we cut down on load time?
Startscreen s1;
Animals wild;
Music[] m = new Music[200];
Select ion;
boolean start = true;
boolean select = false;
boolean guit = false;
boolean songs = false;
boolean run = false;
boolean ant, koala, shark;
int current;
int change;
int old = 0;
int index = 0;

void setup() {
  size(750, 800); //Working: I keep changing this to 600 so it fits on my screen. Change it back to 800 if I forget to.
  wild = new Animals();
  strokeWeight(3);
  colorMode(HSB, width, 100, 100);
  s1 = new Startscreen();
  ion = new Select();
  for (int i = 0; i < m.length; i++) {
    m[i] = new Music();
  }
  koala = false;
  shark = false;
  ant = false;
}
void draw() {
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
  }
  if (songs == true) {
  }
  if (run == true) {
    wild.load();
    wild.play();
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

