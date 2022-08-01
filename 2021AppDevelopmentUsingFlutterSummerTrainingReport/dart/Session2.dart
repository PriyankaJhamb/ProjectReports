void main()
{
  
// variable.runtimeType()
var age=340000000098768978;// age is a reference variable which will always hold hashcodes
print("variable age is of the type of: ${age.runtimeType}");
print("age hashCode is: ${age.hashCode}");


// Initialization Before Use Princple
int? y;//It contains null value till we don't assign any value
print("y is ${y}");
print(y.toString());
//print(y!.toString());//! is a safety check due to which this statement only works when value of y is not null. ( execute toString if name is not null)


//Difference between these two statements
//String name = "";//Due to this some memory will allocate to the variable name
//String? name;//Due to this, memory will be saved as it will not allocate till we don't assign value.

// variable.isEmpty()
 String name="";
//String? name;//using, this error comes
if (name.isEmpty)
{
  print("Firstly fill the name.");
}


// Lazy Initialization
late String response;
//response = getNewsFromAPI();
response="smartwork";
print("name is: ${response}");

}