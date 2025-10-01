import 'package:buyerapp/core/global_widget/custom_text.dart';
import 'package:buyerapp/core/utils/app_colors.dart';
import 'package:buyerapp/core/utils/assetpaths.dart';
import 'package:buyerapp/feature/auth/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginOrSignupScreen extends StatelessWidget {
  const LoginOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PhoneController controller = Get.put(PhoneController());
    return Scaffold(
      appBar: AppBar(title: Icon(Icons.arrow_back)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Center(
              child: Image.asset(Assetpaths.lemon, height: 160, width: 160),
            ),

            SizedBox(height: 70),
            Center(
              child: CustomTextPoppins(
                text: "Log in or sign up",
                size: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 32),
            CustomTextPoppins(
              text: "Phone",
              size: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.grey,
            ),
            SizedBox(height: 6),
            Column(
              children: [
                IntlPhoneField(
                  decoration: InputDecoration(
                    hintText: "Enter your phone ",
                    hintStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey1,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: AppColors.white,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: AppColors.white),
                    ),
                  ),
                  initialCountryCode: 'BD',
                  onChanged: (phone) {
                    controller.setPhone(phone.completeNumber);
                  },
                ),
                SizedBox(height: 32),

                SizedBox(
                  width: double.infinity,
                  child: CustomButtom(text: "CONTINUE"),
                ),
                SizedBox(
                  width: double.infinity,
                  child: CustomButtom(text: "CONTINUE", color: AppColors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.text,
    this.color,
    this.textColor,
  });
  final String text;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: textColor ?? AppColors.white,
          ),
        ),
      ),
    );
  }
}
