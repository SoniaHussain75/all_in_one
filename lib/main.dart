import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/appo_project/screens/start_screen/splash_screen.dart';
import 'Kiu/kiu_screens/kiu1.dart';
import 'Kiu/kiu_screens/kiu3.dart';
import 'appo_project/screens/add.dart';
import 'appo_project/screens/addlist.dart';
import 'appo_project/screens/booking_screen/booking_screen.dart';
import 'appo_project/screens/guest_screen/old_guest.dart';
import 'appo_project/screens/guest_screen/user_detail.dart';
import 'appo_project/screens/home_screen/home_screen.dart';
import 'appo_project/screens/start_screen/splash_screen.dart';
import 'appo_project/payment.dart';
import 'appo_project/screens/addhokme.dart';
import 'appo_project/widgets/add_two.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen89(),
    );
  }
}
