int x = 280;
int y = 210;
int L = 25;
PImage photo;

void setup() {

  photo = loadImage("P1010584.JPG");
  
  // l = largeur image, h = hauteur image
  size(280, 210);
  image(photo, 0, 0);
}

void draw() {
  //et c'est là que get() entre en action
  color couleur = photo.get(mouseX,mouseY);
  float R = red(couleur);
  float V = green(couleur);
  float B = blue(couleur);

  //si vous utilisez int, vous allez avoir une erreur, car la couleur donnée sera décimale
  //créons un petit tableau, histoire de faire ça proprement
  float[] couleur_image = new float[3]; 
  couleur_image[0] = R;
  couleur_image[1] = V;
  couleur_image[2] = B;

  // Bright red
  noStroke(); 
  fill(R,V,B);
  ellipse(mouseX-L/2,mouseY-L/2,L,L);
}
