import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/appo_project/screens/authentication_screen/signup_screen.dart';
import '../../controllers/signincontroller.dart';
import '../home_screen/home_screen.dart';
import 'forget_pass.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final Signincontroller signctrl_kiu=Signincontroller();


    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,


      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset("assets/china14.jpg",fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
          Positioned(
             bottom: 0,
             top: 300,
              child: Container(
                height: 90,
                width:355,
                decoration: BoxDecoration(


                ),child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                           children: [
                    SizedBox(height: 10,),
                    TextField(
                      controller: signctrl_kiu.emailController,
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
                      controller: signctrl_kiu.passController,
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                          }, child: Text("forget password",style: TextStyle(
                        color: Colors.white,

                      ))
                      ),
                    ),
                             SizedBox(
                               width: 120,
                               height: 50,
                               child: TextButton(
                                 style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.black)),
                                   onPressed:(){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen89()));
                                     signctrl_kiu.signin(context);
                               }, child: Text("Signin",style: TextStyle(
                                 color: Colors.white,
                               ),)),
                             ),
                             Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text("Don't have an account",style: TextStyle(
                                     color: Colors.white
                                 ),),
                                 TextButton(
                                     onPressed: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                                     }, child: Text("Singup",style: TextStyle(
                                   color: Colors.yellow,fontWeight: FontWeight.w900,

                                 ),))
                               ],
                             ),
                ],
              ),
                ),
          ),
    ),
        ],
    ),
    );

  }

}
