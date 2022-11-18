import 'package:flutter/material.dart';
import 'package:s1/home_screen.dart';
import 'package:s1/inscription.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Store"),
        ),
        body: Column(
          children: const [
            inscription(image: "Assets/re8.jpg"),

          ],
        ),
      ),
    );
  }
}
