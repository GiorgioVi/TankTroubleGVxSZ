float key1, key2, key3, key4;
Tank tank = new Tank(38, 40, 37, 39, 32);
float map1 = 0;
float ang = 0;
Map map = new Map(1);
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
  if(map1 ==1){
  map.makeMap(1);
  }
  //background(255);
  translate(tank.x, tank.y);
  if (tank.turn) {
    rotate(ang);
  }
  color c = color(205, 204, 0);
  float redValue = red(c);
  fill(redValue, 0, 0);
  rectMode(CENTER);
  rect(0, 0, tank.w, tank.h);
  translate(50, 50);
}

void keyPressed() {
  println(keyCode);
  if (keyCode == tank.up) {
  }

  if (keyCode == 49) {
    map1 = 1;
  }
  if (keyCode == tank.left) {
    tank.turn = true;
    ang -= .05;
  }
  if (keyCode == tank.right) {
    tank.turn = true;
    ang += .05;
  }
  if(keyCode == tank.up){
    tank.x ++;
  }
}