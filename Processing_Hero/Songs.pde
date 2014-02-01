//Issues: Working: To do: tons of issues when this does display. The record images do not change size and clicking does not make you leave the music / song selection screen.
class Songs {
  PImage white, blue;
  Songs() {
    white = loadImage("white_record.png");
    white.resize(302, 300);
    blue = loadImage("blue_record.png");
    blue.resize(300, 300);
  }
  void display() { //Emma: another issue. it doesn't enlarge when mouse over. Also, clicking isn't working yet.
    background(0);
    image(white, width/4, height/2);
    image(blue, width*3/4, height/2);
  }
  void mouseOver() { //Issues: the records do not enlarge when mouse over them. 
    //the clicking does not cause advancement to the gameplay/run screens, a symplified version of which is under the Pause tab.
    if (mouseY<=height-50 && mouseY>=50) {
      if (mouseX>width/2) {
        image(blue, width*3/4, height/2, 400, 400);
        //        if (mousePressed) {
        //          song2 = true;
        //          run = true;
        //          //          numClicks = 0;
        //          sing = false;
        //        }
      } 
      if (mouseX<width/2) {
        image(white, width/4, height/2, 403, 400);
        //KRISTIE WORKING: image size, make sure the run works
        //        if (mousePressed) {
        //          song1 = true;
        //          run = true;
        //          //          numClicks = 0;
        //          sing = false;
        //        }
      }
    }
    textSize(25);
    fill(175, width, 100); //Working: Emma: I don't know what's up with the fill. i thought this was cyan, but now it's green.
    if ( aco == true || raco == true) {
      text("Counting Stars\nOneRepublic", width*3/4, height/2);
      //text("othersong", width*3/4, height/2);
      //To do: Sam, I think we're also adding The A Team as a song? Please add it as data and type in the text here so it'll be labelled.
    } 
    else if (ele == true || rele == true) {
      text("I Knew You Were Trouble\nTaylor Swift", width/4, height/2);
      text("Johnny B. Goode\nChuck Berry", width*3/4, height/2);
    } 
    else  //will this cut down on load time? because it's unbearable.
    if (uke == true || ruke == true) {
      text("Hey, Soul Sister\nTrain", width/4, height/2);
      text("Count On Me\nBruno Mars", width*3/4, height/2);
    }
  }
}

