void main()
{
  //simple printing the statement
  print("hello");

  // int i;
  // print("${i}");//error comes as initilization has not there.

  int j=9;
  print("${j}");

  j=8;
  print("${j}");

  String Q="tr";
  // Q=3; error comes

  // j=3.3;
  // print("${j}");//error comes as we cannot assign float value to int value.


  double k=8.8;
  print("${k}");

  k=3;
  print("${k}");//can assign int value to double value as memory consumed by double value more than int value.. so type casting has been done.
  
  //var

//Case 1
   var m=3;
  print("${m}");

  // m=5.2; //error comes 
  // print("${m}");

//Case 2
  var n=3.6;
  print("${n}");

  n=5; 
  print("${n}");

//Case 3
  var p=3.6;
  print("${p}");

  // p="priya";//error comes
  // print("${p}");


  //Object

  Object i;

  i="Priya";
  print("${i}");
  i=9;
    print("${i}");
  i=8.7;
    print("${i}");
  i=true;
    print("${i}");


//Unicode Character Table:  https://unicode-table.com/en/

print("\u20b9");
print("😁");
      
  // Exploratory -> Samrt Water Bottle
  // Explore - Operators Once Again
  

}
