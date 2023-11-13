import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tsergo/constants.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';
import 'package:tsergo/widgets/user_circular_image.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const TsergoAppBar(isMainContentPage: false),
      body: TsergoGradientContainer(
        child: Padding(
          padding: EdgeInsets.all(screenSize.width * 0.03),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Center(
                child: Stack(
                  children: [
                    const UserCircularImage(imageRatio: 0.4),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            color: tsergoColor),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(Icons.edit),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                surfaceTintColor: Colors.white,
                child: ListTile(
                    title: Text(
                      'View Profile',
                      style: inter16Bold,
                    ),
                    onTap: () => GoRouter.of(context).push('/viewProfile')),
              ),
              Card(
                color: Colors.white,
                surfaceTintColor: Colors.white,
                child: ListTile(
                  title: Text(
                    'Logout',
                    style: inter16Bold,
                  ),
                  onTap: () {
                    GoRouter.of(context).go('/');
                    // Update the state of the app.
                    // ...
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
