import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeBean extends StatelessWidget {
  final double? top, left, bottom, right, degree;

  const CoffeeBean(
      {super.key, this.top, this.left, this.bottom, this.right, this.degree});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
        child: Transform.rotate(
          angle: degree! * pi / 190,
          child: SvgPicture.asset(
            'images/coffee-bean.svg',
            width: 150,
          ),
        ));
  }
}
