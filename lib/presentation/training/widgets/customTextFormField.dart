import 'package:flutter/material.dart';

class CustomTExtFormField extends StatelessWidget {
  final String value;
  CustomTExtFormField(this.value);
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final textFieldHeight = (mediaQuery.height * 0.04);
    final textFieldWidth = (mediaQuery.width * 0.2);
    return Container(
      child: TextFormField(
        cursorColor: Colors.grey,
        cursorHeight: textFieldHeight * 0.7,
        decoration: InputDecoration(
          fillColor: Colors.grey[600],
          filled: true,
          contentPadding: const EdgeInsets.all(3),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        initialValue: value,
        textAlign: TextAlign.center,
      ),
    );
  }
}
