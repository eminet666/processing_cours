PImage img1, img2;
String filtre;
int red, green, blue = 0;

void setup() {
  size(400,400);
  background(224);
  // Images must be in the "data" directory to load correctly
  img1 = loadImage("arbre_1.gif");
  img2 = loadImage("arbre_1.gif");
 
}

void draw() {
    noTint();
    image(img1, 0, 0, 100, 300);
    
    green = int(map(mouseX, 0, width, 0, 255));
    red = int(map(mouseY, 0, height, 0, 255));
    tint(red, green, blue, 128);
    
    image(img2, 200, 0, 100, 300);
}

// https://processing.org/reference/tint_.html
