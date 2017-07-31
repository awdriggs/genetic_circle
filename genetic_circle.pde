Walker testWalker;

void setup(){
  //create one walker
  size(500, 500);
  testWalker = new Walker(width, height);
  //noloop right now
  noLoop();
}

void draw(){
  for(int i = 0; i < testWalker.locations.length; i++){
    ellipse(testWalker.locations[i].x, testWalker.locations[i].y, 10, 10);
  }
  println("done");
}
