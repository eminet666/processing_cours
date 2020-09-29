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
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;
      
      // traitement 1
      
      // recupere les 3 composantes de couleurs du pixel
      //float r = red(img.pixels[loc]);        
      //float g = green(img.pixels[loc]);
      //float b = blue(img.pixels[loc]);
      
      // recupere les 3 composantes de couleurs du pixel _ plus rapide
      float r = img.pixels[loc] >> 16 & 0xFF;
      float g = img.pixels[loc] >>  8 & 0xFF;
      float b = img.pixels[loc]       & 0xFF;
      
      // modification des valeurs du pixel
      if(r == 255 && g == 255 & b == 255){
          r = 0;
          g = 0;        
      }
      else {
          b = map(mouseX, 0, width, 0, 255);
          g = map(mouseY, 0, height, 0, 255);
      }
      
      // affecte les valeur de couleur au pixel du tableau
      pixels[loc] =  color(r,g,b);
      
      /* 
      //traitement 2 : brighness
      float b = brightness(img.pixels[loc]);
      if(b > mouseX) {
          pixels[loc] = color(255);
      }
      else {
          pixels[loc] = color(0);
      }
      */
      
    }
  }
  updatePixels();                    // affiche les pixels
}
