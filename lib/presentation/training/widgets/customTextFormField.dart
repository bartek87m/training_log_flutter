import 'package:flutter/material.dart';

class CustomTExtFormField extends StatelessWidget {
  final String value;
  final double coursorHeight;
  CustomTExtFormField(this.value, this.coursorHeight);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        cursorColor: Colors.grey,
        cursorHeight: coursorHeight,
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
