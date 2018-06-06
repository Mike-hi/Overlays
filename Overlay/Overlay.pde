PImage img;
int a;
int b;
int c;

  void setup(){
    fullScreen();
    img = loadImage("Transparent.png");
    a = height/2;
    b = height/2;
    c = width/2;
  }
  
  void draw(){
    background(0);
    image(img, 0, 0);
    showxy();
    
    border();
  }
  
  void showxy(){
    text("x = " +mouseX+  " y = " +mouseY, 0, 800);
  }
  
  void border(){
    line(20, a + 100, 20, a); 
    a = a - 1;
    if (a < 0) { 
      a = height; 
    }
    line(1900, b + 100, 1900, b);
    b = b + 1;
    if(b > 700){
      b = 0;
    }
    line(c, 20, c + 100, 20);
    c = c - 1;
    if(c < 0){
      c = width;
    }
  }
