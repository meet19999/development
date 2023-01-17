import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Bitton extends StatefulWidget {
  const Bitton({Key? key}) : super(key: key);

  @override
  State<Bitton> createState() => _BittonState();
}

class _BittonState extends State<Bitton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [Lottie.asset('assets/demo.json')],
      ),
    );
  }
}
