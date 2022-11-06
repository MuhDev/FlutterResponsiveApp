import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tapLayout;
  final Widget desktopLayout;
  const ResponsiveLayout({
    required this.mobileLayout,
    required this.tapLayout,
    required this.desktopLayout,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth<500) {
        return mobileLayout ;
      } else if (constraints.maxWidth<1000) {
        return tapLayout;
      } else {
        return desktopLayout;
      }
    });
  }
}