import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Calculo de IMC"),
      ),
      body: Container(
        color: Colors.white30,
        child: ListView(
          children: <Widget>[
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.only(
                top: 70,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Altura (cm)",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 5,
            ),
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(20),
              child: TextFormField(
                // ignore: prefer_const_constructors
                decoration: const InputDecoration(
                  labelText: "Peso (kg)",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(20),
              child: const Text(
                "Você está em forma!",
                textAlign: TextAlign.center,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_constructors
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(20),
              child: TextButton(
                onPressed: () {},
                // ignore: prefer_const_constructors
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                // ignore: prefer_const_constructors
                child: Text(
                  "Calcular",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
