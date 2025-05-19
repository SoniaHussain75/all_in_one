import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SavedGuest extends StatelessWidget {
  const SavedGuest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("📋 All Bookings"),
        backgroundColor: Colors.teal,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('bookings').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return const Center(child: CircularProgressIndicator());

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty)
            return const Center(child: Text("No bookings found"));

          final bookings = snapshot.data!.docs;

          return ListView.builder(
            itemCount: bookings.length,
            itemBuilder: (context, index) {
              final data = bookings[index].data() as Map<String, dynamic>;

              final name = data['guest_name'] ?? "N/A";
              final guests = data['guests']?.toString() ?? "-";
              final checkIn = data['check_in'] ?? "-";
              final checkOut = data['check_out'] ?? "-";

              return Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                elevation: 4,
                child: ListTile(
                  leading: const Icon(Icons.hotel, color: Colors.teal),
                  title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("Guests: $guests\nCheck-In: $checkIn\nCheck-Out: $checkOut"),
                  isThreeLine: true,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
