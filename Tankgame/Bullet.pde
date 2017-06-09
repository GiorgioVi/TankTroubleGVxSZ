public class Bullet{
  float x, y;
  float ang;
  float r;
  boolean show;
  //float tankNum; //which tank it came from
  
  public Bullet(float x, float y, float ang, boolean show){
   this.x = x;
   this.y = y;
   //this.tankNum = tankNum;
   r = 10;
   this.ang = ang;
   this.show = show;
  }
  boolean collision(Bullet b) {
    float dist = dist(x, y, b.x, b.y);

    if (dist < r ) {
      return true;
    } else return false;
  }  
}