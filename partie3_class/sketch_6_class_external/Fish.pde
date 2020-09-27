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
