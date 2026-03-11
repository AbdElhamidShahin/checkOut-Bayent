import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarcodeAndPaidStatus extends StatelessWidget {
  const BarcodeAndPaidStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
            width: 140.w,
            height: 70.h,
            "assets/images/SVGRepo_iconCarrier.png"),
        Container(
          width: 115.w,
          height: 60.h,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1.50, color: Color(0xFF34A853)),
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
          child: Center(
            child: Text(
              'PAID',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF34A853),
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }
}
