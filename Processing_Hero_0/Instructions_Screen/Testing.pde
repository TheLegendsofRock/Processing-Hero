Instructions instructions= new Instructions();
void setup(){
  background(255,0,0);
  size(500,500);
  instructions= new Instructions();
}
void draw(){
  instructions.display();
  instructions.play();
}
  
