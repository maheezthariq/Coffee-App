import 'package:CoffeeApp/heart.dart';
import 'package:CoffeeApp/home.dart';
import 'package:CoffeeApp/notification.dart';
import 'package:CoffeeApp/store.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  static const routeName = '/bottombar';

  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Heart(),
    Store(),
    NotificationScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => _onItemTapped(0),
              icon: const Icon(Icons.home),
              color:
                  _selectedIndex == 0 ? const Color(0xFFC67C4E) : Colors.grey,
            ),
            IconButton(
              onPressed: () => _onItemTapped(1),
              icon: const Icon(Icons.favorite),
              color:
                  _selectedIndex == 1 ? const Color(0xFFC67C4E) : Colors.grey,
            ),
            IconButton(
              onPressed: () => _onItemTapped(2),
              icon: Icon(
                Icons.shopping_bag_rounded,
                color:
                    _selectedIndex == 2 ? const Color(0xFFC67C4E) : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () => _onItemTapped(3),
              icon: const Icon(Icons.notifications),
              color:
                  _selectedIndex == 3 ? const Color(0xFFC67C4E) : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
