import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mtei/ui/screens/intro/intro_page.dart';
import 'package:mtei/ui/screens/sign_up/sign_up_page_pincode.dart';
import 'package:mtei/ui/screens/welcome/welcome_page.dart';
import 'package:mtei/ui/screens/sign_in/sign_in_page.dart';
import 'package:mtei/ui/screens/sign_up/sign_up_page.dart';
import 'package:mtei/ui/screens/sign_up/sign_up_page_phone.dart';
import 'package:mtei/ui/screens/sign_up/sign_up_page_otp.dart';
import 'package:mtei/ui/screens/home/home_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: IntroPage, initial: true),
    CustomRoute(page: WelcomePage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SignInPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SignUpPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SignUpPagePhone, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SignUpPageOTP, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SignUpPagePincode, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: HomePage, transitionsBuilder: TransitionsBuilders.fadeIn),
  ],
)
class $AppRouter {}
