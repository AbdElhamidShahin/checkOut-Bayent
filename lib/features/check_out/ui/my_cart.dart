import 'package:checkout_payment_ui/core/units/styles.dart';
import 'package:checkout_payment_ui/features/check_out/ui/widget/custom_appbar_my_cart.dart';
import 'package:checkout_payment_ui/features/check_out/ui/widget/custom_details_order_check_out.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const CustomAppbarMyCart(),
          SizedBox(
            height: 12.h,
          ),
          Image.asset("assets/images/basket_image.png"),
          SizedBox(
            height: 24.h,
          ),
          CustomDetailsOrderCheckOut(),
        ],
      ),
    ));
  }
}
