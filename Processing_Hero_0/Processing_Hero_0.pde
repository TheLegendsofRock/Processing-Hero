<<<<<<< HEAD //I don't know what this is, but it's here. It's probably from the merge that only kind of worked out. See commit: "Tried to Merge With game-over-screen-2" for more info.
=======

Gameover g1;
Notes[] n = new Notes[100];
int g=50; 
int score=-25;
>>>>>>> origin/game-over-screen-2
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
<<<<<<< HEAD
  wild = new Animals();
  size(750, 600); //Working: I keep changing this to 600 so it fits on my screen. Change it back to 800 if I forget to.
=======
  size(750, 800);
  g1= new Gameover();
  for (int i = 0; i < n.length; i++) {
    //    n[i] = new Gameover();
    //what are you trying to do here?
  }
>>>>>>> origin/game-over-screen-2
  strokeWeight(3);
  colorMode(HSB, width, 100, 100);
  s1 = new Startscreen();
  for (int i = 0; i < m.length; i++) {
    m[i] = new Music();
  }
  colorMode(HSB, 360, 100, 100, 100);
}
void draw() {
<<<<<<< HEAD
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

    /*Music Ideas: in four chords
     G D Em C or C G Am F
     Superman by Five for Fighting
     You're Beautiful by James Blunt
     I'm Yours by Jason Mraz
     Where is the Love by Black Eyed Peas
     She Will be Loved by Maroon Five
     Where'd You Go by Fort Minor
     Happy Ending by Mika
     Under the Bridge by Red Hot Chili Peppers
     Man in the Mirror by Michael Jackson
     Take on Me by a-ha
     Whatever You Like by T.I.
     Apologize by OneRepublic
     Aicha by Outlandish
     Africa by Toto
     Save Tonight by Eagle Eye Cherry
     If I Were a Boy by Beyonce
     Soul Sister
     Can You Feel the Love Tonight
     With or Without You
     Pictures of You, Pictures of Me
     You're Gonna Go Far, Kid by The Offspring (CLEAN VERSION)
     Love the Way You Lie
     Kids by MGMT
     What It's Like by Everlast (acoustic song)
     
     all from http: //www.youtube. com/watch?v=DEkPC-6Ni8Y
     http://www.youtube.com/watch?v=oOlDewpCfZQ
     
     STRONGER CONTENDERS
     a Beatles song for acouistic. Let It Be has 4 chords.
     If I Lose Myself by OneRepublic
     I Will Wait by Mumford & Sons or other song
     Millionaires by The Script
     Hotel California by The Eagles, I think
     Sweet Home Alabama
     Dream On
     More Than a Feeling
     Fallen by Imagine Dragons
     Let Her Go (has 5 chords I think)
     Chasing Cars, Demons, It's Time may be too repetative/ simple.
     
     HOW THIS WILL WORK:
     Each key plays a chord. Need recordings of chords to play as sudio.
     
     Bohemian Rhapsody during character selection
     */
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

=======
  s1.display();
  s1.go(); //I'll clean this up. I just need a placeholder now.
}

>>>>>>> origin/game-over-screen-2
