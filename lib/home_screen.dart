import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s1/cell.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "G-store Esprit",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: const [
          cell("dmc5.jpg", "Devil May Cry 5", 200),
          cell("fifa.jpg", "Fifa 22", 220),
          cell("minecraft.jpg", "Minecraft", 150),
          cell("nfs.jpg", "Need For Speed", 100),
          cell("rdr2.jpg", "Red Dead Redemption 2", 150),
        ],
      ),
    );
  }
}
