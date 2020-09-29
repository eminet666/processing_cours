// définition des variables
PImage img;

// fonction setup() : instructions exécutées une seule fois
void setup() {
  size(200, 200);
  img = loadImage("photo.jpg");               
}    

// fonction draw() : instructions exécutées en boucle
void draw() {
  background(255,255,255); 
  image(img, 0, 0);

  PImage copy = get();    
  image(copy, 50, 50);     
    
  //color c = get(mouseX, mouseY);
  //fill(c);
  //noStroke();
  //ellipse(mouseX, mouseY, 50, 50);
}
