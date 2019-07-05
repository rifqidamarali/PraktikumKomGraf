PImage[] face = new PImage[6];    // membuat object dengan type array untuk menyimpan file gambar
float rotx = PI/4;    // untuk melakukan rotasi pada sumbu x dengan nilai PI/4
float roty = PI/4;    // untuk melakukan rotasi pada sumbu y dengan nilai PI/4

void setup() {    // fungsi yang dijalankan pertama kali saat pogram dieksekusi
  size(640, 360, P3D);    // set windows size 640 x 360 dengan bentuk 3D, P3D
  textureMode(NORMAL);    // set textureMode normal
  for (int i = 1; i <= 6; i++) {    // looping untuk meload gambar pada object face
    face[i-1] = loadImage(+i+".png");
  }
}

void draw() {    // fungsi untuk menampilkan gambar
  background(62);    // set bacground color
  noStroke();    // set tidak ada garis tepi
  translate(width/2.0, height/2.0, -100);    // translate berdasarkan titik tengah
  rotateX(rotx);    // rotasi sumbu x berdasarkan nilai rotx
  rotateY(roty);    // rotasi sumbu y berdasarkan nilai roty
  scale(100);      // memperbersar 100%
  TexturedCube();    // memanggil fungsi TexturedCube
}

void TexturedCube() {  // membuat fungsi texturedcube
  beginShape(QUADS);    // beginshape
  // +Z "front" face
  texture(face[0]);    // untuk memasukkan file gambar face[0] pada vertex point
  // set vertex berbentuk persegi dengan posisi seperti berikut
  vertex(-1, -1,  1, 0, 0);
  vertex( 1, -1,  1, 1, 0);
  vertex( 1,  1,  1, 1, 1);
  vertex(-1,  1,  1, 0, 1);
  endShape(); // endshape
  
  beginShape(QUADS);    // beginshape
  // -Z "back" face
  texture(face[5]);    // untuk memasukkan file gambar face[5] pada vertex point
  // set vertex berbentuk persegi dengan posisi seperti berikut
  vertex( 1, -1, -1, 0, 0);
  vertex(-1, -1, -1, 1, 0);
  vertex(-1,  1, -1, 1, 1);
  vertex( 1,  1, -1, 0, 1);
  endShape();    // endshape
  
  beginShape(QUADS);    // beginshape
  // +Y "bottom" face
  texture(face[1]);    // untuk memasukkan file gambar face[1] pada vertex point
  // set vertex berbentuk persegi dengan posisi seperti berikut
  vertex(-1,  1,  1, 0, 0);
  vertex( 1,  1,  1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex(-1,  1, -1, 0, 1);
  endShape();    // endshape
  
  beginShape(QUADS);    // beginshape
  // -Y "top" face
  texture(face[4]);    // untuk memasukkan file gambar face[4] pada vertex point
  vertex(-1, -1, -1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1, -1,  1, 1, 1);
  vertex(-1, -1,  1, 0, 1);
  endShape();    // endshape
  
  beginShape(QUADS);    // beginshape
  // +X "right" face
  texture(face[2]);    // untuk memasukkan file gambar face[2] pada vertex point
  // set vertex berbentuk persegi dengan posisi seperti berikut
  vertex( 1, -1,  1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex( 1,  1,  1, 0, 1);
  endShape();    // endshape
  
  beginShape(QUADS);    // beginshape
  // -X "left" face
  texture(face[3]);    // untuk memasukkan file gambar face[3] pada vertex point
  // set vertex berbentuk persegi dengan posisi seperti berikut
  vertex(-1, -1, -1, 0, 0);
  vertex(-1, -1,  1, 1, 0);
  vertex(-1,  1,  1, 1, 1);
  vertex(-1,  1, -1, 0, 1);
  endShape();   // endshape
}

void mouseDragged() {    // fungsi mouseDragged
  float rate = .01;    // rate dengan nilai .01
  rotx += (pmouseY-mouseY) * rate;    // rotx dengan penambahan berdasarkan nilai (pmouseY-mouseY)*rate
  roty += (mouseX-pmouseX) * rate;    // roty dengan penambahan berdasarkan nilai (mouseX-pmouseX)*rate
}
