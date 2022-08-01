import 'dart:math';
 var r = Random();
const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
 
String generateRandomString(int len) {
 
   return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();//generator function
}

void main(){
  print("length of _chars string: ${_chars.length}");
  print("random letter: ${_chars[r.nextInt(_chars.length)]}");//nextInt() takes a max int argument and generates a positive int between 0 (inclusive) and max, exclusive.
  print("Generated Random string: ${generateRandomString(10)}");
}
