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

void setup() {
  background(0);
  imageMode(CENTER);
  rectMode(CENTER);
  colorMode(HSB, width, 100, 100);
  textAlign(CENTER);
  size(750, 800, P2D); //Working: I keep changing this to 600 so it fits on my screen. Change it back to 800 if I forget to.
  //Keep getting ArrayIndexOutOfBoundsException: coordinate out of bounds! for the image(white under songs tab. Will this fix it?
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
      else {
        gui.display();
      }
    }
    else {
      gui.display();
    }
  }
  if (sing == true) {
    songs.mouseOver();
    songs.display();
  }
  if (run == true) {
    wild.load();
    wild.play();
  }
}

void keyPressed() {
  if (run == true) {
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
void mousePressed() {
  numClicks += 1;
  if (select == false && start == true) {
    if (mouseX <= width/2 && mouseX>= width/2-(835*3/4)/2 && mouseY <= height/1.5+219/2 && mouseY >= height/1.5-219/2) {
      numClicks = 0; //try this for other booleans, but keep two in the if(). can just get rid of numClicks. go through code again.
      select = true;
      start = false;
    }
  }
  if (select == true && guit == false) {
    if (mouseY<= height/2+200 && mouseY>= height/2-200) {
      if (mouseX>=30 && mouseX<=230) {
        //        as.resize(250, 250); //gives me coordinate out of bounds. let's try another way.
        //        image(as, 130, height/2, 250, 250);
        //guess what. it works. boo to the yahhh.

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
  if (guit == true && sing == false) {
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
  if (sing == true && run == false) {
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

