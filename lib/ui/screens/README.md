# User interface screens

## Contain application pages widgets

## Steps to route a Screen

* Navigate to `lib/ui/route/router.dart` folder
* Open the `router.dart` file and add your route. check example below

```dart
/*
page: the destination screen
transitionsBuilder: the transition effect to visit the screen
*/
import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mtei/ui/screens/notification/notifications_page.dart';  

@MaterialAutoRouter(
  routes: <AutoRoute>[ 
    CustomRoute(page: NotificationScreen, transitionsBuilder: TransitionsBuilders.fadeIn),
  ],
)
class $AutoRouter {}
```

* Run code generation command to generate your route

```shell script
flutter packages pub run build_runner build
```

> If the above command result to an error use the flag in the example below
```shell script
flutter packages pub run build_runner build --delete-conflicting-outputs
```

* Then you can have a click method on your widget that route to the specified screen e.g

```dart
import 'package:auto_route/auto_route.dart';
import 'package:mtei/ui/router/router.gr.dart';

* using context

ExtendedNavigator.of(context).push(Routes.NotificationScreen);

or

* using root 
ExtendedNavigator.root.push(Routes.NotificationScreen);
```