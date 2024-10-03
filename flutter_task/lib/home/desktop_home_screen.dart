import 'package:flutter/material.dart';
import 'package:flutter_task/home/widgets/main_app_bar.dart';

class LargeHomeScreen extends StatelessWidget {
  const LargeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LargeAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
