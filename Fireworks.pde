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
  return new Rocket(0, random(0.5, 2.5), color(255, 0, 0), random(50, width - 50), 
    height, (int)random(30, 80), random(0.5, 1.5), index);
}

void draw(){
  background(30);
  
  for(FireworkObject firework : fireworks){
    if(firework == null)
      return;
      
    firework.update();
    firework.draw();
  }
}
