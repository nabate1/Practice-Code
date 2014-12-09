ArrayList<BouncyBall> balls = new ArrayList<BouncyBall>();

void setup() {
  size(800, 600);
  background(0);
    balls.add(new BouncyBall(random(10, 100)));
}

void draw() {
  background(0);
    for (int i = 0; i < balls.size (); i++) {
    BouncyBall b = balls.get(i);    
    b.display();
    b.move();
    b.wallBounce();
  }
}

void mousePressed() {
   balls.add(new BouncyBall(random(10, 100)));
}

