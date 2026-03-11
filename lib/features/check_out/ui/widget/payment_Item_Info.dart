import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentItemInfo extends StatelessWidget {
  final String title, value;
  final bool isTotal;
  const PaymentItemInfo(
      {super.key,
        required this.title,
        required this.value,
        this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: isTotal ? 24.sp : 18.sp,
                  fontWeight: isTotal ? FontWeight.bold : FontWeight.w400)),
          Text(value,
              style: TextStyle(
                  fontSize: isTotal ? 24.sp : 18.sp,
                  fontWeight: isTotal ? FontWeight.bold : FontWeight.w600)),
        ],
      ),
    );
  }
}
