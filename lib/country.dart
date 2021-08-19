import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_forecast/cities_page.dart';

class Country extends StatelessWidget {
  var imageName;
  var countryName;
  var colors;
  var cities;

  Country(this.countryName,this.imageName,this.colors,{this.cities});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 10,left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: colors,
              )
          ),
          height: 80,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            elevation: 500,
            child: ListTile(
              onTap: () async {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: LinearProgressIndicator(
                    color: Color(0xffe7ee40),
                  ),
                  elevation: 100,
                  duration: Duration(seconds: 12),
                  backgroundColor: Colors.black87,
                ));
                List citiesToPass = [];
                for(var i = 0;  i < 10; i++){
                  http.Response serverResponse = await http.get(Uri.parse(
                    'https://api.openweathermap.org/data/2.5/weather?id=${cities[i]['id']}&units=metric&appid=1b651d8d35975b3f26f39e6088ed8146'
                  ));
                  var climate = json.decode(utf8.decode(serverResponse.bodyBytes));
                  citiesToPass.add(climate);
                }
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => CitiesPage(citiesToPass)
                    )
                );
              },
              title: Padding(
                padding: const EdgeInsets.only(top: 15,left: 15),
                child: Text(
                  countryName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color:Colors.black54,
                  ),
                ),
              ),
              trailing: Container(
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/images/${imageName}.png'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}