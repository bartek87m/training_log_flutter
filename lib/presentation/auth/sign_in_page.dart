import 'package:flutter/material.dart';
import 'package:training_log/presentation/auth/widgets/sing_in_form.dart';
import 'package:sizer/sizer.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        height: 32.3.h,
        margin: EdgeInsets.only(top: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.w),
        // color: Colors.red[100],
        child: SignInFormWidget(),
      ),
    );
  }
}
