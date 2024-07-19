import 'package:flutter/material.dart';

class My_cart2 extends StatelessWidget {
  const My_cart2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Scaffold(
        body: SafeArea(
            child: Text(
          'Welcome to my cart',
          style: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
