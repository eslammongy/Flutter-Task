import 'package:flutter/material.dart';
import 'package:flutter_task/constants/theme/app_text_styles.dart';

class AddNewItemBtn extends StatelessWidget {
  const AddNewItemBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.add, size: 18, color: theme.colorScheme.surface),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Add a New Item',
                style: AppTextStyle.styleMedium14
                    .copyWith(color: theme.colorScheme.surface),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
