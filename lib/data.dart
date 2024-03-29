import 'package:flutter/material.dart';

import 'country.dart';
import 'jsons.dart';

class Data{
  static List<Widget> asiaCountries = [
    SizedBox(height: 20,),
    Country(
        'South Korea',
        'south_korea',
        [
          Colors.blue,
          Colors.red,
        ],
      cities: Jsons.korea,
    ),
    SizedBox(height: 20,),
    Country(
        'Iran',
        'iran',
        [
          Colors.green,
          Colors.white,
          Colors.red,
        ],
      cities: Jsons.iran,
    ),
    SizedBox(height: 20,),
    Country(
        'India',
        'india',
        [
          Colors.orange,
          Colors.white,
          Colors.green,
        ],
      cities: Jsons.india,
    ),
    SizedBox(height: 20,),
    Country(
        'Japan',
        'japan',
        [
          Colors.white,
          Colors.red,
        ],
      cities: Jsons.japan,
    ),
    SizedBox(height: 20,),
    Country(
        'China',
        'china',
        [
          Colors.red,
          Colors.redAccent,
        ],
      cities: Jsons.china,
    ),
    SizedBox(height: 20,),
    Country(
        'Saudi Arabia',
        'arabia',
        [
          Colors.green,
          Colors.green,
        ],
      cities: Jsons.arabia,
    ),
    SizedBox(height: 20,),
    Country(
        'Iraq',
        'iraq',
        [
          Colors.black,
          Colors.white,
          Colors.red,
        ],
      cities: Jsons.iraq,
    ),
    SizedBox(height: 20,),
    Country(
        'Qatar',
        'qatar',
        [
          Colors.white,
          Color(0xff872626),
        ],
      cities: Jsons.qatar,
    ),
    SizedBox(height: 20,),
    Country(
        'Pakistan',
        'pakistan',
        [
          Colors.white,
          Colors.green,
        ],
      cities: Jsons.pakistan,
    ),
    SizedBox(height: 20,),
    Country(
        'Malaysia',
        'malaysia',
        [
          Colors.red,
          Colors.white,
        ],
      cities: Jsons.malaysia,
    ),
    SizedBox(height: 20,),
  ];

  static List<Widget> africaCountries = [
    SizedBox(height: 20,),
    Country(
        'Algeria',
        'algeria',
        [
          Colors.white,
          Colors.green,
        ],
      cities: Jsons.algeria,
    ),
    SizedBox(height: 20,),
    Country(
        'Ghana',
        'ghana',
        [
          Colors.green,
          Colors.amber,
          Colors.red,
        ],
      cities: Jsons.ghana,
    ),
    SizedBox(height: 20,),
    Country(
        'Nigeria',
        'nigeria',
        [
          Colors.yellow,
          Color(0xff1f2a7f),
        ],
      cities: Jsons.nigeria,
    ),
    SizedBox(height: 20,),
    Country(
        'Tunisia',
        'tunisia',
        [
          Colors.red,
          Colors.red,
        ],
      cities: Jsons.tunisia,
    ),
    SizedBox(height: 20,),
    Country(
        'South Africa',
        'south_africa',
        [
          Colors.red,
          Colors.amber,
          Colors.green,
        ],
      cities: Jsons.south,
    ),
    SizedBox(height: 20,),
  ];
  static List<Widget> europeCountries = [
    SizedBox(height: 20,),
    Country(
        'Germany',
        'germany',
        [
          Colors.black,
          Colors.red,
          Colors.amber
        ],
      cities: Jsons.germany,
    ),
    SizedBox(height: 20,),
    Country(
        'France',
        'france',
        [
          Colors.blue,
          Colors.white,
          Colors.red,
        ],
      cities: Jsons.france,
    ),
    SizedBox(height: 20,),
    Country(
        'Sweden',
        'sweden',
        [
          Colors.yellow,
          Color(0xff1f2a7f),
        ],
      cities: Jsons.sweden,
    ),
    SizedBox(height: 20,),
    Country(
        'Hungary',
        'hungary',
        [
          Colors.red,
          Colors.white,
          Colors.green,
        ],
      cities: Jsons.hungary,
    ),
    SizedBox(height: 20,),
    Country(
        'Italy',
        'italy',
        [
          Colors.green,
          Colors.white,
          Colors.red,
        ],
      cities: Jsons.italy,
    ),
    SizedBox(height: 20,),
    Country(
        'United kingdom',
        'uk',
        [
          Colors.white,
          Colors.red,
          Color(0xff1f2a7f),
        ],
      cities: Jsons.uk,
    ),
    SizedBox(height: 20,),
    Country(
        'Spain',
        'spain',
        [
          Colors.amber,
          Colors.red,
        ],
      cities: Jsons.spain,
    ),
    SizedBox(height: 20,),
    Country(
        'Portugal',
        'portugal',
        [
          Colors.red,
          Colors.green,
        ],
      cities: Jsons.portugal,
    ),
    SizedBox(height: 20,),
    Country(
        'Finland',
        'finland',
        [
          Colors.blue,
          Colors.white,
        ],
      cities: Jsons.finland,
    ),
    SizedBox(height: 20,),
    Country(
        'Switzerland',
        'swiss',
        [
          Colors.white,
          Colors.red,
        ],
      cities: Jsons.swiss,
    ),
    SizedBox(height: 20,),
  ];
  static List<Widget> southAmericaCountries = [
    SizedBox(height: 20,),
    Country(
        'Brazil',
        'brazil',
        [
          Colors.green,
          Colors.blue,
          Colors.yellowAccent,
        ],
      cities: Jsons.brazil,
    ),
    SizedBox(height: 20,),
    Country(
        'Argentina',
        'argentina',
        [
          Colors.blue,
          Colors.white,
          Colors.blue,
        ],
      cities: Jsons.argentina,
    ),
    SizedBox(height: 20,),
    Country(
        'Columbia',
        'columbia',
        [
          Colors.yellow,
          Color(0xff1f2a7f),
          Colors.red
        ],
      cities: Jsons.columbia,
    ),
    SizedBox(height: 20,),
    Country(
        'Mexico',
        'mexico',
        [
          Colors.red,
          Colors.white,
          Colors.green,
        ],
      cities: Jsons.mexico,
    ),
    SizedBox(height: 20,),
    Country(
        'Chile',
        'chile',
        [
          Color(0xff1f2a7f),
          Colors.white,
          Colors.red,
        ],
      cities: Jsons.chile,
    ),
    SizedBox(height: 20,),
  ];
  static List<Widget> northAmericaCountries = [
    SizedBox(height: 20,),
    Country(
        'United States Of America',
        'us',
        [
          Colors.white,
          Colors.red,
          Colors.blue
        ],
      cities: Jsons.usa,
    ),
    SizedBox(height: 20,),
    Country(
        'Canada',
        'canada',
        [
          Colors.red,
          Colors.white,
          Colors.red,
        ],
      cities: Jsons.canada,
    ),
    SizedBox(height: 20,),
  ];
  static List<Widget> oceaniaCountries = [
    SizedBox(height: 20,),
    Country(
        'Australia',
        'australia',
        [
          Color(0xff1f2a7f),
          Colors.red,
        ],
      cities: Jsons.australia,
    ),
    SizedBox(height: 20,),
  ];
}