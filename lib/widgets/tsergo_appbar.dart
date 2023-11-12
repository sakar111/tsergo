import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tsergo/constants.dart';

class TsergoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isMainContentPage;

  const TsergoAppBar({super.key, this.isMainContentPage = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFF2D3FB),
      centerTitle: true,
      iconTheme: const IconThemeData(size: 38),

      automaticallyImplyLeading: true, // Set this to false
      title: Text('TSERGO', style: tsergoCustomStyle32),
      leading: isMainContentPage
          ? IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () => GoRouter.of(context).push('/sideMenu'),
            )
          : null,
      actions: isMainContentPage
          ? [
              IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
