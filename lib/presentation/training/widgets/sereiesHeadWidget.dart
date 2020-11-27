import 'package:flutter/material.dart';

class SeriesHeadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Container(
        child: Row(
      children: [
        Container(
          // color: Colors.blue,
          width: mediaQuery.width * 0.12,
          padding: EdgeInsets.only(left: mediaQuery.width * 0.0055),
          child: const Text("Series"),
        ),
        Container(
          alignment: Alignment.center,
          // color: Colors.red,
          width: mediaQuery.width * 0.2,
          margin: EdgeInsets.only(left: mediaQuery.width * 0.03),
          child: const Text("Reps"),
        ),
        Container(
          alignment: Alignment.center,
          // color: Colors.green,
          width: mediaQuery.width * 0.2,
          margin: EdgeInsets.only(left: mediaQuery.width * 0.1),
          child: const Text("Weight"),
        )
      ],
    ));
  }
}
