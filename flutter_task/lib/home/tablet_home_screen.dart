import 'package:flutter/material.dart';
import 'package:flutter_task/constants/utils/helper.dart';
import 'package:flutter_task/home/widgets/main_top_section.dart';
import 'package:flutter_task/home/widgets/appbar/main_app_bar.dart';
import 'package:flutter_task/home/widgets/items_card/item_card.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: const LargeAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const MainTopSection(),
            const SizedBox(height: 20.0),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 8,
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: setCrossAxisCount(width),
                  mainAxisExtent: 360,
                  crossAxisSpacing: 12.0,
                ),
                itemBuilder: (_, index) => const ItemCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
