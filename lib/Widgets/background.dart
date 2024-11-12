import 'package:coffee_app/Widgets/coffe_bean.dart';
import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          CoffeeBean()
        ],
      ),
    );
  }
}
