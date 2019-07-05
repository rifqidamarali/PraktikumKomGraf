PImage img;

void setup(){
img = loadImage("gedung.png");  
size(900,500);
}

void draw(){
background(29, 110, 224);
int d;
d=second();

//bulan
fill(#f9ef22);
ellipse(800-3*d,80,90,90);
  
//Jalan
fill(127, 130, 135);
rect(0,400,900,900);
fill(#FAFAFA);
noStroke();
rect(10,450,20,5);
rect(60,450,20,5);
rect(110,450,20,5);
rect(160,450,20,5);
rect(210,450,20,5);
rect(260,450,20,5);
rect(310,450,20,5);
rect(360,450,20,5);
rect(410,450,20,5);
rect(460,450,20,5);
rect(510,450,20,5);
rect(560,450,20,5);
rect(610,450,20,5);
rect(660,450,20,5);
rect(710,450,20,5);
rect(760,450,20,5);
rect(810,450,20,5);
rect(860,450,20,5);

//gedung
image(img, 0, -8);

//mobil
fill(#FCFDFF);
ellipse (35+10*d,450,30,30);
ellipse(100+10*d,450,30,30);
fill(#0C0D0C);
ellipse (35+10*d,450,10,10);
ellipse(100+10*d,450,10,10);
fill(#0319FF);
rect(10+10*d,410,120,41);

//orang
fill(255,205,155);
ellipse(38+10*d,380,18,18);
fill(100,20,10);
fill(100,20,255);
rect(30+10*d,390,18,18);
fill(255,305,155);
rect(30+10*d,395,30,5);

//orang2
fill(255,205,155);
ellipse(94+10*d,380,18,18);
fill(100,20,10);
fill(100,20,0);
rect(86+10*d,390,18,18);
fill(255,305,155);
rect(86+10*d,395,30,5);
}
