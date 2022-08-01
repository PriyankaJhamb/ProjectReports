

import 'dart:io';
printNumber({num:5})
{
  //first method
  print(num);
  if (num>1)
  {
    printNumber(num:num-1);
  }
  // exit means exit from app, 
  // but return means exit from only function.

  //second method

  // if (num==1)
  // {
  //   return; //exit(0);
  // }
  // else
  // {
  //   printNumber(num: num-1);
  // }
  // if(num>0){printNumber(num: num-1);}
  // else{return;}
}
void main()
{
  printNumber(num:10);
}