/* tuto : https://processing.org/tutorials/p3d/ */

void setup(){
  size(600,600, P3D);       // espace 3D
  background(100);
  
  translate(width/2, height/2, 0);  // déplace l'origine au centre écran
  rotateX(PI/6);
  rotateY(-PI/6);

  // repère orthonormé : dessin des axes
  strokeWeight(4);
  stroke(255,0,0);          // rouge axe X
  line(0,0,0,100,0,0);      // line(x1, y1, z1, x2, y2, z2)
  stroke(0,255,0);          // vert axe Y
  line(0,0,0,0,100,0); 
  stroke(0,0,255);          // bleu axe Z
  line(0,0,0,0,0,100); 
  
}

void draw (){

}
