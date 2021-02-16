import 'package:flutter/widgets.dart';
import 'package:mtei/ui/router/router.gr.dart';

class NavigationProvider with ChangeNotifier {
  int _currentIndex;
  String _activeDrawerMenu;
  int tabIndex = 0;

  NavigationProvider.initialize() {
    _currentIndex = 0;
    _activeDrawerMenu = Routes.homePage;
  }

  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  get activeDrawerMenu => _activeDrawerMenu;

  set activeDrawerMenu(String routeName) {
    _activeDrawerMenu = routeName;
    notifyListeners();
  }

  setTabIndex(String title){
    //TODO: Implement tab state
    // switch(title.toLowerCase()){
    //   case 'orders': tabIndex = 0; break;
    //   case 'pending orders': tabIndex = 1;  break;
    //   case 'delivered orders': tabIndex = 2;  break;
    // }
    notifyListeners();
  }
}
