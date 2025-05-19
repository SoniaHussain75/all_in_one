import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled2/appo_project/screens/guest_screen/user_detail.dart';

class OldGuest extends StatelessWidget {
  const OldGuest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: const Text("🎓 Guest "),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: FutureBuilder(
          future: FirebaseFirestore.instance.collection("students").get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());

            if (!snapshot.hasData || snapshot.data!.docs.isEmpty)
              return const Center(child: Text("No students found"));

            final students = snapshot.data!.docs;

            return ListView.builder(
              itemCount: students.length,

              itemBuilder: (context, index) {
                final student = students[index];
                final name = student['name'];
                final username = student['username'];
                final language = student['language'];
                final  uid=student['uid'];



                return InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) =>UserDetailonpress(
                        name: name,
                        username: username,
                        language: language,
                    ),
                    ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/china2.jpg"),
                      ),
                      title: Text(name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      subtitle: Text("Username: @$username \nLanguage: $language "),


                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
