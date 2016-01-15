class Boat {
  PImage boat;  
  float count;

  Boat() {
    boat = loadImage("boat.png");
  }

  void display(float x, float y) {
    imageMode(CENTER);
    scale(0.4);
    image(boat, x, y);
  }
}