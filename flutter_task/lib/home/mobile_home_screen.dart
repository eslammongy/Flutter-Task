import 'package:flutter/material.dart';
import 'package:flutter_task/home/desktop_home_screen.dart';
import 'package:flutter_task/home/widgets/mobile_drawer.dart';
import 'package:flutter_task/home/widgets/main_top_section.dart';
import 'package:flutter_task/home/widgets/items_card/item_card.dart';
import 'package:flutter_task/home/widgets/appbar/mobile_appbar.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MobileAppBar(),
      drawer: const MobileDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const MainTopSection(),
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: itemsImages.length,
                itemExtent: 360,
                itemBuilder: (context, index) {
                  return ItemCard(
                    imgPath: itemsImages[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
