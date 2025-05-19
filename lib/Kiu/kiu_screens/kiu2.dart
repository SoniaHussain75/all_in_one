import 'package:flutter/material.dart';

import '../../appo_project/controllers/signincontroller.dart';
import 'kiu3.dart';
import 'kiu_forget.dart';
import 'kiu_signupscreen.dart';
class Kiu2 extends StatelessWidget {
  const Kiu2({super.key});

  @override
  Widget build(BuildContext context) {
    final Signincontroller   signincontroller=Signincontroller();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("LMS",style: TextStyle(
          fontSize: 35,
          letterSpacing: 2,

        ),),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/son.jpg"),
            minRadius: 25,

          ),

        ],
      ),
       body:Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(height: 10,),
    TextField(
    controller: signincontroller.emailController,
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.grey,
    label: Text("email",style: TextStyle(
    color: Colors.black,),

    ),
    prefixIcon: Icon(Icons.person,color: Colors.black,),
    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    )
    )
    ),
    SizedBox(height: 10,),
    TextField(
    controller: signincontroller.passController,
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.grey,
    label: Text("password",style: TextStyle(
    color: Colors.black,),

    ),
    prefixIcon: Icon(Icons.lock,color: Colors.black,),
    suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    )
    )
    ),
    Align(
    alignment: Alignment.topRight,
    child: TextButton(
    onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>KiuForget()));
    }, child: Text("forget password",style: TextStyle(
   color: Colors.black,

    ))
    ),
    ),
    SizedBox(
    width: 120,
    height: 50,
    child: TextButton(
    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.black)),
    onPressed:(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Kiu3()));
    }, child: Text("Signin",style: TextStyle(
    color: Colors.white,
    ),)),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Don't have an account",style: TextStyle(
    color: Colors.black,
    ),),
    TextButton(
    onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen11(
    )));
    }, child: Text("Singup",style: TextStyle(
    color: Colors.yellow,fontWeight: FontWeight.w900,

    ),))
    ],
    ),
    ],
    ),
    ),

    );
  }
}
