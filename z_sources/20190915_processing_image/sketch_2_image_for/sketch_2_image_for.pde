PImage img;
int x, y, l, h;

void setup() {
  size(400,400);
  background(224);
  img = loadImage("arbre_1.gif");
  imageMode(CENTER);
  
  for (int i = 0; i < 10; i = i+1) {
    x = int(random(100,300));
    y = 200;
    l = int(random(200,250));
    h = int(random(200,250));
    
    image(img, x, y, l,h);  
  }
  
}

void draw() {
  
}
// https://processing.org/reference/imageMode_.html
