import 'package:coffee_app/Utils/colors.dart';
import 'package:coffee_app/Widgets/background.dart';
import 'package:coffee_app/Widgets/category_items.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/Widgets/clip.dart';

import '../Models/product_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentCategory = 0;


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
              ],
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Stack(
        children: [
          Background(),
          Positioned(
            top: 30,
            left: 40,
            child: Text(
              'Smooth Out\nYour Everyday',
              style: TextStyle(
                fontSize: 35,
                height: 1.2,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Positioned(
            top: 120,
            child: ClipPath(
              clipper: Clip(),
              child: Container(
                height: 190,
                width: MediaQuery.of(context).size.width,
                color: firstColor,
                child: Row(
                  children: List.generate(
                    categories.length,
                    (index) => Expanded(
                      child: Container(
                        height: 190,
                        width: 107,
                        color: currentCategory == index
                            ? Colors.amber
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 125,
            child: ClipPath(
              clipper: Clip(),
              child: Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
                color: firstColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(categories.length, (index) {
                    int decrease = 0;
                    int max = 1;
                    int bottomPadding = 1;
                    for (var i = 0; i < categories.length; i++) {
                      bottomPadding = index > max ? index - decrease++ : index;
                    }
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: bottomPadding.abs() * 75,
                          ),
                          child: CategoryItems(
                            category: categories[index],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: Clip(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.58,
                width: MediaQuery.of(context).size.width,
                color: secondColor,
              ),
            ),
          ),
          Positioned(
            child: ClipPath(
              clipper: Clip(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.58,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: PageView.builder(itemBuilder: (context , index){
                  return GestureDetector(
                    onTap: (){},
                    child: Padding(padding: EdgeInsets.only(),),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
