/* tuto : https://processing.org/tutorials/p3d/ */
PImage img;

void setup(){
  size(600,600, P3D);
  background(100);
  lights();
  
  img = loadImage("image.jpg");
  
  translate(width/2, height/2, 0);  // déplace l'origine au centre écran
  rotateX(PI/6);
  rotateY(-PI/6);

  // repère orthonormé : dessin des axes
  strokeWeight(4);
  stroke(255,0,0);          // rouge axe X
  line(0,0,0,150,0,0);      // line(x1, y1, z1, x2, y2, z2)
  stroke(0,255,0);          // vert axe Y
  line(0,0,0,0,150,0); 
  stroke(0,0,255);          // bleu axe Z
  line(0,0,0,0,0,150); 

  noStroke();
  
  beginShape();
  texture(img);
  vertex(-100, -100, 0, 0,   0);     // vertex(x, y, z, u, v)
  vertex( 100, -100, 0, 460, 0);     // u,v coordonnées texture mapping
  vertex( 100,  100, 0, 460, 752);
  vertex(-100,  100, 0, 0,   752);
  endShape(CLOSE);
  
}

void draw (){

}
