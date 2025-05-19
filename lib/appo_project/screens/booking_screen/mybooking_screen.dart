git initimport 'package:flutter/material.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace with Firebase data in real usage
    final List<Map<String, dynamic>> bookings = [
      {"hotel": "Hotel Paradise", "date": "2025-04-20", "status": "Confirmed"},
      {"hotel": "Mountain View Inn", "date": "2025-05-10", "status": "Pending"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("My Bookings"), backgroundColor: Colors.teal),
      body: ListView.builder(
        itemCount: bookings.length,
        itemBuilder: (context, index) {
          final booking = bookings[index];
          return Card(
            margin: const EdgeInsets.all(12),
            child: ListTile(
              title: Text(booking['hotel']),
              subtitle: Text("Date: ${booking['date']}\nStatus: ${booking['status']}"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Show booking details
              },
            ),
          );
        },
      ),
    );
  }
}
