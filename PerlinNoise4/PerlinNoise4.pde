Line l;
int time = 0;

float coeffPerlin = 0.01;
float coeffMultip = 100;
int nbrPoints = 500;

void setup(){
  size(600, 600);
  frameRate(30);
  background(255);
  
  l = new Line(50, height/2, width - 50, height/2);
}

void draw(){
  l.display();
  time += 1;
  l.update();
}
