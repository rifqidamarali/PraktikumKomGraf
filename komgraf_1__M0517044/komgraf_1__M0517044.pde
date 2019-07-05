background(170,170,170); //warna background(abu2)
size(500,500); //size background

beginShape(); //frame dalam
vertex(10,10);
vertex(490, 10);
vertex(490, 490);
vertex(10, 490);

endShape(CLOSE);
//badan
beginShape();
noStroke(); //menghilangkan garis tepi
fill(153,204,1); //warna hijau
vertex(150,200);
vertex(350,200);
vertex(350,350);
vertex(150,350);
endShape(CLOSE);

//kepala
circle(250,190,200);


//mata kiri
noStroke();
fill(255);
circle(210,130,10);
//mata kanan
circle(290,130,10);

//jarak antara badan dan kepala
beginShape();
noStroke();
fill(255);
vertex(150,200);
vertex(350,200);
vertex(350,190);
vertex(150,190);
endShape(CLOSE);

//tangan kanan
beginShape();
noStroke();
fill(153,204,1);
vertex(356,200);
vertex(380,200);
vertex(380,310);
vertex(356,310);

circle(368,200,24);
circle(368,310,24);
endShape(CLOSE);


//tangan kiri
beginShape();
noStroke();
fill(153,204,1);

vertex(144,200);
vertex(120,200);
vertex(120,310);
vertex(144,310);

circle(132,200,24);
circle(132,310,24);
endShape(CLOSE);

//kaki kiri
beginShape();
noStroke();
fill(153,204,1);

vertex(170,350);
vertex(200,350);
vertex(200,420);
vertex(170,420);

circle(185,420,30);
endShape(CLOSE);

//kaki kanan

beginShape();
noStroke();
fill(153,204,1);

vertex(330,350);
vertex(300,350);
vertex(300,420);
vertex(330,420);

circle(315,420,30);
endShape(CLOSE);

stroke(153,204,1);
strokeWeight(10);  // Beastly
line(310, 110, 350, 60); //telinga kanan
line(190, 110, 150, 60); //telinga kiri
