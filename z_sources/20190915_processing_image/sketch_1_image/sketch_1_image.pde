PImage img;

void setup() {
  size(400,400);
  background(224);
  // Images must be in the "data" directory to load correctly
  img = loadImage("arbre_1.gif");
  
  image(img, 0, 0, 100, 300);
  //image(img, 100, 100, 200, 200);
}

void draw() {

}
// https://processing.org/reference/image_.html
