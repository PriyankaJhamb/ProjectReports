import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interestingsmallprojects/learning_flutter/colorclickable.dart';

final Color boxcolor = Color.fromARGB(28,28,30,255);
final Color maxtextcolor = Color.fromARGB(9,9,9,255);


class ReminderPage extends StatefulWidget {
  const ReminderPage({Key? key}) : super(key: key);

  @override
  _ReminderPageState createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black54,
      body: ListView(

        padding: EdgeInsets.all(8),
        children: [
          SizedBox(height: 30,),
          InkWell(
            child: Text("Edit", style: TextStyle(color: Colors.blueAccent),textAlign: TextAlign.right,),
          ),
          Container(
            margin: EdgeInsets.all(9),

            child: TextFormField(
              style: TextStyle(
                  fontSize: 17.0, color: maxtextcolor),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(Icons.search, color: Colors.black45,),
                  alignLabelWithHint: true,
                  labelText: "Search",
                  labelStyle: TextStyle(color: Colors.black45),
                  fillColor: Colors.grey,
                  contentPadding: EdgeInsets.all(0),

              ),
            ),
          ),
          Row(
            children: [
              Column(

              ),
              Column(

              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin:EdgeInsets.only(right: 10),
                      padding: EdgeInsets.all(6),
                      height: 100,
                      width: (MediaQuery.of(context).size.width/2)-20,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(6),
                      height: 100,
                      width: (MediaQuery.of(context).size.width/2)-20,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Text("My List"),
          ListTile(

          ),
          ListTile(

          )

          ]

      ),
    );
  }
}

