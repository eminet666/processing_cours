Fish[] poisson = new Fish[1];

int camX=0, camY=0;
boolean debug = true;
color ocean = color(0,150,200);

void setup(){
  size(600,600, P3D);
  frameRate(30);
  
  poisson[0] = new Fish("fish_", 4, 10);
}

void draw (){
  
  // init
  background(ocean);                    
  lights();
  translate(width/2, height*3/4, 0);
  setPerspective();
  
  poisson[0].display();
  poisson[0].next();

}

void setPerspective() {
  //camX=0; camY=0;
  camX = int(map(mouseY, 0, height, -5, -45));
  camY = int(map(mouseX, 0, width, -20, 20));
  rotateX(radians(camX));                   
  rotateY(radians(camY));  
  
  if(debug == true) {
      // repère orthonormé : dessin des axes
      strokeWeight(4);
      stroke(255,0,0);          // rouge axe X
      line(0,0,0,100,0,0);      // line(x1, y1, z1, x2, y2, z2)
      stroke(0,255,0);          // vert axe Y
      line(0,0,0,0,100,0); 
      stroke(0,0,255);          // bleu axe Z
      line(0,0,0,0,0,100);
      strokeWeight(1);
      stroke(255);
  }
  else noStroke();
  
}
