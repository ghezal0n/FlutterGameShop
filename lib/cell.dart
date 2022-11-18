import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cell extends StatelessWidget {
  final String image;
  final String title;
  final double price;

  const cell(this.image, this.title, this.price, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "Assets/$image",
            width: 220,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "${price.floor().toString()} TND",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
