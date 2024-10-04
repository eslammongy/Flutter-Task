import 'package:flutter/material.dart';
import 'package:flutter_task/home/widgets/ellipse_list_view.dart';
import 'package:flutter_task/constants/theme/app_text_styles.dart';

class ExtraCardInfo extends StatelessWidget {
  const ExtraCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          color: const Color(0xffC25F30).withOpacity(0.1),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              side: BorderSide(color: Color(0xffC25F30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Pending Approval',
                    style: AppTextStyle.styleRegular14,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Item title',
          style: AppTextStyle.styleRegular18,
        ),
        const SizedBox(
          height: 15,
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
        Divider(
          height: 2,
          thickness: 1,
          color: theme.colorScheme.surfaceTint,
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          children: [
            SizedBox(width: 16),
            Text(
              '4 unfinished tasks',
              style: TextStyle(color: Colors.white),
            ),
            //  EllipseListView(shouldDisplayMoreBtn: true)
          ],
        ),
      ],
    );
  }
}
