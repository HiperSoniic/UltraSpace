class Rect
{
  int maxImages = 4;
  int imageIndex = 0;
  PImage [] laser = new PImage[maxImages];

  float arriba = random(height/2 + 200);
  float abajo = random(height/2 +200);


  float x = width + 150;
  float w = 60;
  color Color = color(0, 230, 250);

  void Rect2()
  {
    for (int i = 0; i < laser.length; i++) {
      laser[i] = loadImage("Laser_" + i + ".png");
    }
    //stroke(0,255,0);  
    //fill(Color);
    image(laser[imageIndex], x, 0, w, arriba);
    image(laser[imageIndex], x, height-abajo, w, abajo);
    imageIndex = (imageIndex+1)%laser.length;
    //rect(x, 0, w, arriba);
    //rect(x, height-abajo, w, abajo);

    if (x < -120)
    {
      puntaje += point;
      x = width;
      arriba = random(height/2.5);  //el largo de los tubos de arriba
      abajo = random(height/2.5);   //_____________________ de abajo
    }
  }
}
//class Rect
//{
//  float arriba = random(height/2 + 200);
//  float abajo = random(height/2 +200);


//  float x = width + 150;
//  float w = 60;
//  color Color = color(0, 230, 250);

//  void Rect2()
//  {
//    stroke(0,255,0);  
//    fill(Color);
//    rect(x, 0, w, arriba);
//    rect(x, height-abajo, w, abajo);

//    if(x < -120)
//    {
//     puntaje += point;
//     x = width;
//     arriba = random(height/2.5);  //el largo de los tubos de arriba
//     abajo = random(height/2.5);   //_____________________ de abajo
//    }


//  }


//}
