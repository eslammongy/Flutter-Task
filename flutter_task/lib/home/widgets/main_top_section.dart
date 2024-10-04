import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/constants/app_assets.dart';
import 'package:flutter_task/constants/utils/size_config.dart';
import 'package:flutter_task/home/widgets/add_new_item_btn.dart';
import 'package:flutter_task/constants/theme/app_text_styles.dart';

class MainTopSection extends StatelessWidget {
  const MainTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Text(
          "Items",
          style: AppTextStyle.styleRegular32,
        ),
        const Spacer(),
        Card(
          color: theme.colorScheme.surfaceContainer,
          shape: const CircleBorder(),
          child: IconButton(
            onPressed: () {},
            icon:  SvgPicture.asset(AppAssets.sliders),
          ),
        ),
        if (SizeConfig.width > SizeConfig.mobile) ...[
          const AddNewItemBtn(),
        ]
      ],
    );
  }
}
