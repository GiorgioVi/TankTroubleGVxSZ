public class Map {
  float mapNum;

  public Map(float map) {
    mapNum = map;
  }


  public void makeMap(float num) {
    if (num == 1) {
      fill(204, 102, 0);
      rect(50, 150, 75, 75);
      rect(50, 450, 75, 75);
      rect(450, 150, 75, 75);
      rect(450, 450, 75, 75);
      rect(250, 250, 100,100);
    } else if (num == 2) {

      fill(204, 102, 0);
      rect(0, 150, 300, 50);
      rect(450, 150, 300, 50);
      rect(250, 300, 380, 50);
      rect(400, 320, 50, 120);
      rect(100, 400, 50, 200);
      rect(100, 170, 50, 100);
    } else if (num == 3) {

      fill(204, 102, 0);
      rect(0, 300, 220, 50);
      rect(380, 300, 220, 50);
      rect(300, 0, 50, 220); 
      rect(300, 380, 50, 220);// ADD AFTER HERE
    }
  }
}