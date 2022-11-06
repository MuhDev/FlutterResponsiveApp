import 'package:flutter/material.dart';
import 'package:web_structure/util/myBox.dart';
import 'package:web_structure/util/myTile.dart';
import 'constants.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: darkGreyAppBar,
      body: Row(
        children: [
          //start drawer
          greyDrawer,
          //end drawer

          // start main content
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              child: Column(
                children: [
                  // start 4 box top of the screen
                  AspectRatio(
                    aspectRatio: 4,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, right: 5),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: ListView.builder(
                      itemBuilder: (context, index) => Container(
                          width: double.infinity,
                          height: 100,
                          color: Colors.white)),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}



