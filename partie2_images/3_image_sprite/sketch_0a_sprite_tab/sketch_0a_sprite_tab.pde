// tutp vidéo : https://www.youtube.com/watch?v=DPFJROWdkQ8&list=PLRqwX-V7Uu6YB9x6f23CBftiyx0u_5sO9&index=3
// PImages[] images= new PImages[10]

PImage[] fish = new PImage[8];
int nb = 0;

void setup() {
  size(300,300);
  imageMode(CENTER);
 
  /*
  fish[0]= loadImage("fish0.png");   
  fish[1]= loadImage("fish1.png"); 
  fish[2]= loadImage("fish2.png");   
  fish[3]= loadImage("fish3.png");   
  fish[4]= loadImage("fish4.png"); 
  fish[5]= loadImage("fish5.png"); 
  fish[6]= loadImage("fish6.png"); 
  fish[7]= loadImage("fish7.png");   
  */
  
  for(int i = 0 ; i < fish.length ; i++){
     fish[i]= loadImage("fish"+i+".png");   
  }
}

void draw() {
    background(0,128,255);
    image(fish[nb], 150, 150);
    delay(100);
    if(nb==7){ nb = 0; }
    else { nb++; }
}
