import 'package:flutter/material.dart';
import 'package:grey_to_green/models/event.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(this.categoryItem, {super.key});

  final String categoryItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
        side: const BorderSide(
          color: Color.fromRGBO(183, 183, 183, 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            categoryIcons[categoryItem],
            size: 50,
            color: Colors.green,
          ),
          Text(
            categoryItem,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
