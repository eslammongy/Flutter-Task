import 'package:flutter/material.dart';
import 'package:flutter_task/constants/app_assets.dart';
import 'package:flutter_task/constants/utils/helper.dart';
import 'package:flutter_task/home/widgets/extra_card_info.dart';
import 'package:flutter_task/home/widgets/pending_approval_widget.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.topPadding,
    required this.top,
    this.isSmallView = false,
  });
  final double topPadding;
  final double top;
  final bool isSmallView;

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
        height: 360,
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
              top: top,
              child: Container(
                padding: EdgeInsets.only(top: topPadding),
                decoration: boxDecoration(theme),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceContainer,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: ExtraCardInfo(
                      isSmallView: isSmallView,
                    ),
                  ),
                ),
              ),
            ),
            if (!isSmallView) ...[
              Positioned(
                top: top - 10,
                child: const PendingApprovalWidget(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
