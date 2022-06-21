class Pelotita {
  //atriibutos
  int r = 2;
  float x = random(1080);
  float y = random(720);
  float vx = 1;
  float vy = 1;

  //metodos
  Pelotita() {   //construccion
  }
  void mostrar() {
    stroke(255);
    ellipseMode(RADIUS);
    fill (255, 255, 255);
    ellipse (x, y, r, r);
  }

  void mover () {
    x = x + vx;
    if (x>= width+r) x = -r;
    //if (x<= r) vx = -vx;

    y= y + vy;
    if (y>= height+r) y = -r;
    //if (y<= r) vy = -vy;
  }
}
