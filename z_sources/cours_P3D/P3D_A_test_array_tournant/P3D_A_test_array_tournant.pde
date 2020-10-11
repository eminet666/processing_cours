int[] x = { 10, 20, 40, 60, 80, 180 };

void setup() {
  size(200,200);
  
}

void draw() {
  background(100);
   //x = shorten(x); 
  
  fill(0);
  // Read one array element each time through the for loop
  //for (int i = 0; i < x.length; i++) {
  //  rect(0, i*10, x[x.length-1-i], 8);
  //}
  for (int i = 0; i < x.length; i++) {
    rect(0, i*10, x[i], 8);
  }
}

void keyPressed() {
   switch(key) {
     case 'a' : 
       println("append");
       x = append(x, int(random(200)));
       break;
     
     case 'z' : 
       println("shorten"); 
       x = shorten(x); 
       break;
       
     case 'e' : 
       for (int i=x.length-1; i >=1 ; i--) {         
         x[i] = x[i-1];
       }
       x[0] = int(random(200));     
       break;
          
     case 's' : 
       println("sort"); 
       x = sort(x);  
       break;
       
     default: break; 
       
   }
  printArray(x);
}
