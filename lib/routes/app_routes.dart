import 'package:go_router/go_router.dart';
import 'package:tsergo/home_page/page_home.dart';
import 'package:tsergo/page_login.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage()),
  ],
);