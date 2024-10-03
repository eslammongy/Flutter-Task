import 'package:flutter/material.dart';
import 'package:flutter_task/home/widgets/mobile_appbar.dart';

class SmallHomeScreen extends StatelessWidget {
  const SmallHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MobileAppBar(),
    );
  }


}
