class Gameover {
  PImage gameover;
  Gameover() {
  }
  void display() {
    gameover= loadImage("Game_Over_processing_hero.png");
    image(gameover, width/2, height/2, 100, 100);
  }
}

