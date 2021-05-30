import 'package:flutter/material.dart';
import 'package:train_booking_app/pages/dashboard_page.dart';
import 'package:train_booking_app/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Train Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: KColors.white
      ),
      home: DashboardPage(),
    );
  }
}