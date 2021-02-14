import 'package:flutter/material.dart';
import 'package:mtei/models/drawer_menu_model.dart';
import 'package:mtei/providers/navigation_provider.dart';
import 'package:mtei/ui/core/styles.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final drawer = DrawerMenu();

  _navigateToScreen(BuildContext context, DrawerMenu activeMenu) {
    //close drawer
    Navigator.of(context).pop();
    if (activeMenu.isBodyView) {
      Provider.of<NavigationProvider>(context, listen: false).activeDrawerMenu =
          activeMenu.menuRoute;
    } else {
      Navigator.pushNamed(context, '${activeMenu.menuRoute}');
    }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    drawer.initialize();
  }

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);

    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          UserAccountsDrawerHeader(
            //TODO: use auth user name and email
            accountName: Text('Ahmed Olanrewaju'),
            accountEmail: Text('olanrewajuahmed095@yahoo.com'),
            decoration: BoxDecoration(
              color: KAppPurple,
              image: DecorationImage(
                fit: BoxFit.contain,
                repeat: ImageRepeat.noRepeat,
                image: ExactAssetImage('assets/images/slide4b.jpg'),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2),
                  BlendMode.dstATop,
                ),
              ),
            ),
            currentAccountPicture: GestureDetector(
              onTap: () => () {
                //  TODO: Navigate to profile setting
              },
              child: CircleAvatar(
                //TODO: use auth user profile image
                backgroundImage: ExactAssetImage('assets/images/user.png'),
              ),
            ),
            onDetailsPressed: () {
              //  TODO: Implement press
            },
          ),
          Expanded(
            flex: 2,
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Color(0xFFBFBFBF),
              ),
              itemCount: drawer.menuList.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(0.0),
                child: (navigationProvider.activeDrawerMenu != null &&
                    navigationProvider.activeDrawerMenu ==
                        drawer.menuList[index].menuRoute)
                    ? ListTile(
                  title: Text(
                    '${drawer.menuList[index].menuName}',
                    style: TextStyle(color: kDeepYellow),
                  ),
                  leading: Icon(
                    drawer.menuList[index].menuIcon,
                    color: kDeepYellow,
                  ),
                  onTap: () =>
                      _navigateToScreen(context, drawer.menuList[index]),
                )
                    : ListTile(
                  title: Text(
                    '${drawer.menuList[index].menuName}',
                  ),
                  leading: Icon(drawer.menuList[index].menuIcon),
                  onTap: () =>
                      _navigateToScreen(context, drawer.menuList[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
