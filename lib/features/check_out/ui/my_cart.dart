import 'package:checkout_payment_ui/core/routing/routes.dart';
import 'package:checkout_payment_ui/core/widget/custom_appbar.dart';
import 'package:checkout_payment_ui/features/check_out/ui/widget/custom_details_order_check_out.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widget/app_text_feild.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          CustomAppbarMyCart(
            title: 'My Cart',
            onPressed: () {},
          ),
          SizedBox(
            height: 12.h,
          ),
          Image.asset("assets/images/basket_image.png"),
          SizedBox(
            height: 24.h,
          ),
          const CustomDetailsOrderCheckOut(),
          SizedBox(
            height: 12.h,
          ),
          AppTextFeild(
            onTap: () {
              context.push(Routes.paymentDetails);
            },
          ),
        ],
      ),
    ));
  }
}
