void setup(){ 
size(900,500);
}


void draw(){
background(29, 110, 224);
int d;

d=second();



//Jalan
fill(127, 130, 135);
rect(0,400,900,900);
fill(#FAFAFA);
noStroke();
rect(10-3*d,450,20,5);
rect(60-3*d,450,20,5);
rect(110-3*d,450,20,5);
rect(160-3*d,450,20,5);
rect(210-3*d,450,20,5);
rect(260-3*d,450,20,5);
rect(310-3*d,450,20,5);
rect(360-3*d,450,20,5);
rect(410-3*d,450,20,5);
rect(460-3*d,450,20,5);
rect(510-3*d,450,20,5);
rect(560-3*d,450,20,5);
rect(610-3*d,450,20,5);
rect(660-3*d,450,20,5);
rect(710-3*d,450,20,5);
rect(760-3*d,450,20,5);
rect(810-3*d,450,20,5);
rect(860-3*d,450,20,5);
rect(910-3*d,450,20,5);
rect(960-3*d,450,20,5);
rect(1010-3*d,450,20,5);
rect(1060-3*d,450,20,5);

//kincir angin
fill(0,0,0);
rect(-5-3*d,200,10,200);

pushMatrix();
translate(width*0-3*d, height*0.4);
rotate(frameCount / 200.0);
fill(255);
star(0, 0, 5, 70, 3);
popMatrix();


fill(0,0,0);
rect(175-3*d,200,10,200);

pushMatrix();
translate(width*0.2-3*d, height*0.4);
rotate(frameCount / 200.0);
fill(255);
star(0, 0, 5, 70, 3);
popMatrix();

fill(0,0,0);
rect(355-3*d,200,10,200);

pushMatrix();
translate(width*0.4-3*d, height*0.4);
rotate(frameCount / 200.0);
fill(255);
star(0, 0, 5, 70, 3);
popMatrix();

fill(0,0,0);
rect(535-3*d,200,10,200);

pushMatrix();
translate(width*0.6-3*d, height*0.4);
rotate(frameCount / 200.0);
fill(255);
star(0, 0, 5, 70, 3);
popMatrix();

fill(0,0,0);
rect(715-3*d,200,10,200);

pushMatrix();
translate(width*0.8-3*d, height*0.4);
rotate(frameCount / 200.0);
fill(255);
star(0, 0, 5, 70, 3);
popMatrix();

fill(0,0,0);
rect(895-3*d,200,10,200);

pushMatrix();
translate(width*1.0-3*d, height*0.4);
rotate(frameCount / 200.0);
fill(255);
star(0, 0, 5, 70, 3);
popMatrix();

fill(0,0,0);
rect(1075-3*d,200,10,200);

pushMatrix();
translate(width*1.2-3*d, height*0.4);
rotate(frameCount / 200.0);
fill(255);
star(0, 0, 5, 70, 3);
popMatrix();

//mobil
fill(0,100,100);
rect(40,380,190,47);

quad(55,380,210,380,150,340,100,340);

pushMatrix();
translate(width*0.1, height*0.84);
rotate(frameCount / 50.0);
fill(0,0,0);
polygon(0, 0, 30, 7);
popMatrix();

pushMatrix();
translate(width*0.2, height*0.84);
rotate(frameCount / 50.0);
fill(0,0,0);
polygon(0, 0, 30, 7); 
popMatrix();

//Matahari
pushMatrix();
translate(width*0.9, height*0.2);
rotate(frameCount / 200.0);
fill(#f9ef22);
star(0, 0,80, 70, 50);
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
