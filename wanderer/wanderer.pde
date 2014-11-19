float x, y, velx, vely, accx, accy;
int sz=100;
void setup() {
  size(700, 700);
  x=width/2;
  y=height/2;
  velx=0;
  vely=0;
  accx=random(-1, 1);
  accy=random(-1, 1);
}

void draw() {
  accx=random(-1, 1);
  accy=random(-1, 1);
  velx += accx;
  vely +=accy;
  x+=velx;
  y+=vely;
  fill(0,0,255);
  ellipse(x,y,sz,sz);
   if (x - sz/2 > width) {      
    x = -sz/2;                 
  }

  if (x + sz/2 < 0) {          
    x = width + sz/2;          
  }

  if (y - sz/2 > height) {     
    y = -sz/2;                 
  }

  if (y + sz/2 < 0) {          
    y = height + sz/2;         
  }
}



