import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text/model.dart';
import 'package:flutter_circular_text/circular_text/widget.dart';
import 'package:untitled2/appo_project/screens/authentication_screen/signin_screen.dart';
import 'package:untitled2/appo_project/screens/home_screen/home_screen.dart';
import 'package:untitled2/appo_project/screens/start_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  static FirebaseAuth auth = FirebaseAuth.instance;
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      if (auth.currentUser != null) {
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (context) =>HomeScreen89()));
      } else {
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (context) => SigninScreen()));
      }
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent ,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset("assets/china7.jpg",fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
          Positioned(
            top:65,
              left: 3,
              right: 3,

              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Text("WE HELP YOU \n TO FIND  BEST \n & REASONABLE HOTEL ",style: TextStyle(
                color: Colors.orangeAccent,
                    fontSize: 30,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w900,
              ),
                   ),
                ],
              )
          ),

        ],
      ),

    );
  }
}
