import 'package:flutter/material.dart';
import 'package:untitled2/appo_project/screens/booking_screen/booking_screen.dart';
import 'package:untitled2/appo_project/screens/detail_home/reservation.dart';

class HotelDetailsScreen extends StatelessWidget {
  const HotelDetailsScreen({super.key, required String hotelId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hotel Details"), backgroundColor: Colors.teal),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Image.asset("assets/china20.jpg",fit: BoxFit.cover,height: 200,width: 50,),
            const SizedBox(height: 20),
            const Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Text("Beautiful hotel with mountain views and deluxe rooms."),
            const SizedBox(height: 20),
            const Text("Facilities", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Text("- Free WiFi\n- Pool\n- Gym\n- Room Service"),
            const SizedBox(height: 20),
            const Text("Reviews", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Ahmed"),
              subtitle: Text("Great place to stay!"),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Sara"),
              subtitle: Text("Clean rooms and good service."),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Reservation()));
              },
              child: const Text("Book now"),
            )
          ],
        ),
      ),
    );
  }
}
