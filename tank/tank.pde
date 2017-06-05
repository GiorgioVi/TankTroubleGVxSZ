float direction, x;

void setup(){
  size(600,600);
  smooth();
}

void draw(){
  rect(50,50,50,50);

}

void keyPressed(){
  println(keyCode);

  if(keyCode == 65){
    background(255, 204,0);
    ellipse(x,20,20,20);
    x+= 5;
  }

    else if(keyCode == 66){
      
      background(255);
      ellipse(20,30,20,20);
    
  }
}