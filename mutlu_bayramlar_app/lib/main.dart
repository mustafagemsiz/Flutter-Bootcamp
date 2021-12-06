import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: const Color(0xFFD7E0FF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
        title: const Center(child: Text("Mutlu Bayramlar")),
      ),
      body: Center(
        child: Image.asset('images/mutlu_bayramlar.jpg'),
      ),
    ),
  ));
}
