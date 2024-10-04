import 'package:flutter/material.dart';
import 'package:flutter_task/home/widgets/item_card.dart';
import 'package:flutter_task/home/widgets/mobile_appbar.dart';

class SmallHomeScreen extends StatelessWidget {
  const SmallHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MobileAppBar(),
      body: ListView.builder(
        itemCount: 5,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: (context, index) {
          return const ItemCard(
            top: 140,
            topPadding: 160 / 6,
            isSmallView: true,
          );
        },
      ),
    );
  }
}
