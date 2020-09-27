Fish fish1;

int randomY= 0;

void setup() {
  size(600,600);
  // Images must be in the "data" directory to load correctly
  fish1 = new Fish("fish.png", width, 115, 86);
}

void draw() {
  background(0,128,255);
  //image(img, posX, height/2 + randomY, 115, 85);
  fish1.display();
  fish1.move();
}

/* -----------------------------------------------*/
class Fish { 
  PImage img;
  String file;
  float posX;
  int largeur;
  int hauteur;
  

  // The Constructor is defined with arguments.
  Fish(String f, float x, int w, int h) { 
    img = loadImage(f);
    posX = x;
    largeur = w;
    hauteur = h;
  }

  void display() {
    image(img, posX, height/2, largeur, hauteur);
  }

  void move() {
    posX--;
    if(posX == -150) posX = width;
    randomY = int(random(2)); 
  }
}
