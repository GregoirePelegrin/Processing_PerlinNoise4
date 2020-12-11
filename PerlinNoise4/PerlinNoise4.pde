SimpleFigure sf;
int time = 0;

float coeffPerlin = 0.01;
float coeffMultip = 25;
int nbrPoints = 100;
int nbrLines = 50;

void setup(){
  size(600, 600);
  frameRate(30);
  background(255);
  
  sf = new SimpleFigure();
  // noLoop();
}

void draw(){
  background(255);
  
  sf.display();
  time += 2;
  sf.update();
}
