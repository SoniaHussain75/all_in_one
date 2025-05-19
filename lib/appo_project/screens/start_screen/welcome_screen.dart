import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled2/appo_project/screens/authentication_screen/signin_screen.dart';
import 'package:untitled2/appo_project/screens/authentication_screen/signup_screen.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(

        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset("assets/china9.jpg",fit:BoxFit.cover,height: double.infinity,width: double.infinity,),
          Positioned(
               bottom: 10,
                left: 10,
              child:  Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,

                  ),child:  InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
                  },
                    child: Center(
                    child: Text("Signin",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              InkWell(

                child: Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,

                  ),child:  Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                    },
                    child: InkWell(
                      child: Text("Signup",style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ),
                ),
              )
            ],
          )),
          Positioned(
            top: 50,
            left: 14,
            child: Icon(Icons.favorite,color: Colors.red,size: 45,),

          ),
          Positioned(
            top: 50,
            left: 52,
            child: Icon(Icons.favorite,color: Colors.red,size: 45,),

          ),
          Positioned(
            top: 50,
            left: 90,
            child: Icon(Icons.favorite,color: Colors.red,size: 45,),

          ),
        ],
      ),
    );
  }
}
