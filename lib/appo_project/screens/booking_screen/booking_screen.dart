import 'package:flutter/material.dart';
import '../../updated/updated_bookingwdgt.dart';
import '../../widgets/bookingwdgt.dart'; // Assuming it's the above UpdatedBookingwdgt

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Screen", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.black, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children:[
            UpdatedBookingwdgt(
              t1: 'Ramada Jutial',
              t2: 'Gilgit, Pakistan',
              t3: 'assets/china7.jpg',
              t5: '120\$/night',
              t6: '(1.3M)',
              hotelId: '190',
            ),
            UpdatedBookingwdgt(
              t1: 'Rupalll Inn',
              t2: 'Islamabad, Pakistan',
              t3: 'assets/china16.jpg',
              t5: '170\$/night',
              t6: '(1.6M)',
              hotelId: '180',
            ),
            UpdatedBookingwdgt(
              t1: 'Sareena Lodge',
              t2: 'Skardu, Pakistan',
              t3: 'assets/china13.jpg',
              t5: '210\$/night',
              t6: '(1.5M)',
              hotelId: '145',
            ),
            UpdatedBookingwdgt(
              t1: 'Indus Lodge',
              t2: 'Karachi, Pakistan',
              t3: 'assets/china6.jpg',
              t5: '260\$/night',
              t6: '(2.1M)',
              hotelId: '37',
            ),
            UpdatedBookingwdgt(
              t1: "Johar'Z Lodge",
              t2: 'Lahore, Pakistan',
              t3: 'assets/china6.jpg',
              t5: '250\$/night',
              t6: '(3.1M)',
              hotelId: '90',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.add_alert_rounded), label: "Alerts"),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout"),
        ],
      ),
    );
  }
}
