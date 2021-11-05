import 'package:flutter/material.dart';

class StackItem extends StatelessWidget {
  const StackItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: 70,
        width: 70,
        color: Colors.orange,
        child: Icon(Icons.add, size: 15,),
      ),
    );
  }
}
