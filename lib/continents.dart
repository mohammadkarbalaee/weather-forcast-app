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

  List<Widget> africaCountries = [

  ];
  List<Widget> europeCountries = [

  ];
  List<Widget> southAmericaCountries = [

  ];
  List<Widget> northAmericaCountries = [

  ];
  List<Widget> oceaniaCountries = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey,
                Colors.amberAccent,
              ]
            )
          ),
          child: ListView(
            children: [
              Container(
                height: 150,
                child: ClipRRect(
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/images/icon.png'),
                  ),
                ),
              ),
              NavigationDrawerItem(
                'Settings',
                Icon(Icons.settings,size: 25,color: Colors.white,),
                  (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Container(
                              child: Center(child: Text('settings')),
                            )
                        )
                    );
                  }
              ),
              NavigationDrawerItem(
                'Contact us',
                Icon(Icons.add_ic_call,size: 25,color: Colors.white,),
                  (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Container(
                              child: Center(child: Text('settings')),
                            )
                        )
                    );
                  }
              ),
              NavigationDrawerItem(
                'About',
                Icon(Icons.insert_comment_outlined,size: 25,color: Colors.white,),
                  (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Container(
                              child: Center(child: Text('settings')),
                            )
                        )
                    );
                  }
              ),
              NavigationDrawerItem(
                'Rate us',
                Icon(Icons.recommend,size: 25,color: Colors.white,),
                  (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Container(
                              child: Center(child: Text('settings')),
                            )
                        )
                    );
                  }
              ),
            ],
          ),
        ),
      ),
      backgroundColor:Colors.black,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Color(0xff000000),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Center(
              child: Text(
                'Weather Forecast',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
        automaticallyImplyLeading: true,
        elevation: 40,
        shadowColor: Colors.white,
        shape: ContinuousRectangleBorder(),

      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.blue,
                Colors.black,
              ]
          )
        ),
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

class NavigationDrawerItem extends StatelessWidget {
  var title;
  var icon;
  var onTap;

  NavigationDrawerItem(this.title,this.icon,this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.lightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        elevation: 50,
        child: ListTile(
          leading: icon,
          title: Text(
            title,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}