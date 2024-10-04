import 'package:flutter/material.dart';
import 'package:flutter_task/constants/theme/app_text_styles.dart';

class MenuTaps extends StatelessWidget {
  const MenuTaps({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildTextButton(
          theme,
          text: 'Items',
          onPressed: () {},
        ),
        _buildTextButton(
          theme,
          text: 'Pricing',
          onPressed: () {},
        ),
        _buildTextButton(
          theme,
          text: 'Info',
          onPressed: () {},
        ),
        _buildTextButton(
          theme,
          text: 'Tasks',
          onPressed: () {},
        ),
        _buildTextButton(
          theme,
          text: 'Analytics',
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildTextButton(
    ThemeData theme, {
    required String text,
    required void Function()? onPressed,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        alignment: Alignment.center, // <-- had to set alignment
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
              horizontal: 16), // <-- had to set padding to zero
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppTextStyle.styleRegular14
            .copyWith(color: theme.colorScheme.surfaceTint),
      ),
    );
  }
}
