import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/constants/app_assets.dart';
import 'package:flutter_task/constants/utils/size_config.dart';
import 'package:flutter_task/home/widgets/items_card/extra_card_info.dart';
import 'package:flutter_task/home/widgets/items_card/pending_approval_widget.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.imgPath,
  });

  final String imgPath;

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
                imgPath, // replace with your image URL
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Positioned(
              top: SizeConfig.width < SizeConfig.mobile ? 130 : 140,
              right: 0,
              left: 0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.35, 1.0],
                    colors: [
                      theme.colorScheme.surfaceContainer,
                      theme.colorScheme.surfaceContainer.withOpacity(0.5),
                    ],
                  ),
                ),
                child: const SizedBox(
                  height: 70,
                  width: double.infinity,
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.width < SizeConfig.mobile ? 135 : 160,
              right: 0,
              width: 0,
              height: 40,
              child: Card(
                color: theme.colorScheme.primary,
                shape: const CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset(
                    AppAssets.moreHorizontal,
                    width: 16,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              top: SizeConfig.width < SizeConfig.mobile ? 135 : 160,
              child: Container(
                padding: EdgeInsets.only(top: setTopPadding(SizeConfig.width)),
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: ExtraCardInfo(),
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.width < SizeConfig.mobile ? 165 : 160,
              child: const PendingApprovalWidget(),
            ),
          ],
        ),
      ),
    );
  }

  double setTopPadding(double width) {
    if (width <= SizeConfig.mobile) {
      return 75;
    } else if (width < SizeConfig.desktop) {
      return 50;
    } else {
      return 50;
    }
  }
}
