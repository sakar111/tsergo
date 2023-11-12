import 'package:go_router/go_router.dart';
import 'package:tsergo/pages/add_edit_business_page.dart';
import 'package:tsergo/pages/bank_transfer_page.dart';
import 'package:tsergo/pages/business_details_page.dart';
import 'package:tsergo/pages/link_bank_account_page.dart';
import 'package:tsergo/pages/login_page.dart';
import 'package:tsergo/pages/main_content_page.dart';
import 'package:tsergo/pages/notification_page/notification_page.dart';
import 'package:tsergo/pages/side_menu.dart';
import 'package:tsergo/pages/signUp_page/sign_up3.dart';
import 'package:tsergo/pages/signUp_page/sign_up1.dart';
import 'package:tsergo/pages/signUp_page/otp_page.dart';
import 'package:tsergo/pages/transaction_page/transaction_page.dart';
import 'package:tsergo/pages/forgotPassword_page/forgot_password1.dart';
import 'package:tsergo/pages/view_profile_page.dart';

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
        path: '/addEditBusiness/:isAddBusiness',
        name: 'addEditBusiness',
        builder: (context, state) {
          return AddEditBusiness(
              isAddBusiness: state.pathParameters['isAddBusiness']);
        }),
    GoRoute(
        path: '/businessDetails',
        builder: (context, state) => const BusinessDetails()),
    GoRoute(
        path: '/linkBankAccount',
        builder: (context, state) => const LinkBankAccount()),
    GoRoute(
        path: '/bankTransfer',
        builder: (context, state) => const BankTransferPage()),
    GoRoute(path: '/sideMenu', builder: (context, state) => const SideMenu()),
    GoRoute(
        path: '/viewProfile',
        builder: (context, state) => const ViewProfilePage()),
    GoRoute(
        path: '/notificationPage',
        builder: (context, state) => const NotificationPage())
  ],
);
