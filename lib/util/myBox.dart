import 'package:flutter/material.dart';
class MyBox extends StatelessWidget {
  const MyBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        elevation: 2,
        color: Colors.grey[400],
      ),
    );
  }
}
