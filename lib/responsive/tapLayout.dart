import 'package:flutter/material.dart';
import 'package:web_structure/util/myBox.dart';
import 'package:web_structure/util/myTile.dart';
import 'constants.dart';
class TapLayout extends StatefulWidget {
  const TapLayout({Key? key}) : super(key: key);

  @override
  State<TapLayout> createState() => _TapLayoutState();
}

class _TapLayoutState extends State<TapLayout> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: backGroundColor,
      appBar:darkGreyAppBar ,
      drawer:greyDrawer ,
      body: Column(
        children: [
          // start 4 box top of the screen
          AspectRatio(
            aspectRatio: 4,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
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