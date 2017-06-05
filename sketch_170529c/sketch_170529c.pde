float x, y, speed, xdirection, ydirection;

void setup(){
  size(2058,1262);
  x = width/2;
  y = height/2;
  xdirection = 1;
  ydirection = 0;
  speed = 5;
  smooth();
}

void draw(){

background(0);
  rectMode(CENTER);
  if(xdirection > 0 || xdirection < 0){
    rect(x, y, 50,30, 7, 7, 7, 7);
  }
  else{
    rect(x, y, 30, 50, 7, 7, 7, 7);
  }  
}

void keyPressed(){
  
   

   if(keyCode == UP){
     ydirection = 1;
     xdirection = 0;
     y -= speed;
   }
   else if (keyCode == DOWN){
     ydirection = -1;
     xdirection = 0;
     y += speed;
   }
   else if(keyCode == LEFT){
     xdirection = -1;
     ydirection = 0;
     x -= speed;
   }
   else if(keyCode == RIGHT){
     xdirection = 1;
     ydirection = 0;
     x += speed;
   }
 
      
   
 }
 