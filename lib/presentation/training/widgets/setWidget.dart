import 'package:flutter/material.dart';

class SetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text('Set Widget'),
    );
  }
}
