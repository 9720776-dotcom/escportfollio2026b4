// Slot Machine Simulator (Processing 4)

int slot1, slot2, slot3;

void setup() {
  size(600, 300);
  textAlign(CENTER, CENTER);
  textSize(32);
  
  // Initialize slots
  spinSlots();
}

void draw() {
  background(30);
  
  // Draw slot boxes
  drawSlot(150, height/2, slot1);
  drawSlot(300, height/2, slot2);
  drawSlot(450, height/2, slot3);
  
  // Check win condition
  if (slot1 == slot2 && slot2 == slot3) {
    fill(0, 255, 0);
    text("YOU WIN!", width/2, 50);
  } else {
    fill(255);
    text("Press any key to spin", width/2, 50);
  }
}

// Spin slots when key is pressed
void keyPressed() {
  spinSlots();
}

// Randomize slot values (0,1,2)
void spinSlots() {
  slot1 = int(random(3));
  slot2 = int(random(3));
  slot3 = int(random(3));
}

// Draw a slot with different shapes
void drawSlot(int x, int y, int value) {
  fill(255);
  rectMode(CENTER);
  rect(x, y, 100, 100);
  
  // Draw shape based on value
  if (value == 0) {
    fill(255, 0, 0);
    ellipse(x, y, 50, 50); // Circle
  } else if (value == 1) {
    fill(0, 255, 0);
    rect(x, y, 50, 50); // Square
  } else if (value == 2) {
    fill(0, 0, 255);
    triangle(x-25, y+25, x+25, y+25, x, y-25); // Triangle
  }
}
