import 'package:checkout_payment_ui/core/units/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbarMyCart extends StatelessWidget {
  const CustomAppbarMyCart({super.key, required this.title, this.onPressed});
  final String title;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: textStyleFontSize25FontWeightInter,
      ),
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 32.sp,
          ),
          onPressed: onPressed),
    );
  }
}
