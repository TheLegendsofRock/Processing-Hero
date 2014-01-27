/*Working: So as of right now, it takes a while to load, and it's uber slow. 
The clicking may not work, but I'll fix that.
Because I was probably the one that messed it up.
I still don't know what the game over class looks like, plus I don't think it relies on the score variable like we wanted it to.
*/

class Startscreen {
  PImage guitar, play, sign;

  Startscreen () {
    guitar = loadImage("guitar.png");
    sign = loadImage("signx.png");
    play = loadImage("play.png");
  }
  void display () {
    strokeWeight(3);
    colorMode(HSB, width, 100, 100);
    for (int i = 0; i < m.length; i++) {
      m[i] = new Music();
    }
    imageMode(CENTER);
    image(guitar, width/2, height/1.5, 600, 600);
    image(sign, width/2, height/4, 750, 350);
    image(play, width/2.75, height/1.47, 150, 100);
  }
  void go() {
    //makes background rainbow
    for (int x=0; x< width; x+=20) {
      fill(dist(mouseX, 100, x, 0), 100, 100);
      rect(x, 0, width/8, height);
    }
    if (run == true) {
      background(255, 0, 0);
      fill(0, 0, 99);
      text("good job", width/1.5, height/5);
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
    if (mousePressed) {
      //if you click "i wanna rock" the game will start
      if (mouseX <= width/2+200 && mouseX>= width/2-200 && mouseY <= height/2+200 && mouseY >= height/2-200) {
        run = true;
      }
    }
  }
}

