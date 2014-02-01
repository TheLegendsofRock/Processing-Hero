//Search for tags Issues, To do, and Working to see where we need help. Same goes for folder game_play_test, which is located in Processing_Hero_0. To do: move it out of there.
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
boolean pause = true; 
boolean run = false;
//Instrument types:
boolean aco = false;
boolean raco = false;
boolean ele = false;
boolean rele = false;
boolean uke = false;
boolean ruke = false;
//Character types:
boolean ant;
boolean koala; 
boolean shark;
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
boolean oldClicks;

void setup() {
  background(0);
  imageMode(CENTER);
  rectMode(CENTER);
  colorMode(HSB, width, 100, 100);
  textAlign(CENTER);
  size(750, 800, P2D); //Working: I keep changing this to 600 so it fits on my screen. Change it back to 800 if I forget to.
  //Keep getting ArrayIndexOutOfBoundsException: coordinate out of bounds! for the image(white) under songs tab.
  strokeWeight(3);
  s1 = new Startscreen();
  ion = new Select();
  for (int i = 0; i < m.length; i++) {
    m[i] = new Music();
  }
  gui = new Guitar();
  songs = new Songs();
  wild = new Animals();
  koala = false;
  shark = false;
  ant = false;
  pick = loadImage("fender_pick.png");
  //  pick.resize(40, 40); //see below at image(pick.
  tongue = loadImage("flame.png");
}
void draw() {
  println("start: " + start + "\nselect: " + select + "\nguit: " + guit + "\nsing: " + sing + "\npause: " + pause + "\nrun: "  + run + "\n\n\n");
  //println("x: " + mouseX + "\nY: " + mouseY);
  //  if (numClicks >=0) { //Working: To do: will probably end up deleting all references to numClicks, because we are not using them.
  //    image(pick, pmouseX, pmouseY); //this was to get a guitar pick to follow around the mouse, but it ended up running at odd times and over any background, so probably will scrap that.
  //  }
  //next time I'll try loading it for each screen.

  if (start == true) {
    s1.display();
    //music notes start screen timer
    current = millis();
    change = current - old;
    for (int i = 0; i < index; i++) { //Caitie: To do: if this is not working, should we delete all references to the music class (under start_screen_class)?
      // I don't think we're using this, because it's not running.
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
  else if (select == true) { //Character selection screen. Like album covers
    ion.display();
    ion.mouseOver(); //should enlarge when mouse over and make character boolean true when click on.
  }
  else if (guit == true && !select) { //guitar selection screen.
    if (keyPressed) {
      if (key == 'g') {
        gui.extra(); //these are "secret" guitars. Same songs for them, though.
      }
      else {
        gui.display(); //even if press a different key, these normal 'tars will still show
      }
    }
    else {
      gui.display(); //default guitars display
    }
  }
  else if (sing == true) { //song selection class. 
    //Issue: this is the one with the record pictures that isn't updating correctly with the mouse location.
    songs.display();
    songs.mouseOver();
  }
  else if (run == true) { //will replace with pause class from game_play_test when combine them. Both codes should be functional, though, before we do that.
    wild.load();
    wild.play(); //these are the characters.
  }
  if (mousePressed) {
    oldClicks= true;
  }
}
void mouseReleased() {
  oldClicks= false;
}


void keyPressed() {
  if (run == true) { //This matters more for game_play_test. Don't pay any mind to it here.
    if (key == ' ') {
      pause=!pause;
    }
    if (key == 'h') { 
      image(tongue, 220, height);
    }
    if (key == 'j') {
      image(tongue, 370, height);
    }
    if (key == 'k') {
      image(tongue, 520, height);
    }
    if (key == 'l') {
      image(tongue, 670, height);
    }
  }
}
void mousePressed() {//Working: To do: Issues: this does not work. The screens freeze up or do not change to display other ones.
  //To do: someone check to make sure the mouse locations make sense.
  //  numClicks += 1; //not like this matters.
  if (select == false && start == true && oldClicks == false) { //get out of start screen, enter character selection
    if (mouseX <= 290 && mouseX>= 70 && mouseY <= 620 && mouseY >= 460) {
      //      numClicks = 0; //try this for other booleans, but keep two in the if(). can just get rid of numClicks. go through code again.
      select = true;
      start = false;
    }
  }
  else if (select == true && guit == false && oldClicks == false) { //leave character selection, access guitar selection.
    if (mouseY<= height/2+200 && mouseY>= height/2-200) {
      if (mouseX>=30 && mouseX<=230) {
        //        as.resize(250, 250); //gives me coordinate out of bounds. let's try another way.
        //        image(as, 130, height/2, 250, 250);
        //        shark = true;
        guit = true;
        //          numClicks = 0;
        select = false;
      }

      if (mouseX>=width/2-100 && mouseX<=width/2+100) {
        //        image(ak, width/2, height/2, 250, 250);
        //        koala = true;
        guit = true;
        //          numClicks = 0;
        select = false;
      }

      if (mouseX>=width-230 && mouseX<=width-30) {
        //        image(aa, width-130, height/2, 250, 250);

        //        ant = true;
        guit = true;
        //          numClicks = 0;
        select = false;
      }
    }
  }
  else if (guit == true && sing == false && oldClicks == false) {//exit guitar selection, progress to song selection
    if (mouseY<= height/2+200 && mouseY>= height/2-200) {
      if (mouseX>=30 && mouseX<=230) {
        //          image(flame, 130, height/2+50);
        if (mousePressed) {
          aco = true;
          sing = true;
          //            numClicks = 0;
          guit = false;
        }
      }
      if (mouseX>=width/2-100 && mouseX<=width/2+100) {
        //          image(flame, width/2, height/2+30);
        if (mousePressed) {
          ele = true;
          sing = true;
          //            numClicks = 0;
          guit = false;
        }
      }
      if (mouseX>=width-230 && mouseX<=width-30) {
        //          image(flame, width-130, height/2+25);
        if (mousePressed) {
          uke = true;
          sing = true;
          //            numClicks = 0;
          guit = false;
        }
      }
    }
  }
  else if (sing == true && run == false && oldClicks == false) {//abandon song selection, advance to game play. Note: the actual game code will not run here.
    //The game code is being written within the game_play_test folder, but should be controlled by the same booleans.
    if (mouseY<=height-50 && mouseY>=50) {
      if (mouseX>width/2) {
        //        image(blue, width*3/4, height/2, 400, 400);
        song2 = true;
        run = true;
        //          numClicks = 0;
        sing = false;
      }
    }
    if (mouseX<width/2) {
      //        image(white, width/4, height/2, 403, 400);
      //        white.resize(603, 600);
      song1 = true;
      run = true;
      //          numClicks = 0;
      sing = false;
    }
  }
}

