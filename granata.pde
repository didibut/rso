class granata {
PVector poz;
  PVector speed;
  PVector accel;
  float maxSpeed; 
  int r=10;

  granata(int x, int y) {
    poz = new PVector(x, y); 
   speed = new PVector(1, 1);
   accel = new PVector(random(1),random(1));
   maxSpeed = 8;
  }
  
  void update(){
    speed.add(accel); 
    if(poz.x>width || poz.x<0){
      speed.x=speed.x * -1;
      accel.x=accel.x * -1;
    }
    if(poz.y>height || poz.y<0){
      speed.y=speed.y * -1; 
      accel.y=accel.y * -1;
    }
     speed.limit(maxSpeed);
     poz.add(speed);
  }
  
  void display() {
    fill(240);
    circle(poz.x,poz.y, r);
  }
}
