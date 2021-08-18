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
    Country(
        'Saudi Arabia',
        'arabia',
        [
          Colors.green,
          Colors.green,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Iraq',
        'iraq',
        [
          Colors.black,
          Colors.white,
          Colors.red,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Qatar',
        'qatar',
        [
          Colors.white,
          Color(0xff872626),
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Pakistan',
        'pakistan',
        [
          Colors.white,
          Colors.green,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Malaysia',
        'malaysia',
        [
          Colors.red,
          Colors.white,
        ]
    ),
    SizedBox(height: 20,),
  ];

  List<Widget> africaCountries = [
    SizedBox(height: 20,),
    Country(
        'Algeria',
        'algeria',
        [
          Colors.white,
          Colors.green,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Ghana',
        'ghana',
        [
          Colors.green,
          Colors.amber,
          Colors.red,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Nigeria',
        'nigeria',
        [
          Colors.yellow,
          Color(0xff1f2a7f),
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Tunisia',
        'tunisia',
        [
          Colors.red,
          Colors.red,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'South Africa',
        'south_africa',
        [
          Colors.red,
          Colors.amber,
          Colors.green,
        ]
    ),
  ];
  List<Widget> europeCountries = [
    SizedBox(height: 20,),
    Country(
        'Germany',
        'germany',
        [
          Colors.black,
          Colors.red,
          Colors.amber
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'France',
        'france',
        [
          Colors.blue,
          Colors.white,
          Colors.red,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Sweden',
        'sweden',
        [
          Colors.yellow,
          Color(0xff1f2a7f),
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Hungary',
        'hungary',
        [
          Colors.red,
          Colors.white,
          Colors.green,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Italy',
        'italy',
        [
          Colors.green,
          Colors.white,
          Colors.red,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'United kingdom',
        'uk',
        [
          Colors.white,
          Colors.red,
          Color(0xff1f2a7f),
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Spain',
        'spain',
        [
          Colors.amber,
          Colors.red,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Portugal',
        'portugal',
        [
          Colors.red,
          Colors.green,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Finland',
        'finland',
        [
          Colors.blue,
          Colors.white,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Switzerland',
        'swiss',
        [
          Colors.white,
          Colors.red,
        ]
    ),
    SizedBox(height: 20,),
  ];
  List<Widget> southAmericaCountries = [
    SizedBox(height: 20,),
    Country(
        'Brazil',
        'brazil',
        [
          Colors.green,
          Colors.blue,
          Colors.yellowAccent,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Argentina',
        'argentina',
        [
          Colors.blue,
          Colors.white,
          Colors.blue,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Columbia',
        'columbia',
        [
          Colors.yellow,
          Color(0xff1f2a7f),
          Colors.red
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Mexico',
        'mexico',
        [
          Colors.red,
          Colors.white,
          Colors.green,
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Chile',
        'chile',
        [
          Color(0xff1f2a7f),
          Colors.white,
          Colors.red,
        ]
    ),
  ];
  List<Widget> northAmericaCountries = [
    SizedBox(height: 20,),
    Country(
        'United States Of America',
        'us',
        [
          Colors.white,
          Colors.red,
          Colors.blue
        ]
    ),
    SizedBox(height: 20,),
    Country(
        'Canada',
        'canada',
        [
          Colors.red,
          Colors.white,
          Colors.red,
        ]
    ),
  ];
  List<Widget> oceaniaCountries = [
    SizedBox(height: 20,),
    Country(
        'Australia',
        'australia',
        [
          Color(0xff1f2a7f),
          Colors.red,
        ]
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
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
        backgroundColor: Colors.black54,
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
                Colors.white,
                Colors.white,
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
                  asiaCountries,
                  'Asia'
                ),
                Continent(
                    'europe',
                    europeCountries,
                  'Europe'
                ),
                Continent(
                    'oceania',
                    oceaniaCountries,
                  'Oceania'
                ),
                Continent(
                    'north_america',
                    northAmericaCountries,
                  'North America'
                ),
                Continent(
                    'south_america',
                    southAmericaCountries,
                  'South America'
                ),
                Continent(
                    'africa',
                  africaCountries,
                  'Africa'
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
  var name;

  Continent(this.continentName,this.listOfCountries,this.name);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Colors.white,
                Colors.grey
              ]
            )
          ),
          height: 300,
          width: 500,
          child: Card(
            shadowColor: Colors.amber,
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
                    fontSize: 15
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

class NavigationDrawerItem extends StatelessWidget {
  var title;
  var icon;
  var onTap;

  NavigationDrawerItem(this.title,this.icon,this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.black54,
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