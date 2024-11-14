import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeBean extends StatelessWidget {
  final double? top, left, bottom, right, degress;

  const CoffeeBean(
      {super.key, this.top, this.left, this.bottom, this.right, this.degress});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
        child: Transform.rotate(
          angle: degress! * pi / 190,
          child: SvgPicture.asset(
            'images/coffee-bean.svg',
            width: 150,
          ),
        ),);
  }
}
