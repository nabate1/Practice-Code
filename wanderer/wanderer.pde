PVector loc;
PVector vel;
PVector acc;
int sz=100;
void setup() {
  size(700, 700);
  loc=new PVector(width/2,height/2);
  vel= new PVector(0,0);
  acc= new PVector(random(-1, 1),random(-1, 1));
}

void draw() {
  acc.set(random(-1, 1),random(-1, 1));
 
  vel.add(acc);
  loc.add(vel);
  fill(0,0,255);
  ellipse(loc.x,loc.y,sz,sz);
   if (loc.x - sz/2 > width) {      
    loc.x = -sz/2;                 
  }

  if (loc.x + sz/2 < 0) {          
    loc.x = width + sz/2;          
  }

  if (loc.y - sz/2 > height) {     
    loc.y = -sz/2;                 
  }

  if (loc.y + sz/2 < 0) {          
    loc.y = height + sz/2;         
  }
}



