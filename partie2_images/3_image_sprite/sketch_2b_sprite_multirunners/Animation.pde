// The animation object

class Animation {
  float x;  // location for Animation
  float y;  // location for Animation
  float index = 0; // index d'un arry est un float qui devra être converti en int avant affichage
  float speed; // controle le mouvement dans la scène & la vitesse des imagess
  PImage[] images; // tableau d'images
  
  // constructeur
  Animation(PImage[] images_, float x_, float y_) {
      images = images_;
      x = x_;
      y = y_;
      
      speed = random(1,5); // random speed
      index = 0; // starting at the beginning
  }

  void display() {
      int imageIndex = int(index);         // we must convert the float index to an int first!
      image(images[imageIndex], x, y);
  }

  void move() {  // Object only moves horizontally
      x += speed;
      if (x > width) {
        x = -images[0].width;
      }
  }

  void next() {      
      index += speed; // move the index forward in the animation sequence
      if (index >= images.length) {       // if we are at the end, go back to the beginning
          index -= images.length;           // We could just say index = 0 but this is slightly more accurate
      } 
  }
}
