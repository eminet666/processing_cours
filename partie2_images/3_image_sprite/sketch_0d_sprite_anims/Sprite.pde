// the SPrite object

class Sprite {
      PImage[] img;
      
      float imgIndex = 0;  // index d'un array est un float qui devra être converti en int avant affichage      
      float x;          // position en x du sprite
      float y;          // position en x du sprite
      
      int speed; 
  
   // constructeur
   Sprite(String pngfile, int nb_images) {
       img = new PImage[nb_images];              // tableau d'images
       for(int i = 0 ; i < img.length ; i++){    
           img[i]= loadImage(pngfile+i+".png");   // chargement des images
       }
       
       //x = -img[0].width;
       x = 0;
       y = int(random(1,height));
       
       speed = int(random(1,10));
   }
 
  // étape 1 : affichage image
  void display() {
      int intIndex = int(imgIndex);         // we must convert the float index to an int first!
      image(img[intIndex], x, y);
  }   
   
  // étape 2 : défilement des images
  void next() {
      imgIndex++;
      if (imgIndex >= img.length) {     
          imgIndex = 0;        
      }
  
  }
  
  // étape 3 : déplacement
  void move() {  // Object only moves horizontally
      println(speed);
      x += speed;
      if (x > width) {
        x = -img[0].width;
      }
  }
  
}
