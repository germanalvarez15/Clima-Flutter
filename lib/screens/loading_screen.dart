import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState(){
    super.initState();
    getLocation();
  }

  getLocation() async{
    Location location = Location();
    await location.getCurrentLocation();

    print(location.latitude);
    print(location.longitude);

  }

  void getData(double lat, double lon) async{
    Response response = await get('api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid={API key}');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
