import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HotelDetailScreen extends StatelessWidget {
  final Map<String, dynamic> hotelData;

  HotelDetailScreen({required this.hotelData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(hotelData['name'] ?? 'Hotel Details')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Show Hotel Image
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                hotelData['assetImage'], // Make sure this field is in data
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),

            // Hotel Info
            Text(hotelData['name'], style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(hotelData['address'], style: TextStyle(fontSize: 16, color: Colors.grey[700])),
            SizedBox(height: 12),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 20),
                SizedBox(width: 4),
                Text("${hotelData['rating']}"),
                Spacer(),
                Icon(Icons.remove_red_eye, color: Colors.grey, size: 20),
                SizedBox(width: 4),
                Text("${hotelData['views']} views"),
              ],
            ),
            SizedBox(height: 12),
            Text("PKR ${hotelData['pricePerNight']} / night",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.green[800])),

            Divider(height: 32),

            Text("Facilities", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

            SizedBox(height: 10),

            // 🔥 Fetch and Show Facilities from Firestore
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('facilities').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting)
                  return Center(child: CircularProgressIndicator());

                if (!snapshot.hasData || snapshot.data!.docs.isEmpty)
                  return Text("No facilities found.");

                final facilities = snapshot.data!.docs;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: facilities.map((doc) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.green),
                          SizedBox(width: 10),
                          Text(doc['name'], style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
