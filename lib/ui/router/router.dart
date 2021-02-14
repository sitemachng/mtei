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
import 'package:mtei/ui/screens/loan/loan_page.dart';
import 'package:mtei/ui/screens/wallet/wallet_page.dart';
import 'package:mtei/ui/screens/credit_report/credit_report_page.dart';
import 'package:mtei/ui/screens/send_money/send_money_page.dart';
import 'package:mtei/ui/screens/bill_payment/bill_payment_page.dart';
import 'package:mtei/ui/screens/manage_cards/manage_cards_page.dart';
import 'package:mtei/ui/screens/notifications/notifications_page.dart';
import 'package:mtei/ui/screens/profile/profile_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: IntroPage, initial: true),
    CustomRoute(page: WelcomePage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SignInPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SignUpPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SignUpPagePhone, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SignUpPageOTP, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SignUpPagePincode, transitionsBuilder: TransitionsBuilders.fadeIn),
    // inner app
    CustomRoute(page: HomePage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: LoanPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: WalletPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: CreditReportPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: SendMoneyPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: BillPaymentPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: ManageCardsPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: NotificationsPage, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: ProfilePage, transitionsBuilder: TransitionsBuilders.fadeIn),
  ],
)
class $AppRouter {}
