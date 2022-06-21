boolean Key_w =false;
boolean Key_s=false;

void keyPressed() {
  if (key== 'w'||key == 'W') {
    Key_w=true;
  }
}
void keyReleased() {

  if (key == 'w'||key == 'W') {
    Key_w=false;
  }
  if (key== ' ') misiles.add(new Proyectil(birdx, birdy));
}
