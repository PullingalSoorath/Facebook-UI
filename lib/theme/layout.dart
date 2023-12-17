//It will be uptdate on future
//It will be uptdate on future
//It will be uptdate on future
//It will be uptdate on future
//It will be uptdate on future
//It will be uptdate on future
//It will be uptdate on future
//It will be uptdate on future

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;

  const ResponsiveLayout({
    super.key,
    required this.mobileView,
    required this.tabletView,
    required this.desktopView,
  });

  @override
  Widget build(BuildContext context) {
// PortTab

    return LayoutBuilder(
      builder: (context, constraints) {
        // if (constraints.maxWidth < 680) {
        if (constraints.maxWidth < 530) {
          return mobileView;
        } else if (constraints.maxWidth < 1100) {
          return tabletView;
        } else {
          return desktopView;
        }
      },
    );
  }
}
