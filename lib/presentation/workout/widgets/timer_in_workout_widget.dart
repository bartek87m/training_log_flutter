import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TimerInWorkoutWidget extends StatefulWidget {
  TimerInWorkoutWidget({Key? key}) : super(key: key);

  @override
  State<TimerInWorkoutWidget> createState() => TimerInWorkoutWidgetState();
}

class TimerInWorkoutWidgetState extends State<TimerInWorkoutWidget> {
  double _width = 0;
  double _height = 0;
  Color _color = Colors.transparent;
  bool isAnimationDone = false;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      showElement();
    });
    super.initState();
  }

  void showElement() {
    isAnimationDone = !isAnimationDone;
    setState(() {
      if (isAnimationDone) {
        _height = 40.h;
        _width = 95.w;
        _color = Colors.black26;
      } else {
        _height = 0;
        _width = 0;
        _color = Colors.transparent;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: AnimatedContainer(
            // child: Center(
            //   child: Column(
            //     children: [
            //       Text(counter.toString()),
            //       TextButton(
            //         onPressed: () => setState(() => counter++),
            //         child: Text('ADD'),
            //       ),
            //       TextButton(
            //         onPressed: () => setState(() => counter--),
            //         child: Text('SUBTRACT'),
            //       )
            //     ],
            //   ),
            // ),
            // Use the properties stored in the State class.
            width: _width,
            height: _height,

            decoration: BoxDecoration(
                color: _color, borderRadius: BorderRadius.circular(5)),

            // Define how long the animation should take.
            duration: Duration(milliseconds: 400),
            // Provide an optional curve to make the animation feel smoother.
            curve: Curves.fastOutSlowIn, // fastOutSlowIn
          ),
        ),
        // FloatingActionButton(
        //   child: Icon(Icons.play_arrow),
        //   // When the user taps the button
        //   onPressed: showElement,
        // ),
      ],
    );
  }
}
