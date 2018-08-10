
int x=100;
int y=100;
boolean over=false;
String message="Welcome!";
int scene;
PImage pi=new PImage();

void setup() {
  size(800, 600);
  pi=loadImage("images/image"+0+".png");
}
void draw() {
  background(0);
  text(message, 50, 50, y, 20);
  image(pi, x*6, y, 100, 80);
  if  (mouseX>600&&mouseX<600+100&&mouseY>y&&mouseY<y+80) {
    cursor(HAND);
    over=true;
  } else {
    cursor(ARROW); 
    message="Welcome!";
  }
}
void mousePressed() {
  if (message.equals("Welcome")&&over==true) {
    scene=0;
    message="this is slide 0";
    text(message, 50, 50, 200, 20);
  } else if (scene==0&&over==true) {
    scene=1;
    message="this is slide 1";
    text(message, 50, 50, 200, 20);
  } else if (scene==1&&over==true) {
    scene=2;
    message="this is slide 2";
    text(message, 50, 50, 200, 20);
  }else if (scene==2&&over==true) {
    scene=0;
    message="this is slide 0 again";
  }
}
void mouseReleased() {
  over=false;
}
