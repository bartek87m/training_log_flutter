import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClockMarkers extends StatelessWidget {
  const ClockMarkers({Key? key, this.radius, required this.seconds})
      : super(key: key);
  final radius;
  final int seconds;
  @override
  Widget build(BuildContext context) {
    final color = seconds % 5 == 0 ? Colors.black : Colors.grey[400];

    final width = 1.w;
    final height = 2.h;
    return Transform(
      alignment: Alignment.center,
      // transform: Matrix4.identity(),
      transform: Matrix4.identity()
        ..translate(-width / 2, -height / 2, 0.0)
        ..rotateZ(2 * pi * (seconds / 60))
        ..translate(0.0, radius * 0.75, 0.0),
      child: Container(
        width: width,
        height: height,
        color: color,
      ),
    );
  }
}
