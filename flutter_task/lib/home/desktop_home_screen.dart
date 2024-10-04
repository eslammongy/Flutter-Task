import 'package:flutter/material.dart';
import 'package:flutter_task/constants/utils/helper.dart';
import 'package:flutter_task/home/widgets/item_card.dart';
import 'package:flutter_task/home/widgets/main_app_bar.dart';

class LargeHomeScreen extends StatelessWidget {
  const LargeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: const LargeAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 8,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: setCrossAxisCount(width),
            mainAxisExtent: 360,
            crossAxisSpacing: 12.0,
          ),
          itemBuilder: (_, index) => const ItemCard(
            top: 160,
            topPadding: 160 / 6,
          ),
        ),
      ),
    );
  }
}
