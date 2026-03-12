import 'package:checkout_payment_ui/core/widget/custom_appbar.dart';
import 'package:checkout_payment_ui/features/check_out/ui/widget/custom_details_order_check_out.dart';
import 'package:checkout_payment_ui/features/check_out/ui/widget/payment_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            titlel: "Complete Payment",
            onTap: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r)),
                  context: context,
                  builder: (context) {
                    return PaymentMethodsBottomSheet();
                  });
              // context.push(Routes.paymentDetails);
            },
          ),
        ],
      ),
    ));
  }
}

class PaymentMethodsBottomSheet extends StatelessWidget {
  PaymentMethodsBottomSheet({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16.h,
          ),
          PaymentMethods(),
          SizedBox(
            height: 32.h,
          ),
          const AppTextFeild(
            titlel: 'Continue',
          ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
