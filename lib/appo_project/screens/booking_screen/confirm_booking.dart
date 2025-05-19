import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';

class ConfirmBooking  extends StatelessWidget {
  const ConfirmBooking ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle, size: 100, color: Colors.teal),
              const SizedBox(height: 20),
              const Text("Booking Successful!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("Thank you for booking with us.\nWe look forward to your stay."),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen89()));
                },
                child: const Text("Go to Home"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
