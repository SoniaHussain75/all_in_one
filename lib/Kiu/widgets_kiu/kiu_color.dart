import 'package:flutter/material.dart';
class kiu_color extends StatelessWidget {
  final Color color;
  final Widget icons;
  final String t5;



  const kiu_color({
    super.key, required this.color, required this.icons, required this.t5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       icons,
       Text(t5,style: TextStyle(
           color: Colors.white,
         ),),



      ],
          ),
    );
  }
}
