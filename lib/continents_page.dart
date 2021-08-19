import 'package:flutter/material.dart';
import 'package:weather_forecast/drawer.dart';

import 'continent.dart';
import 'data.dart';

class ContinentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      backgroundColor:Colors.lightBlueAccent,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black54,
        ),
        backgroundColor: Color(0xffe7ee40),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Center(
              child: Text(
                'Weather Forecast',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
          ),
          Container(
            height: 20,
            child: ClipRRect(
              child: Image(
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/images/icon.png'),
              ),
            ),
          ),
        ],
        primary: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GridView.count(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
            children: [
              Continent(
                  'asia',
                  Data.asiaCountries,
                  'Asia'
              ),
              Continent(
                  'europe',
                  Data.europeCountries,
                  'Europe'
              ),
              Continent(
                  'oceania',
                  Data.oceaniaCountries,
                  'Oceania'
              ),
              Continent(
                  'north_america',
                  Data.northAmericaCountries,
                  'North America'
              ),
              Continent(
                  'south_america',
                  Data.southAmericaCountries,
                  'South America'
              ),
              Continent(
                  'africa',
                  Data.africaCountries,
                  'Africa'
              ),
            ],
          ),
        ),
      ),
    );
  }
}