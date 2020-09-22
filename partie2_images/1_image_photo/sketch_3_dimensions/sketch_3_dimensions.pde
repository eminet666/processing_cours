PImage img;

void setup() {
  size(600,600);
  // taille de l'image : 561x360
  img = loadImage("image.jpg");
}

void draw() {
  image(img, 0, 0, 561, 360);
  image(img, 0, 360, 100, 100);
}
