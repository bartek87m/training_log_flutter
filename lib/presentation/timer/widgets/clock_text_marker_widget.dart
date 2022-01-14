import 'dart:math';

import 'package:flutter/material.dart';

class ClockTextMarkers extends StatelessWidget {
  const ClockTextMarkers({Key? key, this.radius, required this.seconds})
      : super(key: key);
  final radius;
  final int seconds;
  @override
  Widget build(BuildContext context) {
    const width = 2.0;
    const height = 12.0;
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(-width * 2, -height * 0.7, 0.0)
        ..rotateZ(2 * pi * (seconds / 60))
        ..translate(0.0, (-radius * 0.7) - height / 2, 0.0),
      child: Text(seconds.toString()),
    );
  }
}
