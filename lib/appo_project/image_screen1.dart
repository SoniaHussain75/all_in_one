import 'package:flutter/material.dart';
class ImageScreen1 extends StatelessWidget {
  const ImageScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child:TextButton(
          onPressed: (){},
           child: Text( "open gallery"),
      ),
      ),
    );
  }
}
