// tutp vidéo : https://www.youtube.com/watch?v=DPFJROWdkQ8&list=PLRqwX-V7Uu6YB9x6f23CBftiyx0u_5sO9&index=3

PImage[] img = new PImage[4];
int x;
int nb = 0;
int vitesse = 4;

void setup() {
  size(300,300);
  
  for(int i = 0 ; i < img.length ; i++){
     img[i]= loadImage("fish_"+i+".png");   
  }
  x = -img[0].width;
  
}

void draw() {
    background(0,128,255);
    image(img[nb], x, 0);
    delay(100);
    
    // défilement des images
    if(nb == img.length-1){ nb = 0; }
    else { nb++; }
    
    // déplacement dans la scène
    if(x > width){ x = -img[0].width; }
    else { x += vitesse; }
}
