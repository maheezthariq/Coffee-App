import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'coffeemodel.dart';
import 'data.dart';

class H3 extends StatefulWidget {
  const H3({super.key});

  @override
  State<H3> createState() => _H3State();
}

class _H3State extends State<H3> {
  var selected = 1;

  Widget coffeeItem() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: ["Cappuccino", "Machiato", "Latte", "Americano"]
            .asMap()
            .map(
              (key, value) => MapEntry(
                key,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = key;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 30, bottom: 20),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: selected == key
                          ? const Color.fromRGBO(198, 124, 78, 1)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      value,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selected == key ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .values
            .toList(),
      ),
    );
  }

  Widget singleCoffee(CoffeeModel coffee) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/details');
              },
              child: Container(
                alignment: Alignment.topRight,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(coffee.image),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 51,
                      height: 25,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 0, 0, 0.16),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 2.5)
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 10,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            coffee.rate.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    coffee.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    coffee.coffeeWith,
                    style: const TextStyle(
                      color: Color(0xFF9B9B9B),
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${coffee.price.toString()}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFF2F4B4E),
                        ),
                      ),
                      Transform.scale(
                        scale: 0.8,
                        child: CupertinoButton(
                          onPressed: () {},
                          color: const Color(0xFFC67C4E),
                          padding: EdgeInsets.zero,
                          child: const Text("+"),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          // coffee list
          coffeeItem(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: coffeeList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  CoffeeModel coffee = coffeeList[index];
                  return singleCoffee(coffee);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
