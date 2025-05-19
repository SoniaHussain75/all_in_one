import 'package:flutter/material.dart';
class KiuAdmitcard extends StatelessWidget {
  const KiuAdmitcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admit card"),
      ),
      body: Card(
        color: Colors.white,
        shadowColor: Colors.grey,
        child: Column(
             mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text("Print Admit Card For Fall 2022",style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold
            ),),
           SizedBox(height: 20,),
            Text("Registration Number"),
            TextField(
              decoration:InputDecoration(
                label:Text("2020-KIU-XXX",style: TextStyle(
                  color: Colors.black,
                ),)
              )
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                  onPressed: (){}, child: Text("Print Card",style: TextStyle(
                color: Colors.white,
              ),)),
            )



          ],
        ),
      ),
    );
  }
}
