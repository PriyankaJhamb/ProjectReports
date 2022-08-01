import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
Future<Object> fetchNews() async{
  String apiKey= "466c49901079b038f22f62f88b3b06eb";
  String url="http://maps.openweathermap.org/maps/2.0/weather/{op}/{z}/{x}/{y}?appid={"+apiKey+"}";

  var response = await http.get(Uri.parse(url));

  return response.body; // JSON DATA
}

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  parseWeather(Object response, BuildContext context) {
    var mapAsData = convert.jsonDecode(response);

    return Text(mapAsData);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchNews(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          //return Text(snapshot.data.toString());
          return parseWeather(snapshot.data.runtim, context);
        }else{
          return Center(
              child: CircularProgressIndicator()
          );
        }
      },

    );

  }
}
