import 'package:flutter/material.dart';
import 'package:project/welcome_section.dart';
import 'package:project/contact_us_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScrollApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScrollApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Complaint'),
        centerTitle: true,
        backgroundColor: Colors.redAccent[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header(),
            WelcomeSection(),
            ContactUsSection(),
          ],
        ),
      ),
    );
  }
}
