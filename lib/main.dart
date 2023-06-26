import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_bar/bindings/my_binding.dart';
import 'package:getx_navigation_bar/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      initialBinding: MyBinding(),
    );
  }
}
