float x,y,grav,vx,vy;
int sz=100;
void setup(){
  size(800,800);
  x=width/2;
  y=height*.1;
  vx=2;
  vy=0;
  grav=.1;
}  

void draw(){
  background(0);
  fill(0,0,255);
  ellipse(x,y,sz,sz);
  vy+=grav;
  x+=vx;
  y+=vy;
  if(y+sz/2>height){
    y=height-sz/2;
   vx*=.9;
   vy*=-.8;
  }
  if(x+sz/2>width || x-sz/2<0){
   vx=-vx; 
  }
}
