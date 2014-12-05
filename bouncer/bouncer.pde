Bouncer[] bouncers = new Bouncer[100];
void setup() {
  size(displayWidth,displayHeight);
  for (int i = 0; i < bouncers.length; i++) {
    bouncers[i] = new Bouncer(random(5, 50), random(.5, 10));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < bouncers.length; i++) {
    bouncers[i].display();
    bouncers[i].move();
    bouncers[i].wallBounce();
    for (int j = 0; j < bouncers.length; j++) {
      if (i!=j) {
        bouncers[i].collideWith(bouncers[j]);
      }
    }
  }
}

class Bouncer {
  PVector loc, vel;
  float sz,acc;
  

  Bouncer(float tempsz, float tempacc) {
    sz = tempsz;
    loc = new PVector(random(sz, width-sz), random(sz, height-sz));
    vel = PVector.random2D();
    acc = tempacc;
    vel.mult(acc);
  }

  void display() {
    fill(0,0,200);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
  }

  void wallBounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    } 
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }

  void collideWith(Bouncer anotherBall) {
       if (loc.dist(anotherBall.loc) < sz/2 + anotherBall.sz/2) {
      vel = PVector.sub(loc, anotherBall.loc);
      vel.normalize();
    }
  }
}
