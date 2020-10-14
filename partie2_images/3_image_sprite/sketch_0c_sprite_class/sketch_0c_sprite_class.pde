// tuto vidéo : https://www.youtube.com/watch?v=DPFJROWdkQ8&list=PLRqwX-V7Uu6YB9x6f23CBftiyx0u_5sO9&index=3
Sprite anim;

void setup() {
  size(300,300);
  frameRate(30);
  anim = new Sprite("fish_", 4);   // paramètre sprite : filename image, nb image
}

void draw() {
    background(0,128,255);
    // étape 0
    //image(anim.img[0], 0,0);  
    
    // étape 1
    anim.display();
    
    // étape 2
    anim.next();
    
    // étape 3
    anim.move();
}
