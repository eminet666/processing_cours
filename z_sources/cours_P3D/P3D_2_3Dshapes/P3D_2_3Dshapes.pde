//tuto : https://processing.org/tutorials/p3d/

void setup(){
  size(600,600, P3D);    // P3D pour un espace 3D 
  background(100);
  // lights();

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
  
  noStroke();
  // forme 1
  pushMatrix();
  translate(-100, 100, 0);
  rotateX(PI/3);
  rotateY(PI/3);
  noStroke();
  box(100);
  popMatrix();  
  
  // forme 2
  pushMatrix();
  translate(300, height*0.35, -100);
  noFill();
  stroke(255);
  sphere(100);
  popMatrix();
  
}

void draw (){

}
