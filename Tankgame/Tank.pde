public class Tank {
  float x, y;  
  float up, down, left, right, shoot;
  float lives;
  boolean alive;
  float w, h, ang;
  boolean turn;

  public Tank(float up, float down, float left, float right, float shoot, float x, float y) {
    this.up = up;
    this.down = down;
    this.left = left;
    this.right = right;
    this.shoot = shoot;
    alive = true;
    lives = 3;
    h = 20;
    w = 30;
    ang = 0;
    this.x = x;
    this.y = y;
    turn = false;
  }

  /*public void turn(float ang) {
    rotate(radians(ang));
  }*/
}