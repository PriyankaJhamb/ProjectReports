
// // Program for Water Bottle Sensor:
// It has 3 operations--> 
// 1. Update how much water we drank.
// 2. Update if it is empty.
// 3. Update if it is refilled.
// need to maintain the quantity in all 3 secenarios.


void main() {
  //water measure in litres
  double threshold_value=7.5;
  double sensor=7.5;
  double water_drank= 6.5;
  double water_fill=7.5;
  
  //first scenario
  
  // full
  if (sensor==threshold_value)
     {
        print("Water bottle is full");
      }
  
  //empty
  
  if(sensor==0.0)
  {
    print("water bottle is empty.");
  }
  
  //2nd scenario
  
  if (water_drank<=sensor)
  {
    sensor-=water_drank; 
    print("${sensor} litre of water is left.");
  }
  else
  {
    print("required water is not in the bottle");
  }
  
  //3rd scenario
  
  if (water_fill>(threshold_value-sensor))
  {
    print("Water is more that the water bottle can contain");
  }
  else
  {
    sensor+=water_fill;
    print("${sensor} litre of water is in the bottle");
  }
  
}


