
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s1/biblio.dart';


class login extends StatelessWidget {
  final String image;

  const login({ Key? key, required this.image}) : super(key: key);

  @override
    Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: Image.asset(image),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                children: [
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mot de passe',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: Size.fromHeight(40), // fromHeight use double.infinity as width and 40 is the height
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Biblio(image: image)));

                        },
                        child: Text('S''authentifier'),
                      ),

                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size.fromHeight(40), // fromHeight use double.infinity as width and 40 is the height
                    ),
                    onPressed: () {},
                    child: Text('Annuler'),
                  )

                ],
              ),
            ),
          ],
        ),
      ));
    }
  }