import 'package:CoffeeApp/h1.dart';
import 'package:CoffeeApp/h2.dart';
import 'package:CoffeeApp/h3.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double h1 = 280;
    double h2 = 150;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            height: h1,
            left: 0,
            right: 0,
            child: const H1(),
          ),
          Positioned.fill(top: h1, child: const H3()),
          Positioned(
            top: h1 - h2 / 2,
            left: 0,
            right: 0,
            child: const H2(),
          ),
        ],
      ),
    );
  }
}
