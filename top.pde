class top {
int s;
int v;
int x;
int y;
float kot;
int st;
int p=4;

  granata g=new granata();
  top(int a, int b, float kot1, int st1) {
     s=10;
     v=50;
     x=a;
     y=b;
     kot=radians(kot1);
     st=st1;
  }
  
  void izstreli() {
    if(!g.izstreljena) {
      if (st==1)
      g.izstreli(x, y, kot, p);     
      if (st==2) {
        g.izstreli(x, y, -kot, p);
        g.speed.x=-g.speed.x; 
      }
    }
  }
  
  void update() {
    
    if (g.izstreljena) {
      g.let();
    }
    rectMode(CENTER);
    float kot1=radians(kot);
    translate(x, y);
    rotate(kot1);
    rect(0, 0, s, v);
    rotate(-kot1);
    translate(-x,-y);
    rectMode(CORNER);
    
  }
  
  void display() {
    fill(255);
    rect(x, y, s, v);
  }
  
  void nova(granata g) { //tukaj sem poskušal narediti nove žogice, ne dela
     if (g.y>400) { //če bi šel izven ekrana (spodaj)
       g.izstreljena=false; //se šteje da krogla ni izstreljena
       
     }
  }
}
