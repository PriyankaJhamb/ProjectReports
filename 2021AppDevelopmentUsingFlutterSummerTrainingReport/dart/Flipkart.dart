/*
Categories:Grocery, Mobiles, Home,Fashion,Appliances,Travel,Beauty Toys and more

Items: noOfItems, Item;

Item: ItemName,ItemCategory,ItemPrice,ItemDescription,ItemRating, ItemPicture,ItemCode, ItemDiscount, ItemDiscountedPrice;

User: phonenumber,emailaddress,name,password,address,dateofbirth,

TypeOfUsers:seller,customer,developers,customerCarePersons,sponsors, deliveryman

Sellers: name,shopname,contactnumber,sellerId,deliveredItems,Items,pendingItems,

paymentmode:bank,cardpayment, netbanking, cashondelivery

ShoppingCart: Item{ItemName, ItemPrice, ItemDiscount}, promocode, discount, total


*/

class Item
{
    String? ItemName;
    String? ItemCategory;
    double? ItemPrice;//in Rupeess
    String? ItemDescription;
    double? ItemRating;
    String? ItemCode;
    double? ItemDiscount;//in percent
    double? ItemDiscountedPrice;
    Item({ItemName,ItemCategory,ItemPrice, ItemDescription, ItemRating, ItemCode, ItemDiscount})
    { 
      this.ItemName=ItemName;
      this.ItemCategory=ItemCategory;
      this.ItemPrice=ItemPrice;
      this.ItemDescription=ItemDescription;
      this.ItemRating=ItemRating;
      this.ItemCode=ItemCode; 
      this.ItemDiscount=ItemDiscount;
      ItemDiscountedPrice=ItemPrice-((ItemDiscount/ItemPrice)*100); 
    }

    void showAboutItem()
    {
        print("Item Name: ${ItemName}");
        print("Item Category: ${ItemCategory}");
        print("Item Price: ${ItemPrice}");
        print("Item Description: ${ItemDescription}");
        print("Item Rating: ${ItemRating}");
        print("Item Code: ${ItemCode}");
        print("Item Discount: ${ItemDiscount}");
        print("After Discount--> Price: ${ItemDiscountedPrice}");
    }

}

class Items{
    int? noOfItems;
    List<Item>? item;

    Items({this.noOfItems, this.item});
    void showItems(){
      print(noOfItems);
      item!.forEach((items) {items.showAboutItem();});}
}


void main()
{
  // Item item1= Item(ItemName:"MOTOROLA Razr (Black, 128 GB)  (6 GB RAM)",ItemCategory:"Mobiles",ItemPrice:54999.0,ItemDescription:"The Motorola Razr is here to redefine your smartphone experience with its sleek and stylish foldable display. Featuring the zero-gap hinge design, you can flip open this phone to view your favourite visuals on the main 15.75 cm (6.2) 21:9 CinemaVision display. That’s not all, this smartphone features different camera modes and AI-based features to help you click stunning images that everyone will be in awe of.", ItemRating:4.5,ItemCode:"PR9501",ItemDiscount:63.0);
  // Item item2= Item(ItemName:"POCO M3 (Yellow, 64 GB)  (4 GB RAM)",ItemCategory:"Mobiles",ItemPrice:10499.0,ItemDescription:"The POCO M3 is here to redefine your smartphone experience with its sleek and stylish foldable display. Featuring the zero-gap hinge design, you can flip open this phone to view your favourite visuals on the main 15.75 cm (6.2) 21:9 CinemaVision display. That’s not all, this smartphone features different camera modes and AI-based features to help you click stunning images that everyone will be in awe of.", ItemRating:3.5,ItemCode:"PR0451",ItemDiscount:13.0);
  
  //item1.showAboutItem();
  Items(
    noOfItems: 3,
    item: [
      Item(ItemName:"MOTOROLA Razr (Black, 128 GB)  (6 GB RAM)",ItemCategory:"Mobiles",ItemPrice:54999.0,ItemDescription:"The Motorola Razr is here to redefine your smartphone experience with its sleek and stylish foldable display. Featuring the zero-gap hinge design, you can flip open this phone to view your favourite visuals on the main 15.75 cm (6.2) 21:9 CinemaVision display. That’s not all, this smartphone features different camera modes and AI-based features to help you click stunning images that everyone will be in awe of.", ItemRating:4.5,ItemCode:"PR9501",ItemDiscount:63.0)
      ,Item(ItemName:"POCO M3 (Yellow, 64 GB)  (4 GB RAM)",ItemCategory:"Mobiles",ItemPrice:10499.0,ItemDescription:"The POCO M3 is here to redefine your smartphone experience with its sleek and stylish foldable display. Featuring the zero-gap hinge design, you can flip open this phone to view your favourite visuals on the main 15.75 cm (6.2) 21:9 CinemaVision display. That’s not all, this smartphone features different camera modes and AI-based features to help you click stunning images that everyone will be in awe of.", ItemRating:3.5,ItemCode:"PR0451",ItemDiscount:13.0) ]
    ).showItems();
}

