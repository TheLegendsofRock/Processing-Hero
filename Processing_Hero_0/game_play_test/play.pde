class Play {
  Play() {
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
      player = minim.loadFile("OneRepublic - Counting Stars.mp3", 2048);
      //     stars.play();
      //      ellipse(
    }
    //  }
    //  void electric() {
    if (song1 == true) {//i knew you were trouble All: do we have the goat version? cuz id love that. id also love it if this worked.
      //    trouble.play();
    }
    if (song2 == true) {//johnny b. goode
      //    goode.play();
      player = minim.loadFile("Chuck Berry - Johnny B. Goode.mp3", 2048);
    }
    //  }
    //  void ukulele() {
    if (song1 == true) { //hey, soul sister
      //  soul.play();
    }
    if (song2 == true) { //count on me
      player = minim.loadFile("Bruno Mars - Count On Me.mp3", 2048);
      //  count.play();
    }

    if (pause == true) {
      player.pause();
      //      y++;
    } 
    //    else {
    //      player.play();
    //    }
  }
}

