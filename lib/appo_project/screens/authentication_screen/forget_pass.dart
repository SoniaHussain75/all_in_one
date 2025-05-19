import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.lock_reset,
                      size: 80, color: Colors.brown),
                  SizedBox(height: 20),
                   Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                   SizedBox(height: 10),
                   Text(
                    "Enter your email and we'll send you a reset link.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                   SizedBox(height: 25),
                  ElevatedButton.icon(
                    onPressed: () {
                        var email = emailController.text.trim();
                      // Add Firebase reset password logic here
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Password reset link sent to $email'),
                      ));
                    },
                    icon:  Icon(Icons.send),
                    label: Text("Send Reset Link"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      foregroundColor: Colors.white,
                      padding:  EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                   SizedBox(height: 15),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child:  Text("Back to Login"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
