float key1, key2, key3, key4;
Tank tank0 = new Tank(38, 40, 37, 39, 32);
Tank tank1 = new Tank(87, 83, 65, 68, 81);
float map1 = 0;
float ang = 0;
Map map = new Map(1);
boolean mapOn = false;
void setup() {
  size(600, 600);
  background(255);
  smooth();
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
  translate(tank0.x, tank0.y);

  if (tank0.turn) {
    pushMatrix();
    background(255);
    noStroke();
    rotate(ang);
    color c = color(205, 204, 0);
    float redValue = red(c);
    fill(redValue, 0, 0);
    rectMode(CENTER);
    rect(0, 0, tank0.w, tank0.h);
    popMatrix();
  }
  else{
  color c = color(205, 204, 0);
  float redValue = red(c);
  fill(redValue, 0, 0);
  rectMode(CENTER);
  rect(0, 0, tank0.w, tank0.h);
  }


  if (tank1.turn) {
    rotate(ang);
  }
  pushMatrix();
  color d = color(175,100,220);
  float blueValue = blue(d);
  fill(0,0,blueValue);
  rectMode(CENTER);
  rect(100, 0, tank1.w, tank1.h);
  translate(50, 50);
  popMatrix();
  
  
  if (map1 ==1 && mapOn) {
    map.makeMap(1);
  }
}

void keyPressed() {
  println(keyCode);
  if (keyCode == tank0.up) {
  }

  if (keyCode == 49) {
    mapOn = true;
    map1 = 1;
  }
  if (keyCode == tank0.left) {
    tank0.turn = true;
    ang -= .1;
  }
  if (keyCode == tank0.right) {
    tank0.turn = true;
    ang += .1;
  }
  if (keyCode == tank0.up) {
    ;
  }
}