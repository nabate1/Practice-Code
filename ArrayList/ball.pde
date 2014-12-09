class BouncyBall {
  PVector loc, vel;
  float sz;
  
  BouncyBall(float tempsz) {
    sz = tempsz;
    loc = new PVector(random(sz, width-sz), random(sz, height-sz));
    vel = PVector.random2D();
  }

  void display() {
    fill(0,0,200);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    loc.add(vel);
  }
  void wallBounce() {
    if (loc.x + sz/2 > width) {
      vel.x = -abs(vel.x);
    } 
    if (loc.x - sz/2 < 0) {
      vel.x = abs(vel.x);
    }
    if (loc.y + sz/2 > height) {
      vel.y = -abs(vel.y);
    }
    if (loc.y - sz/2 < 0) {
      vel.y = abs(vel.y);
    }
  }
  void collideWith(BouncyBall OtherBall) {
    if (loc.dist(OtherBall.loc) < sz/2 + OtherBall.sz/2) {
      vel = PVector.sub(loc, OtherBall.loc);
      vel.normalize();
    }
  }
}
