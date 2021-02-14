// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/bill_payment/bill_payment_page.dart';
import '../screens/credit_report/credit_report_page.dart';
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
import '../screens/wallet/wallet_fund_page.dart';
import '../screens/wallet/wallet_page.dart';
import '../screens/wallet/wallet_transaction_page.dart';
import '../screens/wallet/wallet_withdraw_page.dart';
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
  static const String walletWithdrawPage = '/wallet-withdraw-page';
  static const String walletFundPage = '/wallet-fund-page';
  static const String walletTransactionPage = '/wallet-transaction-page';
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
    walletWithdrawPage,
    walletFundPage,
    walletTransactionPage,
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
    RouteDef(Routes.walletWithdrawPage, page: WalletWithdrawPage),
    RouteDef(Routes.walletFundPage, page: WalletFundPage),
    RouteDef(Routes.walletTransactionPage, page: WalletTransactionPage),
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
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SignUpPagePhone(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    SignUpPageOTP: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SignUpPageOTP(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    SignUpPagePincode: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SignUpPagePincode(),
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
    WalletWithdrawPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            WalletWithdrawPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    WalletFundPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            WalletFundPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
    WalletTransactionPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            WalletTransactionPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
    },
  };
}
