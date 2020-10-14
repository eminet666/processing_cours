// Etape 1 : 1 seul poisson (1 seule occurence de l'objet Fish)
//           1 seul poisson dans le banc (pas de parametre nb poisson
Fish poisson;

boolean debug = true;
color ocean = color(0,150,200);

void setup(){
  size(600,600, P3D);
  frameRate(30);
  
  // syntaxe du constructeur : Fish(filename, nb_images)
  poisson = new Fish("fish_", 1);
}

void draw (){
  
  // init
  background(ocean);                    
  lights();
  translate(width/2, height*3/4, 0);
  setPerspective();                    // fixe le point de vue
  
  poisson.display();

}

void setPerspective() {
  int camX, camY;
  camX=0; camY=0;                    // point de vue fixe frontal
  //camX = int(map(mouseY, 0, height, -5, -45));
  //camY = int(map(mouseX, 0, width, -20, 20));
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
