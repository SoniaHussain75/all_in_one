import 'package:flutter/material.dart';

class PriceSummaryScreen extends StatelessWidget {
  final String guestName;
  final String roomType;
  final int guests;
  final DateTime checkIn;
  final DateTime checkOut;
  final double pricePerNight;

  const PriceSummaryScreen({
    super.key,
    required this.guestName,
    required this.roomType,
    required this.guests,
    required this.checkIn,
    required this.checkOut,
    required this.pricePerNight,
  });

  int get totalNights => checkOut.difference(checkIn).inDays;

  double get totalPrice => totalNights * pricePerNight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Price Summary"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Guest: $guestName", style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Text("Room Type: $roomType", style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Text("Guests: $guests", style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Text("Check-in: ${checkIn.toLocal().toString().split(' ')[0]}", style: const TextStyle(fontSize: 18)),
                Text("Check-out: ${checkOut.toLocal().toString().split(' ')[0]}", style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Text("Price per Night: Rs ${pricePerNight.toStringAsFixed(0)}", style: const TextStyle(fontSize: 18)),
                const Divider(height: 30, thickness: 1),
                Text("Total Nights: $totalNights", style: const TextStyle(fontSize: 18)),
                Text("Total Price: Rs ${totalPrice.toStringAsFixed(0)}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Spacer(),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                    onPressed: () {
                      // Confirm Booking Logic Here
                      // or Navigate to Confirmation Screen
                    },
                    child: const Text("Confirm Booking"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// _________________________Navigator code hai ___________________

//
//
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => PriceSummaryScreen(
// guestName: 'Ali',
// roomType: 'Deluxe Room',
// guests: 2,
// checkIn: DateTime(2025, 4, 20),
// checkOut: DateTime(2025, 4, 23),
// pricePerNight: 4500,
// ),
// ),
// );
