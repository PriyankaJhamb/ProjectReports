void main() {
  int no_of_bricks=35;
  int i=0;
  int total=0;
  int jackT=0;
  int johnT=0;
  int temp=0;
  int difference=0;
  int y=0;
  String turn="John";
  print("Assignment: Another Brick in the Wall\n");
  print("John & Jack | to construct a wall\n");
  print("input for no_of_bricks: ${no_of_bricks}\n");
  
  while(total<no_of_bricks)
  { 
 
    i++;
    //John turn
    if(total<no_of_bricks)
    {
     total+=i;
     johnT+=1;
     temp=i;
     turn="John";
      if(total>no_of_bricks)
      {  
        difference= total - no_of_bricks;
        y=temp-difference;
        print("John  ${i}    -> ${i} -> ${total-i}+${y}  -> ${no_of_bricks}");}
      else if(total<=no_of_bricks)
      { 
        y=i;
        print("John  ${i}    -> ${i} -> ${total-i}+${i}  -> ${total}"); 
      }
    }

    //Jack turn
    if(total<no_of_bricks)
    {
      total+=(i*2);
      jackT+=1;
      temp=i*2;
      turn="Jack";
      if(total>no_of_bricks)
      {  
        difference= total - no_of_bricks;y=temp-difference;
        print("Jack  ${i}* 2 -> ${i*2} -> ${total-i*2}+${y}  -> ${no_of_bricks}");}
      else if(total<=no_of_bricks)
      { 
        y=i*2;
        print("Jack  ${i}* 2 -> ${i*2} -> ${total-i*2}+${i*2}  -> ${total}");
      }
    }

  }

  print("\nConclusions\n");
  print("\nTurns of John[${johnT}] and Jack[${jackT}]");
  print("\nWho placed the Last Brick: ${turn}");
  print("\nHow many bricks were placed lastly: ${y}");
  
}
 
  



// void main() {
//   int no_of_bricks=13;
//   int i=0;
//   int total=0;
//   int jackT=0;
//   int johnT=0;
//   print("Assignment: Another Brick in the Wall\n");
//   print("John & Jack | to construct a wall\n");
//   print("input for no_of_bricks: ${no_of_bricks}\n");
  
//   while(total<no_of_bricks)
//   { 
 
//     i++;
//     total+=i;
//     print("John  ${i}    -> ${i} -> ${total-i}+${i}  -> ${total}");
//     johnT+=1;
//     total+=(i*2);
//     print("Jack  ${i}* 2 -> ${i*2} -> ${total-i*2}+${i*2}  -> ${total}");
//     jackT+=1;
// //     print("i:${i}"); 
// //     print("John turn");
// //     
// //    
// //     print("Total now: ${total}");
// //     print("Jack turn");
// //     print("i*2: ${i*2}");
// //     total+=(i*2);
// //     print("Total now: ${total}");
// //     jackT+=1;
   
//   }

//   int difference= total - no_of_bricks;
// //   print("difference: ${difference}");
//   if (difference>=i*2)
//   {
    
//     johnT-=1;
//     print("Turns of John[${johnT}] and Jack[${jackT}]");
//     print("Who placed the Last Brick: Jack");
//     int x=(total-i*2);
//     int y=i-(x-no_of_bricks);
//     print("How many bricks were placed lastly: ${y}");
//   }
//   else
//   {
//     print("\nTurns of John[${johnT}] and Jack[${jackT}]");
//     print("\nWho placed the Last Brick: Jack");
//     int y=i*2-difference;
//     print("\nHow many bricks were placed lastly: ${y}");
//   }
//   }
  





// import 'dart:io';

// printNumber({num:5})
// {
//   print(num);
//   num>1?printNumber(num: num-1):exit(0);
//   // if (num==1)
//   // {
//   //   exit(0);
//   // }
//   // else
//   // {
//   //   printNumber(num: num-1);
//   // }
// }
// void main()
// {
//   printNumber(num:10);
// }