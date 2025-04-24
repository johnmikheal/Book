import 'package:flutter/material.dart';
import 'package:tkuo/Features/Splash/presentation/Views/Widgets/Splash_View_Body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
