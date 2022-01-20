import 'package:flutter/material.dart';

class ButtonTimerWidget extends StatelessWidget {
  final VoidCallback buttonFunction;
  final buttonText;
  final color;

  const ButtonTimerWidget(
      {Key? key,
      required this.buttonFunction,
      this.buttonText = "TextButton",
      this.color = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonFunction,
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.red),
      ),
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(color: color),
          ),
        ),
      ),
    );
  }
}
