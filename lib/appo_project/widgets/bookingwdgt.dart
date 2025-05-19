import 'package:flutter/material.dart';

import '../screens/booking_screen/confirm_booking.dart';
import '../screens/detail_home/hotel_details.dart';
import '../screens/detail_home/reservation.dart';
class   Bookingwdgt extends StatelessWidget {
  final String t1;
  final String t2;
  final String t3;
  final String t5;
  final String t6;


  const Bookingwdgt({
    super.key, required this.t1, required this.t2, required this.t3, required this.t5, required this.t6, required String hotelId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black
      ),
      child: Row(
        children: [
          SizedBox(width: 20,),
          Column(
            children: [
              SizedBox(height: 10,),
              Container(
                width: 100,
                height: 150,
                child:  ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(t3,fit: BoxFit.cover,),
                ),
              ),
              SizedBox(height: 7,),
              Text(t5 ,style: TextStyle(
                color: Colors.yellow
              ),)
            ],
          ),
          SizedBox(width: 30,),
          Column(
            children: [
              SizedBox(height: 18,),
              Text(t1,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),),
              Text(t2,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),),
              Row(
                children: [
                  Text("Reviews ",style: TextStyle(
                      color: Colors.yellow
                  ),),
                  Text(t6,style: TextStyle(
                    color: Colors.yellow,

                  ),)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star_border_sharp,color: Colors.yellow,),
                  Icon(Icons.star_border_sharp,color: Colors.yellow,),
                  Icon(Icons.star_border_sharp,color: Colors.yellow,),
                  Icon(Icons.star_border_sharp,color: Colors.yellow,),
                  Icon(Icons.star_border_sharp,color: Colors.yellow,)
                ],
              ),
              SizedBox(height: 5,),
               SizedBox(
                 height: 50,
                 child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.blue,
                       ),
                      onPressed: (){},
                      child: Center(
                        child:TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HotelDetailsScreen(hotelId: '190',)));
                            }, child: Text("See Details",style: TextStyle(
                            color: Colors.black,
                            fontSize:25,
                            fontWeight: FontWeight.bold
                        ),), )






                      )),
               ),

            ],
          )

        ],
      ),

    );
  }
}
