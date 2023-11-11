import 'package:go_router/go_router.dart';
import 'package:tsergo/pages/add_new_business_page.dart';
import 'package:tsergo/pages/login_page.dart';
import 'package:tsergo/pages/main_content_page.dart';
import 'package:tsergo/pages/signUp_page/sign_up3.dart';
import 'package:tsergo/pages/signUp_page/sign_up1.dart';
import 'package:tsergo/pages/signUp_page/otp_page.dart';
import 'package:tsergo/pages/transaction_page/transaction_page.dart';
import 'package:tsergo/pages/forgotPassword_page/forgot_password1.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const LoginPage()),
    GoRoute(
        path: '/home', builder: (context, state) => const MainContentPage()),
    GoRoute(
        path: '/transactions',
        builder: (context, state) => const TransactionsPage()),
    GoRoute(path: '/signUp1', builder: (context, state) => const SignUp1()),
    GoRoute(
        path: '/signUp2', builder: (context, state) => const OTPVerification()),
    GoRoute(path: '/signUp3', builder: (context, state) => const SignUp3()),
    GoRoute(
        path: '/forgotPassword1',
        builder: (context, state) => const ForgotPassword1()),
    GoRoute(
        path: '/forgotPassword2/:isForgotPassword',
        name: 'forgotPassword2',
        builder: (context, state) {
          return OTPVerification(
              isForgotPassword: state.pathParameters['isForgotPassword']);
        }),
    GoRoute(
        path: '/addNewBusiness',
        builder: (context, state) => const AddNewBusiness()),
  ],
);
