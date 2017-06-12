boolean[] keys;
float key1, key2, key3, key4;
Tank tank0 = new Tank(38, 40, 37, 39, 32, 50, 300, 0);
Tank tank1 = new Tank(87, 83, 65, 68, 81, 550, 300, PI);
float map1 = 0;
float ang0 = 0;
float ang1 = PI;
boolean t0 = true;
boolean t1 = true;
Map map = new Map(1);
boolean mapOn = false;
boolean g = false;
boolean collide = false;
ArrayList<Bullet> blist;
void setup() {
  size(600, 600);
  background(255);
  smooth();
  frameRate(30);
  keys = new boolean[8];
  for (int i = 0; i < 8; i ++) {
    keys[i] = false;
  }
  blist = new ArrayList<Bullet>();
}

void draw() {
  
  rectMode(CORNER);
  noStroke();
  background(255);

  //background(255);

  //if (tank0.turn) {

  if (keys[0]) {
    tank0.x += cos(tank0.ang) * 3;
    tank0.y += sin(tank0.ang) * 3;
  }
  if (keys[1]) {
    tank0.x -= cos(tank0.ang) * 3;
    tank0.y -= sin(tank0.ang) * 3;
  }
  if (keys[2]) {
    ang0 -= .15;
    tank0.ang -= .15;
  }
  if (keys[3]) {
    ang0 += .15;
    tank0.ang += .15;
  }
  if (keys[4]) {
    ang1 -= .15;
    tank1.ang -= .15;
  }
  if (keys[5]) {
    ang1 += .15;
    tank1.ang += .15;
  }
  if (keys[6]) {
    tank1.x += cos(tank1.ang) * 3;
    tank1.y += sin(tank1.ang) * 3;
  }
  if (keys[7]) {
    tank1.x -= cos(tank1.ang) * 3;
    tank1.y -= sin(tank1.ang) * 3;
  }
  if (t0) {
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
    rect(0, 0, tank0.w, tank0.h, 0, 10, 10, 0);
    fill(0);
    //ellipse(0,0,tank0.r , tank0.r);
    translate(-tank0.x, -tank0.y);
    popMatrix();
  }
  /*else {
   color c = color(205, 204, 0);
   float redValue = red(c);
   fill(redValue, 0, 0);
   rectMode(CENTER);
   translate(tank0.x, tank0.y);
   rect(0, 0, tank0.w, tank0.h,0,10,10,0);
   translate(-tank0.x, -tank0.y);
   }*/

  if (t1) {
    pushMatrix();
    translate(tank1.x, tank1.y);
    //background(255);
    noStroke();
    rotate(tank1.ang);
    color b = color(175, 100, 220);
    float blueValue = blue(b);
    fill(0, 0, blueValue);
    rectMode(CENTER);
    //translate(tank0.x, tank0.y);
    rect(0, 0, tank1.w, tank1.h, 0, 10, 10, 0);
    translate(-tank1.x, -tank1.y);
    popMatrix();
  }
  /*} else {
   color b = color(175, 100, 220);
   float blueValue = blue(b);
   fill(0,0,blueValue);
   rectMode(CENTER);
   translate(tank1.x, tank1.y);
   rect(0, 0, tank1.w, tank1.h,0,10,10,0);
   translate(-tank1.x, -tank1.y);
   }*/
  try {
    for (Bullet bmap : blist) {
      if (bmap.x > 600 || bmap.y > 600 || bmap.x < 0 || bmap.y < 0) {
        blist.remove(bmap);
      } else if (bmap.show) {
        bmap.x += cos(bmap.ang) * 5;
        bmap.y += sin(bmap.ang) * 5;
        fill(0);
        ellipse(bmap.x, bmap.y, bmap.r, bmap.r);
      }
    }
  }
  catch (Throwable e) {
  }
  ellipseMode(CENTER);
  if (tank0.bullets.size() > 1 && tank0.bullets.size() < 5) {
    for (Bullet bt : tank0.bullets) {
      fill(0);
      ellipse(bt.x + 20 *cos(ang0), bt.y + 20 * sin(ang0), bt.r, bt.r);
      blist.add(bt);
      tank0.bullets.remove(bt);
    }
  }
  for (Bullet a : tank1.bullets) {
    fill(0);
    ellipse(a.x + 20 * cos(ang1), a.y + 20 * sin(ang1), a.r, a.r);
    tank1.bullets.remove(a);
  }
  if (mapOn) {
    //translate(-50, -50);
    rectMode(CORNER);
    if (map1 == 1) {
      map.makeMap(1);
    } else if (map1 == 2) {
      map.makeMap(2);
    } else if (map1 == 3) {
      map.makeMap(3);
    }
  }
  try {
    for (Bullet bmap : blist) {
      if (tank0.hit(bmap)) {
        bmap.show = false;
        explode(0);
        tank0.lives --;
        //println(tank0.lives);
      }
    }
  }
  catch (Throwable e) {
  }
  try {
    for (Bullet bmap : blist) {
      if (tank1.hit(bmap)) {
        bmap.show = false;
        explode(1);
        tank1.lives --;
        //println(tank1.lives);
        
      }
    }
  }
  catch (Throwable e) {
  }
  if (g) {
    imageMode(CENTER);
    PImage giorgio = loadImage("i.jpg");
    giorgio.resize(550, 550);
    image(giorgio, width/2, height/2);
  }
  if (tank1.lives < -10) {
    PImage red = loadImage("red.jpg");
    imageMode(CENTER);
    red.resize(600, 600);
    image(red, width/2, height/2);
  }
  if(tank0.lives < -10){
    PImage blue = loadImage("blue.jpg");
    imageMode(CENTER);
    blue.resize(600,600);
    image(blue, width/2, height/2);
  }
}

void keyPressed() {
  println(keyCode);
  if (keyCode == 82) {
    reset();
  }

  if (keyCode == 57) {
    mapOn = false;
    g = true;
    imageMode(CENTER);
    PImage giorgio = loadImage("i.jpg");
    giorgio.resize(300, 300);
    image(giorgio, width/2, height/2);
  }
  if (keyCode == 49) {
    mapOn = true;
    map1 = 1;
  }
  if (keyCode == 50) {
    mapOn = true;
    map1 = 2;
  }
  if (keyCode == 51) {
    mapOn = true;
    map1 = 3;
  }
  if (keyCode == tank0.shoot) {
    Bullet b = new Bullet(tank0.x + cos(ang0) * 25, tank0.y + sin(ang0) * 25, ang0, true);
    blist.add(b);
  }
  if (keyCode == tank1.shoot) {
    Bullet b = new Bullet(tank1.x + cos(ang1) * 25, tank1.y + sin(ang1) * 25, ang1, true);
    blist.add(b);
  }
  //0
  if (keyCode == tank0.up) {
    keys[0] = true;
  }
  //1
  if (keyCode == tank0.down) {
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
  if (keyCode == tank1.down) {
    keys[7] = true;
  }
}

void keyReleased() {
  //0
  if (keyCode == tank0.up) {
    keys[0] = false;
  }
  //1
  if (keyCode == tank0.down) {
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
  if (keyCode == tank1.down) {
    keys[7] = false;
  }
}

void reset() {
  tank0.x = 50;
  tank0.y = 300;
  tank0.ang = 0;
  tank1.x = 550;
  tank1.y = 300;
  tank1.ang = PI;
}

void explode(float f) {
  if (f == 0) {
    PImage exp = loadImage("exp.gif");
    imageMode(CENTER);
    exp.resize(100, 100);
    t0 = false;
    image(exp, tank0.x, tank0.y);

  } else {
    PImage exp = loadImage("exp.gif");
    imageMode(CENTER);
    exp.resize(100, 100);
    t1 = false; 
    image(exp, tank1.x, tank1.y);


  }
}




void end() {
  if (tank1.lives == 0) {
    PImage red = loadImage("red.jpg");
    imageMode(CENTER);
    red.resize(600, 600);
    image(red, width/2, height/2);
  }
}