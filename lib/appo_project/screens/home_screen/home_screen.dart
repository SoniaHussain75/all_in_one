import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:untitled2/appo_project/screens/booking_screen/booking_screen.dart';
import 'package:untitled2/appo_project/screens/detail_home/reservation.dart';
import '../add.dart';
import '../addlist.dart';
import '../detail_home/hotel_details.dart';
import 'dalo_data.dart';
import 'dalo_data2.dart';
class HomeScreen89 extends StatelessWidget {
  final List<String> images = [
    'assets/china1.jpg',
    'assets/china16.jpg',
    'assets/china14.jpg',
    'assets/china13.jpg',
    'assets/china7.jpg',
    'assets/china15.jpg',
    'assets/china8.jpg',
    'assets/china12.jpg',
    'assets/china11.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Homescreen"),
        actions: [
          ElevatedButton(
            onPressed: () async {
              await uploadHotelsToFirestore; // 🔁 Firestore mein store karo

              // ✅ Phir screen change karo
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const HotelListScreen22()),
              );
            },
            child: Text("Explore Hotels"),
          )

        ],
      ),

      body: Padding(
        padding:EdgeInsets.all(8.0),
        child: MasonryGridView.count(
          crossAxisCount: 2, // 2 columns
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),

      ),

    );
  }
}




