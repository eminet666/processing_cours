// source : https://shiffman.net/processing.org/2011/12/26/night-6-image-sequence-object-with-variable-speed/

// An array of "Animation" objects
Animation anim;

void setup() {
  size(640,360);
  frameRate(30);
  
  // Load the image sequence
  PImage[] seq = new PImage[40];
  for (int i = 0; i < seq.length; i++) {
    seq[i] = loadImage("img_"+nf(i+1,2)+".png");  // fonction nf() : https://processing.org/reference/nf_.html
  }
  
  // create animation object
  anim = new Animation(seq,0,0);
}

void draw() {
    background(255);  
    anim.display();
    anim.next();
    anim.move();
}
