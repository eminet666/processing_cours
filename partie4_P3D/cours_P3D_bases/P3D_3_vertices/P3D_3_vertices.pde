/* tuto : https://processing.org/tutorials/p3d/ */

void setup(){
  size(600,600, P3D);       // espace 3D
  background(100);
  //lights();
  
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


  //rotateX(PI/2);
  //rotateZ(-PI/6);
  stroke(255);
  fill(255,255,0);
  
  beginShape();
  vertex(-100, -100, 0);  // vertex(x, y, z)
  vertex( 100, -100, 0);
  vertex( 100,  100, 0);
  vertex(-100,  100, 0);
  endShape(CLOSE);
 
  fill(0,255,255);
  beginShape();
  vertex(0, -100, -100);
  vertex(0,  100, -100);
  vertex(0,  100,  100);
  vertex(0, -100,  100);
  endShape(CLOSE);
  
}

void draw (){

}
