import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClockTextMarkers extends StatelessWidget {
  const ClockTextMarkers({
    Key? key,
    required this.radius,
    required this.value,
    required this.maxValue,
  }) : super(key: key);
  final int value;
  final double radius;
  final int maxValue;
  @override
  Widget build(BuildContext context) {
    final width = 20.w;
    final height = 4.h;
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..translate(-width / 2, -height / 2)
        ..rotateZ(pi + 2 * pi * (value / maxValue))
        ..translate(0.0, height * 3.75, 0.0)
        ..rotateZ(pi - 2 * pi * (value / maxValue)),
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        child: Text(
          value.toString(),
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
