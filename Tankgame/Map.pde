public class Map {
  float mapNum;

  public Map(float map) {
    mapNum = map;
  }




  public void makeMap(float num) {
    if (num == 1) {
      fill(204, 102, 0);
      rect(150, 150, 20, 300);
      rect(450, 150, 20, 300);
      rect(200, 60, 220, 20);
      rect(200, 520, 220, 20);
    } else if (num == 2) {

      fill(204, 102, 0);
      rect(0, 150, 300, 20);
      rect(450, 150, 300, 20);
      rect(250, 300, 380, 20);
      rect(400, 320, 20, 120);
      rect(100, 400, 20, 200);
      rect(100, 170, 20, 100);
    } else if (num == 3) {

      fill(204, 102, 0);
      rect(0, 300, 220, 20);
      rect(380, 300, 220, 20);
      rect(300, 0, 20, 220); 
      rect(300, 380, 20, 220);// ADD AFTER HERE
    }
  }
}