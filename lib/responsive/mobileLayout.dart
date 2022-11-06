import 'package:flutter/material.dart';
import 'package:web_structure/responsive/constants.dart';
import 'package:web_structure/util/myBox.dart';
import 'package:web_structure/util/myTile.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: darkGreyAppBar,
      drawer: greyDrawer,
      body: Column(
        children: [
          // start 4 box top of the screen
          AspectRatio(
            aspectRatio: 1,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return const MyBox();
              },
            ),
          ),
          // end  boxs top of the screen

          // start ListTiles at the bottom of the screen
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return const MyListTile();
              },
            ),
          ),
          // end ListTiles at the bottom of the screen

        ],
      ),
    );
  }
}
