int nb = 50;
int[] x; int[] y; int[] z;
int[] l; int[] h; int coef=2;

int camX=0, camY=0;
float flying = 5;

int lowX = -250, highX = 250;
//int lowY = -50, highY = 50;
int lowZ = -700, highZ = 250;
int outZ = 250;

int lowSize = 80, highSize = 100;

void setup(){
  size(600,600, P3D); //<>//
  //x = new int[nb];  
  x = new int[nb]; 
  y = new int[nb]; 
  z = new int[nb]; 
  l = new int[nb];
  h = new int[nb];
  
  for (int i = 0; i < nb; i++) {
    x[i] = int(random(lowX, highX));
    y[i] = 0;
    //y = int(random(lowY, highY));    
    z[i] = int(random(lowZ, highZ));
    l[i] = int(random(lowSize, highSize));
    h[i]=l[i]*coef;
  }
  z = sort(z);
}

void draw (){
  background(100);
  
  translate(width/2, height/2, 0);
  float fov = PI/3.0; 
  float cameraZ = (height/2.0) / tan(fov/2.0); 
  perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
  camX = int(map(mouseY, 0, height, 0, -90));
  camY = int(map(mouseX, 0, width, -90, 90));
  //camX=-45; camY=0;
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
   
    beginShape();
      vertex(x[i],      y[i],       z[i],  0,   0);
      vertex(x[i]+l[i], y[i],       z[i],  100, 0);
      vertex(x[i]+l[i], y[i]-h[i],  z[i],  100, 100);
      vertex(x[i],      y[i]-h[i],  z[i],  0,   100);
    endShape(CLOSE);
    z[i] += flying;
  }
  
  testOutZ();
  
}

void testOutZ() {
   for (int i = 0; i < nb; i = i+1) {
     if(z[i] > outZ) {
       println(z[i]);
       decaleArrays();
       newInstance();       
     }     
  } 
}

void decaleArrays() {
       for (int i=nb-1; i >=1 ; i--) {         
         x[i] = x[i-1];
         y[i] = y[i-1];
         z[i] = z[i-1];
         l[i] = l[i-1];
         h[i] = h[i-1];
       }  
}

void newInstance() {
    int highZ0 = lowZ + (highZ - lowZ)/nb;
  
    x[0] = int(random(lowX, highX));
    y[0] = 0;
    //y = int(random(lowY, highY));    
    z[0] = int(random(lowZ, highZ0));
    l[0] = int(random(lowSize, highSize));
    h[0]=l[0]*coef;  
}
