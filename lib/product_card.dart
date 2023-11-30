import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backgroundColor;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      // color: const Color.fromRGBO(216, 240, 253, 1),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          //you need color to use boxdecoration, use it here instead of outside for no error.
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '\$ $price',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Image.asset(
              image,
              height: 200,
            ),
          ),
          //this is same as:-
          // Image(
          //   image: AssetImage(image),
          //   height: 220,
          // )
        ],
      ),
    );
  }
}
