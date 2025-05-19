import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/appo_project/screens/authentication_screen/signin_screen.dart';
import '../../controllers/signupcontroller.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupController signupController = SignupController();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            "assets/china6.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            top: 50,
            bottom: 0,
            left: 5,
            right: 5,
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 60),
                      TextField(
                        controller: signupController.userController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey,
                          label: Text(
                            "name",
                            style: TextStyle(color: Colors.black),
                          ),
                          prefixIcon: Icon(
                            Icons.person_add,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: signupController.emailController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey,
                          label: Text(
                            "email",
                            style: TextStyle(color: Colors.black),
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.black),
                          suffixIcon: Icon(Icons.email_outlined,color: Colors.black,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: signupController.langController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey,
                          label: Text(
                            "language",
                            style: TextStyle(color: Colors.black),
                          ),
                          prefixIcon: Icon(
                            Icons.sign_language,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(Icons.language_outlined,color: Colors.black,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: signupController.passController,
                        decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          label: Text(
                            "password",
                            style: TextStyle(color: Colors.black),
                          ),
                          prefixIcon: Icon(
                            Icons.lock_open_rounded,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(Icons.password_outlined,color: Colors.black,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: signupController.cpassController,
                        decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          label: Text(
                            "confirm_password",
                            style: TextStyle(color: Colors.black),
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.black),
                          suffixIcon: Icon(
                            CupertinoIcons.eye_slash,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        height: 40,
                        width: 160,
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.lightBlue),
                          ),
                            onPressed: (){
                              signupController.signup(context);
                            },
                            child: Text("Signup",style: TextStyle(
                              color: Colors.black
                            ),)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account ",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SigninScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "SignIn",
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
