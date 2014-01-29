class Play {
  Play() {
    //    player.play(); //doesn't work
  }
  //  void setup(){
  //    player.play();
  //  } //I really hoped that this would work. I just need to get it somewhere where it won't loop, but it'll allow the song to vary and other things to run.
  void playSong() {
    //  }
    //  void  acoustic() {
    if (song1 == true) {//All:guys please decide on a song, i gave two options. just add it in. please
    }
    if (song2 == true) { //counting stars
      //      player = minim.loadFile("OneRepublic - Counting Stars.mp3", 2048); //Either comment this one or the one below (for each boolean)
      stars.play(); //Issue: I don't know which will make it work correctly. With this one, it is taking a long to load. 
      //It started out as a white screen, and now it is black, but no music is playing. This part of the game is not running as of 1/28/14. Sorry.
    }
    //  }
    //  void electric() {
    if (song1 == true) {//i knew you were trouble All: do we have the goat version? cuz id love that. id also love it if this worked.
      //          player = minim.loadFile("Taylor Swift - I Knew You Were Trouble");
      trouble.play();
    }
    if (song2 == true) {//johnny b. goode
      goode.play();
      //      player = minim.loadFile("Chuck Berry - Johnny B. Goode.mp3", 2048);
    }
    //  }
    //  void ukulele() {
    if (song1 == true) { //hey, soul sister
      //      player = minim.loadFile("Train - Hey, Soul Sister");
      soul.play();
    }
    if (song2 == true) { //count on me
      //      player = minim.loadFile("Bruno Mars - Count On Me.mp3", 2048);
      count.play();
    }

    if (pause == true) {
      //      player.pause(); //Working: To do: Uncomment, or add pause() capabilities for each minim.
    } 
    //    else {
    //      player.play();
    //    }
  }
}

