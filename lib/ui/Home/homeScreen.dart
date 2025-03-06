import 'package:flutter/material.dart';
import 'package:graduationproject/ui/Home/tabs/accScreen.dart';
import 'package:graduationproject/ui/Home/tabs/fbScreen.dart';
import 'package:graduationproject/ui/Home/tabs/newsScreen.dart';
import 'package:graduationproject/ui/Home/tabs/notificationScreen.dart';
import 'package:graduationproject/ui/Home/tabs/umsScreen.dart';

class homeScreen extends StatefulWidget {
  static const routeName = 'homeScreen';

  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectind = 2;
  var tabs = [
    fbScreen(),
    umsScreen(),
    newsScreen(),
    accScreen(),
    notificationsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff143109)),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/sciLogo.jpg"),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("user",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text("user@example.com",
                        style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ]),
            ),
            ListTile(
              leading: Icon(
                Icons.calculate,
                color: Color(0xFFB7935F),
              ),
              title: Text(
                'Gpa Calculator',
                style: TextStyle(
                  color: Color(0xFFB7935F),
                ),
              ),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(
                Icons.report_gmailerrorred,
                color: Color(0xFFB7935F),
              ),
              title: Text('Complaints',
                  style: TextStyle(color: Color(0xFFB7935F))),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(
                Icons.table_view_rounded,
                color: Color(0xFFB7935F),
              ),
              title: Text(
                'tables',
                style: TextStyle(
                  color: Color(0xFFB7935F),
                ),
              ),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(
                Icons.chair_alt,
                color: Color(0xFFB7935F),
              ),
              title: Text(
                'seats',
                style: TextStyle(
                  color: Color(0xFFB7935F),
                ),
              ),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff143109),
        title: const Column(
          children: [
            Text(
              'Faculty Of Science ASU',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'ENGR',
              ),
            ),
            Text('كلية العلوم جامعة عين شمس',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'andlso',
                )),
          ],
        ),
        automaticallyImplyLeading:
            false, // Prevents Flutter from adding default back button
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Opens the drawer
            },
          ),
        ),
      ),
      body: tabs[selectind],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Color(0xff143109)),
        child: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: Color(0xFFB7935F),
          currentIndex: selectind,
          onTap: (index) {
            setState(() {
              selectind = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.facebook_sharp), label: 'Facebook'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_sharp), label: 'Ums'),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'News',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active), label: 'Notification'),
          ],
        ),
      ),
    );
  }
}
