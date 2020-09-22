PImage[] img = new PImage[6];
int x = 75;

void setup() {
  size(400,400);
  background(224);
  imageMode(CENTER);

  /*
  img[0] = loadImage("arbre_1.gif");
  img[1] = loadImage("arbre_2.gif");
  img[2] = loadImage("arbre_3.gif");
  img[3] = loadImage("arbre_4.gif");
  img[4] = loadImage("arbre_5.gif");
  img[5] = loadImage("arbre_6.gif");
  */
  
  for (int i = 0; i < img.length; i = i+1) { 
    img[i] = loadImage("arbre_"+(i+1)+".gif");
  }

  for (int i = 0; i < img.length; i = i+1) { 
    image(img[i],x+i*50, 200, 200, 200);  
  }

}

void draw() {

}
// https://www.youtube.com/watch?v=DPFJROWdkQ8
