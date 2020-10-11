// the Fish object

class Fish {
      PImage[] img;
      int l;                // largeur de l'image
      int h;                // hauteur de l'image
      
      float imgIndex = 0;   // rem : float à convertir avant affichage      
      int[] x;              // position en x du sprite
      int[] y;              // position en y du sprite
      int z;                // position reference en z du sprite
      int nb;               // nombre de poissons
      
      int speed;            // vitesse
      boolean debug = true;
  
   // constructeur
   Fish(String pngfile, int nb_images, int nb_poissons) {
       img = new PImage[nb_images];              // tableau d'images
       for(int i = 0 ; i < img.length ; i++){    
           img[i]= loadImage(pngfile+i+".png");   // chargement des images
       }
       nb = nb_poissons;
       x = new int[nb];
       y = new int[nb];
       l = img[0].width;
       h = img[0].height;
       
       
       //x[0] = int(random(-100,100));
       //y[0] = -233;
       for(int i = 0; i < nb; i++) {
         x[i] = int(random(-100,100));
         y[i] = int(random(-400,100)); 
         //println(shiftX[i]+"_"+shiftY[i]);
       }
       z = int(random(-2000,0));

   }
 
  // étape 1 : affichage image
  void display() {
      int intIndex = int(imgIndex);         // we must convert the float index to an int first!
     
      for(int i = 0; i < nb; i++) {     
          beginShape();
          texture(img[intIndex]);
          tint(255,0,0);
          vertex(  x[i],   y[i],   i*10+z, 0, 0);
          vertex(l+x[i],   y[i],   i*10+z, l, 0);
          vertex(l+x[i], h+y[i],   i*10+z, l, h);
          vertex(  x[i], h+y[i],   i*10+z, 0, h);
          endShape(CLOSE); 
      } 
      
  }   
   
  //// étape 2 : défilement des images
     void next() {
        imgIndex++;
        if (imgIndex >= img.length) {     
            imgIndex = 0;        
        }
  
     }
  
  //// étape 3 : déplacement
  //void move() {  // Object only moves horizontally
  //    println(speed);
  //    x += speed;
  //    if (x > width) {
  //      x = -img[0].width;
  //    }
  //}
  
}
