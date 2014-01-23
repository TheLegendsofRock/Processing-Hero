class Pause { //whenever spacebar pressed when run == true.
  //instructions screen
  Pause() {
  }
  void display() {
    if (pause == true) { //instructions screen
      background(355, 90, 75, 50);
    }
    else { //game play
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
