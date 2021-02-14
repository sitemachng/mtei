import 'package:flutter/material.dart';
import 'package:mtei/providers/intro_guide_provider.dart';
import 'package:mtei/providers/navigation_provider.dart';
import 'package:mtei/ui/core/app_widget.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [        
        ChangeNotifierProvider.value(value: IntroGuideProvider.initialize()),
        ChangeNotifierProvider.value(value: NavigationProvider.initialize()),
      ],
      child: Builder(
        builder: (context) {
          return AppWidget();
        },
      ),
    ),
  ); 
}
