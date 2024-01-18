import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class H1 extends StatefulWidget {
  const H1({super.key});

  @override
  State<H1> createState() => _H1State();
}

class _H1State extends State<H1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0, 1],
          colors: [
            Color(0xFF131313),
            Color(0xFF313131),
          ],
          transform: GradientRotation(240.86),
        ),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            title: const Text(
              "Location",
              style: TextStyle(
                color: Color(0xFFB7b7b7),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              "Colombo, Sri Lanka",
              style: TextStyle(
                color: Color.fromRGBO(221, 221, 221, 1),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),

            // profile img
            trailing: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                  image: AssetImage('assets/profile.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
              decoration: InputDecoration(
                hintText: "Search Coffee",
                hintStyle: const TextStyle(
                  color: Color.fromRGBO(152, 152, 152, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
                fillColor: const Color(0Xff313131),
                filled: true,
                prefixIcon: CupertinoButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: const Icon(
                    Icons.search,
                    color: Color.fromRGBO(152, 152, 152, 1),
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: CupertinoButton(
                    onPressed: () {},
                    color: const Color(0xFFC67C4E),
                    padding: EdgeInsets.zero,
                    child: SvgPicture.string(
                      // Add your SVG link here
                      '<svg xmlns="http://www.w3.org/2000/svg" data-name="Layer 2" viewBox="0 0 30 30" id="filter"><path fill="#111224" d="M17 11H4A1 1 0 0 1 4 9H17A1 1 0 0 1 17 11zM26 11H22a1 1 0 0 1 0-2h4A1 1 0 0 1 26 11z"></path><path fill="#111224" d="M19.5 13.5A3.5 3.5 0 1 1 23 10 3.5 3.5 0 0 1 19.5 13.5zm0-5A1.5 1.5 0 1 0 21 10 1.5 1.5 0 0 0 19.5 8.5zM26 21H13a1 1 0 0 1 0-2H26A1 1 0 0 1 26 21zM8 21H4a1 1 0 0 1 0-2H8A1 1 0 0 1 8 21z"></path><path fill="#111224" d="M10.5,23.5A3.5,3.5,0,1,1,14,20,3.5,3.5,0,0,1,10.5,23.5Zm0-5A1.5,1.5,0,1,0,12,20,1.5,1.5,0,0,0,10.5,18.5Z"></path></svg>',
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
