import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:railway_exams/screens/login_screen.dart';
import 'package:railway_exams/widgets/home/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
