// définition des variables
PImage img;

// fonction setup() : instructions exécutées une seule fois
void setup() {
  background(255,255,255);     
  size(200, 200);
  img = loadImage("photo.jpg"); 
  
  loadPixels(); 
    
  img.loadPixels();                     // charge les pixels de l'image
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;
      
      // recupere les 3 composantes de couleurs du pixel
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      // modification des valeurs du pixel
      r = 0;
      g = 0;
      
      // affecte les valeur de couleur au pixel du tableau
      pixels[loc] =  color(r,g,b);          
    }
  }
  updatePixels();                    // affiche les pixels
  
}    

// fonction draw() : instructions exécutées en boucle
void draw() {
  
}
