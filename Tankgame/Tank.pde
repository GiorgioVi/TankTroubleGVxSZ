public class Tank{
  
  float up, down, left, right, shoot;
  float lives;
  boolean alive;
  float w, h;
  
  public Tank(float up, float down, float left, float right, float shoot){
    this.up = up;
    this.down = down;
    this.left = left;
    this.right = right;
    this.shoot = shoot;
    alive = true;
    lives = 3;
    h = 20;
    w = 30;
  }
  public float getUp(){
    return up;
  }
  
  
  
  
}
  