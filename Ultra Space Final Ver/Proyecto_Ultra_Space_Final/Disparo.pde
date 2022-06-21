class Bala {
PVector pos;
PVector vel;
int prop;
int radio=10;

Bala (PVector P_pos, PVector P_vel, int P_prop){
  pos = P_pos;
  vel= P_vel;
  vel.mult(20);
  prop= P_prop;
}
void mover(){
pos.add(vel);
}
boolean fuera(){
return (pos.mag()> width/2);
}
void mostrar(){
  noStroke();
  fill (random(255),random(200),(0));
  ellipse(pos.x,pos.y,radio,radio);
}
}
