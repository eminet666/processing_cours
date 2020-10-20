// the Fish object
// - paametrage dans le fichier principal plutot que dans la classe
// - ajout d'un coordonnée x0,y autour de laquelle sont dustribués les poissons 

class Fish {
      PImage[] img;
      int l;                // largeur de l'image
      int h;                // hauteur de l'image
      
      float imgIndex = 0;   // rem : float à convertir avant affichage 
      int x0;               // position référence du sprite
      int y0;               // position référence en y du sprite 
      int[] x;              // positions en x du sprite
      int[] y;              // positions en y du sprite
      float[] r;            // coefficient reduction homothétique taille
      int z;                // position reference en z du sprite
      int nb;               // nombre de poissons
      
      int speed;            // vitesse
      int sens;             // 1 = vers la droite, -1 vers la gauche
      
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
       r = new float[nb];
       l = img[0].width;
       h = img[0].height;
        
       if(teinte != -16777216) { c = color(teinte); toTint = true;}    // teste si noir
       z = int(random(maxZ, 0));
       
       if(random(-1,1) > 0) {  sens = 1; } else { sens = -1; }         // sens aléatoire  
  
       x0 = int(random(-width, width));                                // x initial aléatoire
       y0 = int(random(-height, height/2));;                           // y initial aléatoire
       for(int i = 0; i < nb; i++) {
         x[i] = x0 + int(random(-rangeX,rangeX));
         y[i] = y0 + int(random(-rangeY,rangeY)); 
         r[i] = random(0.5,1);
         //println(shiftX[i]+"_"+shiftY[i]);
       }

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
          int newl = int(r[i]*l);              // calcul l randomisée
          int newh = int(r[i]*h);              // calcul h randomisée
          vertex(     x[i],         y[i],   i*10+z, u1, 0);
          vertex(newl+x[i],         y[i],   i*10+z, u2, 0);
          vertex(newl+x[i],    newh+y[i],   i*10+z, u2, h);
          vertex(     x[i],    newh+y[i],   i*10+z, u1, h);
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
  
} // fin class Fish
