// @dart=2.9
import 'dart:io';

void main()
{
  Map menu={
    'noodles':{'title': "Vegie Noodles",'price':344,'rating':4.5 }, 
    'maggie':{'title':"Vegiie maggie",'price':345, 'rating':3.3},
    'burger':{'title': "Chilli Burger",'price':332,'rating':3.4}
    };
  print("Menu-->${menu}");


  //menuvalues rating sorting
  List menuvalues=menu.values.toList();
  List menukeys=menu.keys.toList();
  // print(menuvalues);
  // print(menukeys);
  for(int i=0;i<menukeys.length;i++)
  {
    for(int j=i+1;j<menukeys.length;j++)
    {
      // print(menuvalues[i]['rating'])
      if(menuvalues[i]['rating']<menuvalues[j]['rating'])
      {
        
        var temp;
        temp=menuvalues[i];
        menuvalues[i]=menuvalues[j];
        menuvalues[j]=temp;

        var temp1;
        temp1=menukeys[i];
        menukeys[i]=menukeys[j];
        menukeys[j]=temp1;
      }
    }
  }

  //After sorting 
  print("After sorting menu list according to the rating in the descending order:");
  // menukeys.forEach((element) {print(element);});
  // menuvalues.forEach((element) {print(element);});

  List shoppingCart=[];
  int total=0;
  while (true)
  {
    print("Enter the dish name to add in the shopping cart and 'No' to Quit:");
    var choice=stdin.readLineSync();
    if (choice=="No")
    {
      break;
    }
    else if(menu.containsKey(choice))
    {
      shoppingCart.add(menu[choice]);
      total+=menu[choice]['price'];
    }
    else 
    {
      print("Sorry ${choice} is not available for now.");
    }
  }
  

  print("Your Shopping Cart contains:");
  shoppingCart.forEach((element) 
  {
    print(element);
  });

  print("Total amount:\u20b9${total}");
  

   //Shopping cart rating sorting
  for(int i=0;i<shoppingCart.length;i++)
  {
    for(int j=i+1;j<shoppingCart.length;j++)
    {
      print(shoppingCart[i]['rating']);
        print(shoppingCart[j]['rating']);
      if(shoppingCart[i]['rating']<shoppingCart[j]['rating'])
      {
        
        var temp;
        temp=shoppingCart[i];
        shoppingCart[i]=shoppingCart[j];
        shoppingCart[j]=temp;
      }
    }
  }
  print("After sorting Shopping list according to the rating in the descending order:");
  shoppingCart.forEach((element) {print(element);});
  

  String promocode1="PJ123";
  String promocode2="VG123";
  String promocode=promocode1;
  if (promocode=="PJ123")
  {
    print("After discount of \u20b9 30: ");
    var discountedPrice=shoppingCart.map((e) => e['price']-30);
    print(discountedPrice);
    List priceList=discountedPrice.toList();
    int totalDiscountedPrice=0;
    for(int p=0;p<discountedPrice.length;p++)
    {
     
     totalDiscountedPrice+=priceList[p];
    }
    print("Total Price is \u20b9 ${totalDiscountedPrice}");
  }
  
}