Fish fish1, fish2;

int randomY= 0;

void setup() {
  size(600,600);
  // Images must be in the "data" directory to load correctly
  fish1 = new Fish("fish.png", width, 115, 86);  
  fish2 = new Fish("fish.png", width/2);  
}

void draw() {
  background(0,128,255);
  //image(img, posX, height/2 + randomY, 115, 85);
  fish1.display();
  fish1.move(1);  
  fish2.display();
  fish2.move(2);
}
