PImage img;

void setup(){
  //fullScreen(P3D);
  size(750,750, P3D);
  img = loadImage("ciel.jpg");
}

void draw (){
  background(100);
  image(img,0,0);
  
  stroke(255);
  line(0, 250, width, 250);

}
