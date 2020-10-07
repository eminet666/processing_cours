//tuto : https://www.youtube.com/watch?v=qB3SA43vKYc&list=PLRqwX-V7Uu6YB9x6f23CBftiyx0u_5sO9&index=6

// définition des variables
PImage img;

// fonction setup() : instructions exécutées une seule fois
void setup() {
  background(255,255,255);     
  size(512, 438);
  img = loadImage("fish.png"); 
}    

// fonction draw() : instructions exécutées en boucle
void draw() {
  loadPixels();                         // charge les pixels de l'écran
    
  img.loadPixels();                     // charge les pixels de l'image
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width-1; x++) { // width-1 pour eviter erreur
      int loc1 = x   + y*width;
      int loc2 = (x+1) + y*width;
  
      //float b1 = img.pixels[loc1];
      //float b2 = img.pixels[loc2]; 
     
      float b1 = brightness(img.pixels[loc1]);
      float b2 = brightness(img.pixels[loc2]);       
      
      //float diff = abs(b1-b2);
      //pixels[loc1]= color(diff);
      
      float diff = abs(b1-b2);
      if (diff > 20) {
        pixels[loc1] = color(0);  
      }
      else {
        pixels[loc1] = color(255);
      }
      
  
    }
  }
  updatePixels();                    // affiche les pixels
}
