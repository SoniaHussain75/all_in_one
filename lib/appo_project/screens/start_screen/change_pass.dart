import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Profile"), backgroundColor: Colors.teal),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(radius: 50, backgroundImage: NetworkImage("https://via.placeholder.com/150")),
            const SizedBox(height: 20),
            const Text("Ali Raza", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("aliraza@example.com"),
            const SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text("Edit Info"),
              onTap: () {
                // Edit user info screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text("Change Password"),
              onTap: () {
                // Change password screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
