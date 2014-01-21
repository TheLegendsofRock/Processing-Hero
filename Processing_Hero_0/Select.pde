class Select { //select characters
  PImage as, aa, ak; //declare here
  Select() {
    shark = false;
    ant = false;
    koala = false;
  
    aa = loadImage("ant_thriller.png"); //only load once
    aa.resize(200, 200);
    ak = loadImage("koala_ready_to_die.png");
    ak.resize(200, 200);
    as = loadImage("shark_nevermind.png");
    as.resize(200, 200);
  }
  void display() {
    imageMode(CENTER);
    image(aa, width-130,height/2);
    image(as, 130, height/2);
    image(ak, width/2, height/2);
    //display images of shark, ant koala
    if (mouseY>= width/2+200 && mouseY<= width/2-200){
      if(mousePressed){
        if(mouseX>=130 && mouseX<=330){
          ant = true;
        }
        //Working: still need shark and koala.
    }
    //if mouse loc over, increase size
    //if click, set to true
  }
}

