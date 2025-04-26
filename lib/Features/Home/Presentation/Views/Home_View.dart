import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tkuo/Features/Home/Presentation/Views/widget/Home_View_Body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
