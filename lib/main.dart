import 'package:flutter/material.dart';
import 'package:tugas2_c3/screens/home_page.dart';

void main() {
  runApp(const Tugas2_Chapter3());
}

class Tugas2_Chapter3 extends StatefulWidget {
  const Tugas2_Chapter3({super.key});

  @override
  State<Tugas2_Chapter3> createState() => _Tugas2_Chapter3State();
}

class _Tugas2_Chapter3State extends State<Tugas2_Chapter3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
