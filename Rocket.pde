interface FireworkObject {
  void update();
  void draw();
}

class Rocket implements FireworkObject{
  //Bang volume
  int bang;
  //Sekunder før bang
  float timeBeforeBoom;
  color farve;
  float x, y;
  int millis;
  int radius;
  float boomTime;
  int index;
  
  Rocket(int bang, float timeBeforeBoom, color farve, float x, float y, int radius, float boomTime, int index){
    this.bang = bang;
    this.timeBeforeBoom = timeBeforeBoom;
    this.farve = farve;
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.boomTime = boomTime;
    millis = millis();
    this.index = index;
  }
  
  void update(){
    y -= dy;
    float noise = (noise(x * 0.1 + index * 1000.0, y * 0.1 + index * 400.0) - 0.3);
    x += noise;
    y += noise / 6.0;
    
    if((millis() - millis) / 1000.0 >= timeBeforeBoom)
      bang();
  }
  
  void bang(){
    fireworks.set(index, new Bang(x, y, radius, boomTime, farve, index));
  }
  
  void draw(){
    fill(255);
    circle(x, y, 5);
  }
}
