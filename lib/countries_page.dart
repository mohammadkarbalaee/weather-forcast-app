import 'package:flutter/material.dart';

class CountriesPage extends StatelessWidget {
  var countries;

  CountriesPage(this.countries);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       iconTheme: IconThemeData(
         color: Colors.black54,
       ),
        title: Text(
          'Available Countries',
          style: TextStyle(
            color:Colors.black54,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffe7ee40),
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: ListView(
          children: countries,
        ),
      ),
    );
  }
}
