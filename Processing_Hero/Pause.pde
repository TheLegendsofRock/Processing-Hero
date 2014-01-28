class Pause { //whenever spacebar pressed when run == true.
  //instructions screen
  Pause() {
  }
  void display() {
    if (pause == true) { //instructions screen
      //      rect(355, 90, 75, 50,width,height);
      fill(13, 85, 95, 75);
      rect(width/2, height/2, width, height);
      fill(255, 95);
      textSize(50);
      text("H     J     K     L", width/2, height-20);
      fill(23, 85, 95, 50);
      stroke(33, 85, 95, 50);
      rect(width/2, height/2, width*2/3, height/8, 10);
      textSize(30);
      fill(255, 200);
      text("SPACE\nrock on/rock off", width/2, height/2-13);
      text("press the keys as the falling circles reach 'em", width/2, 100);
    }
    else { //game play
      background(0);
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
    }
  }
}

