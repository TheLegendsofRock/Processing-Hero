import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

//Go to sketch then import library and mp3(minim)

Minim minim;
Audioplayer player;

void setup() {
  minim= new Minim (whatever.mp3);
  player= loadFile("whatever.mp3");
}
  
  void draw() {
    
    player.loop();
  }
