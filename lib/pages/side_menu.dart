import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tsergo/widgets/color_gradient.dart';
import 'package:tsergo/widgets/tsergo_appbar.dart';

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
                    Container(
                      width: screenSize.width * 0.4,
                      height: screenSize.width * 0.4,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        ),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2.0,
                            blurRadius: 10.0,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/sakar.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
                            color: Colors.blue),
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
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  GoRouter.of(context).go('/');
                  // Update the state of the app.
                  // ...
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
