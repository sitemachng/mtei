// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/bill_payment/bill_payment_page.dart';
import '../screens/credit_report/credit_report_page.dart';
import '../screens/fund_wallet/fund_wallet_page.dart';
import '../screens/home/home_page.dart';
import '../screens/intro/intro_page.dart';
import '../screens/loan/loan_page.dart';
import '../screens/manage_cards/manage_cards_page.dart';
import '../screens/notifications/notifications_page.dart';
import '../screens/profile/profile_page.dart';
import '../screens/send_money/send_money_page.dart';
import '../screens/sign_in/sign_in_page.dart';
import '../screens/sign_up/sign_up_page.dart';
import '../screens/sign_up/sign_up_page_otp.dart';
import '../screens/sign_up/sign_up_page_phone.dart';
import '../screens/sign_up/sign_up_page_pincode.dart';
import '../screens/transactions/transactions_page.dart';
import '../screens/wallet/wallet_page.dart';
import '../screens/welcome/welcome_page.dart';

class Routes {
  static const String introPage = '/';
  static const String welcomePage = '/welcome-page';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String signUpPagePhone = '/sign-up-page-phone';
  static const String signUpPageOTP = '/sign-up-page-ot-p';
  static const String signUpPagePincode = '/sign-up-page-pincode';
  static const String homePage = '/home-page';
  static const String loanPage = '/loan-page';
  static const String walletPage = '/wallet-page';
  static const String creditReportPage = '/credit-report-page';
  static const String sendMoneyPage = '/send-money-page';
  static const String billPaymentPage = '/bill-payment-page';
  static const String manageCardsPage = '/manage-cards-page';
  static const String notificationsPage = '/notifications-page';
  static const String profilePage = '/profile-page';
  static const String fundWalletPage = '/fund-wallet-page';
  static const String transactionsPage = '/transactions-page';
  static const all = <String>{
    introPage,
    welcomePage,
    signInPage,
    signUpPage,
    signUpPagePhone,
    signUpPageOTP,
    signUpPagePincode,
    homePage,
    loanPage,
    walletPage,
    creditReportPage,
    sendMoneyPage,
    billPaymentPage,
    manageCardsPage,
    notificationsPage,
    profilePage,
    fundWalletPage,
    transactionsPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.introPage, page: IntroPage),
    RouteDef(Routes.welcomePage, page: WelcomePage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.signUpPagePhone, page: SignUpPagePhone),
    RouteDef(Routes.signUpPageOTP, page: SignUpPageOTP),
    RouteDef(Routes.signUpPagePincode, page: SignUpPagePincode),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.loanPage, page: LoanPage),
    RouteDef(Routes.walletPage, page: WalletPage),
    RouteDef(Routes.creditReportPage, page: CreditReportPage),
    RouteDef(Routes.sendMoneyPage, page: SendMoneyPage),
    RouteDef(Routes.billPaymentPage, page: BillPaymentPage),
    RouteDef(Routes.manageCardsPage, page: ManageCardsPage),
    RouteDef(Routes.notificationsPage, page: NotificationsPage),
    RouteDef(Routes.profilePage, page: ProfilePage),
    RouteDef(Routes.fundWalletPage, page: FundWalletPage),
    RouteDef(Routes.transactionsPage, page: TransactionsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    IntroPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => IntroPage(),
        settings: data,
      );
    },
    WelcomePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => WelcomePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    SignInPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SignInPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    SignUpPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SignUpPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    SignUpPagePhone: (data) {
      final args = data.getArgs<SignUpPagePhoneArguments>(
        orElse: () => SignUpPagePhoneArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SignUpPagePhone(
          firstName: args.firstName,
          email: args.email,
          lastName: args.lastName,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    SignUpPageOTP: (data) {
      final args = data.getArgs<SignUpPageOTPArguments>(
        orElse: () => SignUpPageOTPArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SignUpPageOTP(
          firstName: args.firstName,
          lastName: args.lastName,
          email: args.email,
          password: args.password,
          phone: args.phone,
          address: args.address,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    SignUpPagePincode: (data) {
      final args = data.getArgs<SignUpPagePincodeArguments>(
        orElse: () => SignUpPagePincodeArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SignUpPagePincode(
          firstName: args.firstName,
          lastName: args.lastName,
          email: args.email,
          password: args.password,
          phone: args.phone,
          address: args.address,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    HomePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    LoanPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => LoanPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    WalletPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => WalletPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    CreditReportPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            CreditReportPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    SendMoneyPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SendMoneyPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    BillPaymentPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            BillPaymentPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    ManageCardsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ManageCardsPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    NotificationsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            NotificationsPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    ProfilePage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ProfilePage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    FundWalletPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            FundWalletPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    TransactionsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            TransactionsPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// SignUpPagePhone arguments holder class
class SignUpPagePhoneArguments {
  final String firstName;
  final String email;
  final String lastName;
  SignUpPagePhoneArguments({this.firstName, this.email, this.lastName});
}

/// SignUpPageOTP arguments holder class
class SignUpPageOTPArguments {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String phone;
  final String address;
  SignUpPageOTPArguments(
      {this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.phone,
      this.address});
}

/// SignUpPagePincode arguments holder class
class SignUpPagePincodeArguments {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String phone;
  final String address;
  SignUpPagePincodeArguments(
      {this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.phone,
      this.address});
}
