//Working: need to move all the silly willigan picturas into data and i really better be able to find them or else im gonna go even crazier. what's a midterm
class Animals {
  int angle = 0; //Working movement
  PImage ad, am, ab, rad, ram, rah, rab;
  PImage sd, sb, st, sf, sh, rsd, rsf, rsh, rst;
  PImage kb, kh, kd, kf, rkb, rkh, rkd, rkf;
  Animals() {
    /*a is for ant, d is for head, b is for bottom (ant) or body (all others), 
     m is for middle (ant), h is for strumming hand, f is for fin (shark),
     t is for tail (shark), r is for rockin.*/
    //Working: still need to add better movement
  }
  void load(Guitar guitar) {
    if (ant == true) {
      ad = loadImage("ant_head.png");
      am = loadImage("ant_m.png");
      ab = loadImage("ant_b.png");
      ab.resize(0, 345);
      ad.resize(0, 232);
      am.resize(0, 165);
      rad = loadImage("rant_head.png");
      ram = loadImage("rant_m.png");
      rah = loadImage("rant_hand.png");
      rab = loadImage("rant_b.png");
      rab.resize(0, 435);
      rad.resize(0, 299);
      rah.resize(0, 90);
      ram.resize(0, 158);
    }
    if (shark == true) {
      sd = loadImage("shark_head.png");
      sb = loadImage("shark_b.png");
      st = loadImage("shark_tail.png");
      sf = loadImage("shark_fin.png");
      sh = loadImage("shark_hand.png");
      sd.resize(0, 240);
      sb.resize(0, 428);
      st.resize(0, 353);
      sf.resize(0, 188);
      sh.resize(0, 98);
      rsd = loadImage("rshark_b.png");
      rsf = loadImage("rshark_fin.png");
      rsh = loadImage("rshark_hand.png");
      rst = loadImage("rshark_tail.png");
      rsd.resize(0, 473);
      rsf.resize(0, 164);
      rsh.resize(0, 120);
      rst.resize(0, 237);
    }
    if (koala == true) {
      kb = loadImage("koala_body.png");
      kh = loadImage("koala_head.png");
      kd = loadImage("koala_hand.png");
      kf = loadImage("Koala_r.png");
      kb.resize(0, 397);
      kd.resize(0, 145);
      kh.resize(0, 66);
      kf.resize(0, 150);
      rkb = loadImage("rk_body.png");
      rkh = loadImage("rk_hand.png");
      rkd = loadImage("rk_head.png");
      rkf = loadImage("rk_r.png");
      rkb.resize(0, 607);
      rkh.resize(0, 102);
      rkd.resize(0, 291);
      rkf.resize(0, 227);
    }
    //ADD TO OTHER
    if (aco == true) {
      g = loadImage("acoustic_guitar.png"); //ADD TO OTHER
      g.resize(180, 461);
    }
    if (ele == true) {
      g = loadImage("elect_guitar.png"); //ADD TO OTHER (2 LINES)
      g.resize(210, 615);
    }
    if (uke == true) {
      g = loadImage("brown_uke.png");
      g.resize(110, 346); //ADD TO OTHER
    }
    if (raco == true) {
      g = loadImage("brown_guit.png");
      g.resize(210, 630); //ADD TO OTHER
    }
    if (rele == true) {
      g = loadImage("elect_axe_guitar.png");
      g.resize(250, 620); //ADD TO OTHER
    }
    if(ruke == true){
          g = loadImage("black_uke.png"); //ADD TO OTHER
          g.resize(120, 350);
    }
    //ADD TO OTHER
  }
  void play(Guitar guitar) {
    //guitar neck: ADD TO OTHER
    stroke(0);
    strokeWeight(2);
    rectMode(CENTER);
    fill(255, 50);
    rect(width/2, height/2, width/2, height);
    //ADD TO OTHER

    imageMode(CENTER); //for guitar G. will make rotate/ shake randomly.
    if (ant == true) {
      image(ab, width/3-20, height/2+75);
      //Working: make them move some other time (pushMatrix, translate, rotate, popMatrix)
      pushMatrix();
      translate(width/3+50, height/2-30);
      rotate(QUARTER_PI);
      image(g, 0, 0);
      popMatrix(); //Working:check
      pushMatrix();
      translate( width/3+90, height/2 - 220);
      rotate(radians(angle));
      image(ad, 0, 0);
      popMatrix(); //okay, it's really creepy right now, but I'm just happy it's moving. Whoopie!
      image(am, width/3, height/2 - 60);
    }
    if (shark == true) {
      image(sb, width/3, height/2-100);
      image(st, width/3, height/2+125);
      pushMatrix(); //ADD TO OTHER
      translate(width/3, height/2);
      rotate(QUARTER_PI);
      image(g, 0, 0);
      popMatrix(); //Working
      image(sf, width/3+75, height/2-125);
      image(sd, width/3+25, height/2-250);
      image(sh, width/3+250, height/2-175);
    }
    if (koala == true) {
      image(kb, width/3-20, height/2);
      pushMatrix(); //ADD TO OTHER
      translate(width/3, height/2);
      rotate(QUARTER_PI);
      image(g, 0, 0);
      popMatrix(); //Working
      image(kh, width/3, height/2);
      image(kd, width/3, height/2);
      image(kf, width/3, height/2);
    }
  }
  void winning(Guitar guitar) {
    //guitar neck: ADD TO OTHER
    stroke(0);
    strokeWeight(2);
    rectMode(CENTER);
    fill(255, 50);
    rect(width/2, height/2, width/2, height);
    //ADD TO OTHER

    imageMode(CENTER);
    if (ant == true) {
      image(rab, width/3, height/2+75);
      image(ram, width/3+55, height/2+55);
      pushMatrix(); //ADD TO OTHER
      translate(width/3+100, height/2);
      rotate(QUARTER_PI-50);
      image(g, 0, 0);
      popMatrix(); //Working
      image(rad, width/3-50, height/2 - 175);
      image(rah, width/3+160, height/2+30);
    }
    if (shark == true) {
      image(rsd, width/3, height/2);
      pushMatrix(); //ADD TO OTHER
      translate(width/3, height/2);
      rotate(QUARTER_PI);
      image(g, 0, 0);
      popMatrix(); //Working
      image(rsf, width/3, height/2);
      image(rsh, width/3, height/2);
      image(rst, width/3, height/2);
    }
    if (koala == true) {
      image(rkb, width/3, height/2);
      pushMatrix(); //ADD TO OTHER
      translate(width/3, height/2);
      rotate(QUARTER_PI);
      image(g, 0, 0);
      popMatrix(); //Working
      image(rkh, width/3, height/2);
      image(rkd, width/3, height/2);
      image(rkf, width/3, height/2);
    }
  }
}

