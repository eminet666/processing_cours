PImage img;

void setup() {
  size(800,800);
  // Images must be in the "data" directory to load correctly
  img = loadImage("image.jpg");
  // or URL link
  img = loadImage("https://a0.muscache.com/im/pictures/8db542d5-e318-4196-91fa-4eaa0cf3a20c.jpg?aki_policy=large");
}

void draw() {
  image(img, 0, 0);
}
