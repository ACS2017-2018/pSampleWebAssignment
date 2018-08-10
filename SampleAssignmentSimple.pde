PFont f;
int scene=0;//or new slide, etc...

void setup() {
  size(1000, 350); 
  fill(0);
  f=createFont("AmericanTypewriter", 22);
  textFont(f);
}
void draw() {
  background(150);
  text("Press 0 to start over. ", 10, 10, 400, 100);
  if (scene==0) {
    scene0();
  } else if (scene==1) {
    scene1();
  } else if (scene==2) {
    scene2();
  } else if (scene==3) {
    scene3();
  } else if (scene==4) {
    scene4();
  }
}

void keyTyped() {
  if (key=='0') {
    scene=0;
  } else if ((key=='1')) {
    scene=1;
  } else if (key=='2') {
    scene=2;
  } else if (key=='3') {
    scene=3;
  } else if (key=='4') {
    scene=4;
  }
}
void mousePressed() {
  int num=(int)(Math.random()*5);
  if (num==0) {
    scene=0;
  } else if ((num==1)) {
    scene=1;
  } else if (num==2) {
    scene=2;
  } else if (num==3) {
    scene=3;
  } else if (num==4) {
    scene=4;
  }
}
void keyPressed() {
  if (keyPressed) {
    if (keyCode==RIGHT) {
      println("hello");
      if (scene==0) {
        scene=1;
      } else if (scene==1) {
        scene=2;
      } else if (scene==2) {
        scene=3;
      } else if (scene==3) {
        scene=0;
      }
    }
    
     if (keyCode==LEFT) {
      println("hello");
      if (scene==0) {
        scene=3;
      } else if (scene==3) {
        scene=2;
      } else if (scene==2) {
        scene=1;
      } else if (scene==1) {
        scene=0;
      }
    }
  }
}

///these scenes/slides could be different chapters, etc...
void scene0() {
  fill(0, 0, 0);
  ellipse(50, 200, 100, 100); 
  text("Scene 0 where the entire project is described including a user input interface...buttons, menus, sliders, etc. ", 400, 5, 470, 100);
}
void scene1() {
  fill(255, 0, 0);
  ellipse(700, 200, 100, 100); 
  rect(500, 200, 100, 100);
  text("Welcome to scene 1! ", 700, 5, 300, 100);
}

void scene2() {
  fill(0, 255, 0);
  ellipse(400, 200, 100, 100); 
  rect(600, 200, 100, 100);
  text("Welcome to scene 2! ", 700, 5, 300, 100);
}

void scene3() {
  fill(0, 0, 255);
  ellipse(500, 200, 100, 100); 
  text("Welcome to scene 3! ", 700, 5, 300, 100);
}

void scene4() {
  fill(255, 0, 0);
  ellipse(400, 200, 100, 100); 
  text("Welcome to scene 4! ", 700, 5, 300, 100);
}
