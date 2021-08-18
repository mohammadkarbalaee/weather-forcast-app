import 'package:flutter/material.dart';

class CountriesPage extends StatelessWidget {
  var countries;

  CountriesPage(this.countries);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: countries,
      ),
    );
  }
}
