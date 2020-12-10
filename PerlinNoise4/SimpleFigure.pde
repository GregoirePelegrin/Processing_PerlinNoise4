class SimpleFigure{
  ArrayList<Line> lines;
  
  SimpleFigure(){
    this.lines = new ArrayList<Line>();
    
    this.generateLines();
  }
  
  void generateLines(){
    float distance = (height - 100) / nbrLines;
    for(int i=0; i<nbrLines; i++){
      this.lines.add(new Line(50, (height - 50) - i*distance, width - 50, (height - 50) - i*distance));
    }
  }
  
  void display(){
    for(Line l : this.lines){
      l.display();
    }
    line(50, 50, 50, height - 50);
    line(width - 50, 50, width - 50, height - 50);
  }
  
  void update(){
    for(Line l : this.lines){
      l.update();
    }
  }
}
