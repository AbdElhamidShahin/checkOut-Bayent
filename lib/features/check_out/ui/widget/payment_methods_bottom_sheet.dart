import 'package:checkout_payment_ui/features/check_out/ui/widget/payment_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_button_bloc_consumer.dart';

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
          CustomButtonBlocConsumer(),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
