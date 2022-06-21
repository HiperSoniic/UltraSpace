class Enemigo {
  //att
  float largo;
  PVector pos, vel, acc;
  float ang; 
  int pasos = 0;   //???????

  //const
  Enemigo(float P_X, float P_Y) {
    pos =new PVector( P_X, P_Y);
    largo = 40;
    vel = new PVector(-6, 0);
    acc= new PVector(0, 0);
  }
  //metodos

  void mostrar() {
    noStroke();  
    strokeWeight(1);  
    image(OvniImg, pos.x, pos.y, largo, largo);
  }

  void mover() {
    acc.add(new PVector(-0.03, 0));
    vel.add(acc);
    acc.mult(0);
    pos.add(vel);

    if (pasos == 0) {
      ang += random(-0.5, 0.5);
      vel = PVector.fromAngle(ang);
      vel.add(PVector.fromAngle(PI +atan2( pos.y-height/2, pos.x-width/2)));  
      if (random(10)<0.5) {
        vel.mult(4.25);
        pasos = int(random(15, min(pos.x,100)));  
      }
    }

    
    pasos--;
    if (pasos<0) pasos = 0;
    pos.x=constrain(pos.x, 60, width);
    pos.y=constrain(pos.y, 0, height);
  }
}
