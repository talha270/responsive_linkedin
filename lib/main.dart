
import 'package:flutter/material.dart';
import 'package:responsive_linkedin/pages/main/main_landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainLandingPage(),
    );
  }
}
