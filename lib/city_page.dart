import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_forecast/day.dart';

class CityPage extends StatelessWidget {
  var name;
  var main;
  var image;
  var subtitle;
  var mainData;
  var wind;

  CityPage(this.name,this.main,this.image,this.subtitle,this.mainData,this.wind);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black54,
        ),
        backgroundColor: Color(0xffe7ee40),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end:Alignment.bottomLeft,
                    colors: [
                      Color(0xffe7ee40),
                      Colors.white
                    ]
                )
            ),
            child: Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        main,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: MediaQuery.of(context).size.height / 8,
                        child: Card(
                          color: Colors.white,
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image(
                              image: NetworkImage(
                                  'https://openweathermap.org/img/w/${image}.png'
                              ),
                              // image: AssetImage(
                              //     getImage(image)
                              // )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 + 100,
                        height: MediaQuery.of(context).size.height / 4,
                        child: Card(
                          color: Colors.white,
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                subtitle,
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                  "temperature:  ${mainData['temp']} ℃"
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "minimum temperature:  ${mainData['temp_min']} ℃",
                                style: TextStyle(
                                  color: Colors.lightBlue,
                                ),
                              ),
                              Text(
                                "maximum temperature:  ${mainData['temp_max']} ℃",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "wind speed:  ${wind['speed']} km/h",
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.05,
            maxChildSize: 0.9,
            minChildSize: 0.05,
              builder: (context,controller) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.lightBlueAccent,
                        ]
                      )
                    ),
                    child: FutureBuilder(
                      future: getFiveDays(name),
                      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                        return ListView.builder(
                          itemCount: 5,
                          controller: controller,
                          itemBuilder: (BuildContext context, int index) {
                            var day = '';
                            switch(index){
                              case 0: day = 'tomorrow'; break;
                              case 1: day = '2 days later'; break;
                              case 2: day = '3 days later'; break;
                              case 3: day = '4 days later'; break;
                              case 4: day = '5 days later'; break;
                            }
                            return Day(
                                day,
                                snapshot.data[index]['weather'][0]['main'],
                                snapshot.data[index]['weather'][0]["icon"],
                                snapshot.data[index]['weather'][0]['description'],
                            );
                          },
                        );
                      },
                    ),
                  ),
                );
              }
          ),
        ],
      ),
    );
  }
}

Future<List> getFiveDays(name) async {
  http.Response serverResponse = await http.get(Uri.parse(
      'https://api.openweathermap.org/data/2.5/forecast?q=${name}&appid=1b651d8d35975b3f26f39e6088ed8146'
  ));
  var climate = json.decode(utf8.decode(serverResponse.bodyBytes));
  List result = climate['list'];
  return result.sublist(1,6);
}