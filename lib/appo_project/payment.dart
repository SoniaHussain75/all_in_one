import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Select your Payment Methods"),
      ),
      body: Column(

          children: [
 SizedBox(height: 40,),
          ListTile(
            title: TextButton(onPressed: (){}, child: Text("VISA",style: TextStyle(
              color: Colors.black
            ),)),
            leading: Image.asset("assets/visa.png",height: 40,width: 40,),
            trailing: Icon(CupertinoIcons.circle),
          ),
            ListTile(
              title: TextButton(onPressed: (){}, child: Text("Net Banking ")),
              leading: Image.asset("assets/bank.png",height: 40,width: 40,),
              trailing: Icon(CupertinoIcons.circle),
            ),
            ListTile(
              title: TextButton(onPressed: (){}, child: Text("UPI Payment")),
              leading:Image.asset("assets/upi.png",height: 40,width: 40,),
              trailing: Icon(CupertinoIcons.circle),
            ),
            ListTile(
              title: TextButton(onPressed: (){}, child: Text("Bank Transfer")),
              leading: Icon(Icons.web_asset,color: Colors.black,size: 30,),
              trailing: Icon(CupertinoIcons.circle),
            ),
            ListTile(
              title: TextButton(onPressed: (){}, child: Text("Wallet")),
              leading: Icon(Icons.wallet,color: Colors.green,size: 30,),
              trailing: Icon(CupertinoIcons.circle),
            ),


          ],
        ),
    );
  }
}
