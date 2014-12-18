ArrayList<Particle> particles = new ArrayList<Particle>();
PImage photo;

void setup() {
  size(800, 600);
  noStroke();
  photo = loadImage("Nash.jpg");
}
 void mouseClicked() {
    particles.add(new Particle());
  }  
void draw() {
  background(0);
  image(photo,0,0 );
  for (int i = 0; i < particles.size (); i++) {
    Particle p = particles.get(i);
    p.display();
    p.move();
  }
}

class Particle {
  PVector loc, vel, acc;
  float sz;

  Particle() {
    sz = 20;
    loc = new PVector(575, 490);
    vel = new PVector(50, -10);
    acc = new PVector(0, .1);
  }
  // Display the particles
  void display() {
    fill(0);
    ellipse(loc.x, loc.y, sz, sz);
  }
  // Make particles move
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

