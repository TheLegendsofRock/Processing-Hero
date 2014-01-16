class Animals {
  PImage ad, am, ab, rad, ram, rah, rab;
  PImage sd, sb, st, sf, sh, rsd, rsf, rsh, rst;
  PImage kb, kh, kd, kf, rkb, rkh, rkd, rkf;
  Animals() {
    /*a is for ant, d is for head, b is for bottom (ant) or body (all others), 
     m is for middle (ant), h is for strumming hand, f is for fin (shark),
     t is for tail (shark), r is for rockin.*/
  }
  void load() {
    imageMode(CENTER);
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
      sd.resize(0,160);
      sb.resize(0,285);
      st.resize(0,235);
      sf.resize(0,125);
      sh.resize(0,65);
      rsd = loadImage("rshark_b.ng");
      rsf = loadImage("rshark_fin.png");
      rsh = loadImage("rshark_hand.png");
      rst = loadImage("rshark_tail.png");
      rsd.resize(0,315);
      rsf.resize(0,109);
      rsh.resize(0,80);
      rst.resize(0,158);
    }
    if (koala == true) {
      kb = loadImage("koala_body.png");
      kh = loadImage("koala_head.png");
      kd = loadImage("koala_hand.png");
      kf = loadImage("Koala_r.png");
      kb.resize(0,397);
      kd.resize(0,145);
      kh.resize(0,66);
      kf.resize(0,150);
      rkb = loadImage("rk_body.png");
      rkh = loadImage("rk_hand.png");
      rkd = loadImage("rk_head.png");
      rkf = loadImage("rk_r.png");
      rkb.resize(0,607);
      rkh.resize(0,102);
      rkd.resize(0,291);
      rkf.resize(0, 227);
    }
  }
  void play() { //for guitar G. will make rotate/ shake randomly.
    if (ant == true) {
      //  scale(1/2);
      image(ab, width/3-20, height/2+75);
      //G
      image(ad, width/3+90, height/2 - 220);
      image(am, width/3, height/2 - 60);
    }
    if (shark == true) {
      image(sd, width/3, height/2);
      image(sb, width/3, height/2);
      image(st, width/3, height/2);
      image(sf, width/3, height/2);
      image(sh, width/3, height/2);
    }
    if (koala == true) {
      image(kb, width/3, height/2);
      image(kh, width/3, height/2);
      image(kd, width/3, height/2);
      image(kf, width/3, height/2);
    }
  }
  void winning() {
    if (ant == true) {
      image(rab, width/3, height/2+75);
      image(ram, width/3+55, height/2+55);
      image(rad, width/3-50, height/2 - 175);
      image(rah, width/3+160, height/2+30);
    }
    if (shark == true) {
      image(rsd, width/3, height/2);
      image(rsf, width/3, height/2);
      image(rsh, width/3, height/2);
      image(rst, width/3, height/2);
    }
    if (koala == true) {
      image(rkb, width/3, height/2);
      image(rkh, width/3, height/2);
      image(rkd, width/3, height/2);
      image(rkf, width/3, height/2);
    }
  }
}

