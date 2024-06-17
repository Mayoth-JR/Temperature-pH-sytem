import 'package:flutter/material.dart';
import 'package:firebase_signin/ph_virtualization/page/home_page.dart';
import 'package:firebase_signin/temp_virtualization/page/home_page.dart';
import 'package:firebase_signin/screens/signin_screen.dart';
import 'package:firebase_signin/screens/temp_gauge_screen.dart';
import 'package:firebase_signin/screens/ph_gauge_screen.dart';
import 'package:firebase_signin/utils/color_utils.dart';

void main() {
  runApp(DashboardScreen1());
}

class DashboardScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
      routes: {
        '/page1': (context) => TempGaugeScreen(),
        '/page2': (context) => PhGaugeScreen(),
        '/page3': (context) => HomePageTemp(),
        '/page4': (context) => HomePagePH(),
        '/signIn': (context) => SignInScreen(),
      },
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("343b37"),
              hexStringToColor("293e43"),
              hexStringToColor("434029")
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: [
                buildGridView(context),
                SizedBox(height: 20),
                buildLogoutButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGridView(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      children: [
        buildGridItem(context, 'Temperature Reading', 'assets/images/temperature.png', '/page1'),
        buildGridItem(context, 'pH Reading', 'assets/images/temperature.png', '/page2'),
        buildGridItem(context, 'Temperature Data\nVirtualization', 'assets/images/temperature.png', '/page3'),
        buildGridItem(context, 'pH Data Virtualization', 'assets/images/temperature.png', '/page4'),
      ],
    );
  }

  Widget buildGridItem(BuildContext context, String title, String imagePath, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 4),
              blurRadius: 10.0,
            ),
          ],
          border: Border.all(
            color: Colors.purpleAccent,
            width: 2.0,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 100,
            ),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLogoutButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/signIn');
        },
        child: Text('Logout'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
