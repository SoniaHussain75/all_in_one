import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UploadFacilitiesScreen extends StatelessWidget {
  final List<String> facilities = [
    "Room Service",
    "Gym",
    "Swimming Pool",
    "Restaurant",
    "Wi-Fi",
    "Laundry"
  ];

  void uploadFacilities() async {
    final collection = FirebaseFirestore.instance.collection('facilities');

    for (String facility in facilities) {
      await collection.add({'name': facility});
    }

    print("Facilities uploaded!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload Facilities")),
      body: Center(
        child: ElevatedButton(
          child: Text("Upload Facilities to Firestore"),
          onPressed: uploadFacilities,
        ),
      ),
    );
  }
}

