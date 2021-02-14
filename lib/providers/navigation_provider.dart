import 'package:flutter/widgets.dart';
import 'package:mtei/ui/router/router.gr.dart';

class NavigationProvider with ChangeNotifier {
  int _currentIndex;
  String _activeDrawerMenu;

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

}
