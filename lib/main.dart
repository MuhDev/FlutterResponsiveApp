import 'package:flutter/material.dart';
import 'package:web_structure/responsive/desktopLayout.dart';
import 'package:web_structure/responsive/mobileLayout.dart';
import 'package:web_structure/responsive/responsive_layout.dart';
import 'package:web_structure/responsive/tapLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveLayout(
        desktopLayout: DesktopLayout(),
        tapLayout: TapLayout(),
        mobileLayout: MobileLayout(),
      ),
    );
  }
}
