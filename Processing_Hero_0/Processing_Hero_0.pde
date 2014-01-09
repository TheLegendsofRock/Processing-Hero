int g=50;
void setup() {
  size(750, 800);
}
void draw() {
  colorMode(HSB,360,100,100,100);
  for (int i = 0; i < 4; i++) {
    noStroke();
    int c = 30*i;
    fill(c+15, 100, 100);
    ellipse(220+i*105, height-35, 105, 90);
    fill(c, 100, 100);
 
    ellipse(220+i*105, height-35, 85, 70);
    
  }
  //  for (int c=0; c<=300; c+=75) {
  //  for (int i=-1 && int c=0; i<=170*3/2 && c<=300; i+=170/2  && c+=75) {
  //    fill(c, 100, 100);
  //    strokeWeight(5);
  //    stroke(c+50, 100, 100);
  //    ellipse(width/3+i, height-35, 170/2, 70);
  //  }
  //  }
  noFill();
  stroke(0);
  strokeWeight(2);
//  quad(width/3-g, height, width/3, height/2-2*g, width*2/3, height/2-2*g, width*2/3+g, height);
quad(165, height, width/3, height/2-2*g, width*2/3, height/2-2*g, width-165, height);
  //  triangle(-500, width/2, width/3-g, height,
  //for (int l =0; l<=350; l+=175/2) {
  //  line(
}
// here's the font http://www.dafont.com/nightmare-hero.font
