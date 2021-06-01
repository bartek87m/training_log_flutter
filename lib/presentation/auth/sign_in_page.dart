import 'package:flutter/material.dart';
import 'package:training_log/presentation/auth/widgets/sing_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: AspectRatio(
        aspectRatio: 2,
        child: Container(
          color: Colors.red[100],
          child: SignInFormWidget(),
        ),
      ),
    );
  }
}
