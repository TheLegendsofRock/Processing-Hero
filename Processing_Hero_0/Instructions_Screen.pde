class Instructions {
  //THIS IS WHERE YOU DECLARE VARIABLES OF THE CLASS
  Instructions() {
    //THIS IS WHERE YOU ASSIGN VALUES TO VARIABLES OF THE CLASS
  }
  void display() {
    text("INSTRUCTIONS", width/2, 10);
    textAlign(CENTER);
    fill(0);
    text("Use the keys to play the notes,\nH is the red key\n J is the orange key\n K is the yellow key\n L is the green key\n You need to press the letters as the notes pass over the key", width/2, height/2);
  }
  void play() {
    triangle(10, 5, 10, 25, 15, 15);
    if (mousePressed  && mouseX>10 && mouseX< 25 && mouseY<15 && mouseX>5) {
      background (200, 200, 200);
      text("PLAY GAME", width/2, height/2);
    }
  }
}

