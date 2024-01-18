import 'package:CoffeeApp/dppage.dart';
import 'package:CoffeeApp/bottom_bar.dart';
import 'package:CoffeeApp/delivery.dart';
import 'package:CoffeeApp/h1.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import './home.dart';
import './onboarding.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop App',
      theme: ThemeData(),
      routes: {
        '/': (context) => const Onboarding(),
        '/home': (context) => const Home(),
        '/h1': (context) => const H1(),
        '/bottombar': (context) => const Bottombar(),
        '/details': (context) => const Detail(),
        '/map': (context) => const Delivery(),
      },
    );
  }
}
