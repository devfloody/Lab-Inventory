import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/constant.dart';

class NotchedNavBar extends StatefulWidget {
  const NotchedNavBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final ValueChanged<int> onTap;

  @override
  State<NotchedNavBar> createState() => _NotchedNavBarState();
}

class _NotchedNavBarState extends State<NotchedNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6,
      color: Colors.white,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildItem(
              index: 0,
              icon: const Icon(Iconsax.home),
            ),
            buildItem(
              index: 1,
              icon: const Icon(Iconsax.task_square),
            ),
            const SizedBox(width: 20),
            buildItem(
              index: 2,
              icon: const Icon(Iconsax.box),
            ),
            buildItem(
              index: 3,
              icon: const Icon(Iconsax.setting),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem({required int index, required Icon icon}) {
    final isSelected = index == widget.index;
    return IconTheme(
      data: IconThemeData(
        color: isSelected ? primaryColor : darkColor,
      ),
      child: IconButton(
        onPressed: () => widget.onTap(index),
        icon: icon,
      ),
    );
  }
}
