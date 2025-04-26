import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tkuo/Constans.dart';
import 'package:tkuo/Features/Home/Presentation/Views/Home_View.dart';
import 'package:tkuo/Features/Home/Presentation/Views/widget/Home_View_Body.dart';
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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KprimaryColor,
      ),
      home: const HomeView(),
    );
  }
}
