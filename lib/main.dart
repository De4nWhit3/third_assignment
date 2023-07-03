import 'package:flutter/material.dart';
import 'package:third_assignment/2_application/pages/advice/advice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdvicePageWrapperProvider(),
    );
  }
}
