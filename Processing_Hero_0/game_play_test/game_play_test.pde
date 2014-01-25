Animals wild;
Guitar gui;
Pause play;
boolean pause = true;
//Instrument types:
boolean aco = false;
boolean raco = false;
boolean ele = false;
boolean rele = false;
boolean uke = false;
boolean ruke = false;
boolean guit = false;
//Character types:
boolean ant;
boolean koala; 
boolean shark;
//Song types: define in guitar class.
boolean song1 = false;
boolean song2 = false;

boolean run = true;

PImage pick;
int numClicks;
PImage tongue;

void setup() {
  imageMode(CENTER);
  size(750, 700); //Working: change back later; 
  colorMode(HSB, width, 100, 100);
  textAlign(CENTER);
  strokeWeight(3);
  rectMode(CENTER);
  gui = new Guitar();
  wild = new Animals();
  koala = true;
  shark = false;
  ant = false;
  pick = loadImage("fender_pick.png");
  pick.resize(40, 40);
  tongue = loadImage("flame.png");
  tongue.resize(72,136); //ADD TO OTHER
  play = new Pause();
}
void draw() {
  if (run == true) {
    background(0);
    wild.load();
    wild.play();
  }
  play.display();
}
void keyPressed() {
  if (run == true) {
    if (key == ' ') {
      pause=!pause; //the little fridger works. 
      //Working: maybe i'll try this with mousepressed, and put it in each class.
    }
    if (key == 'h') { //ADD TO OTHER
      image(tongue, 220, height-75);
    }
    if (key == 'j') {
      image(tongue, 325, height-75);
    }
    if (key == 'k') {
      image(tongue, 430, height-75);
    }
    if (key == 'l') {
      image(tongue, 535, height-75);
      //ADD TO OTHER
    }
  }
}

