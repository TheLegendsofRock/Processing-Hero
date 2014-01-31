//Disregard the ADD TO OTHER notes, but please look at the Issues and To do or Working.
import ddf.minim.analysis.*;
import ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
// Minim minim; //originally
Minim CountOnMe; //To do: find a way to test this. It's not loading for me.
Minim JohnnyBGoode;
Minim IKnewTrouble;
Minim HeySoulSister;
Minim CountingStars;
//To do: Sam, I still need The A Team to be added to this data.

AudioPlayer stars;
AudioPlayer count;
AudioPlayer goode;
AudioPlayer trouble;
AudioPlayer soul;
//AudioPlayer player; //originally
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
int randa;      
int randb;
int randc;
int randd;
void setup() {
  //ADD TO when go back to start, player.rewind();
  //  minim = new Minim(this); //originally
  CountOnMe = new Minim(this); //recently added. I don't know if this will work.
  JohnnyBGoode = new Minim(this);
  IKnewTrouble = new Minim(this);
  HeySoulSister = new Minim(this);
  CountingStars = new Minim(this);
  stars = CountingStars.loadFile("OneRepublic - Counting Stars.mp3", 2048);
  count = CountOnMe.loadFile("Bruno Mars - Count On Me.mp3", 2048);
  goode = JohnnyBGoode.loadFile("Chuck Berry - Johnny B. Goode.mp3", 2048);
  trouble = IKnewTrouble.loadFile("Taylor Swift - I Knew You Were Trouble.mp3", 2048);
  soul = HeySoulSister.loadFile("Train - Hey, Soul Sister.mp3", 2048);
  /*originally, we defined player in the play class, 
  [depending on which record was pressed in the songs class (in the other file)].
  This caused song1 or song2 to be true, and guitar selection controlled the (r)aco, (r)ele, and (r)uke booleans.
  However, by defining it there, it didn't work out too well, so we tried defining individual songs here.
  */
  imageMode(CENTER);
  size(750, 700); //Working: change back later; 
  colorMode(HSB, width, 100, 100);
  textAlign(CENTER);
  strokeWeight(3);
  rectMode(CENTER);
  gui = new Guitar();
  wild = new Animals();
  koala = false;
  shark = false;
  ant = true;
  pick = loadImage("fender_pick.png");
  pick.resize(40, 40);
  tongue = loadImage("flame.png");
  tongue.resize(72, 136); //ADD TO OTHER
  play = new Pause();
  music = new Play();
}
void draw() {
  //ADD TO;
  if (run == true) {
    background(25, width, 5);
    wild.load(gui); //ADD TO OTHER
    if (score>=50) {
      wild.winning(gui); //if the score is high enough, a different pose for the same character displays. This works.
    } 
    else {
      wild.play(gui);
    }
    play.display();
    for (FallNotes f : fallNotes) {
      f.display();
      f.update();
    }
    if (pause == false) {
      music.playSong();
      if (singsong == true) {
        //        player.noLoop(); //Working: this is not working the way we wanted it to.
      }
      for (int i = fallNotes.size()-1; i >=0; i--) {
        FallNotes f = fallNotes.get(i);
        if (f.life == 0) {
          fallNotes.remove(i);
        }
      }
      int randa = int(random(100)); //Working: should this be declared somewhere else? I moved it so it would be.
      int randb = int(random(100));
      int randc = int(random(100));
      int randd = int(random(100));
      if (randa%15 == 0) { //increase the number you're dividing by to get (likely) larger spaces between the falling ellipses.         
        fallNotes.add(new RedNotes(220, random(-20, -70)));
      }
      if (randb%20 == 0) {
        fallNotes.add(new BloodOrangeNotes(325, random(-20, -70)));
      }
      if (randc%30 == 0) {
        fallNotes.add(new OrangeNotes(430, random(-20, -70)));
      }
      if (randd%50 == 0) {
        fallNotes.add(new YellowNotes(535, random(-20, -70)));
      }
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
    if (key == 'h' || key == 'H') { //ADD TO OTHER
      image(tongue, 220, height-75);
    }
    if (key == 'j' || key == 'J') {
      image(tongue, 325, height-75);
    }
    if (key == 'k' || key == 'K') {
      image(tongue, 430, height-75);
    }
    if (key == 'l' || key == 'L') {
      image(tongue, 535, height-75);
      //ADD TO OTHER
    }
  }
}
//ADD TO OTHER IF THIS WORKS
void stop() {   //so I'm assuming stop is when you close the window. So could I make the music keep playing until you close the code? Maybe not.
  //  stars.close();
  //  trouble.close();
  //  count.close();
  //  goode.close();
  //  soul.close();
  //  player.stop(); //says function stop() does not exist.
  //  minim.stop(); //To do: will need to uncomment this when we figure out what the heck is going on.
  super.stop();
}

