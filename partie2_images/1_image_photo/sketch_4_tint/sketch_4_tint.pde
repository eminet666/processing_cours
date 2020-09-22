PImage img;

void setup() {
  size(600,600);
  // Images must be in the "data" directory to load correctly
  img = loadImage("image.jpg");
}

void draw() {
  tint(255,0,0);
  image(img, 0, 0);
  tint(0,255,255);
  image(img, 0, 361);
}
