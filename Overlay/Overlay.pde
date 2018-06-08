PImage img;
float a;
float b;
float c;

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
    img.resize(1366,768);
    showxy();
    /*
    for(int i = 0 ; i < 9999990 ; i++){
      stroke(random(255), random(255), random(255));
    }
    */
    /*
    delay(250);
    stroke(random(255), random(255), random(255));
    */
    timer();
    border();
  }
  
  void showxy(){
    text("x = " +mouseX+  " y = " +mouseY, 0, 600);
  }
  
  void border(){
    line(20, a + 100, 20, a); 
    a = a - 0.75;
    if (a < 20) { 
      a = height - 100; 
    }
    line(1346, b + 100, 1346, b);
    b = b + 0.75;
    if(b > 450){
      b = 0;
    }
    line(c, 20, c + 100, 20);
    c = c - 0.75;
    if(c < 20){
      c = width - 100;
    }
  }
  void timer(){
    if(second() % 10 == 0){
      stroke(random(255), random(255), random(255));
    }
  }
