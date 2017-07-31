class Walker {
  //params
  PVector[] locations = new PVector[1000];
  float stepSize = 1;
  float angle = random(-1, 1);
  float angleChange = 0.25;

  //conststructor
  Walker(int limitX, int limitY) {
    //fill the array with random locations
    for(int i = 0; i < locations.length; i++){
      //if at location 0, create a random location
      if(i == 0){
        float firstX = random(limitX);
        float firstY = random(limitY);
        locations[i] = new PVector(firstX, firstY);
      } else {
        //else,
        //change the angle
        println(angle);
        angle += random(-angleChange, angleChange);
        //calculate new location
        float newX = locations[i-1].x + cos(angle) * stepSize;
        float newY = locations[i-1].y + sin(angle) * stepSize;
        //add the new location to the locations array
        locations[i] = new PVector(newX, newY);
      }
    }
  }
}
