class granata {
PVector poz;
  PVector speed;
  PVector accel;
  float maxSpeed; 
  int r=10;
  float kot;
  boolean izstreljena=false;
  float x;
  float y=0;
  int v=50;
  int p=4; //moč
  
  granata() {
  
  }

  /*granata(int x, int y, float kot1) {
    poz = new PVector(x, y); 
   speed = new PVector(1, 1);
   accel = new PVector(2,-2);
   maxSpeed = 8;
   kot=kot1;
  }*/
  
  void update(){
    
  }
  
  void izstreli(int x, int y, float kot1, int p1) {
    kot=radians(kot1);
    p=p1;
    poz = new PVector(x, y); 
   speed = new PVector(cos(kot), sin(kot));
   accel = new PVector(1*p,-1*p);
   maxSpeed = 8;
   //speed.add(accel); 
    speed.limit(maxSpeed);
    poz.add(speed);
    speed.add(accel);
   izstreljena=true;
   
     //System.out.print(g.poz.x+" "+g.poz.y);
  }
  
  
  
  void let() {
    fill(240);
    circle(poz.x,poz.y, r);
    speed.y+=0.05;
    poz.x+=speed.x;
    x+=speed.x;
    poz.y+=speed.y;
    y+=speed.y;
  }
}
