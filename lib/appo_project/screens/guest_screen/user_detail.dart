import 'package:flutter/material.dart';

class UserDetailonpress extends StatelessWidget {
  final String name;
  final String username;
  final String language;

  const UserDetailonpress({
    super.key,
    required this.name,
    required this.username,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USerdetailonpress"),
        actions: [
          IconButton(
              onPressed: (){}, icon: Icon(Icons.more_vert_rounded))
        ],
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 50,
                width: 50,
                child:Image.asset("asset/china8.jpg",fit: BoxFit.cover,height: 50,width: 50,)),
              ),

            const SizedBox(height: 30),
            Column(
              children: [
                Text("👤 Name: $name", style: TextStyle(fontSize: 20)),
                Text("📛 Username: @$username", style: TextStyle(fontSize: 20)),
                Text("🗣️ Language: $language", style: TextStyle(fontSize: 20)),
              ],
            )

          ],
        ),
      ),
    );
  }
}
