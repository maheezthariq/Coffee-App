import 'package:CoffeeApp/order.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/tranparent.png',
              color: Colors.black,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 40.0),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 100.0),
                  child: Text(
                    'Detail',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sora',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 90.0),
                  child: Image.asset(
                    'assets/Heart.png',
                    color: Colors.black,
                    width: 30.0,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/Rectangle.png',
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 220.0),
                  child: const Text(
                    'Cappuccino',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'With chocolate',
                  style: TextStyle(
                    color: Color.fromARGB(255, 204, 200, 200),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/Frame1.png'),
                const SizedBox(
                  width: 15,
                ),
                Image.asset('assets/Frame2.png'),
                const SizedBox(
                  width: 30,
                )
              ],
            ),
            Container(
                margin: const EdgeInsets.only(right: 250.0),
                child: Image.asset('assets/Frame5.png')),
            const Divider(
              color: Color.fromARGB(255, 160, 158, 158),
              thickness: 1.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(right: 240.0),
              child: const Text(
                'Description',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 40.0),
                child: Image.asset(
                  'assets/des.png',
                  height: 60,
                  width: 350,
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(right: 300.0),
              child: const Text(
                "Size",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                      const Size(100.0, 50.0),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xFFC67C4E),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'S',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                      const Size(100.0, 50.0),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xFFC67C4E),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'M',
                    style: TextStyle(
                      color: Color(0xFFF88D63),
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                      const Size(100.0, 50.0),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 255, 255),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xFFC67C4E),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'L',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: screenWidth,
              child: Row(
                children: [
                  SizedBox(
                    width: screenWidth / 3,
                    child: const Column(
                      children: [
                        Text("Price"),
                        SizedBox(height: 10),
                        Text(
                          "\$ 4.53",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFC67C4E),
                              fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 50,
                        width: 2 * screenWidth / 4,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Order(),
                              ),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFFC67C4E),
                            ),
                          ),
                          child: const Text(
                            'Buy Now',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 160, 158, 158),
              thickness: 2.0,
              indent: 80.0,
              endIndent: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
