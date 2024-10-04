import 'package:flutter/material.dart';
import 'package:flutter_task/constants/theme/app_text_styles.dart';

class PendingApprovalWidget extends StatelessWidget {
  const PendingApprovalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: theme.colorScheme.secondary.withOpacity(0.1),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide(color: theme.colorScheme.secondary)),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
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
    );
  }
}
