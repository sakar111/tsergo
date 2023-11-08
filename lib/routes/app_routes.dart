import 'package:go_router/go_router.dart';
import 'package:tsergo/pages/login_page.dart';
import 'package:tsergo/pages/main_content_page.dart';
import 'package:tsergo/pages/transaction_page/transaction_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const LoginPage()),
    GoRoute(path: '/home', builder: (context, state) => const MainContentPage()),
    GoRoute(path: '/transactions', builder: (context, state) => const TransactionsPage()),
  ],
);
