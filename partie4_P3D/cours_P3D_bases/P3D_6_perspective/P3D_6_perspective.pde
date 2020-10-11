/* tuto : https://processing.org/tutorials/p3d/ */
PImage img;

void setup()  {
  size(600, 600, P3D);
  background(0, 255, 255);
  lights();
  
  img = loadImage("image.png");

  float fov = PI/3.0; 
  float cameraZ = (height/2.0) / tan(fov/2.0); 
  perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 

  translate(width/2, height*3/4, 0);  // déplace l'origine 
  //rotateX(PI/6);
  //rotateY(-PI/6);

  // repère orthonormé : dessin des axes
  strokeWeight(4);
  stroke(255,0,0);          // rouge axe X
  line(0,0,0,150,0,0);      // line(x1, y1, z1, x2, y2, z2)
  stroke(0,255,0);          // vert axe Y
  line(0,0,0,0,150,0); 
  stroke(0,0,255);          // bleu axe Z
  line(0,0,0,0,0,150); 
  
  noStroke();
  
  //beginShape();
  //texture(img);
  //vertex(0, -188, 0, 0,   0);     
  //vertex( 115, -188, 0, 460, 0);    
  //vertex( 115,  0, 0, 460, 752);
  //vertex(0,  0, 0, 0,   752);
  //endShape(CLOSE);

  //beginShape();
  //fill(255,255,0);
  //vertex(-200, 0, 300, 0,   0);     
  //vertex( 200, 0, 300, 460, 0);    
  //vertex( 200, 0, 0, 460, 752);
  //vertex(-200, 0, 0, 0,   752);
  //endShape(CLOSE);  
  
  box(75); 
}

void draw()  {

}
