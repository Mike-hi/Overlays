PImage img;

  void setup(){
    img = loadImage("Transparent.png");
    size(1920, 1080);
  }
  
  void draw(){
    background(0);
    image(img, 0, 0);
    showxy();
  }
  
  void showxy(){
    text("x = " +mouseX+  " y = " +mouseY, 0, 665);
  }
