import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'dart:math';

class TextAnimationWidget extends StatefulWidget {
  const TextAnimationWidget({Key? key}) : super(key: key);

  @override
  _TextAnimationWidgetState createState() => _TextAnimationWidgetState();
}

class _TextAnimationWidgetState extends State<TextAnimationWidget>
    with SingleTickerProviderStateMixin {
  double _width = 0;
  double _height = 0;
  Color _color = Colors.transparent;
  bool isAnimationDone = false;

  final random = Random();
  int counter = 0;

  void _showElement() {
    isAnimationDone = !isAnimationDone;

    setState(() {
      if (isAnimationDone) {
        _height = 50.h;
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
            child: Center(
              child: Column(
                children: [
                  Text(counter.toString()),
                  TextButton(
                    onPressed: () => setState(() => counter++),
                    child: Text('ADD'),
                  ),
                  TextButton(
                    onPressed: () => setState(() => counter--),
                    child: Text('SUBTRACT'),
                  )
                ],
              ),
            ),
            width: _width,
            height: _height,
            decoration: BoxDecoration(
                color: _color, borderRadius: BorderRadius.circular(5)),
            duration: Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn, // fastOutSlowIn
          ),
        ),
        FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: _showElement,
        ),
      ],
    );
  }
}
