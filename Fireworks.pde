//Delta Y | y-velocity
float dy = 2;
ArrayList<FireworkObject> fireworks = new ArrayList<FireworkObject>();

void setup(){
  size(400, 400);
  
  for(int i = 0; i < 10; i++){
    fireworks.add(randomRocket(i));
  }
}

Rocket randomRocket(int index){
  colorMode(HSB, 255);
  return new Rocket(0, random(0.5, 2.5), color(random(0, 255), 230, 240), random(50, width - 50), 
    height, (int)random(30, 80), random(0.5, 1.0), index);
}

void draw(){
  background(30);
  colorMode(RGB, 255);
  fill(30, 30, 30, 75);
  //rect(0, 0, width, height);
  colorMode(HSB, 255);
  
  for(FireworkObject firework : fireworks){
    if(firework == null)
      return;
      
    firework.update();
    firework.draw();
  }
}
