class Line{
  float xStart;
  float yStart;
  float xEnd;
  float yEnd;
  ArrayList<Point> points;
  
  Line(float _x1, float _y1, float _x2, float _y2){
    this.xStart = _x1;
    this.yStart = _y1;
    this.xEnd = _x2;
    this.yEnd = _y2;
    this.points = new ArrayList<Point>();
    
    this.generatePoints();
  }
  
  void generatePoints(){
    float distance = (this.xEnd - this.xStart) / (nbrPoints + 1);
    for(int i=1; i<=nbrPoints; i++){
      this.points.add(new Point(this.xStart + i*distance, this.yStart));
    }
  }
  
  void display(){
    float currX = this.xStart;
    float currY = this.yStart;
    for(Point p : this.points){
      line(currX, currY, p.x, p.y + p.value);
      // p.display();
      currX = p.x;
      currY = p.y + p.value;
    }
    line(currX, currY, this.xEnd, this.yEnd);
  }
}
