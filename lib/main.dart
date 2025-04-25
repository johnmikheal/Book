import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tkuo/Constans.dart';
import 'package:tkuo/Features/Splash/presentation/Views/Splash_View.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: KprimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
