import 'package:flutter/material.dart';
import 'package:tranquil/screens/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation Corner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF151A2F),
        brightness: Brightness.dark,
        fontFamily: 'Quicksand',
      ),
      home: const SplashPage(),
    );
  }
}
