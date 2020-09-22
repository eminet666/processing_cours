int x = 280;
int y = 210;
int L = 5;
int decalageX = 0;
color couleur;

// l = 2 fois largeur image + 10 d'écart, h = hauteur de l'image
size(570, 210);

PImage photo;
photo = loadImage("P1010584.JPG");
image(photo, 0, 0);
image(photo, x+10, 0);
  
for(int i=L/2; i <=x-L/2; i=i+L) {  
    couleur = photo.get(i,y/2);
    float R = red(couleur);
    float V = green(couleur);
    float B = blue(couleur);

    noStroke(); 
    fill(R,V,B);
    rect(decalageX,0,L,y);
    
    decalageX = decalageX + L;
    println(i);
}
