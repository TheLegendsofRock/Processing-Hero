class Animals {
  PImage ad, am, ab, rad, ram, rah, rab;
  PImage sd, sb, st, sf, sh, rsd, rsf, rsh, rst;
  PImage kb, kh, kd, kf, rkb, rkh, rkd, rkf;
  Animals() {
    //a is for ant, d is for head, b is for bottom (ant) or body (all others), 
    //m is for middle (ant), h is for strumming hand, f is for fin (shark), t is for tail (shark), r is for rockin.
  }
  void display() {
    if (ant == true) {
      ad = loadImage("ant_head.png");
      am = loadImage("ant_m.png");
      ab = loadImage("ant_b.png");
      rad = loadImage("rant_head.png");
      ram = loadImage("rant_m.png");
      rah = loadImage("rant_hand.png");
      rab = loadImage("rant_b.png");
      
    }
    if (shark == true) {
      sd = loadImage("shark_head.png");
      sb = loadImage("shark_b.png");
      st = loadImage("shark_tail.png");
      sf = loadImage("shark_fin.png");
      sh = loadImage("shark_hand.png");
      rsd = loadImage("rshark_b.ng");
      rsf = loadImage("rshark_fin.png");
      rsh = loadImage("rshark_hand.png");
      rst = loadImage("rshark_tail.png");
    }
    if (koala == true) {
      kb = loadImage("koala_body.png");
      kh = loadImage("koala_head.png");
      kd = loadImage("koala_hand.png");
      kf = loadImage("Koala_r.png");
      rkb = loadImage("rk_body.png");
      rkh = loadImage("rk_hand.png");
      rkd = loadImage("rk_head.png");
      rkf = loadImage("rk_r.png");
    }
  }
  void play() {
    if (ant == true) {
    }
    if (shark == true) {
    }
    if (koala == true) {
    }
  }
  void winning() {
    if (ant == true) {
    }
    if (shark == true) {
    }
    if (koala == true) {
    }
  }
}

