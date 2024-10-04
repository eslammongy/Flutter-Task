import 'package:flutter/material.dart';
import 'package:flutter_task/constants/theme/app_text_styles.dart';

class MenuTapItem extends StatelessWidget {
  const MenuTapItem({
    super.key,
    required this.isSelected,
    required this.text,
    this.onPressed,
  });
  final bool isSelected;
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        TextButton(
          onPressed: onPressed,
          style: buttonStyle,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: isSelected
                ? AppTextStyle.styleMedium14_22
                    .copyWith(color: theme.colorScheme.onSurface)
                : AppTextStyle.styleRegular14
                    .copyWith(color: theme.colorScheme.surfaceTint),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        SizedBox(
          width: 30,
          child: Divider(
            thickness: 2,
            color: isSelected
                ? theme.colorScheme.primary
                : theme.colorScheme.surface,
          ),
        ),
      ],
    );
  }

  get buttonStyle => ButtonStyle(
        alignment: Alignment.center,
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 16),
        ),
      );
}
