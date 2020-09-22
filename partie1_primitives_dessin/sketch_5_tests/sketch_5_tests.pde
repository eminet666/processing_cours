

void setup(){
    size(400,400);
    //background(255,255,0);
}

void draw(){
  
    int fond = int(random(0,3));
    println(fond);
    switch(fond) {
        case 0 :  background(255, 0 ,0); break;
        case 1 :  background(0, 255,0);  break; 
        case 2 :  background(0, 0, 255); break; 
    }

   
    line(200,0, 200,400);
         
    fill(random(127,255),0,0);
    
    int pos_x = int(random(400));
    if(pos_x < 200) {
        fill(0,0,255);
        rect(pos_x, random(400), 50, 50);
    }
    else 
    {
        fill(255,0,0);
        ellipse(pos_x, random(400), 50, 50);
    }
    
    delay(300);

}
