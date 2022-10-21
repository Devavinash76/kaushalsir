import 'package:flutter/material.dart';
import 'package:kaushalsir/activity/HomeScreen/bookscreen.dart';
import 'package:kaushalsir/activity/HomeScreen/lendenscreen.dart';
import 'package:kaushalsir/activity/HomeScreen/notificationscreen.dart';
import 'package:kaushalsir/activity/HomeScreen/homescreen.dart';
import 'package:kaushalsir/main.dart';

import 'chartscreen.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List page = [
    const HomeScreen(),
    const ChartScreen(),
    const LendenScreen(),
    const BookScreen(),
    const NotificationScreen()
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        // centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.circle),
          onPressed: () {  },
        ),
        // actions: [
        //   IconButton(
        //       onPressed:(){},
        //       icon: Icon(Iconst cons.search))
        // ],
        // bottom: const TabBar(
        //   tabs: [
        //     Tab(text: "1",),
        //     Tab(text: "2",),
        //     Tab(text: "3",),
        //   ],
        // ),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            Center(
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Icon( Icons.circle,color: Colors.grey,size: 150,
                ),
              ),
            ),
            ListTile(
              // leading: Icon(Icons.account_circle),
              title: Center(child: Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,))),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            ListTile(
              // leading: Icon(Icons.settings),
              title: Center(child: Text('Portfolio',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,))),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            ListTile(
              // leading: Icon(Icons.settings),
              title: Center(child: Text('Watchlist',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,))),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            ListTile(
              // leading: Icon(Icons.settings),
              title: Center(child: Text('Rewards',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,))),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            ListTile(
              // leading: Icon(Icons.settings),
              title: Center(child: Text('Academy',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,))),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            ListTile(
              // leading: Icon(Icons.settings),
              title: Center(child: Text('Help',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,))),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            ListTile(
              // leading: Icon(Icons.settings),
              title: Center(child: Text('Settings',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,))),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp),label:"Chart"),
          BottomNavigationBarItem(icon: Icon(Icons.call_received_sharp),label:"Receive"),
          BottomNavigationBarItem(icon: Icon(Icons.copy),label:"Book"),
          BottomNavigationBarItem(icon: Icon(Icons.doorbell_rounded),label:"Notification"),
        ],
      ),

    );
  }
}

