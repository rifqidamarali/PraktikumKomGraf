int a; 
int b;
boolean direction;
void setup() 
{ 
size(900, 500); 
colorMode(RGB, width); 
a = 0; 
b = width; 
direction = true; 
frameRate(30);
noStroke();
smooth();
} void draw(){ 
a++; 
if(a > width) { 
  a = 0; 
  direction = !direction;
}
if(direction == true){ 
stroke(a); 
} else { 
stroke(width-a); } 
line(a, 0, a, height/2); 
b--; 
if(b < 0) { 
b = width; } 
if(direction == true) {
stroke(width-b); } 
else { stroke(b); 
} 
line(b, height/2+1, b, height); 
// Scale the mouseX value from 0 to 640 to a range between 0 and 175 
float c = map(mouseX, 0, width, 0, 1000); // Scale the mouseX value from 0 to 640 to a range between 40 and 300 
float d = map(mouseX, 0, width, 40, 200); 
fill(255, c, 0); 

//pushMatrix();
//translate(width*0.5, height*0.5);
//rotate(frameCount / -100.0);
//polygon(0, 0, d, 8); // Heptagon
//popMatrix();

pushMatrix();
translate(width*0.5, height*0.5);
rotate(frameCount / 400.0);
star(0, 0, 80, d, 40);
popMatrix();
}

void polygon(float x, float y, float radius, int npoints) {
float angle = TWO_PI / npoints;
beginShape();
for (float a = 0; a < TWO_PI; a += angle) {
float sx = x + cos(a) * radius;
float sy = y + sin(a) * radius;
vertex(sx, sy);
}
endShape(CLOSE);
}

void star(float x, float y, float radius1, float radius2, int npoints) {
float angle = TWO_PI / npoints;
float halfAngle = angle/2.0;
beginShape();
for (float a = 0; a < TWO_PI; a += angle) {
float sx = x + cos(a) * radius2;
float sy = y + sin(a) * radius2;
vertex(sx, sy);
sx = x + cos(a+halfAngle) * radius1;
sy = y + sin(a+halfAngle) * radius1;
vertex(sx, sy);
}
endShape(CLOSE);
}
