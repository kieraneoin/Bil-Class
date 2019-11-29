

// Example 8-2: Two Car objects

Car myCar1;
Car myCar2;
Car myCar3;
Car myCar4;
Car myCar5;// Five objects!

void setup() {
  fullScreen();
  // Arguments go inside the parentheses when the object is constructed.  
  myCar1 = new Car(color(255, 0, 0), 0, 0, random(2, 10), random(-10, 10)); 
  myCar2 = new Car(color(0, 255, 0), 0, 0, random(2, 10), random(-10, 10));
  myCar3 = new Car(color(0, 0, 255), 0, 0, random(2, 10), random(-10, 10));
  myCar4 = new Car(color(255, 0, 255), 0, 0, random(2, 10), random(-10, 10));
  myCar5 = new Car(color(0, 255, 255), 0, 0, random(2, 10), random(-10, 10));
}

void draw() {
  background(0,50,55);
  myCar1.move();
  myCar1.display();
  myCar2.move();
  myCar2.display();
  myCar3.move();
  myCar3.display();
  myCar4.move();
  myCar4.display();
  myCar5.move();
  myCar5.display();
}

// Even though there are multiple objects, only  one class is needed. 
// No matter how many cookies you make, only one cookie cutter is needed.
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;

  // The Constructor is defined with parameters.  
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
  }

  void display() {
    stroke(255);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 40, 20);
    fill(0);
    ellipse(xpos+10, ypos+10, 10, 10);
    ellipse(xpos-10, ypos+10, 10, 10);
    
  }

  void move() {
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
    if (xpos > width || xpos < 0) {
      xpos = 0;
    }
    if (ypos > height || ypos < 0) {
      ypos = 0;
    }
  }
}
