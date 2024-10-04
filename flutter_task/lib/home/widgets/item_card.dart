import 'package:flutter/material.dart';
import 'package:flutter_task/constants/app_assets.dart';
import 'package:flutter_task/constants/utils/helper.dart';
import 'package:flutter_task/constants/utils/size_config.dart';
import 'package:flutter_task/home/widgets/extra_card_info.dart';
import 'package:flutter_task/home/widgets/pending_approval_widget.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    this.isSmallView = false,
  });

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
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              height: 180,
              child: Image.asset(
                AppAssets.palmTreesPng, // replace with your image URL
                fit: BoxFit.cover,
                width: double.infinity,
              ),
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
              top: SizeConfig.width < SizeConfig.mobile ? 135 : 160,
              child: Container(
                padding: EdgeInsets.only(top: setTopPadding(SizeConfig.width)),
                decoration: boxDecoration(theme),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceContainer,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: ExtraCardInfo(),
                  ),
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.width < SizeConfig.mobile ? 170 : 160,
              child: const PendingApprovalWidget(),
            ),
          ],
        ),
      ),
    );
  }

  double setTopPadding(double width) {
    if (width <= SizeConfig.mobile) {
      return 70;
    } else if (width < SizeConfig.desktop) {
      return 50;
    } else {
      return 50;
    }
  }
}
