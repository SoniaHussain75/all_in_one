import 'package:flutter/material.dart';
import 'package:untitled2/Kiu/kiu_screens/kiu2.dart';
class kiucntrwdgt extends StatelessWidget {
  final String t1;
  final Widget icon;

  const kiucntrwdgt({
    super.key, required this.t1, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,

      ),
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             icon,
            SizedBox(height: 10,),
            TextButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Kiu2()));
                }, child: Text(
              t1,style: TextStyle(
              color: Colors.white,fontSize: 13,
            ),
            )

            ),
          ],
        ),
      ) ,
    );
  }
}
