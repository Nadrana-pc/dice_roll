
import 'dart:math';

import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  var activediceImg = "asset/dice_6.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(209, 77, 10, 96),
          title: const Text(
            "ROLL THE DICE",
          )),
      backgroundColor: const Color.fromARGB(209, 234, 211, 241),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                activediceImg,
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(209, 77, 10, 96),
                  ),
                  onPressed: fun,
                  child: const Text("Tap to change dice"))
            ],
          ),
        ),
      ),
    );
  }

  fun() {
    setState(() {
      var val = Random().nextInt(5) + 1;
      activediceImg = "asset/dice_$val.png";
    });
  }
}
