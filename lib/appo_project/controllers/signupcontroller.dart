import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/authentication_screen/signin_screen.dart';


class SignupController extends GetxController{
  final TextEditingController userController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
  final TextEditingController langController=TextEditingController();
  final TextEditingController passController=TextEditingController();
  final TextEditingController cpassController=TextEditingController();


  final FirebaseAuth auth=FirebaseAuth.instance;
  final FirebaseFirestore firestore=FirebaseFirestore.instance;

  void signup(BuildContext context)async{
    try{
      var object=await auth.createUserWithEmailAndPassword(
        email:emailController.text.trim(),
        password: passController.text.trim(),
      );
      await firestore.collection("students").doc(object.user!.uid).set(
          {
            "name":emailController.text.trim(),
            "username":userController.text.trim(),
            "uid":object.user!.uid,
            "password":passController.text,
            "language":langController.text,


          }
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));

    }
    catch(err){
      print(err);
    }

  }
}
