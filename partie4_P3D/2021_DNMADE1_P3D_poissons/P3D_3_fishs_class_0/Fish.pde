// the Fish object

class Fish {
      PImage[] img;
      int l;                // largeur de l'image
      int h;                // hauteur de l'image
      
      float imgIndex = 0;   // rem : float à convertir avant affichage      
      int x;                // position en x du sprite
      int y;                // position en y du sprite
      int z;                // position reference en z du sprite
      int nb;               // nombre de poissons
      
      boolean debug = true;
  
   // constructeur
   Fish(String pngfile, int nb_images) {
       img = new PImage[nb_images];              // tableau d'images
       for(int i = 0 ; i < img.length ; i++){    
           img[i]= loadImage(pngfile+i+".png");   // chargement des images
       }
       l = img[0].width;                          // largeur image
       h = img[0].height;                         // hauteur image
       
       x = 100;   // position fixe x,y,z pour tester
       y = -200;
       z = -500;
       //x = int(random(-100,100));               // un peu de random

   }
 
  // étape 1 : affichage image
  void display() {
        
          beginShape();
          texture(img[0]);
          tint(255,0,0);
          vertex(  x,   y,   z, 0, 0);
          vertex(l+x,   y,   z, l, 0);
          vertex(l+x, h+y,   z, l, h);
          vertex(  x, h+y,   z, 0, h);
          endShape(CLOSE);  
      
  }   
  
}
