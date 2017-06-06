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
    }
  }
}