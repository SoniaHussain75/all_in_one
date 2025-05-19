import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/Kiu/kiu_screens/kiu2.dart';
import 'kiu_signup_ctrler.dart';

class SignupScreen11 extends StatelessWidget {
  const SignupScreen11({super.key});

  @override
  Widget build(BuildContext context) {
    final  KiuSignupCtrler signupController1 =  KiuSignupCtrler();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      extendBodyBehindAppBar: true,
      body:  Padding(
                padding: const EdgeInsets.all(25.0),
                child: SingleChildScrollView(
                  child: Column(

                    children: [
                      SizedBox(height: 120),
                      TextField(
                        controller: signupController1.userController,
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
                        controller: signupController1.emailController,
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
                        controller: signupController1.langController,
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
                        controller: signupController1.passController,
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
                        controller: signupController1.cpassController,
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
                              signupController1.signup(context);
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
                            style: TextStyle(color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Kiu2(),
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
            );
  }
}
