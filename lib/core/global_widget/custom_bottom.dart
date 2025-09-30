import 'package:buyerapp/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottom extends StatelessWidget {
  final bool? isBorer;
  final String text;
  final Color? backgroundColor;
  final bool? textColor;
  final bool showGoogleIcon;
  final Function onClick;
  const CustomBottom({
    super.key,
    this.isBorer,
    required this.text,
    this.backgroundColor,
    this.textColor,
    required this.showGoogleIcon,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("clicked");
        onClick();
      },
      child: Container(
        width: double.infinity,
        height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.green,
        ),
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [ ]
            
              
            
              ),
        ),
      ),
    );
  }
}
