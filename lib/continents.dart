import 'package:flutter/material.dart';

class ContinentsPage extends StatelessWidget {
  const ContinentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddingRight = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: paddingRight),
            child: Center(
              child: Text(
                'Weather Forecast',
                style: TextStyle(
                    fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: GridView.count(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
            children: [
              Continent('assets/images/asia.jpg'),
              Continent('assets/images/europe.jpg'),
              Continent('assets/images/ociania.jpg'),
              Continent('assets/images/north_america.jpg'),
              Continent('assets/images/south_america.jpg'),
              Continent('assets/images/africa.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}


class Continent extends StatelessWidget {
  var imagePath;

  Continent(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        child: Container(
          color: Colors.black,
          height: 300,
          width: 500,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            elevation: 10,
            child: ListTile(
                dense: true,
                title: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(imagePath),
                  ),
                )
            ),
          ),
        ),
      ),
      onTap: (){
        print('yay');
      },
    );
  }
}

