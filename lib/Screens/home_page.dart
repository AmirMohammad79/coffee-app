import 'package:coffee_app/Utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              'images/coffee-cup.png',
              height: 30,
              color: Colors.amber,
            ),
            const SizedBox(
              width: 5,
            ),
            const Column(
              children: [
                Text(
                  'Qahwa',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  'a.dev_79',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            )
          ],
        ),
        actions: [
          Center(
            child: Stack(
              children: [
                const Icon(
                  Icons.shopping_cart,
                  color: Colors.amber,
                ),
                Positioned(
                  right: 3,
                  top: 0,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: firstColor),
                  ),
                ),
                const SizedBox(width: 15,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
