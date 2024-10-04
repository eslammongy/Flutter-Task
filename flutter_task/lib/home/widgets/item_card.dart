import 'package:flutter/material.dart';
import 'package:flutter_task/constants/app_assets.dart';
import 'package:flutter_task/home/widgets/extra_card_info.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: theme.colorScheme.surfaceContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: 362,
        child: Stack(
          children: [
            Image.asset(
              AppAssets.palmTreesPng, // replace with your image URL
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              top: 16,
              right: 16,
              width: 34,
              height: 34,
              child: Card(
                  color: theme.colorScheme.surfaceContainer.withOpacity(0.6),
                  child: Icon(Icons.more_horiz_sharp,
                      size: 16, color: theme.colorScheme.onSecondary)),
            ),
            Positioned.fill(
              top: 140,
              child: Container(
                padding: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                          theme.colorScheme.surfaceContainer.withOpacity(0.6),
                      offset: const Offset(0, -8),
                      blurRadius: 4,
                      spreadRadius: 20,
                    ),
                    BoxShadow(
                      color:
                          theme.colorScheme.surfaceContainer.withOpacity(0.8),
                      offset: const Offset(0, 26),
                      blurRadius: 8,
                      spreadRadius: 8,
                    ),
                  ],
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceContainer,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: ExtraCardInfo(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
