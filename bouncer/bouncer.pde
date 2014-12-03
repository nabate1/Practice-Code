GravityBall bouncer;

void setup() {
  size(800, 600);
    bouncer = new GravityBall();
}

void draw() {
  background(0);
  bouncer.display();
  bouncer.move();
  bouncer.bounce();
}
class GravityBall {
  PVector loc, vel, acc;
  float sz;
  GravityBall() {

    loc = new PVector(width/2, height/2);
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
    sz = 50;
  }
  void display() {

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

