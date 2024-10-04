import 'package:flutter/material.dart';
import 'package:flutter_task/home/widgets/appbar/menu_tap_item.dart';

class MenuTaps extends StatefulWidget {
  const MenuTaps({super.key});

  @override
  State<MenuTaps> createState() => _MenuTapsState();
}

class _MenuTapsState extends State<MenuTaps> {
  int selectedTap = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MenuTapItem(
          text: 'Items',
          isSelected: selectedTap == 0,
          onPressed: () {
            _selectMenuTap(0);
          },
        ),
        MenuTapItem(
          text: 'Pricing',
          isSelected: selectedTap == 1,
          onPressed: () {
            _selectMenuTap(1);
          },
        ),
        MenuTapItem(
          text: 'Info',
          isSelected: selectedTap == 2,
          onPressed: () {
            _selectMenuTap(2);
          },
        ),
        MenuTapItem(
          text: 'Tasks',
          isSelected: selectedTap == 3,
          onPressed: () {
            _selectMenuTap(3);
          },
        ),
        MenuTapItem(
          text: 'Analytics',
          isSelected: selectedTap == 4,
          onPressed: () {
            _selectMenuTap(4);
          },
        ),
      ],
    );
  }

  void _selectMenuTap(int index) {
    setState(() {
      selectedTap = index;
    });
  }
}
