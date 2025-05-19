import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/appo_project/updated/updated_bookingwdgt.dart';

import '../widgets/bookingwdgt.dart';

class UpdateBookingscrn extends StatelessWidget {
  const UpdateBookingscrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking_Screen"),
        backgroundColor: Colors.yellow,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('hotels').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("Error loading hotels"));
          }
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          var hotels = snapshot.data!.docs;

          return ListView.builder(
            itemCount: hotels.length,
            itemBuilder: (context, index) {
              var data = hotels[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: UpdatedBookingwdgt(
                  hotelId: data.id,
                  t1: data['name'],
                  t2: data['address'],
                  t3: data['image'],
                  t5: data['price'],
                  t6: data['reviews'],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
