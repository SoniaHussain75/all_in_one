import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'add.dart';

class HotelListScreen extends StatelessWidget {
  const HotelListScreen({super.key});

  @override
  Widget build(BuildContext context) {    return Scaffold(
      appBar: AppBar(title: Text('Hotels in Gilgit'),
      actions: [
       IconButton(
           onPressed: addHotelsToFirestore,
           icon: Icon(Icons.add))
      ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('hotels').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty)
            return Center(child: Text('No hotels found.'));

          final hotels = snapshot.data!.docs;

          return ListView.builder(
            itemCount: hotels.length,
            itemBuilder: (context, index) {
              var hotel = hotels[index];
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      hotel['imageUrl'],
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(hotel['name'],
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Location: ${hotel['location']}"),
                      Text("Rating: ${hotel['rating']} ⭐"),
                      Text("Price: ${hotel['price']}"),
                    ],
                  ),
                  onTap: () {
                    // You can navigate to Hotel Detail Screen here
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
