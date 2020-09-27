Fish fish1, fish2;

int randomY= 0;

void setup() {
  size(600,600);
  // Images must be in the "data" directory to load correctly
  fish1 = new Fish("fish.png", width, 115, 86);  
  fish2 = new Fish("fish.png", width/2);  
}

void draw() {
  background(0,128,255);
  //image(img, posX, height/2 + randomY, 115, 85);
  fish1.display();
  fish1.move(1);  
  fish2.display();
  fish2.move(2);
}

/* -----------------------------------------------*/
class Fish { 
  PImage img;
  String file;
  float posX;
  int largeur;
  int hauteur;
  color couleur = color(255, 0, 0);

  // The Constructor is defined with arguments.
  Fish(String f, float x, int w, int h) { 
    img = loadImage(f);
    posX = x;
    largeur = w;
    hauteur = h;
    couleur = color(random(255), random(255), random(255));
    println(couleur);
  }
  Fish(String f, float x) { 
    img = loadImage(f);
    posX = x;
    largeur = 200;
    hauteur = 200;
    couleur = color(random(255), random(255), random(255));
    println(couleur);
  }

  void display() {
    this.colorchange(couleur);
    image(img, posX, height/2, largeur, hauteur);
  }

  void move(int speed) {
    posX= posX - speed;
    if(posX == -150) posX = width;
    randomY = int(random(2)); 
  }
   
  void colorchange(color c) {
    noTint();
    tint(c);
  }
  
}
