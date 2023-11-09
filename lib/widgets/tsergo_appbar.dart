import 'package:flutter/material.dart';
import 'package:tsergo/constants.dart';

class TsergoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TsergoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFF2D3FB),
      centerTitle: true,
      iconTheme: const IconThemeData(size: 38),

      automaticallyImplyLeading: false, // Set this to false
      title: const Text(
        'TSERGO',
        style: TextStyle(
          fontSize: 30.0,
          fontFamily: 'CustomFont',
          color: tsergoColor,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
