import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Signincontroller extends GetxController{
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passController=TextEditingController();

  final FirebaseAuth auth=FirebaseAuth.instance;

  void signin(BuildContext context) async {
    try{
      await auth.signInWithEmailAndPassword(
          email: emailController.text,
          password: passController.text
      );
    }
    catch(error){
      print("$error ");
      void signin(BuildContext context) async {
        print("Signing in...");

        try {
          await auth.signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passController.text.trim(),
          );


        } catch (error) {
          print("Error: $error");
          Get.snackbar("Login Failed", error.toString());
        }
      }


    }

  }

}