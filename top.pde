class top {
int s;
int v;
int x;
int y;
  
  top(int a, int b) {
     s=10;
     v=50;
     x=a;
     y=b;
  }
  
  void update(float deg) {
    
    rectMode(CENTER);
    float kot=radians(deg);
    translate(x, y);
    rotate(kot);
    rect(0, 0, s, v);
    rotate(-kot);
    translate(-x,-y);
    
  }
  
  void display() {
    fill(255);
    rect(x, y, s, v);
  }
}
