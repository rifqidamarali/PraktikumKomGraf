void setup(){
  size(1000,500);
  background(255);
}

void draw(){
  noFill(); //membuat huruf R
  arc(105, 35, 50, 50, -PI, 0); 
  bezier(80, 35, 120, 50, 120, 70, 105, 300);
  beginShape();
  vertex(130,35);
  bezierVertex(250, 20, 350, 80, 155, 170);
  bezierVertex(155, 170, 150, 200, 280, 280);
  endShape();
  curve(40,-150, 280, 280, 140, 220, 10, -100);
  bezier(140, 220, 150, 300, 120, 310, 105, 300);
  beginShape();
  vertex(160,60);
  bezierVertex(160,60,300,80,160,120);
  bezierVertex(160,60,160,15,160,120);
  endShape();
  
  beginShape(); //Membuat huruf D
  vertex(350,35);
  bezierVertex(350, 35, 700, 130, 350, 300);
  bezierVertex(350, 300, 350, 130, 350, 35);
  endShape();
  beginShape();
  vertex(385,115);
  bezierVertex(385, 115, 560, 150, 385, 220);
  bezierVertex(385, 220, 385, 150, 385, 115);
  endShape();
  
  beginShape(); //membuat huruf A
  vertex(550,300);
  bezierVertex(550, 300, 600, 130, 650, 35);
  bezierVertex(650,35,675,20,700,35);
  bezierVertex(700, 35, 750, 130, 800, 300);
  bezierVertex(800,300,775,300,750,300);
  bezierVertex(750,300,675,80,600,300);
  bezierVertex(600,300,600,300,550,300);
  endShape(); 
  ellipse(675, 150, 50, 50);
  
  
  
}
