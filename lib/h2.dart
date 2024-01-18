import 'package:flutter/material.dart';

class H2 extends StatefulWidget {
  const H2({super.key});

  @override
  State<H2> createState() => _H2State();
}

class _H2State extends State<H2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        image: const DecorationImage(
          image: AssetImage('assets/promo.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(237, 81, 81, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    minimumSize: const Size(80, 10),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Promo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: 200,
                  height: 39,
                  color: Colors.black,
                  child: const Text(
                    "Buy one get",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 3,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  width: 160,
                  height: 39,
                  color: Colors.black,
                  child: const Text(
                    "One FREE",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 3,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
