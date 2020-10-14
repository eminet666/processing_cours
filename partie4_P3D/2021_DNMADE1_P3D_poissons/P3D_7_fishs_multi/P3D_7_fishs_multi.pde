int nb_bancs = 5;
Fish[] poissons = new Fish[nb_bancs];
int[] triZ = new int[0];

int camX=0, camY=0;
color ocean = color(0,150,200);
boolean debug = false;

void setup(){
  //size(600,600, P3D);
  fullScreen(P3D);
  frameRate(30);
  
  // filename, nb_images, nb poissons, vitesse, couleur ou no
  poissons[0] = new Fish("fish_0_", 4, 10, 4, color(0,0,0));
  poissons[1] = new Fish("fish_1_", 1, 5, 2, color(0,0,0));
  poissons[2] = new Fish("fish_1_", 1, 5, 8, color(255,0,0));
  poissons[3] = new Fish("fish_1_", 1, 3, 8, color(0,255,0));  
  poissons[4] = new Fish("fish_1_", 1, 1, 8, color(0,0,255));    

  for(int i = 0; i < nb_bancs; i++) {   
    triZ = append(triZ, poissons[i].z);
    triZ = sort(triZ);
  }

}



void draw (){
  
  // init
  background(ocean);                    
  lights();
  translate(width/2, height*3/4, 0);
  setPerspective();
 
  for(int j = 0; j < nb_bancs; j++){  
      for(int i = 0; i < nb_bancs; i++) {
          if(triZ[j] == poissons[i].z) {
            poissons[i].display();
            poissons[i].next();
            poissons[i].move();
          }
      }
  }
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
