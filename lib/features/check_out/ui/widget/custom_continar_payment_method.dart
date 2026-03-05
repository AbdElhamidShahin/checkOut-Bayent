import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomContinarPaymentMethod extends StatelessWidget {
  const CustomContinarPaymentMethod({
    super.key,
    required this.image,
    required this.onTap,
    required this.isSelect,
  });
  final String image;
  final VoidCallback onTap;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 70.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
              color:
                  isSelect ? Color(0xFF34A853) : Colors.black.withOpacity(0.5),
              width: 1.5),
          color: Colors.transparent,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: SvgPicture.asset(
            image,
          ),
        ),
      ),
    );
  }
}
