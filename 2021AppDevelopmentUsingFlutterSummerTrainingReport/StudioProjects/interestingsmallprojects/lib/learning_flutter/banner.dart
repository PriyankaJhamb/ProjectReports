import 'package:flutter/material.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  _BannerPageState createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banner"),

      ),
      body: MaterialBanner(
        content: Text("Welcome to the Foodie App. We got new offers for you."),
        leading: CircleAvatar(
          child: Icon(Icons.notifications_outlined),
        ),
        actions: [
          TextButton(
              onPressed: (){},
              child: Text("DONE")
          ),TextButton(
              onPressed: (){},
              child: Text("ORDER NOW")
          )
        ],
      ),
    );
  }
}
