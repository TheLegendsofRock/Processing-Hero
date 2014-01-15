int g=50;
boolean shark, ant, koala;
void setup() {
  size(750, 700); //Working: might change to 800 later, that just doesn't fit right on my computer
}
void draw() {
  colorMode(HSB, 360, 100, 100, 100);
  for (int i = 0; i < 4; i++) {
    noStroke();
    int c = 50*i; // 100 and +100, 50 and 0,
    fill(c+15, 100, 100);
    ellipse(220+i*105, height-35, 105, 90);
    fill(c, 100, 100);
    ellipse(220+i*105, height-35, 85, 70);
  }
  noFill();
  stroke(0);
  strokeWeight(2);
  rectMode(CENTER);
  rect(width/2, height/2, width/2, height);
//  quad(165, height, width/3, height/2-2*g, width*2/3, height/2-2*g, width-165, height);
  //  triangle(-500, width/2, width/3-g, height,
  
  //for (int l =0; l<=350; l+=175/2) {
  //  line(
}
/*Music Ideas: in four chords
G D Em C or C G Am F
Superman by Five for Fighting
You're Beautiful by James Blunt
I'm Yours by Jason Mraz
Where is the Love by Black Eyed Peas
She Will be Loved by Maroon Five
Where'd You Go by Fort Minor
Happy Ending by Mika
Under the Bridge by Red Hot Chili Peppers
Man in the Mirror by Michael Jackson
Take on Me by a-ha
Whatever You Like by T.I.
Apologize by OneRepublic
Aicha by Outlandish
Africa by Toto
Save Tonight by Eagle Eye Cherry
If I Were a Boy by Beyonce
Soul Sister
Can You Feel the Love Tonight
With or Without You
Pictures of You, Pictures of Me
You're Gonna Go Far, Kid by The Offspring (CLEAN VERSION)
Love the Way You Lie
Kids by MGMT
What It's Like by Everlast (acoustic song)

all from http: //www.youtube. com/watch?v=DEkPC-6Ni8Y
http://www.youtube.com/watch?v=oOlDewpCfZQ

 STRONGER CONTENDERS
 a Beatles song for acouistic. Let It Be has 4 chords.
 If I Lose Myself by OneRepublic
 I Will Wait by Mumford & Sons or other song
 Millionaires by The Script
 Hotel California by The Eagles, I think
 Sweet Home Alabama
 Dream On
 More Than a Feeling
 Fallen by Imagine Dragons
 Let Her Go (has 5 chords I think)
 Chasing Cars, Demons, It's Time may be too repetative/ simple.
 
 HOW THIS WILL WORK:
 Each key plays a chord. Need recordings of chords to play as sudio.
 
 Bohemian Rhapsody during character selection
*/

