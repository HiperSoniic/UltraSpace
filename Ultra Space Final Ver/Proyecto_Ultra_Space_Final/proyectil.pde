class Proyectil {
  //att
  float largo;
  PVector pos, vel, acc;
  //const
  Proyectil(float P_X, float P_Y) {
    pos =new PVector( P_X, P_Y);
    largo = 10;
    vel = new PVector(20, 0);
    acc= new PVector(0, 0);
  }
  //metodos

  void mostrar() {
    stroke(255,30,30);  
    strokeWeight(5);
    line(pos.x, pos.y, pos.x+largo, pos.y);
  }

  void mover() {
    vel.add(acc);
    acc.mult(0);
    pos.add(vel);
  }
}
