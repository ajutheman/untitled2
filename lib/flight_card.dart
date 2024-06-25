import 'package:flutter/material.dart';

class FlightCard extends StatelessWidget {
  final String flightNumber;
  final double price;

  FlightCard({required this.flightNumber, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(Icons.flight),
        title: Text('Flight $flightNumber'),
        subtitle: Text('Price: \$${price.toStringAsFixed(2)}'),
        trailing: ElevatedButton(
          onPressed: () {
            // Handle flight booking logic here
          },
          child: Text('Book'),
        ),
      ),
    );
  }
}
