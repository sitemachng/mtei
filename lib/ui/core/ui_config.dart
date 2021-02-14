import 'package:flutter/material.dart';

class UIConfig {
  static const String app_name = "Mtei";
  static const int app_version_code = 1;
  
  //* Images
  static List<AssetImage> introImages = [
    AssetImage("assets/images/slide1.jpg"),
    AssetImage("assets/images/slide2.jpg"),
    AssetImage("assets/images/slide3c.jpg"),
    AssetImage("assets/images/slide4b.jpg")
  ];

  static List<String> introTitles = [
    "Get a loan in minutes",
    "Improve your credit worth",
    "Intuitive utility payment",
    "Everywhere you go",
  ];

  //*  Texts
  static List<String> introDescriptions = [
    "mtei make it easy to access loan with no collateral require. Get instant funding in your wallet on approval",
    '''We provide credit report that let\'s you know your financial standing so as to access more loans''',
    "Enjoy faster payment for your utilities without any service delay. Transfer money, pay bills, buy airtime and lot's more",
    "Our service is available 24/7 everywhere you go. You can also tap in to our USSD service when you don't have network connection.",
  ];
}