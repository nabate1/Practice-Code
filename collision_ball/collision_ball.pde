float sz;
PVector loc;
void setup(){
  size(800,600);
 loc=new PVector(width/2,height/2);
 sz=150;
}

void draw(){
background(0);
ellipse(loc.x,loc.y,sz,sz);
  if(dist(mouseX,mouseY,loc.x,loc.y)<sz/2){
    fill(0,255,0);
    loc.x=random(width);
    loc.y=random(height);
  }
  else{
   fill(255,0,0); 
  }
}
