import 'package:flutter/material.dart';

class ChipWidgetPage extends StatelessWidget {
  const ChipWidgetPage({Key? key}) : super(key: key);

  /*
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Banner Tutorial"),
        ),
    body: Center(
      child: Chip(
        label: Text("John Watson"),
        avatar: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text("JW"),
        ),
      )
    )
    );*/

  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Banner Tutorial"),
        ),
        body: Wrap(
          children: [
            Chip(
              label: Text("Vegetarian"),
              // avatar: CircleAvatar(
              //   backgroundColor: Colors.white,
              //   child: Text("JW"),
              // ),
            ),

            Chip(
              label: Text("Indian"),
            ),

            Chip(
              label: Text("Chinese"),
            )

          ],
        )
    );
  }
}


class ChipsListPage extends StatefulWidget {
  const ChipsListPage({Key? key}) : super(key: key);

  @override
  _ChipsListPageState createState() => _ChipsListPageState();
}

class _ChipsListPageState extends State<ChipsListPage> {

  int idx = 0;
  var filters = ["men", "women", "kids", "home", "men", "women", "kids", "home", "men", "women", "kids", "home"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Banner Tutorial"),
        ),
        body: Wrap(
            spacing: 10.0,
            children: List<Widget>.generate(filters.length, (int index) {
              return ChoiceChip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.accessibility_new_sharp),
                ),
                label: Text(filters[index]),
                selected: idx == index,
                onSelected: (bool value) {
                  setState(() {
                    idx = value ? index : -1;
                  });
                },
              );
            })
        )
    );
  }
}
