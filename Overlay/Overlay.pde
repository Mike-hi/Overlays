PImage img;

  void setup(){
    img = loadImage("Transparent.png");
    size(1920, 1080);
  }
  
  void draw(){
    background(0);
    image(img, 0, 0);
    showxy();
    border();
  }
  
  void showxy(){
    text("x = " +mouseX+  " y = " +mouseY, 0, 665);
  }
  
  void border(){
    stroke(255, 0 , 0);
    for(int i = 1 ; i <= 10 ; i++){
      line(10, 20 * (i * 10), 10, i * 100);
    }
  }
