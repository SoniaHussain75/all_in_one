import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../add_details_hotels.dart';

class HotelListScreen extends StatelessWidget {
  const HotelListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hotel List")),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('details').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text("No hotels available"));
          }

          final hotels = snapshot.data!.docs;

          return ListView.builder(
            itemCount: hotels.length,
            itemBuilder: (context, index) {
              final data = hotels[index].data() as Map<String, dynamic>;

              return InkWell(
                onTap: uploadHotelDetails,

                child: Card(
                  margin: const EdgeInsets.all(12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 🖼 Hotel Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            data['imageUrl'] ?? '',
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 12),

                        // 📋 Hotel Info
                        Text(data['name'] ?? '',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        Text("📍 ${data['location'] ?? ''}"),
                        Text("⭐ Rating: ${data['rating'] ?? ''}"),
                        Text("💰 ${data['price'] ?? ''}",
                            style: const TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Text("🏨 ${data['facilities'] ?? ''}"),
                        const SizedBox(height: 8),
                        Text(data['description'] ?? ''),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
