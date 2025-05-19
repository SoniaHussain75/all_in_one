import 'package:flutter/material.dart';
class kiu_txtwdgt extends StatelessWidget {
  final String t1;
  const kiu_txtwdgt({
    super.key, required this.t1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(t1,style: TextStyle(
      color: Colors.white,fontSize: 40,
      fontWeight: FontWeight.bold,
    ),);
  }
}