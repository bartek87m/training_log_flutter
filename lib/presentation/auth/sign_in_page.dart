import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.red,
              child: Column(
                children: [],
              ),
            ),
          ),
        ));
  }
}
