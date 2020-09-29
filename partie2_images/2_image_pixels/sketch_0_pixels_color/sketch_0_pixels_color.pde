//https://www.youtube.com/watch?v=EmtU0eloTlE&list=PLRqwX-V7Uu6YB9x6f23CBftiyx0u_5sO9&index=4

// fonction setup() : instructions exécutées une seule fois
void setup() {
  background(0);     
  size(400,400); 
  
  //set(100,100, color(255,0,0));
  
  //loadPixels();
  //pixels[111111] = color(255,255,255);
  //updatePixels();
  
  loadPixels();
  for(int x = 0; x < width; x++){
      for(int y = 0; y < height; y++){
        //pixels[x+y*width] = color(0,255,0);
        //pixels[100+y*width] = color(0,255,0);
        //pixels[x+y*width] = color(0, y/2, x/2);
        //pixels[y+y*width] = color(0,255,0);
        
        //float d = dist(x,y,width/2,height/2);
        //int loc = x+y*width;
        //pixels[loc] = color(d);
        
      }
  }
  updatePixels();
  
}    

// fonction draw() : instructions exécutées en boucle
void draw() {


}
