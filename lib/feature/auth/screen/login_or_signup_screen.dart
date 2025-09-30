import 'package:buyerapp/core/global_widget/custom_text.dart';
import 'package:buyerapp/core/utils/assetpaths.dart';
import 'package:flutter/material.dart';

class LoginOrSignupScreen extends StatelessWidget {
  const LoginOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Icon(Icons.arrow_back)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(child: Image.asset(Assetpaths.lemon, height: 160, width: 160)),

          SizedBox(height: 100),
          CustomTextPoppins(
            text: "Log in or sign up",
            size: 24,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
