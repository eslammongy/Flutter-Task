import 'package:flutter/material.dart';
import 'package:flutter_task/constants/app_assets.dart';
import 'package:flutter_task/home/widgets/circle_img_avatar.dart';
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
      height: 24,
      child: ListView.builder(
        itemCount: ellipseList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == ellipseList.length - 1 && shouldDisplayMoreBtn) {
            return Align(
              child: buildHiddenPlayersBtn(
                theme,
              ),
            );
          }
          return Align(
            child: CircleImgAvatar(
              imagePath: ellipseList[index],
            ),
          );
        },
      ),
    );
  }

  InkWell buildHiddenPlayersBtn(ThemeData theme) {
    return InkWell(
        onTap: () {},
        child: SizedBox(
          width: 24,
          height: 24,
          child: Card(
            color: theme.colorScheme.surfaceContainer,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                "+6",
                textAlign: TextAlign.center,
                style: AppTextStyle.styleRegular12
                    .copyWith(color: theme.colorScheme.primary),
              ),
            ),
          ),
        ));
  }
}
