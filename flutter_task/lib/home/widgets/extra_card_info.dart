import 'package:flutter/material.dart';
import 'package:flutter_task/constants/utils/helper.dart';
import 'package:flutter_task/home/widgets/ellipse_list_view.dart';
import 'package:flutter_task/constants/theme/app_text_styles.dart';

class ExtraCardInfo extends StatelessWidget {
  const ExtraCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Item title',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: AppTextStyle.styleRegular18.copyWith(shadows: textShadow),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Icon(
              Icons.calendar_month_outlined,
              color: theme.colorScheme.surfaceTint,
              size: 16,
            ),
            const SizedBox(width: 8),
            Text(
              '5 Nights (Jan 16 - Jan 20, 2024)',
              style: AppTextStyle.styleRegular12.copyWith(
                color: theme.colorScheme.surfaceTint,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          height: 2,
          thickness: 1,
          color: Color(0xff262626),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const EllipseListView(shouldDisplayMoreBtn: true),
            const SizedBox(width: 16),
            Text(
              '4 unfinished tasks',
              style: AppTextStyle.styleRegular12.copyWith(
                color: theme.colorScheme.surfaceTint,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
