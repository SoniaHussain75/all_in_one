import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class AddTwo extends StatelessWidget {
  const AddTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTwo()));
        }, child: Text("visit hotels")),
      ),
    );
  }
}

void addHotelToFirestore({
  required String name,
  required String address,
  required String id,
  required List<String> images,
  required String description,
  required List<Map<String, dynamic>> reviews,
}) {
  FirebaseFirestore.instance.collection('hotels').add({
    'hotelName': name,
    'hotelAddress': address,
    'hotelId': id,
    'hotelPic': images,
    'hotelDescription': description,
    'hotelReviews': reviews,
  }).then((value) {
    print("Hotel added successfully!");
  }).catchError((error) {
    print("Failed to add hotel: $error");
  });
}
