// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/home/home_page.dart';
import '../screens/intro/intro_page.dart';
import '../screens/sign_in/sign_in_page.dart';
import '../screens/sign_up/sign_up_page.dart';
import '../screens/sign_up/sign_up_page_otp.dart';
import '../screens/sign_up/sign_up_page_phone.dart';
import '../screens/sign_up/sign_up_page_pincode.dart';
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
  static const all = <String>{
    introPage,
    welcomePage,
    signInPage,
    signUpPage,
    signUpPagePhone,
    signUpPageOTP,
    signUpPagePincode,
    homePage,
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
  };
}
