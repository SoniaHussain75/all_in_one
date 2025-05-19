import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/Kiu/kiu_screens/kiu5.dart';
import 'package:untitled2/appo_project/screens/home_screen/home_screen.dart';
import '../widgets_kiu/kiu_color.dart';
import 'kiu_activecourse.dart';
import 'kiu_admitcard.dart';
import 'kiu_arrangecls.dart';
import 'kiu_calendar.dart';
import 'kiu_library.dart';
import 'kiu_logout.dart';
import 'kiu_noticeboard.dart';
import 'kiu_profile.dart';
import 'kiu_timetable.dart';
import 'kiu_transport.dart';

class Kiu3 extends StatelessWidget {
  const Kiu3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeBlue,
        leading: Row(
          children: [
            SizedBox(width: 20),
            CircleAvatar(
              backgroundImage: AssetImage("assets/china8.jpg"),
              maxRadius: 20
            ),
            SizedBox(width: 3),
            Text("Sonia_Hussain",style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/china8.jpg"),
                  maxRadius: 10,
                ),
                title: Text("Sonia "),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.green,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Text("🌟"),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Text("sucess is simpy a matter of luck X"),
                      Text("Ask any failure _joe Penna"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KiuTransport()),
                );
              },
              child: kiu_color(
                color: Colors.red,
                icons: Icon(CupertinoIcons.bus, color: Colors.white, size: 45),
                t5: 'Transport Application',
              ),
            ),
            SizedBox(height: 20),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>KiuAdmitcard()));
              },
              child: kiu_color(
                  color: Colors.blue,
                  icons: Icon(Icons.card_travel, color: Colors.white, size: 45),
                  t5: 'Print Admit Card',
                ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KiuNoticeboard()),
                );
              },
              child: kiu_color(
                color: Colors.orange,
                icons: Icon(
                  Icons.developer_board,
                  color: Colors.white,
                  size: 45,
                ),
                t5: 'Noticeboard',
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KiuCalendar()),
                );
              },
              child: kiu_color(
                color: Colors.yellow,
                icons: Icon(
                  CupertinoIcons.calendar,
                  color: Colors.white,
                  size: 45,
                ),
                t5: 'Academic Calendar',
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KiuActivecourse()),
                );
              },
              child: kiu_color(
                color: Colors.purple,
                icons: Icon(
                  CupertinoIcons.book_fill,
                  color: Colors.white,
                  size: 45,
                ),
                t5: 'Active Courses',
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KiuLibrary()),
                );
              },
              child: kiu_color(
                color: Colors.lightGreenAccent,
                icons: Icon(Icons.library_add, color: Colors.white, size: 45),
                t5: 'Library resources',
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KiuArrangecls()),
                );
              },
              child: kiu_color(
                color: Colors.yellowAccent,
                icons: Icon(Icons.class_, color: Colors.white, size: 45),
                t5: 'Arrange Classes',
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KiuTimetable ()),
                );
              },
              child: kiu_color(
                color: Colors.pinkAccent,
                icons: Icon(Icons.schedule, color: Colors.white, size: 45),
                t5: 'Timetable',
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KiuProfile()),
                );
              },
              child: kiu_color(
                color: Colors.purple,
                icons: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                  size: 45,
                ),
                t5: 'Profile',
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KiuLogout()),
                );
              },
              child: kiu_color(
                color: Colors.lightBlueAccent,
                icons: Icon(Icons.logout, color: Colors.white, size: 45),
                t5: 'Logout',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
