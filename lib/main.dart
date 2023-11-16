import 'package:facebookclone/theme/layout.dart';
import 'package:facebookclone/screen/desktop.dart';
import 'package:facebookclone/screen/mobile.dart';
import 'package:facebookclone/screen/tablet.dart';
import 'package:facebookclone/theme/themedata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const ResponsiveLayout(
        mobileView: MobileScreen(),
        tabletView: TabletScreen(),
        desktopView: DesktopScreen(),
      ),
    );
  }
}
