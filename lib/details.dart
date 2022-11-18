import 'package:flutter/material.dart';

class details extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;

  const details(this.title, this.price, this.description, this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 30),
          child: Image.asset(image),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 30),
            child: Text(
              description,
              textAlign: TextAlign.left,
            )),
        Text(
          "$price TND",
          style: const TextStyle(fontSize: 28),
        ),
        SizedBox(
          height: 40,
          width: 200,
          child: ElevatedButton.icon(
            onPressed: (() => {}),
            label: const Text(
              "Acheter",
              style: TextStyle(fontSize: 22),
            ),
            icon: const Icon(Icons.account_balance_wallet),
          ),
        )
      ],
    );
  }
  }

