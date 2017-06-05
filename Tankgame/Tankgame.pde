float key1, key2, key3, key4;
Tank tank = new Tank(65,66,67,68,69);
void setup(){
  fullScreen();
  smooth();

  //Tank tank = new Tank(65,66,67,68,69);
  rect(width/2, height/2,tank.w, tank.h);
}

void draw(){


}

void keyPressed(){
  println(keyCode);
  if(keyCode == tank.getUp()){
     println(tank.getUp());
  }

}