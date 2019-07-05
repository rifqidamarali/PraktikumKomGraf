float xSpeed = 1;
float ySpeed = 1;
float xPosition = 50;
float yPosition = 50;

float ballWidth = 40;
float ballHeight = 40;
 
void setup(){
  size(500, 400);
  noStroke();
  smooth();
}
 
void draw() { 
  background(255);
  
  fill(0,0,255);
  circle(xPosition, yPosition, 50);
 
  ySpeed +=1;
  xSpeed *=.9975;
  xPosition += xSpeed;
  yPosition += ySpeed;
 
//mengganti arah ketika bola mengenai tembok bagian kanan
  if (xPosition > width-ballWidth/2)  {
    xPosition=width-ballWidth/2;
    xSpeed=-xSpeed;
  }
 
// mengganti arah ketika bola mengenai tembok bagian kiri 
  if (xPosition<ballWidth/2)  {
    xPosition=ballWidth/2;   
    xSpeed=-xSpeed;
  }
 
// ketinggian akan semakin berkuarang ketika bola memantul
  if (yPosition > height-ballHeight/2)
  {
    yPosition=height-ballHeight/2;
    ySpeed = -ySpeed*.9;
  }
 
//memperlambat bola lebih cepat ketika bola bergulir
  if (yPosition > height-ballHeight/2-1)  {
    xSpeed *=.9975;
  }
}
 
// untuk mengulangi ketika ingin melempar bola
void mouseDragged() {
  xPosition = mouseX;
  yPosition = mouseY;
  xSpeed = mouseX - pmouseX;
  ySpeed = mouseY - pmouseY;
}
