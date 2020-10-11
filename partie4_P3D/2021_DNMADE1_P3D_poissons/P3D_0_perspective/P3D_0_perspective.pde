/* tuto : https://processing.org/tutorials/p3d/ */
// ATTENTION : la transparence ne marche que si le 2ème objet est devant z2 > z1
PImage img;
int camX=0, camY=0;
boolean axes = true;
color ocean = color(0,150,200);

void setup(){
  size(600,600, P3D);
  
  img = loadImage("fish1.png"); 
}

void draw (){
  
  // init
  background(ocean);
  //fill(0,0,0,0);                    
  lights();
  translate(width/2, height*3/4, 0);
  setPerspective();
  
  stroke(255);
  // forme 1
  beginShape();
    texture(img);
    tint(255,0,0);
    vertex(0, -233, 0, 0, 0);
    vertex(200, -233, 0, 200, 0);
    vertex(200, -100, 0, 200, 133);
    vertex(0, -100, 0, 0, 133);
  endShape(CLOSE);
  
  // sol
  beginShape();
  fill(255,255,0);
  vertex(-200, 0, 300);     
  vertex( 200, 0, 300);    
  vertex( 200, 0, 0);
  vertex(-200, 0, 0);
  endShape(CLOSE); 
  
}

void setPerspective() {
  //camX=-15; camY=0;
  camX = int(map(mouseY, 0, height, -5, -45));
  camY = int(map(mouseX, 0, width, -20, 20));
  rotateX(radians(camX));                   
  rotateY(radians(camY));  
  
  if(axes == true) {
      // repère orthonormé : dessin des axes
      strokeWeight(4);
      stroke(255,0,0);          // rouge axe X
      line(0,0,0,100,0,0);      // line(x1, y1, z1, x2, y2, z2)
      stroke(0,255,0);          // vert axe Y
      line(0,0,0,0,100,0); 
      stroke(0,0,255);          // bleu axe Z
      line(0,0,0,0,0,100);
      strokeWeight(1);
  }
}
