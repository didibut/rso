top t;
top t1;
//granata g=new granata(50, 350, kot);
//granata g1=new granata(750, 350, kot1);
granata g=new granata();

void setup() {
   size (800, 400);
   t=new top(50, 350, 90, 1);
   t1=new top(750, 350, 90, 2);
}

void draw() {
  background(100);
  fill(255);
  if (g.izstreljena)
  System.out.println(g.poz.y);
  
  t.update();
  t1.update();
  t.nova(g);
  
}

void keyPressed() {
  
    if ((key == 'd' || key == 'D') && t.kot < 70) {
       t.kot+=1.0; 
       
    }
    if ((key == 'a' || key == 'A') && t.kot > 0) {
      t.kot-=1.0;
      
    }
    if (keyCode == RIGHT && t1.kot < 0) {
       t1.kot+=1.0; 
    }
    if (keyCode == LEFT && t1.kot > -70) {
      t1.kot-=1.0;
    }
    if (key == 'w' || key == 'W') {
      t.izstreli();
    }
    if (key == ENTER) {
      t1.izstreli();
    }
    if (key == 'e' || key == 'E') {
      t.p+=1;
      System.out.println(t.p);
    }
    if (key == 'q' || key == 'Q') {
      t.p-=1;
      System.out.println(t.p);
    }
    if (keyCode == UP) {
      t1.p+=1;
      System.out.println(t1.p);
    }
    if (keyCode == DOWN) {
      t1.p-=1;
      System.out.println(t1.p);
    }
    
  
}
