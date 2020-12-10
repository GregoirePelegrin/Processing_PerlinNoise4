class Point{
  float x;
  float y;
  float value;
  
  Point(float _x, float _y){
    this.x = _x;
    this.y = _y;
    this.value = map(noise(x*coeffPerlin, y*coeffPerlin, time*coeffPerlin), 0, 1, -coeffMultip, coeffMultip);
  }
  
  void display(){
    stroke(0);
    noFill();
    ellipse(this.x, this.y, 2, 2);
    fill(0, 50);
    ellipse(this.x, this.y, this.value, this.value);
  }
  
  void update(){
    this.value = map(noise(x*coeffPerlin, y*coeffPerlin, time*coeffPerlin), 0, 1, -coeffMultip, coeffMultip);
  }
}
