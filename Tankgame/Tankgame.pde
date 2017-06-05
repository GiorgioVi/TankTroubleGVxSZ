float key1, key2, key3, key4;
Tank tank = new Tank(65,66,67,68,69);
Map map = new Map(1);
void setup(){
  size(600,600);
  background(255);
  smooth();
  color c = color(205, 204,0);
  float redValue = red(c);
  fill(redValue,0,0);
  rect(width/2, height/2,tank.w, tank.h,5,5,5,5);
}

void draw(){


}

void keyPressed(){
  println(keyCode);
  if(keyCode == tank.getUp()){
     println(tank.getUp());
  }
  
  if(keyCode == UP){
    map.makeMap(1);
  }
  

}