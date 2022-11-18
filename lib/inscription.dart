import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s1/cell.dart';

import 'login.dart';

class inscription extends StatelessWidget {
  final String image;

  const inscription({ Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 30),
          child: Image.asset(image),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'UserName',
                ),
                // ignore: prefer_const_constructors
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: prefer_const_constructors
              TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Email',
                ),
                // ignore: prefer_const_constructors
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: prefer_const_constructors
              TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'Mot de passe',
                ),
                // ignore: prefer_const_constructors
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: prefer_const_constructors
              TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'adresse de facturation',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: (() => {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => login(image: image)))
                    }),
                    label: const Text(
                      "S'inscrire",
                      style: TextStyle(fontSize: 22),
                    ),
                    icon: const Icon(Icons.verified_user),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: (() => {
                    }),
                    label: const Text(
                      "Annuler",
                      style: TextStyle(fontSize: 22),
                    ),
                    icon: const Icon(Icons.cancel),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
