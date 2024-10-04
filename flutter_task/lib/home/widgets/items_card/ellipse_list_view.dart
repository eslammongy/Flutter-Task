import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/constants/app_assets.dart';
import 'package:flutter_task/constants/theme/app_text_styles.dart';

const ellipseList = [
  AppAssets.ellipse1,
  AppAssets.ellipse2,
  AppAssets.ellipse3,
];

class EllipseListView extends StatelessWidget {
  const EllipseListView({
    super.key,
    required this.shouldDisplayMoreBtn,
  });
  final bool shouldDisplayMoreBtn;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 28,
      child: ListView.builder(
        itemCount: ellipseList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          if (index == ellipseList.length - 1 && shouldDisplayMoreBtn) {
            return Align(
              widthFactor: 0.6,
              child: buildHiddenItemsBtn(
                theme,
              ),
            );
          }
          return buildAvatar(
            ellipseList[index],
          );
        },
      ),
    );
  }

  Widget buildHiddenItemsBtn(ThemeData theme) {
    return SizedBox(
      width: 24,
      height: 24,
      child: InkWell(
        onTap: () {},
        child: Card(
          color: const Color(0xff262626),
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text(
              "+6",
              textAlign: TextAlign.center,
              style: AppTextStyle.styleRegular12
                  .copyWith(color: theme.colorScheme.primary, fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAvatar(String imagePath) {
    return Align(
      widthFactor: 0.5,
      child: SvgPicture.asset(
        imagePath,
        width: 24, // Set width
        height: 24, // Set height
        fit: BoxFit.contain, // Optional, fits the image within the size
      ),
    );
  }
}
