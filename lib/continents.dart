import 'package:flutter/material.dart';
import 'package:weather_forecast/countries_page.dart';

import 'country.dart';

class ContinentsPage extends StatelessWidget {
  List<Widget> asiaCountries = [
    SizedBox(height: 20,),
    Country(
        'South Korea',
        'south_korea',
        [
          Colors.blue,
          Colors.red,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Iran',
        'iran',
        [
          Colors.green,
          Colors.white,
          Colors.red,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'India',
        'india',
        [
          Colors.orange,
          Colors.white,
          Colors.green,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Japan',
        'japan',
        [
          Colors.white,
          Colors.red,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'China',
        'china',
        [
          Colors.red,
          Colors.redAccent,
        ]
    ),
    SizedBox(height: 20,),
  ];

  List<Widget> africaCountries = [];
  List<Widget> europeCountries = [];
  List<Widget> southAmericaCountries = [];
  List<Widget> northAmericaCountries = [];
  List<Widget> oceaniaCountries = [];

  @override
  Widget build(BuildContext context) {
    double paddingRight = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 30,
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Weather Forecast',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 45),
            child: GridView.count(
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              children: [
                Continent(
                  'asia',
                  asiaCountries
                ),
                Continent(
                    'europe',
                    europeCountries,
                ),
                Continent(
                    'oceania',
                    oceaniaCountries,
                ),
                Continent(
                    'north_america',
                    northAmericaCountries,
                ),
                Continent(
                    'south_america',
                    southAmericaCountries,
                ),
                Continent(
                    'africa',
                  africaCountries,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Continent extends StatelessWidget {
  var continentName;
  var listOfCountries;

  Continent(this.continentName,this.listOfCountries);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 300,
          width: 500,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            elevation: 500,
            child: ListTile(
                dense: true,
                title: ClipRRect(
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/images/${continentName}.jpg'),
                  ),
                )
            ),
          ),
        ),
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CountriesPage(listOfCountries)
          )
        );
      },
    );
  }
}