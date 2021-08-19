import 'package:flutter/material.dart';
import 'package:weather_forecast/city_page.dart';

class City extends StatelessWidget {
  var name;
  var main;
  var image;
  var subtitle;
  var mainData;
  var wind;

  City(this.name,this.main,this.image,this.subtitle,this.mainData,this.wind);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5,),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height / 9,
            child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => CityPage(
                          name,
                          main,
                          image,
                          subtitle,
                          mainData,
                          wind,
                          )
                      )
                  );
                },
                leading: Card(
                  color: Colors.black12,
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),
                  ),
                ),
                title: Text(
                    main,
                  style: TextStyle(
                      fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),
                ),
                dense: true,
                trailing: Container(
                  height: 70,
                  child: Image(
                    image: NetworkImage(
                        'https://openweathermap.org/img/w/${image}.png'
                    ),
                  ),
                ),
              subtitle: Text(
                subtitle,
                style: TextStyle(
                    fontSize: 12
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
