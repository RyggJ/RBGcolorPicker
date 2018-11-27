int r,g,b;

void setup(){
  background(255);
  size(800,510);
  noStroke();
  textSize(50);
}

void draw(){
  background(255);
  incrementR();
  incrementG();
  incrementB();
  showColor();
}

void showColor(){
  for (int i=0;i<256;i++){
    for (int j=0;j<256;j++){
      fill(r,i,j);
      noStroke();
      rect(i*2,j*2,2,2);
    }
  }
  fill(0,0,0,0);
  stroke(0);
  ellipse(g*2,b*2,5,5);
  fill(r,g,b);
  rect(550,280,200,200);
}
void incrementR(){
  if (keyPressed&&key=='r'&&r<255){
    r++;
  }
  if (keyPressed&&key=='t'&&r>0){
    r--;
  }
  fill(r,0,0);
  text("Red: "+r,540,100);
}
void incrementG(){
  if (keyPressed&&key=='g'&&g<255){
    g++;
  }
  if (keyPressed&&key=='h'&&g>0){
    g--;
  }
  fill(0,g,0);
  text("Green: "+g,525,175);
}
void incrementB(){
  if (keyPressed&&key=='b'&&b<255){
    b++;
  }
  if (keyPressed&&key=='n'&&b>0){
    b--;
  }
  fill(0,0,b);
  text("Blue: "+b,540,250);
}
