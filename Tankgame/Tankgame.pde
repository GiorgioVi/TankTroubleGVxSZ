boolean[] keys;
float key1, key2, key3, key4;
Tank tank0 = new Tank(38, 40, 37, 39, 32, 50, 50);
Tank tank1 = new Tank(87, 83, 65, 68, 81, 100, 100);
float map1 = 0;
float ang = 0;
Map map = new Map(1);
boolean mapOn = false;
void setup() {
  size(600, 600);
  background(255);
  smooth();
  frameRate(30);
  keys = new boolean[8];
  for(int i = 0; i < 8; i ++){
    keys[i] = false;
  }
  /*color c = color(205, 204, 0);
   float redValue = red(c);
   fill(redValue, 0, 0);
   rectMode(CENTER);
   rect(tank.x, tank.y, tank.w, tank.h, 5, 5, 5, 5);*/
}

void draw() {
  rectMode(CORNER);
  noStroke();
  background(255);

  //background(255);

  //if (tank0.turn) {
    if(keys[0]){
      tank0.x += cos(tank0.ang) * 3;
    tank0.y += sin(tank0.ang) * 3;
    }
    if(keys[1]){
      tank0.x -= cos(tank0.ang) * 3;
    tank0.y -= sin(tank0.ang) * 3;
    }
    if(keys[2]){
      tank0.turn = true;
    tank0.ang -= .15;
    }
    if(keys[3]){
      tank0.turn = true;
    tank0.ang += .15;
    }
    if(keys[4]){
      tank1.turn = true;
    tank1.ang -= .15;
    }
    if(keys[5]){
      tank1.turn = true;
    tank1.ang += .15;
    }
    if(keys[6]){
      tank1.x += cos(tank1.ang) * 3;
    tank1.y += sin(tank1.ang) * 3;
    }
    if(keys[7]){
      tank1.x -= cos(tank0.ang) * 3;
    tank1.y -= sin(tank1.ang) * 3;
    }
    
   pushMatrix();
   translate(tank0.x, tank0.y);
   background(255);
   noStroke();
   rotate(tank0.ang);
   color c = color(205, 204, 0);
   float redValue = red(c);
   fill(redValue, 0, 0);
   rectMode(CENTER);
   //translate(tank0.x, tank0.y);
   rect(0, 0, tank0.w, tank0.h,0,10,10,0);
   translate(-tank0.x, -tank0.y);
   popMatrix();
    /*else {
   color c = color(205, 204, 0);
   float redValue = red(c);
   fill(redValue, 0, 0);
   rectMode(CENTER);
   translate(tank0.x, tank0.y);
   rect(0, 0, tank0.w, tank0.h,0,10,10,0);
   translate(-tank0.x, -tank0.y);
   }*/

  //if (tank1.turn) {
    pushMatrix();
    translate(tank1.x, tank1.y);
    //background(255);
    noStroke();
    rotate(tank1.ang);
    color b = color(175, 100, 220);
    float blueValue = blue(b);
    fill(0,0,blueValue);
    rectMode(CENTER);
    //translate(tank0.x, tank0.y);
    rect(0, 0, tank1.w, tank1.h,0,10,10,0);
    translate(-tank1.x, -tank1.y);
    popMatrix();
  /*} else {
    color b = color(175, 100, 220);
    float blueValue = blue(b);
    fill(0,0,blueValue);
    rectMode(CENTER);
    translate(tank1.x, tank1.y);
    rect(0, 0, tank1.w, tank1.h,0,10,10,0);
    translate(-tank1.x, -tank1.y);
  }*/


  if (map1 ==1 && mapOn) {
    //translate(-50, -50);
    rectMode(CORNER);
    map.makeMap(1);
  }
}

void keyPressed() {
  println(keyCode);
  if (keyCode == 49) {
    mapOn = true;
    map1 = 1;
  }
  //0
  if (keyCode == tank0.up) {
    keys[0] = true;
  }
  //1
  if(keyCode == tank0.down){
    keys[1] = true;
  }
  //2
  if (keyCode == tank0.left) {
    keys[2] = true;
  }
  //3
  if (keyCode == tank0.right) {
    keys[3] = true;
  }
  //4
  if (keyCode == tank1.left) {
    keys[4] = true;
  }
  //5
  if (keyCode == tank1.right) {
    keys[5] = true;
  }
  //6
  if (keyCode == tank1.up) {
    keys[6] = true;
  }//7
  if(keyCode == tank1.down){
    keys[7] = true;
  }
}

void keyReleased(){
  //0
  if (keyCode == tank0.up) {
    keys[0] = false;
  }
  //1
  if(keyCode == tank0.down){
    keys[1] = false;
  }
  //2
  if (keyCode == tank0.left) {
    keys[2] = false;
  }
  //3
  if (keyCode == tank0.right) {
    keys[3] = false;
  }
  //4
  if (keyCode == tank1.left) {
    keys[4] = false;
  }
  //5
  if (keyCode == tank1.right) {
    keys[5] = false;
  }
  //6
  if (keyCode == tank1.up) {
    keys[6] = false;
  }//7
  if(keyCode == tank1.down){
    keys[7] = false;
  }
}