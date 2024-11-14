import 'package:flutter/material.dart';

import 'coffe_bean.dart';
class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: size.width,
      height: size.height,
      child: const Stack(children: [
        CoffeeBean(degress: 190, right: 160, top: 90),
        CoffeeBean(degress: 90, left: -50, top: 5),
        CoffeeBean(degress: 10, left: -70, top: 140),
        CoffeeBean(degress: 75, right: -20, top: 150),
        CoffeeBean(degress: 100, right: -70, top: 300),
        CoffeeBean(degress: 155, right: 70, top: 350),
      ]),
    );
  }
}