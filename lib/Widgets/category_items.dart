import 'package:coffee_app/Models/product_model.dart';
import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  final Category category;

  const CategoryItems({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 75,
          height: 75,
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          padding: const EdgeInsets.all(10),
          child: Image.asset('images/${category.image}'),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          category.name.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
