import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled2/Kiu/kiu_screens/kiu3.dart';

import 'kiu2.dart';



class  KiuSignupCtrler extends GetxController{
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
      await firestore.collection("kiu").doc(object.user!.uid).set(
          {
            "name":emailController.text.trim(),
            "username":userController.text.trim(),
            "uid":object.user!.uid,
            "password":passController.text,
            "language":langController.text,


          }
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Kiu2()));

    }
    catch(err){
      print(err);
    }

  }
}
