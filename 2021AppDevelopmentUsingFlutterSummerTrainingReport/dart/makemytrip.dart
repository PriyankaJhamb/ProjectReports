

class oneWay{
  String? source, destination, departure_date;
  int? noOfTravellers;
  oneWay({this.source, this.destination, this.departure_date, this.noOfTravellers});
  Map toMap(){
    return{
      'source':source,
      'destination':destination,
      'departure_date': departure_date,
      'noOfTravellers':noOfTravellers
    };
  }

  @override
  String toString()
  {
    return{
      'source':source,
      'destination':destination,
      'departure_date': departure_date,
      'noOfTravellers':noOfTravellers
    }.toString();
  }
  // void ShowOneWay()
  // {
  //   print(" Source: ${source}\n Destination: ${destination} \n Departure Date: ${departure_date} \n No. of Travellers: ${noOfTravellers} ");
  // }
}
class roundTrip extends oneWay{
  String? returnDate;
  roundTrip({source, destination, departure_date, noOfTravellers, this.returnDate}):super(source: source, destination: destination,departure_date: departure_date, noOfTravellers: noOfTravellers);
  @override
  String toString() {
    // TODO: implement toString
    String parentData=super.toString();
    String myData={
      'returnDate':returnDate
    }.toString();
    return parentData+myData;
  }
  // void ShowRoundTrip()
  // {
  //   ShowOneWay();
  //   print("Return Date: ${returnDate}");
  // }

}
class MultiCity extends oneWay{
  int? noOfJourney;
  MultiCity({source, destination, departure_date, noOfTravellers, this.noOfJourney}):super(source: source, destination: destination,departure_date: departure_date, noOfTravellers: noOfTravellers);
  @override
  String toString() {
    // TODO: implement toString
    String parentData=super.toString();
    String myData={
      'noOfJourney':noOfJourney
    }.toString();
    return parentData+myData;}
  
}
void main() {
  // oneWay(source: "Delhi", destination: "Mumbai", departure_date: "24 July, 2021", noOfTravellers: 3).ShowOneWay();
  print(roundTrip(source: "Delhi", destination: "Mumbai", departure_date: "24 July, 2021", noOfTravellers: 3, returnDate: "26 July, 2021"));
  print(MultiCity(source: "Delhi", destination: "Mumbai", departure_date: "24 July, 2021", noOfTravellers: 3, noOfJourney: 1));
  
}