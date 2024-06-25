import 'package:flutter/material.dart';

import 'flight_search_widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flight Booking App'),
      ),
      body: FlightSearchWidget(), // Create a FlightSearchWidget widget
    );
  }
}
