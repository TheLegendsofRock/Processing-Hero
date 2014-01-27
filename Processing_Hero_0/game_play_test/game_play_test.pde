import ddf.minim.analysis.*;
import ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
//AudioInput in;
//FFT fft; //splits up a soundwave into spectrum of bands so can tell volume of sound signal.
//AudioPlayer stars;
//AudioPlayer count;
//AudioPlayer goode;
//AudioPlayer trouble;
//AudioPlayer soul;
AudioPlayer player;
int score = 0; //ADD TO OTHER
ArrayList<FallNotes> fallNotes = new ArrayList<FallNotes>(); //ADD TO OTHER
Animals wild;
Guitar gui;
Pause play;
Play music;
boolean pause = true;
//Instrument types:
boolean aco = false;
boolean raco = true;
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
boolean song2 = true;

boolean run = true;

PImage pick;
int numClicks;
PImage tongue;
int current;
int change;
int old = 0;
PImage g; //ADD TO OTHER
int life = 1; //ADD TO OTHER
boolean singsong = true; //ADD TO OTHER

void setup() {
  //ADD TO when go back to start, player.rewind();
  minim = new Minim(this);
  //  stars = minim.loadFile("OneRepublic - Counting Stars.mp3", 2048);
  //  count = minim.loadFile("Bruno Mars - Count On Me.mp3", 2048);
  //  goode = minim.loadFile("Chuck Berry - Johnny B. Goode.mp3", 2048);
  //  trouble = minim.loadFile("Taylor Swift - I Knew You Were Trouble.mp3", 2048);
  //  soul = minim.loadFile("Train - Hey, Soul Sister.mp3", 2048);
  //  in = minim.getLineIn(Minim.STEREO, 512); //I don't know what any of this means. Emma, if you understand minim, please work on this.
  //  fft = new FFT(in.buffersize(), in.sampleRate());
  //  fallNotes.add(new FallNotes()); //ADD TO OTHER
  imageMode(CENTER);
  size(750, 700); //Working: change back later; 
  colorMode(HSB, width, 100, 100);
  textAlign(CENTER);
  strokeWeight(3);
  rectMode(CENTER);
  gui = new Guitar();
  wild = new Animals();
  koala = false;
  shark = true;
  ant = false;
  pick = loadImage("fender_pick.png");
  pick.resize(40, 40);
  tongue = loadImage("flame.png");
  tongue.resize(72, 136); //ADD TO OTHER
  play = new Pause();
  music = new Play();
}
void draw() {
  current = millis();
  change = current - old; //ADD TO;

  if (run == true) {
    background(25, width, 5);
    for (FallNotes f : fallNotes) {
      f.display();
      f.update();
    }


    wild.load(gui); //ADD TO OTHER
    if (score>=50) {
      wild.winning(gui); //if the score is high enough, a different character displays
    } 
    else {
      wild.play(gui);
    }
    play.display();
    if (pause == false) {
      music.playSong();
      if (singsong == true) {
//        play.loop(); //Emma, this doesn't work.

        //        player.play();
        //        noLoop(); //if noLoop() this, the drops don't fall. It just plays and you can't pause until the song is over, I expect. Crud.
      }
      //      fallNotes.add(new FallNotes());
      //      for (int i = fallNotes.size()-1; i >=0; i--) {
      //        FallNotes f = fallNotes.get(i);
      //        f.display();
      //        f.update();
      //        if (life == 0) {
      //          fallNotes.remove(i);
      //        } //Working: I don't know how to do this.
      //      }
      //      frameRate(15); //thought this could be why there are so many ellipses/ the background is not refreshing over them, but I was wrong.
      fallNotes.add(new RedNotes(220, random(-20, -70))); //for some reason, they fall in a line. there is no variance in their initial y height.
      fallNotes.add(new BloodOrangeNotes(325, random(-20, -70)));
      fallNotes.add(new OrangeNotes(430, random(-20, -70)));
      fallNotes.add(new YellowNotes(535, random(-20, -70))); //I don't know why this doesn't appear above it the lines and the score background.
    }
//  if(score<=-200){
//    gameover screeny. //Working add in
//
//  }
}
}

void mousePressed() {
  run = true;
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
//ADD TO OTHER IF THIS WORKS
void stop() { //OH MY GOODNESS GRACIOUS IT WOOOOORKS WHOOOOOHOOOOOOPS i don't really know why.
  //so I'm assuming stop is when you close the window. So could I make the music keep playing until you close the code? Maybe not.
  //  stars.close();
  //  trouble.close();
  //  count.close();
  //  goode.close();
  //  soul.close();
  //  player.stop(); //says function stop() does not exist.
  minim.stop();
  super.stop();
}

