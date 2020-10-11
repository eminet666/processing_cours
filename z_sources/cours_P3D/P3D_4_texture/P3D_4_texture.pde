//tuto : https://processing.org/tutorials/p3d/

PImage img;

void setup(){
  size(600,600, P3D);
  background(100);
  lights();
  
  img = loadImage("arbre.jpg");
  
  //déplace l'origine au centre de l'écran
  translate(width/2, height/2, 0); 
  rotateX(PI/6);
  rotateY(PI/6); 

  // dessin des axes
  strokeWeight(4);
  stroke(255,0,0);          // rouge axe X
  line(0,0,0,100,0,0);      // line(x1, y1, z1, x2, y2, z2)
  stroke(0,255,0);          // vert axe Y
  line(0,0,0,0,100,0); 
  stroke(0,0,255);          // bleu axe Z
  line(0,0,0,0,0,100); 

  stroke(255);
  fill(255,255,0);
  
  beginShape();
  texture(img);
  vertex(-100, -100, 0, 0,   0);
  vertex( 100, -100, 0, 460, 0);
  vertex( 100,  100, 0, 460, 752);
  vertex(-100,  100, 0, 0,   752);
  endShape(CLOSE);
  
}

void draw (){

}
