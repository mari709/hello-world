PImage fondo;
PImage sol;
int    copo;

void setup() {
  size(800, 600);
  
  fondo = loadImage("background.jpg");
  sol   = loadImage("sol.png");
  textSize(72);
}

void draw() {
  background(fondo);
  
  // Personaje de nieve
  noStroke();
  fill(255, 255, 255);
  ellipse(width/2, height-60,  120, 120);
  ellipse(width/2, height-110, 100, 100);
  ellipse(width/2, height-160,  80,  80);
  
  fill(0, 0, 0);
  ellipse(width/2-20, height-170, 10, 10);
  ellipse(width/2+20, height-170, 10, 10);
  
  fill(255,160,0);
  triangle(width/2, height-160, width/2, height-150, width/2+30, height-155);
  
  // Copo de nieve
  stroke(255, 255, 255);
  strokeWeight(2);
  line(100, copo,    100, copo+20);
  line( 90, copo+10, 110, copo+10);
  line( 95, copo+5,  105, copo+15);
  line( 95, copo+15,  105, copo+5);
  copo++;
  
  if(keyPressed && key == 'n') {
    fill(255,0,255);
    text("¡Feliz navidad!", 60, 80);
  }
  
  image(sol, mouseX, 25, 100, 100);
}

void keyReleased() {
  if(key == ' ') {
    copo = 0;
  }
}
