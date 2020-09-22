int x = 280;
int y = 210;
int L = 1;
int decalageY = 0;
color couleur;

PImage photo;
photo = loadImage("P1010584.JPG");
image(photo, 0, 0);
image(photo, x+10, 0);
  
for(int i=L/2; i <=y-L/2; i=i+L) {  
    couleur = photo.get(x/2,i);
    float R = red(couleur);
    float V = green(couleur);
    float B = blue(couleur);

    noStroke(); 
    fill(R,V,B);
    rect(0,decalageY,x,L);
    
    decalageY = decalageY + L;
    println(i);
}
