import 'package:flutter/material.dart';
import 'package:professional_profile_flutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Dulina Gunasinghe',
      home: const HomePage(),
    );
  }
}