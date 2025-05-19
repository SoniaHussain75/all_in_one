import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled2/appo_project/screens/guest_screen/saved_guest.dart';

import '../booking_screen/confirm_booking.dart';
import '../booking_screen/mybooking_screen.dart';
import '../guest_screen/old_guest.dart';
import '../guest_screen/user_detail.dart';
import 'hotel_details.dart';

class Reservation extends StatefulWidget {
  const Reservation({super.key});

  @override
  State<Reservation> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<Reservation> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController guestsController = TextEditingController();

  DateTime? checkIn;
  DateTime? checkOut;

  Future<void> saveBooking() async {
    final name = nameController.text.trim();
    final guests = guestsController.text.trim();

    if (name.isEmpty || guests.isEmpty || checkIn == null || checkOut == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill all fields")),
      );
      return;
    }

    await FirebaseFirestore.instance.collection("bookings").add({
      "guest_name": name,
      "guests": int.parse(guests),
      "check_in": checkIn!.toIso8601String(),
      "check_out": checkOut!.toIso8601String(),
      "created_at": Timestamp.now(),
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Booking saved successfully")),
    );

    Navigator.pop(context); // go back
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("🛎️ Book Your Stay"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Guest Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: guestsController,
              keyboardType: TextInputType.number,
              decoration:  InputDecoration(
                labelText: "Number of Guests",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: () async {
                final picked = showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2030),
                );
                if (picked != null) setState(() async => checkIn = await picked);
              },
              icon: const Icon(Icons.calendar_today),
              label: Text(checkIn == null
                  ? "Select Check-In Date"
                  : "Check-In: ${checkIn!.toLocal().toString().split(' ')[0]}"),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () async {
                final picked = await showDatePicker(
                  context: context,
                  initialDate: checkIn?.add(const Duration(days: 1)) ?? DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2030),
                );
                if (picked != null) setState(() => checkOut = picked);
              },
              icon: const Icon(Icons.calendar_month),
              label: Text(checkOut == null
                  ? "Select Check-Out Date"
                  : "Check-Out: ${checkOut!.toLocal().toString().split(' ')[0]}"),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmBooking ()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text("Confirm Booking"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>OldGuest()),
                );
              },
              child: const Text("old_guest"),
            )

          ],
        ),
      ),
    );
  }
}
