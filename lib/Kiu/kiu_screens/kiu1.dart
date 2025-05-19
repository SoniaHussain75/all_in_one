import 'package:flutter/material.dart';
import 'package:untitled2/Kiu/widgets_kiu/kiu_txtwdgt.dart';
import 'package:untitled2/Kiu/widgets_kiu/kiucntrwdgt.dart';
class Kiu1 extends StatelessWidget {
  const Kiu1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KIU LMS"),
       leading: Image.asset("assets/kiulogo.png",height: 10,),

      ),endDrawer: Drawer(
      width: 700,
      backgroundColor: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40,),
          Text("Home"),
          SizedBox(height: 30,),
          Text("Home"),
          SizedBox(height: 30,),
          Text("Home"),
          SizedBox(height: 30,),
          Text("Home"),
          SizedBox(height: 30,),
          Text("Home"),
          SizedBox(height: 30,),
          Text("Home"),

        ],
      ),
    ),
      body: Stack(
        children: [
          Image.asset("assets/kiu2.jpg",fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Positioned(
              child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              kiu_txtwdgt(t1: '  Learning',),
              kiu_txtwdgt(t1: " Management"),
              kiu_txtwdgt(t1: "System"),
              SizedBox(height: 50,),
              kiucntrwdgt(t1: 'faculty login', icon: Icon(Icons.person,color: Colors.white,size: 45,),),
              SizedBox(height: 10,),
              Text("Old reccord update ",style: TextStyle(
                decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  decorationThickness: 2,

                color: Colors.white
              ),),
              SizedBox(height: 10,),
              kiucntrwdgt(t1: "Student login", icon:Icon(Icons.school,size: 45,color: Colors.white,)),
              SizedBox(height: 10,),
              Text("Generate fee challan",style: TextStyle(
                  decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                decorationThickness: 2,
                color: Colors.white
              ),),
              SizedBox(height: 10,),
              kiucntrwdgt(t1: "print admit card", icon:Icon(Icons.badge_sharp,color: Colors.white,size: 45,)),
              SizedBox(height: 10,),
              Text("fee clearence form",style: TextStyle(
                  decoration: TextDecoration.underline,
                decorationColor: Colors.white,

                  decorationThickness: 2,
                color: Colors.white
              ),),

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

