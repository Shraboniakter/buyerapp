import 'package:buyerapp/core/global_widget/custom_text.dart';
import 'package:buyerapp/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  final TextEditingController pinController = TextEditingController();
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
      fontSize: 20,
      color: AppColors.white,
      // fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(30.r),
    ),
  );
  OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController pinController = TextEditingController();

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
      borderRadius: BorderRadius.circular(8.r),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(32, 127, 206, 1),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                CustomTextPoppins(
                  text: "Enter OTP send your number",
                  size: 20,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 32),
                CustomTextPoppins(
                  text: "Enter OTP",
                  size: 14,
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 16),
                Pinput(
                  controller: pinController,
                  length: 5,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,

                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
