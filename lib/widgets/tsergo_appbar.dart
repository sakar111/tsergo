import 'package:flutter/material.dart';

class TsergoAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TsergoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // Set this to false
      title: const Text('TSERGO'),
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
