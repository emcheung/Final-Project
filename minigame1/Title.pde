class Title {
  Title() {
  }
  void display() {
    background(0);
    fill(255);
    textAlign(CENTER, TOP);
    textSize(100);
    text("[ M I N I G A M E  1 ]", width/2, height/2-250);
    textSize(75);
    text("FISHING", width/2, height/2-125);
    fill(150);
    textSize(50);
    text("click to continue...", width/2, height/2+200);
    textAlign(LEFT);
    fill(255);
    textSize(20);
    String des = "Catch as many fish as you can! Watch out for garbage and the shark though.";
    text(des, 250, height/2, 800, height);
  }
}