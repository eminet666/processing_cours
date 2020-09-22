PImage img1 ,img2, img3, img4;

void setup() {
  size(600,600);
  // Images must be in the "data" directory to load correctly
  img1 = loadImage("image.jpg");
  img2 = loadImage("image.png");
  img3 = loadImage("image.gif");  
  img4 = loadImage("anim.gif");
  
}

void draw() {
  image(img1, 0, 0);
  image(img2, 300, 0);
  image(img3, 0, 300);  
  image(img4, 0, 300);    
}
