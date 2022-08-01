import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controllerNOB=TextEditingController();//no_of_bricks
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONSTRUCT A WALL"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Enter the number of bricks that John and Jack both have to place: ", textAlign: TextAlign.center,),
            TextFormField(
              controller: controllerNOB,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context,"/calc", arguments: int.parse(controllerNOB.text));
                },
                child: Text("Submit")
            )
          ],
        )
      ),
    );
  }
}

class Calculation extends StatefulWidget {
  const Calculation({Key? key}) : super(key: key);

  @override
  _CalculationState createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {


  getwidgets({int NOB=0}) {
    List widgets=<Widget> [];
    int no_of_bricks=NOB;
    int i=0;
    int total=0;
    int jackT=0;
    int johnT=0;
    int temp=0;
    int difference=0;
    int y=0;
    String turn="John";
    widgets.add(
        ListTile(
          title: Text("Assignment: Another Brick in the Wall"),
          subtitle: Text("John & Jack | to construct a wall having ${NOB} bricks. "),
        )
    );
    while(total<no_of_bricks){
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
          widgets.add(
            ListTile(
              title: Text("John  ${i}    -> ${i}"),
              subtitle: Text(" Total: ${total-i}+${y}  -> ${no_of_bricks}"),
            )
          );
          }
        else if(total<=no_of_bricks)
        {
          y=i;
          widgets.add(
            ListTile(
              title: Text("John  ${i}    -> ${i}"),
              subtitle: Text("Total: ${total-i}+${i}  -> ${total}"),
            )
          );
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
          widgets.add(
            ListTile(
              title: Text("Jack  ${i}* 2 -> ${i*2}") ,
              subtitle: Text(" Total: ${total-i*2}+${y}  -> ${no_of_bricks}"),

            )
          );
          }
        else if(total<=no_of_bricks)
        {
          y=i*2;
          widgets.add(
            ListTile(
              title: Text("Jack  ${i}* 2 -> ${i*2}"),
              subtitle: Text("Total:  ${i*2} -> ${total-i*2}+${i*2}  -> ${total}"),
            )
          );
        }
      }

    }
    widgets.add(
      ListTile(
        title: Text("Conclusions"),
        subtitle: Text("Turns of John[${johnT}] and Jack[${jackT}]\nWho placed the Last Brick: ${turn}\nHow many bricks were placed lastly: ${y}"),
      )
    );

    return widgets;


  }

    @override
  Widget build(BuildContext context) {
    int NOB = ModalRoute.of(context)!.settings.arguments as int ;
    return Scaffold(
      appBar: AppBar(
        title: Text("CONSTRUCT A WALL"),
      ),
      body: ListView(
        children: getwidgets(NOB: NOB)
      ),
    );
  }
}

