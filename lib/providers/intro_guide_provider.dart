import 'package:flutter/material.dart';
import 'package:mtei/models/intro_guide_model.dart';

class IntroGuideProvider with ChangeNotifier {
  List<IntroGuide> _guideList = [];
  int _currentIndex;
  bool _isComplete = false;

  IntroGuideProvider.initialize() {
    _currentIndex = 0;

    _guideList = <IntroGuide>[
      IntroGuide(
          title: 'Get a loan in minutes',
          description: 'mtei make it easy to access loan with no collateral require. Get instant funding in your wallet on approval',
      ),
      IntroGuide(
          title: 'Improve your credit worth',
          description: '''We provide credit report that let\'s you know your financial standing so as to access more loans''',
      ),
      IntroGuide(
          title: 'Intuitive cardless payment',
          description: "Enjoy faster payment for your utilities without any service delay. Transfer money, pay bills, buy airtime and lot's more",
      ),
      IntroGuide(
          title: 'Everywhere you go',
          description: "Our service is available 24/7 everywhere you go. You can also tap in to our USSD service when you don't have network connection.",
      )
    ];

    notifyListeners();
  }

  get currentIndex => _currentIndex;
  
 set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  List<IntroGuide> get guideList => _guideList;

  IntroGuide get active => _guideList[_currentIndex]; 

  void gotoNext(){
    if(_currentIndex >= 0 && _currentIndex < (_guideList.length - 1)){
      _currentIndex++;
    }
    notifyListeners();
  }

  void gotoPrevious(){
    if(_currentIndex != 0){
      _currentIndex--;
    }
    notifyListeners();
  }

  void guideComplete(){
    // TODO: update sharepreference
    _isComplete = !_isComplete;
  }

  
}