/* tuto : https://processing.org/tutorials/p3d/ */
// ATTENTION : la transparence ne marche que si le 2ème objet est devant z2 > z1
PImage img;
int camX=0, camY=0;
boolean debug = false;
color ocean = color(0,150,200);
int nb = 10;
int[] shiftX = new int[nb];
int[] shiftY = new int[nb];
int shiftZ = -1000;
int l,h;

void setup(){
  size(600,600, P3D);
  img = loadImage("fish1.png");
  
  l = img.width;
  h = img.height;
  for(int i = 0; i < nb; i++) {
     shiftX[i] = int(random(-100,100));
     shiftY[i] = int(random(-400,100)); 
     //println(shiftX[i]+"_"+shiftY[i]);
  }
  shiftX[0]=0;
  shiftY[0]=-233;
  
}

void draw (){
  
  // init
  background(ocean);
  //fill(0,0,0,0);                    
  lights();
  translate(width/2, height*3/4, 0);
  setPerspective();

  for(int i = 0; i < nb; i++) {
      beginShape();
        texture(img);
        tint(255,0,0);
        vertex(shiftX[i],   shiftY[i],   i*10+shiftZ, 0, 0);
        vertex(l+shiftX[i], shiftY[i],   i*10+shiftZ, l, 0);
        vertex(l+shiftX[i], h+shiftY[i], i*10+shiftZ, l, h);
        vertex(shiftX[i],   h+shiftY[i], i*10+shiftZ, 0, h);
      endShape(CLOSE);        
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
