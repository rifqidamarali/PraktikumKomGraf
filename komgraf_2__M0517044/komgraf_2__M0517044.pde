void setup() {
size(900, 400); //membuat size background menjadi 900x400
background(43,47,82); //memberi warna bacground
noStroke(); //membuat obyek menjadi tidak punya garis tepi
fill(158, 255, 229, 100); //memberi warna
circle(850,200,50); //membuat lingkaran
fill(158, 255, 229); //memberi warna
pushMatrix(); //membuat koordinat baru
translate(-60,0); //men-translasi horisontal sebanyak 60px ke kiri dan 0px vertikal
fill(178, 140, 247); //memberi warna
circle(850,200,50); //membuat lingkaran
popMatrix(); //mengembalikan koordinat menjadi koordinat yang lama
fill(206, 99, 12); //memberi warna
pushMatrix(); //membuat koordinat baru
translate(-170,0); //men-translasi horisontal sebanyak 170px ke kiri dan 0px vertikal dari koordinat lingkaran yang paling kanan
circle(850,200,70); //membuat lingkaran
popMatrix(); //mengembalikan koordinat menjadi koordinat yang lama
fill(158, 255, 229); //memberi warna
pushMatrix(); //membuat koordinat baru
translate(-300,0); //men-translasi horisontal sebanyak 30px ke kiri dan 0px vertikal dari koordinat lingkaran yang paling kanan
circle(850,200,100); //membuat lingkaran
popMatrix(); //mengembalikan koordinat menjadi koordinat yang lama
fill(237, 47, 26); //memberi warna
pushMatrix(); //membuat koordinat baru
translate(-400,0); //men-translasi horisontal sebanyak 400px ke kiri dan 0px vertikal dari koordinat lingkaran yang paling kanan
circle(850,200,30); //membuat lingkaran
popMatrix(); //mengembalikan koordinat menjadi koordinat yang lama
fill(26, 135, 237); //memberi warna
pushMatrix(); //membuat koordinat baru
translate(-450,0); //men-translasi horisontal sebanyak 450px ke kiri dan 0px vertikal dari koordinat lingkaran yang paling kanan
circle(850,200,40); //membuat lingkaran
popMatrix(); //mengembalikan koordinat menjadi koordinat yang lama
fill(229, 237, 14); //memberi warna
pushMatrix(); //membuat koordinat baru
translate(-520,0); //men-translasi horisontal sebanyak 520px ke kiri dan 0px vertikal dari koordinat lingkaran yang paling kanan
circle(850,200,45); //membuat lingkaran
popMatrix(); //mengembalikan koordinat menjadi koordinat yang lama
fill(95, 9, 160); //memberi warna
pushMatrix(); //membuat koordinat baru
translate(-580,0); //men-translasi horisontal sebanyak 580px ke kiri dan 0px vertikal dari koordinat lingkaran yang paling kanan
circle(850,200,30); //membuat lingkaran
popMatrix(); //mengembalikan koordinat menjadi koordinat yang lama
fill(225, 255, 0); //memberi warna
pushMatrix(); //membuat koordinat baru
translate(-900,0); //men-translasi horisontal sebanyak 900px ke kiri dan 0px vertikal dari koordinat lingkaran yang paling kanan
circle(850,200,400); //membuat lingkaran
popMatrix(); //mengembalikan koordinat menjadi koordinat yang lama

fill(255); //memberi warna text
//membuat text pada koordinat tertentu
text("Neptunus", 830, 270); 
text("Uranus", 770, 270);
text("Saturnus", 660, 270);
text("Jupiter", 535, 270);
text("Mars", 440, 270);
text("Bumi", 390, 270);
text("Venus", 315, 270);
text("Merkurius", 240, 270);
text("Matahari", 110, 50);
}
