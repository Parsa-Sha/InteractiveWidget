// Interactive Widget by Parsa S.
// Widget toy that uses mouse coordinates to determine location and size of circles, 
// with the help of Radius and Angle to X and Y conversion
// 20/05/2022
// https://github.com/Parsa-S/SchoolWork/blob/main/InteractiveWidgetSharingan.pde

void setup(){ 
  size(800, 800);
  background(0);
}

void draw() {
  background(20, 20, 22);
  for(int i = 0; i < 12; i++){
      // Setup for Large Circles
      noFill();
      stroke(143, 7, 9);
      strokeWeight(2);
      
      // Drawing Large Circles
      float angle = 30 * i - 90;    
      float distance = map(mouseX, 0, 800, 0, 1) * 500;
      float posX = cos(angle * (PI / 180)) * distance + 400;
      float posY = sin(angle * (PI / 180)) * distance + 400;
      ellipse(posX, posY, map(mouseY, 0, 800, 0, 1) * 630, map(mouseY, 0, 800, 0, 1) * 630);
      
      // Setup and Drawing Small Circles
      fill(0);
      strokeWeight(4);
      ellipse(posX, posY, map(mouseY, 0, 800, 0, 1) * 20, map(mouseY, 0, 800, 0, 1) * 20);
  }
}
