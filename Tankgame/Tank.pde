public class Tank {
  float x, y;  
  float up, down, left, right, shoot;
  float lives;
  boolean alive;
  float w, h, ang;
  float r; //hitbox radius
  ArrayList<Bullet> bullets = new ArrayList<Bullet>();

  public Tank(float up, float down, float left, float right, float shoot, float x, float y, float ang) {
    this.up = up;
    this.down = down;
    this.left = left;
    this.right = right;
    this.shoot = shoot;
    alive = true;
    lives = 1;
    h = 20;
    w = 30;
    this.ang = ang;
    this.x = x;
    this.y = y;
    r = 20;
  }

  boolean hit(Bullet b) {
    float dist = dist(x, y, b.x, b.y);

    if (dist < r) {
      return true;
    } else return false;
  }

  boolean collision(Tank t) {
    float dist = dist(x, y, t.x, t.y);

    if (dist < r ) {
      return true;
    } else return false;
  }

  void shoot(float bang) {
    Bullet b = new Bullet(x, y, bang, true);
    if(bullets.size() < 5){
    bullets.add(b);
    }
  }
}