import 'package:flutter/material.dart';
import 'package:wael_abu_hamza/pages/01-one.dart';
import 'package:wael_abu_hamza/pages/02-two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home:  Two(),
      debugShowCheckedModeBanner: false,
    );
  }
}
