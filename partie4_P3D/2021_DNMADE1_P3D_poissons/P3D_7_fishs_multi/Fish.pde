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
      
      int speed = 4;        // vitesse
      int sens = 1;         // 1 = vers la droite, -1 vers la gauche
      
      boolean toTint = false;
      color c;
      boolean debug = true;
      
  
   // constructeur
   Fish(String pngfile, int nb_images, int nb_poissons, int vitesse, color teinte) {
       img = new PImage[nb_images];              // tableau d'images
       for(int i = 0 ; i < img.length ; i++){    
           img[i]= loadImage(pngfile+i+".png");   // chargement des images
       }
       nb = nb_poissons;
       speed = vitesse;
       x = new int[nb];
       y = new int[nb];
       l = img[0].width;
       h = img[0].height;
        
       if(teinte != -16777216) { println(teinte); c = color(teinte); toTint = true;}  
       
       //x[0] = int(random(-100,100));
       //y[0] = -233;
       for(int i = 0; i < nb; i++) {
         x[i] = -l+ int(random(-150,150));
         y[i] = int(random(-600,200)); 
         //println(shiftX[i]+"_"+shiftY[i]);
       }
       z = int(random(-2000, 0));

   }
 
  // étape 1 : affichage image
  void display() {
      int intIndex = int(imgIndex);         // we must convert the float index to an int first!
      int u1, u2;
      
      // parametres de texte en fonction du sens
      if (sens == 1) { u1 = 0; u2 = l;}
      else           { u1 = l; u2 = 0;}
      
      for(int i = 0; i < nb; i++) {     
          beginShape();
          texture(img[intIndex]);
          if(toTint == true) tint(c); 
          else noTint();
          vertex(  x[i],   y[i],   i*10+z, u1, 0);
          vertex(l+x[i],   y[i],   i*10+z, u2, 0);
          vertex(l+x[i], h+y[i],   i*10+z, u2, h);
          vertex(  x[i], h+y[i],   i*10+z, u1, h);
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
  void move() {  // Object only moves horizontally
      for(int i = 0; i < nb; i++) {  
          x[i] += sens*speed;
          if (sens ==1 && x[i] > 2*width) {
              sens *= -1;
              //println(x[0]+"_"+speed+"_"+sens);
          }
          if (sens == -1 && x[i] < -2*width) {
              sens *= -1;
          }          
      }
  }
  
}
