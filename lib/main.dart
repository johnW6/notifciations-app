// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

import 'CacheProvider.dart';
import 'LocalNotificationScreen.dart';

void main() {
  initSettings();
  runApp(HomeApp());
}

Future<void> initSettings() async {
  await Settings.init(
    cacheProvider: HiveCache(),
  );
}

bool _isUsingHive = true;

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocalNotificationScreen(),
    );
  }
}
