import 'package:flutter/material.dart';
import '../screens/detail_home/hotel_details.dart';

class UpdatedBookingwdgt extends StatelessWidget {
  final String hotelId;
  final String t1;
  final String t2;
  final String t3;
  final String t5;
  final String t6;

  const UpdatedBookingwdgt({
    super.key,
    required this.hotelId,
    required this.t1,
    required this.t2,
    required this.t3,
    required this.t5,
    required this.t6,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(t3, width: 100, height: 150, fit: BoxFit.cover),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(t1, style: TextStyle(color: Colors.white, fontSize: 18), overflow: TextOverflow.ellipsis),
                Text(t2, style: TextStyle(color: Colors.white70, fontSize: 14), overflow: TextOverflow.ellipsis),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text("Reviews ", style: TextStyle(color: Colors.yellow)),
                    Text(t6, style: TextStyle(color: Colors.yellow)),
                  ],
                ),
                Row(
                  children: List.generate(5, (_) => Icon(Icons.star, color: Colors.yellow, size: 16)),
                ),
                SizedBox(height: 10),
                Text(t5, style: TextStyle(color: Colors.yellow)),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HotelDetailsScreen(hotelId: hotelId),
                      ),
                    );
                  },
                  child: Text("See Details", style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
