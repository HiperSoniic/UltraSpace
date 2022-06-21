const int trigPin=11;  //Puede usarse como cualquier otra variable pero su valor no puede ser cambiado en este caso 11
int echoPin=10;
int safezone=10; 
int boton;
void setup() 
{
//inicializamos los dos pines del ultrasonidos
pinMode(trigPin,OUTPUT); 
pinMode(echoPin,INPUT);
pinMode(2,INPUT);
Serial.begin(9600);
}
void loop(){
boton=digitalRead(2);
if (boton==HIGH){
Serial.write('a');
}
delay (100);
long duration,cm;           //MIDE LA DISTANCIA
digitalWrite(trigPin,LOW);  //GENERA UN PULSO LIMPIO
delayMicroseconds(2);       //ESPERA 2 MICROSEG
digitalWrite(trigPin,HIGH); //GENERA EL DISPARO
delayMicroseconds(5);       //ESPERA 5 MICROSEG HASTA QUE SE ENVIE EL DISPARO DEL PULSO
digitalWrite(trigPin,LOW);  //VUELVE A GENERAR PULSO
duration=pulseIn(echoPin,HIGH); //MIDE EL TIEMPO ENTRE PULSOS EN MICROSEGUNDOS
cm=microsecondsToCentimeters(duration); //FORMULA PARA CONVERTIR DISTANCIA EN CM
long inch= cm/2.54;
Serial.println(cm);
}
long microsecondsToCentimeters(long microseconds)
{
return microseconds/29/2;  //EL PULSO VIAJA DEL SENSOR Y VUELVE DE NUEVO POR LO QUE LO DIVIDIMOS POR 2 PARA TOMAR SOLO LA MITAD DE LA DISTANCIA TOTAL
}
