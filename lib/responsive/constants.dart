import 'package:flutter/material.dart';

var backGroundColor = Colors.grey[300];

var darkGreyAppBar = AppBar(backgroundColor: Colors.grey[900]);

var greyDrawer = Drawer(
  elevation: 0,
  width: 230,
  child: Column(children: const [
    DrawerHeader(child: Text("@ dev_muh")),
    ListTile(
      leading: Icon(Icons.home),
      title: Text("D A S H B O A R D"),
    ),
    ListTile(
      leading: Icon(Icons.message),
      title: Text("M E S S A G E"),
    ),
    ListTile(
      leading: Icon(Icons.info),
      title: Text("A B O U T"),
    ),
    ListTile(
      leading: Icon(Icons.logout),
      title: Text("L O G O U T"),
    ),
  ]),
);
