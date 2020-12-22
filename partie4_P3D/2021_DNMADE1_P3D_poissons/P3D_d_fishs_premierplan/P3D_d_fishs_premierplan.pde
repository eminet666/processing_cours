// possibilité d'ajouter une image au premier plan 
// mettre premierplan = 0 si vous ne voulez pas l'option
// - modification de la fonction showBackForeGround();
// - ajout/modification des variables relatives au premier et arrière plan
// - image de premierplan nécessairement en PNG ,-)

// PARAMETRAGES
int nb_bancs = 10;                            // nombre de bancs de poissons
int rangeX = 150;
int rangeY = 200;
int maxZ = -2000;

color ocean = color(0,150,200);              // couleur du fond
PImage img_arriereplan, img_premierplan;
int fps = 15;                                // nb de frames par seconde

// FLAGS
boolean debug = false;
boolean camfixe = true;
int premierplan = 1;                         // 0=couleur, 1=image;
int arriereplan = 1;                         // 0=couleur, 1=image, 2=vidéo

// INITIALISATION (ne pas modifier)
int[] triZ = new int[0];
Fish[] poissons = new Fish[nb_bancs];
int camX=0, camY=0;
int displayBgL = 8000, displayBgH = 4000;        // valeurs empiriques par tatonnements pour arriere plan
int displayFgL , displayFgH ;        // valeurs empiriques par tatonnements pour arriere plan
int bgL, bgH, fgL, fgH;

void setup(){
    //size(600,600, P3D);
    fullScreen(P3D);
    frameRate(fps);
    
    // filename, nb_images, nb poissons, vitesse, coefficient taille, couleur ou non
    poissons[0] = new Fish("fish_0_", 4, 10, 4, 0.5, color(0,0,0));
    poissons[1] = new Fish("fish_1_", 1, 5, 2, 1, color(0,0,0));
    poissons[2] = new Fish("fish_1_", 1, 5, 8, 1, color(255,0,0));
    poissons[3] = new Fish("fish_1_", 1, 3, 8, 3, color(0,255,0));  
    poissons[4] = new Fish("fish_1_", 1, 1, 8, 2, color(0,0,255));
    poissons[5] = new Fish("fish_0_", 4, 10, 4, 4, color(0,0,0));
    poissons[6] = new Fish("fish_1_", 1, 5, 2, 1, color(0,0,0));
    poissons[7] = new Fish("fish_1_", 1, 5, 8, 6, color(255,0,0));
    poissons[8] = new Fish("fish_1_", 1, 3, 8, 2, color(0,255,0));  
    poissons[9] = new Fish("fish_1_", 1, 1, 8, 3, color(0,0,255));     
  
    for(int i = 0; i < nb_bancs; i++) {   
        triZ = append(triZ, poissons[i].z);
        triZ = sort(triZ);
    }
    
    // images arrière et premier plan
    img_arriereplan = loadImage("arriereplan.jpg");
    bgL = img_arriereplan.width; bgH = img_arriereplan.height;
    if(premierplan == 1) { 
      displayFgL = displayWidth; displayFgH = displayHeight; 
      img_premierplan = loadImage("premierplan.png");
      fgL = img_premierplan.width; fgH = img_premierplan.height;
    }
}    

void draw (){
  
    // init
    translate(width/2, height*3/4, 0);
    showBackGround();
    
    setPerspective();
    lights();
   
    for(int j = 0; j < nb_bancs; j++){  
        for(int i = 0; i < nb_bancs; i++) {
            if(triZ[j] == poissons[i].z) {
                poissons[i].display();
                poissons[i].next();
                poissons[i].move();
            }
        }
    }
    
    if(premierplan == 1) { showForeGround(); }

}

void setPerspective() {
  if(camfixe) { camX=0; camY=0;}
  else {
      camX = int(map(mouseY, 0, height, -5, -45));
      camY = int(map(mouseX, 0, width, -20, 20));
      rotateX(radians(camX));                   
      rotateY(radians(camY));
  }
  
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

void showBackGround() {
    switch(arriereplan) {
      case 1 : 
        beginShape();
          noTint();
          texture(img_arriereplan);
          vertex(-displayBgL/2,-displayBgH/2, maxZ, 0,     0);
          vertex(displayBgL/2, -displayBgH/2, maxZ, bgL, 0);
          vertex(displayBgL/2,  displayBgH/2, maxZ, bgL, bgH);
          vertex(-displayBgL/2, displayBgH/2, maxZ, 0,   bgH);
        endShape(CLOSE);
        break;
      case 2 : 
      default : background(ocean);
    }
}

void showForeGround() {
        beginShape();
          noTint();
          texture(img_premierplan);
          vertex(-displayFgL/2,-displayFgH*3/4, 0, 0,     0);
          vertex(displayFgL/2, -displayFgH*3/4, 0, fgL, 0);
          vertex(displayFgL/2,  displayFgH/4, 0, fgL, fgH);
          vertex(-displayFgL/2, displayFgH/4, 0, 0,     fgH);        
        endShape(CLOSE);         
}


void keyPressed() {
    println(key);
    
    switch(key) {
      case 'c': if(camfixe) camfixe = false; else camfixe = true; break;
      case 'd': if(debug) debug = false;     else debug = true;   break;  
    }
}
