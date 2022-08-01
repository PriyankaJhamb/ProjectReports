import 'package:flutter/material.dart';
import 'package:interestingsmallprojects/learning_flutter/John-and-Jack.dart';
import 'package:interestingsmallprojects/learning_flutter/ReminderApp.dart';
import 'package:interestingsmallprojects/learning_flutter/chips.dart';
import 'package:interestingsmallprojects/learning_flutter/data-passing.dart';
// main function represents main thread
// whatever we code in main, is executed by main thread
// that too in a sequence
void main() {
  // to execute the app created by us
  // MyApp -> Object
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.black45,
        // This is the theme of your application.
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/reminder": (context)=>ReminderPage(),
        "/two": (context)=>PageTwo(),
        "/one": (context)=>PageOne(),
        "/home": (context)=>HomePage(),
        "/calc": (context)=>Calculation(),
        "/chips": (context)=>ChipWidgetPage(),
      },
      initialRoute: "/chips",
    );
  }
}

// class HomePage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return PageOne();
//   }
// }

