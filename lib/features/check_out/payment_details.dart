import 'package:checkout_payment_ui/core/routing/routes.dart';
import 'package:checkout_payment_ui/features/check_out/ui/widget/payment_methods.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/widget/custom_appbar.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CustomAppbarMyCart(
          title: 'Payment Details',
          onPressed: () {
            context.push(Routes.checkOutScreen);
          },
        ),
        PaymentMethods(),
      ],
    ));
  }
}
