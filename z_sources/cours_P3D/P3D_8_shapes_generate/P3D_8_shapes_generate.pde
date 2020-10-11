int x, y=0, z;
int l, h, coef=2;
int nb = 100;
int camX=0, camY=0;

int lowX = -250, highX = 250;
//int lowY = -50, highY = 50;
int lowZ = -700, highZ = 250;

int lowSize = 80, highSize = 100;

void setup(){
  size(600,600, P3D);
}

void draw (){
  background(100);
  
  translate(width/2, height/2, 0);
  float fov = PI/3.0; 
  float cameraZ = (height/2.0) / tan(fov/2.0); 
  perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
  camX = int(map(mouseY, 0, height, 0, -90));
  camY = int(map(mouseX, 0, width, -90, 90));
  camX=-45; camY=0;
  rotateX(radians(camX)); 
  rotateY(radians(camY)); 
  
  stroke(255,0,0);          // rouge axe X
  line(0,0,0,100,0,0);  
  stroke(0,255,0);          // vert axe Y
  line(0,0,0,0,100,0); 
  stroke(0,0,255);          // bleu axe Z
  line(0,0,0,0,0,100); 

  stroke(255);
  noFill();

  for (int i = 0; i < nb; i = i+1) {
    x = int(random(lowX, highX));
    //y = int(random(lowY, highY));    
    z = int(random(lowZ, highZ));
    l = int(random(lowSize, highSize));
    h=l*coef;
    
    beginShape();
      vertex(x, y, z, 0, 0);
      vertex(x+l, y, z, 100, 0);
      vertex(x+l, y-h, z, 100, 100);
      vertex(x, y-h, z, 0, 100);
    endShape(CLOSE);
  }
}
