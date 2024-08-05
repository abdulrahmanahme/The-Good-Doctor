import 'package:flutter/material.dart';
import 'package:the_good_doctor/core/theming/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'Home Screen',
        style: TextStyles.font11Primary100w400,
      ),
    ));
  }
}
