GravityBall[]bouncer = new GravityBall[3000];
void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i<bouncer.length; i++) {
    bouncer[i] = new GravityBall(10);
  }
}

void draw() {
  background(0);
  for (int i = 0; i<bouncer.length; i++) {
    bouncer[i].display();
    bouncer[i].move();
    bouncer[i].bounce();
  }
}
class GravityBall {
  PVector loc, vel, acc;
  float sz;
  GravityBall(float tempsize) {
    loc = new PVector(random(sz, width-sz/2), random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, 10);
    sz = tempsize;
  }
  void display() {
    fill(0, 0, 200);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void bounce() {
    if (loc.y > height - sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}

