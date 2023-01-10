class Bang implements FireworkObject {
  int radius;
  float x, y;
  float boomTime;
  int millis;
  color c;
  int index;
  
  Bang(float x, float y, int radius, float boomTime, color c, int index){
    this.radius = radius;
    this.boomTime = boomTime;
    millis = millis();
    this.x = x;
    this.y = y;
    this.c = c;
    this.index = index;
  }
  
  void update(){
    if((millis() - millis) / 1000.0 >= boomTime){
      fireworks.set(index, randomRocket(index));
      Rocket rocket = (Rocket)fireworks.get(index);
    }
  }
  
  void draw(){
    noStroke();
    fill(c, 255 - (millis() - millis) / 1000.0 / boomTime * 255);
    circle(x, y, interpolate(5, radius, (millis() - millis) / 1000.0 / boomTime));
  }
  
  float interpolate(float a, float b, float t){
    return a + (b - a) * t;
  }
}
