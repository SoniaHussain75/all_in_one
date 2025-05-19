import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../add_details_hotels.dart';

class HotelListScreen22 extends StatelessWidget {
  const HotelListScreen22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore Motels"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          ElevatedButton(
            onPressed: () async {
              await uploadHotelDetails; // 🔥 Upload details to Firestore
            },
            child: const Text("Upload Hotel Details"),
          )

        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('motels').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return const Center(child: CircularProgressIndicator());

          if (snapshot.hasError)
            return const Center(child: Text("Something went wrong"));

          final hotels = snapshot.data!.docs;

          if (hotels.isEmpty) {
            return const Center(child: Text("No motels found"));
          }

          return ListView.builder(
            itemCount: hotels.length,
            itemBuilder: (context, index) {
              final data = hotels[index].data() as Map<String, dynamic>;

              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 🖼 Image
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                      child: CachedNetworkImage(
                        imageUrl: data['image'] ?? '',
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
                    ),

                    // 📋 Details
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['name'] ?? 'Hotel Name',
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 6),
                          Text("📍 ${data['location'] ?? 'Unknown'}"),
                          const SizedBox(height: 4),
                          Text("⭐ Rating: ${data['rating']?.toString() ?? 'N/A'}"),
                          const SizedBox(height: 4),
                          Text("💰 PKR ${data['fee']?.toString() ?? '0'} / night"),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
