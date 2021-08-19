import 'package:flutter/material.dart';

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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end:Alignment.bottomLeft,
            colors: [
              Colors.red,
              Colors.lightBlue
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
                    height: MediaQuery.of(context).size.height / 5,
                    child: Card(
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                            image: AssetImage(
                                'assets/images/sunny.png'
                            )
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
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}