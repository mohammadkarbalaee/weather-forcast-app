import 'package:flutter/material.dart';

import 'countries_page.dart';

class Continent extends StatelessWidget {
  var continentName;
  var listOfCountries;
  var name;

  Continent(this.continentName,this.listOfCountries,this.name);

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
            elevation: 50,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ListTile(
                  dense: true,
                  title: ClipRRect(
                    child: Image(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/images/${continentName}.jpg'),
                    ),
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54
                  ),
                ),
              ],
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