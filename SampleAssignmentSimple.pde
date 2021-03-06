int x;
int y;
boolean over;
boolean left;
String message;
int slide;
PFont f;
PImage pi;

void setup() {
  size(800, 600);
  x=100;
  y=100;
  over=false;
  left=false;
  f = createFont("Georgia", 56);
  message="Welcome!";
  pi=loadImage("images/image0.png");
  textFont(f);
}
void draw() {
  background(0);
  buttons();


  fill(255, 0, 0);
  if (slide==0) {
    message="Welcome!";
  } else if (slide==1) {
    message="this is slide 1";
  } else if (slide==2) {
    message="this is slide 2";
  } else if (slide==3) {
    message="this is slide 3";
  } 
  text(message, 150, 150);
  image(pi, x*3, y+200, 350, 250);
}
void mousePressed() {
  if (slide==0&&over==true&&left==false) {
    slide=1;
    pi=loadImage("images/image1.png");
  } else if (slide==1&&over==true&&left==false) {
    slide=2;
    pi=loadImage("images/image2.png");
  } else if (slide==2&&over==true&&left==false) {
    slide=3;
    pi=loadImage("images/image3.png");
  } else if (slide==3&&over==true&&left==false) {
    slide=0;
    pi=loadImage("images/image0.png");
  } else if (slide==0&&over==true&&left==true) {
    slide=3;
    pi=loadImage("images/image3.png");
  } else if (slide==3&&over==true&&left==true) {
    slide=2;
    pi=loadImage("images/image2.png");
  } else if (slide==2&&over==true&&left==true) {
    slide=1;
    pi=loadImage("images/image1.png");
  } else if (slide==1&&over==true&&left==true) {
    slide=0;
    pi=loadImage("images/image0.png");
  }
}
void mouseReleased() {
  over=false;
}

void buttons() {
  //right
  fill(0, 0, 200);
  rect(width-100, 100, 100, 50);
  fill(255);
  text(">", width-60, y+40);

  //left
  fill(0, 0, 200);
  rect(width-210, 100, 100, 50);
  fill(255);
  text("<", width-180, y+40);

  //right
  if  (mouseX>width-100&&mouseX<width&&mouseY>y&&mouseY<y+50) {
    cursor(HAND);
    over=true;
    left=false;
    //left
  } else if (mouseX>width-210&&mouseX<width-110&&mouseY>y&&mouseY<y+50) {
    cursor(HAND);
    over=true;
    left=true;
  } else {
    over=false;
    cursor(ARROW);
  }
}
