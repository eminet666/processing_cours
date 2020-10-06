// tutp vidéo : https://www.youtube.com/watch?v=DPFJROWdkQ8&list=PLRqwX-V7Uu6YB9x6f23CBftiyx0u_5sO9&index=3
Sprite[] anim = new Sprite[6];

void setup() {
  size(600,600);
  frameRate(30);
  
  anim[0] = new Sprite("fish_0_", 4);
  anim[1] = new Sprite("fish_1_", 6); 
  anim[2] = new Sprite("fish_2_", 5);
  anim[3] = new Sprite("fish_3_", 8);
  anim[4] = new Sprite("fish_4_", 4);
  anim[5] = new Sprite("fish_5_", 2);  
  
}

void draw() {
    background(0,128,255);
    
    for(int i = 0; i < anim.length ; i++){
      anim[i].display();
      anim[i].next();
      anim[i].move();
    }
}
