import 'package:flutter/material.dart';
import 'package:weather_forecast/city.dart';

class CitiesPage extends StatelessWidget {
  var cities;

  CitiesPage(this.cities);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black54,
        ),
        backgroundColor: Color(0xffe7ee40),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          color: Colors.lightBlueAccent,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return City(
                  cities[index]['name'],
                  cities[index]['weather'][0]['main'],
                  cities[index]['weather'][0]['icon'],
                  cities[index]['weather'][0]['description'],
              );
            },
          ),
        ),
      ),
    );
  }
}
