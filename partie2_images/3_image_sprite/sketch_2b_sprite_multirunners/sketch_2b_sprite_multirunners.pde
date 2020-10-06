// source : https://shiffman.net/processing.org/2011/12/26/night-6-image-sequence-object-with-variable-speed/

// An array of "Animation" objects
Animation[] animations = new Animation[6];

void setup() {
    size(640,360);
    frameRate(30);
    
    // Load the image sequence
    PImage[] seq = new PImage[40];
    for (int i = 0; i < seq.length; i++) {
        seq[i] = loadImage("img_"+nf(i+1,2)+".png");  // fonction nf() : https://processing.org/reference/nf_.html
    }
    
    // Make all the objects
    float y = 0;
    for (int i = 0; i < animations.length; i ++ ) {
        animations[i] = new Animation(seq,0,y);       // Each object gets an image array and an x,y location
        y += seq[0].height;
    }
}

void draw() {

    background(255);
    
    // Display, cycle, and move all the animation objects
    for (int i = 0; i < animations.length; i ++ ) {
      animations[i].display();
      animations[i].next();
      animations[i].move();
    }
}
