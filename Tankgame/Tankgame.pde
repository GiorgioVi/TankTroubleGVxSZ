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

  if (tank0.turn) {
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
   rect(0, 0, tank0.w, tank0.h);
   translate(-tank0.x, -tank0.y);
   popMatrix();
   } else {
   color c = color(205, 204, 0);
   float redValue = red(c);
   fill(redValue, 0, 0);
   rectMode(CENTER);
   translate(tank0.x, tank0.y);
   rect(0, 0, tank0.w, tank0.h);
   translate(-tank0.x, -tank0.y);
   }

  if (tank1.turn) {
    pushMatrix();
    translate(tank1.x, tank1.y);
    //background(255);
    noStroke();
    rotate(tank1.ang);
    color c = color(205, 204, 0);
    float redValue = red(c);
    fill(redValue, 0, 0);
    rectMode(CENTER);
    //translate(tank0.x, tank0.y);
    rect(0, 0, tank1.w, tank1.h);
    translate(-tank1.x, -tank1.y);
    popMatrix();
  } else {
    color c = color(205, 204, 0);
    float redValue = red(c);
    fill(redValue, 0, 0);
    rectMode(CENTER);
    translate(tank1.x, tank1.y);
    rect(0, 0, tank1.w, tank1.h);
    translate(-tank1.x, -tank1.y);
  }


  if (map1 ==1 && mapOn) {
    //translate(-50, -50);
    rectMode(CORNER);
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
    tank0.ang -= .15;
  }
  if (keyCode == tank0.right) {
    tank0.turn = true;
    tank0.ang += .15;
  }
  if (keyCode == tank1.left) {
    tank1.turn = true;
    tank1.ang -= .15;
  }
  if (keyCode == tank1.right) {
    tank1.turn = true;
    tank1.ang += .15;
  }
  if (keyCode == tank1.up) {
    ;
  }
}