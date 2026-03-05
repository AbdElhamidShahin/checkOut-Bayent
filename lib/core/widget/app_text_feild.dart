import 'package:checkout_payment_ui/core/units/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFeild extends StatelessWidget {
  const AppTextFeild({super.key, this.onTap, required this.titlel});
  final VoidCallback? onTap;
  final String titlel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          height: 73.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: const Color(0xFF34A853),
          ),
          child: Center(
            child: Text(
              titlel ,
              style: textStyleFontSize22FontWeightMedium,
            ),
          ),
        ),
      ),
    );
  }
}
