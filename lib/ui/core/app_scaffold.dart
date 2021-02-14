import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mtei/ui/router/router.gr.dart';
import 'package:mtei/ui/core/styles.dart';

import 'app_title.dart';

class AppScaffold extends StatefulWidget {
  final Widget title;
  final Widget leading;
  final Widget body;
  final Widget tabBar;
  final Widget footer;
  final Widget fab;
  final Widget drawer;
  final Widget endDrawer;
  final FloatingActionButtonLocation fabLocation;

  const AppScaffold(
      {Key key,
      @required this.body,
      @required this.title,
      this.leading,
      this.tabBar,
      this.footer,
      this.fab,
      this.fabLocation,
      this.drawer,
      this.endDrawer})
      : super(key: key);

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      color: Colors.white,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation:
                defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
            centerTitle: true,
            bottom: widget.tabBar != null ? widget.tabBar : null,
            title:
                widget.title != null ? widget.title : AppTitle(innerApp: true),
            leading: widget.leading != null
                ? widget.leading
                : IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: kPrimaryTextColor,
                      size: 32,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                  ),
            actions: [
              InkResponse(
                child: Container(
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                onTap: () {
                  ExtendedNavigator.root.popAndPush(Routes.notificationsPage);
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              InkResponse(
                child: Container(
                  width: 35.0,
                  height: 35.0,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/images/user.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                onTap: () {
                  _scaffoldKey.currentState.openDrawer();
                  ExtendedNavigator.root.popAndPush(Routes.profilePage);
                },
              )
            ],
          ),
          body: widget.body,
          drawer: widget.drawer != null ? widget.drawer : null,
          endDrawer: widget.endDrawer != null ? widget.endDrawer : null,
          bottomNavigationBar: widget.footer != null ? widget.footer : null,
          floatingActionButtonLocation: widget.fabLocation != null
              ? widget.fabLocation
              : FloatingActionButtonLocation.endFloat,
          floatingActionButton: widget.fab != null ? widget.fab : null,
        ),
      ),
    );
  }
}
