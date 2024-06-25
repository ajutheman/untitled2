import 'package:flutter/material.dart';

import 'flight_card.dart';

class FlightSearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'From',
              prefixIcon: Icon(Icons.flight_takeoff),
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            decoration: InputDecoration(
              labelText: 'To',
              prefixIcon: Icon(Icons.flight_land),
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Handle flight search logic here
            },
            child: Text('Search Flights'),
          ),
          SizedBox(height: 24.0),
          Text(
            'Available Flights:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with actual flight data length
              itemBuilder: (context, index) {
                // Create FlightCard widget and pass flight data
                return FlightCard(flightNumber: 'ABC123', price: 250.0);
              },
            ),
          ),
        ],
      ),
    );
  }
}
