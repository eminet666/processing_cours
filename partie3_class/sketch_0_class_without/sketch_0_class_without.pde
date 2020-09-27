PImage img;
int posX = width;
int randomY= 0;

void setup() {
  size(600,600);
  // Images must be in the "data" directory to load correctly
  img = loadImage("fish.png");
}

void draw() {
  background(0,128,255);
  image(img, posX, height/2 + randomY, 115, 85);
  posX--;
  if(posX == -150) posX = width;
  randomY = int(random(2));
}
